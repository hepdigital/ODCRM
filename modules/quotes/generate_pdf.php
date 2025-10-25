<?php
// modules/quotes/generate_pdf.php

error_reporting(E_ALL);
ini_set('display_errors', 1);

if (ob_get_level()) {
    ob_end_clean();
}
ob_start();

session_start();
require_once '../../config/database.php';

function getSiteUrl() {
    $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
    $domainName = $_SERVER['HTTP_HOST'];
    return $protocol . $domainName;
}

function fixImageUrl($url) {
    if (empty($url)) return false;
    
    // Dış URL kontrolü (http ve https)
    if (strpos($url, 'http://') === 0 || strpos($url, 'https://') === 0) {
        return $url; // Dış URL'yi olduğu gibi döndür
    }
    
    // Yerel dosya yolları
    if (strpos($url, '/') === 0) {
        return getSiteUrl() . $url;
    } else {
        return '../../' . $url;
    }
}

define('K_PATH_FONTS', dirname(__FILE__).'/../../tcpdf/TCPDF-main/fonts/');
require_once '../../tcpdf/TCPDF-main/tcpdf.php';

if (!isset($_GET['id'])) {
    die("Hata: Teklif ID'si belirtilmemiş!");
}
$id = (int)$_GET['id'];

try {
$stmt = $db->prepare("
    SELECT q.*, c.*, u.full_name as created_by_name, -- EKLENDİ
           q.id as quote_id, c.id as customer_id, q.created_at as quote_date
    FROM quotes q
    JOIN customers c ON q.customer_id = c.id
    LEFT JOIN users u ON q.created_by = u.id -- EKLENDİ
    WHERE q.id = ?
");
    $stmt->execute([$id]);
    $quote = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$quote) {
        die("Hata: Teklif bulunamadı!");
    }

    $stmt = $db->prepare("
        SELECT qi.*, p.name as product_name, p.description, p.image_url,
               (qi.unit_price * qi.quantity) as subtotal,
               (qi.unit_price * qi.quantity * qi.vat_rate / 100) as vat_amount,
               ((qi.unit_price * qi.quantity) + (qi.unit_price * qi.quantity * qi.vat_rate / 100)) as line_total
        FROM quote_items qi
        JOIN products p ON qi.product_id = p.id
        WHERE qi.quote_id = ? ORDER BY qi.id
    ");
    $stmt->execute([$id]);
    $items = $stmt->fetchAll(PDO::FETCH_ASSOC);

    $total_subtotal = array_sum(array_column($items, 'subtotal'));
    $total_vat = array_sum(array_column($items, 'vat_amount'));
    $total_amount = array_sum(array_column($items, 'line_total'));

} catch (Exception $e) {
    die("Veritabanı hatası: " . $e->getMessage());
}

// YENİ FOOTER TANIMLAMASI İLE GÜNCELLENMİŞ PDF SINIFI
class MYPDF extends TCPDF {
    // Sayfa üst bilgisi (Header)
    public function Header() {
        $this->SetFont('dejavusans', '', 8);
        $this->Cell(0, 10, 'Sayfa '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'R');
    }

    // Her sayfanın altına gelecek kurumsal alt bilgi (Footer)
    public function Footer() {
        // Alt bilgiyi sayfa sonundan 20mm yukarıya konumlandır
        $this->SetY(-20);
        // İnce bir ayırıcı çizgi çiz
        $this->SetLineStyle(['width' => 0.2, 'color' => [190, 190, 190]]);
        $this->Line($this->getMargins()['left'], $this->getY(), $this->getPageWidth() - $this->getMargins()['right'], $this->getY());
        $this->Ln(2); // Çizgiden sonra küçük bir boşluk

        // Kurumsal bilgileri küçük ve gri renkte yazdır
        $this->SetFont('dejavusans', '', 7);
        $this->SetTextColor(128, 128, 128);
        
        $footer_line1 = 'Hotel Deposu Kozmetik Tekstil Danışmanlık San. Tic. Ltd. Şti.';
        $footer_line2 = 'Seyrantepe Mah. Sarmaşık Sk. No: 10 İç Kapı No: 3 Kağıthane / İstanbul  •  +90 546 915 53 04  •  +90 546 931 27 67  •  info@oteldeposu.com';

        $this->Cell(0, 5, $footer_line1, 0, 1, 'C');
        $this->Cell(0, 5, $footer_line2, 0, 1, 'C');
    }
}

try {
    $pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

    // Döküman Bilgileri
    $pdf->SetCreator('CRM Sistemi');
    $pdf->SetAuthor('HepsiBuklet');
    $pdf->SetTitle('Teklif: ' . $quote['quote_number']);

    // Renk Tanımlamaları
    $themeColor = [233, 78, 26]; // #e94e1a
    $whiteColor = [255, 255, 255];
    $blackColor = [0, 0, 0];
    $lightGrayColor = [245, 245, 245];

    // Sayfa Ayarları
    $pdf->SetMargins(15, 15, 15);
    $pdf->SetHeaderMargin(5);
    $pdf->SetFooterMargin(25); // Yeni footer için alt boşluğu ayarla
    $pdf->SetAutoPageBreak(TRUE, 25); // Otomatik sayfa kesme boşluğunu ayarla
    $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
    $pdf->SetFont('dejavusans', '', 10);

    $pdf->AddPage();

    // -- ÜST BÖLÜM --
    if (file_exists('../../assets/images/logo.png')) {
        $pdf->Image('../../assets/images/logo.png', 15, 10, 60);
    }
    
    // Adres Güncellendi
    $pdf->SetXY(15, 34);
    $pdf->SetFont('dejavusans', 'B', 10);
    $pdf->MultiCell(85, 6, 'Hotel Deposu Kozmetik Tekstil Danışmanlık San. Tic. Ltd. Şti.', 0, 'L');
    $pdf->SetFont('dejavusans', '', 10);
    $pdf->MultiCell(85, 6, 'Seyrantepe Mah. Sarmaşık Sk. No: 10 İç Kapı No: 3 Kağıthane / İstanbul', 0, 'L');
    $pdf->MultiCell(85, 6, '+90 546 915 53 04 - +90 546 931 27 67', 0, 'L');
    $pdf->MultiCell(85, 6, 'info@oteldeposu.com', 0, 'L');

    $pdf->SetXY(120, 12);
    $pdf->Cell(75, 6, $quote['quote_number'], 0, 1, 'R');
    $pdf->SetX(120);
    $pdf->Cell(75, 6, date('d/m/Y', strtotime($quote['quote_date'])), 0, 1, 'R');
    $pdf->SetX(120);
    $pdf->Cell(75, 6, 'Teklifi Veren: ' . $quote['created_by_name'], 0, 1, 'R');

    $pdf->SetXY(120, 30);
    $pdf->SetFillColor($lightGrayColor[0], $lightGrayColor[1], $lightGrayColor[2]);
    $pdf->SetFont('dejavusans', 'B', 10);
    $pdf->Cell(75, 8, 'MÜŞTERİ BİLGİLERİ', 1, 1, 'L', true);
    
    $customerInfo = "<b>Firma:</b> " . htmlspecialchars($quote['company_name']) . "<br>";
    if ($quote['contact_person']) $customerInfo .= "<b>İletişim:</b> " . htmlspecialchars($quote['contact_person']) . "<br>";
    if ($quote['email']) $customerInfo .= "<b>E-posta:</b> " . htmlspecialchars($quote['email']) . "<br>";
    if ($quote['phone']) $customerInfo .= "<b>Telefon:</b> " . htmlspecialchars($quote['phone']);
    $pdf->SetX(120);
    $pdf->SetFont('dejavusans', '', 9);
    $pdf->MultiCell(75, 5, $customerInfo, 'LRB', 'L', false, 1, '', '', true, 0, true, true, 0);

    $pdf->Ln(10);
    $pdf->SetFont('dejavusans', 'B', 14);
    $pdf->SetTextColor($themeColor[0], $themeColor[1], $themeColor[2]);
    $pdf->Cell(0, 10, 'TEKLİF FORMU', 0, 1, 'C');
    $pdf->SetTextColor($blackColor[0], $blackColor[1], $blackColor[2]);
    $pdf->Ln(5);

    // -- ÜRÜN TABLOSU --
    $header = ['Görsel', 'Ürün Bilgisi', 'Adet', 'Birim Fiyat', 'KDV', 'Toplam'];
    $widths = [35, 65, 15, 25, 15, 25];
    
    $pdf->SetFillColor($themeColor[0], $themeColor[1], $themeColor[2]);
    $pdf->SetTextColor($whiteColor[0], $whiteColor[1], $whiteColor[2]);
    $pdf->SetFont('dejavusans', 'B', 9);
    for ($i = 0; $i < count($header); $i++) {
        $pdf->Cell($widths[$i], 8, $header[$i], 1, 0, 'C', true);
    }
    $pdf->Ln();
    $pdf->SetTextColor($blackColor[0], $blackColor[1], $blackColor[2]);

    $pdf->SetFont('dejavusans', '', 9);
    
    foreach ($items as $item) {
        // Dinamik satır yüksekliği hesaplama
        $pdf->SetFont('dejavusans', 'B', 9);
        $productNameHeight = $pdf->getStringHeight($widths[1], $item['product_name']);
        
        $pdf->SetFont('dejavusans', '', 8);
        $descriptionHeight = $pdf->getStringHeight($widths[1] - 4, $item['description']);
        
        // Minimum yükseklik 35, açıklama uzunsa ona göre artır
        $rowHeight = max(35, $productNameHeight + $descriptionHeight + 10);
        
        if ($pdf->GetY() + $rowHeight > $pdf->getPageHeight() - $pdf->getBreakMargin()) {
            $pdf->AddPage();
            $pdf->SetFillColor($themeColor[0], $themeColor[1], $themeColor[2]);
            $pdf->SetTextColor($whiteColor[0], $whiteColor[1], $whiteColor[2]);
            $pdf->SetFont('dejavusans', 'B', 9);
            for ($i = 0; $i < count($header); $i++) { $pdf->Cell($widths[$i], 8, $header[$i], 1, 0, 'C', true); }
            $pdf->Ln();
            $pdf->SetTextColor($blackColor[0], $blackColor[1], $blackColor[2]);
            $pdf->SetFont('dejavusans', '', 9);
        }
        
        $startX = $pdf->GetX(); $startY = $pdf->GetY();
        for($i=0; $i<count($widths); ++$i) { $pdf->Cell($widths[$i], $rowHeight, '', 'LRB', 0, 'C'); }
        $pdf->Ln();
        
        if (!empty($item['image_url'])) { @$pdf->Image(fixImageUrl($item['image_url']), $startX + 2, $startY + 2, $widths[0] - 4, $rowHeight - 4, '', '', 'T', false, 300, '', false, false, 0, 'CM'); }
        
        $textCellX = $startX + $widths[0];
        $pdf->SetFont('dejavusans', 'B', 9);
        $pdf->MultiCell($widths[1], 5, $item['product_name'], 0, 'L', false, 1, $textCellX + 2, $startY + 3);
        $lineY = $pdf->GetY();
        $pdf->SetLineStyle(['width' => 0.1, 'color' => [150, 150, 150]]);
        $pdf->Line($textCellX + 2, $lineY + 1, $textCellX + $widths[1] - 2, $lineY + 1);
        $pdf->SetFont('dejavusans', '', 8);
        $pdf->MultiCell($widths[1] - 4, 5, $item['description'], 0, 'L', false, 1, $textCellX + 2, $lineY + 3);
        
        $pdf->SetFont('dejavusans', '', 9);
        $otherCellsX = $textCellX + $widths[1];
        $pdf->MultiCell($widths[2], $rowHeight, number_format($item['quantity']), 0, 'C', false, 1, $otherCellsX, $startY, true, 0, false, true, $rowHeight, 'M');
        $otherCellsX += $widths[2];
        $pdf->MultiCell($widths[3], $rowHeight, number_format($item['unit_price'], 2, ',', '.') . ' TL', 0, 'R', false, 1, $otherCellsX, $startY, true, 0, false, true, $rowHeight, 'M');
        $otherCellsX += $widths[3];
        $pdf->MultiCell($widths[4], $rowHeight, '%' . number_format($item['vat_rate'], 0), 0, 'C', false, 1, $otherCellsX, $startY, true, 0, false, true, $rowHeight, 'M');
        $otherCellsX += $widths[4];
        $pdf->SetFont('dejavusans', 'B', 9);
        $pdf->MultiCell($widths[5], $rowHeight, number_format($item['line_total'], 2, ',', '.') . ' TL', 0, 'R', false, 1, $otherCellsX, $startY, true, 0, false, true, $rowHeight, 'M');
    }

    // -- TOPLAMLAR --
    $pdf->Ln(2);
    $pdf->SetFillColor($lightGrayColor[0], $lightGrayColor[1], $lightGrayColor[2]);
    $labelWidth = 35; $valueWidth = 35;
    $totalsStartX = $pdf->GetPageWidth() - $pdf->getMargins()['right'] - $labelWidth - $valueWidth;
    
    $pdf->SetFont('dejavusans', '', 10);
    $pdf->SetX($totalsStartX);
    $pdf->Cell($labelWidth, 7, 'Brüt Toplam:', 'LTR', 0, 'L', true);
    $pdf->Cell($valueWidth, 7, number_format($total_subtotal, 2, ',', '.') . ' TL', 'TR', 1, 'R', true);
    
    $pdf->SetX($totalsStartX);
    $pdf->Cell($labelWidth, 7, 'KDV Toplam:', 'LR', 0, 'L', true);
    $pdf->Cell($valueWidth, 7, number_format($total_vat, 2, ',', '.') . ' TL', 'R', 1, 'R', true);
    
    $pdf->SetFont('dejavusans', 'B', 11);
    $pdf->SetX($totalsStartX);
    $pdf->Cell($labelWidth, 8, 'Genel Toplam:', 'LBR', 0, 'L', true);
    $pdf->Cell($valueWidth, 8, number_format($total_amount, 2, ',', '.') . ' TL', 'BR', 1, 'R', true);

    // -- DÖKÜMAN SONU BİLGİLERİ --
    $finalSectionHeight = 110; // Alan ihtiyacını artırdık
    if ($pdf->GetY() + $finalSectionHeight > $pdf->getPageHeight() - $pdf->getFooterMargin()) {
        $pdf->AddPage();
    }

    $pdf->Ln(10);
    $pdf->SetFont('dejavusans', 'B', 10);
    $pdf->Cell(0, 6, 'TEKLİF NOTLARI', 0, 1, 'L');
    $pdf->SetFont('dejavusans', '', 9);
    $pdf->MultiCell(0, 5, '• Teslimat, tasarım onayı verildikten sonra 10 gün içerisinde yapılmaktadır.', 0, 'L');
    $pdf->MultiCell(0, 5, '• Nakliye İstanbul içi tarafımıza, İstanbul dışı alıcıya aittir.', 0, 'L');
    if (!empty($quote['notes'])) {
        foreach (explode("\n", $quote['notes']) as $note) {
            if (trim($note)) $pdf->MultiCell(0, 5, '• ' . trim($note), 0, 'L');
        }
    }
    $pdf->Ln(4);

    // Banka Bilgileri Güncellendi (Daha düzenli tek tablo)
    $pdf->SetFont('dejavusans', 'B', 10);
    $pdf->Cell(0, 6, 'Banka Hesap Numaralarımız', 0, 1, 'L');
    $pdf->SetFont('dejavusans', '', 9);

    $bankInfoHTML = '
    <table cellpadding="4" cellspacing="0" style="border: 1px solid #e0e0e0; background-color: #fcfcfc;">
        <tr>
            <td width="20%"><b>Banka Adı:</b></td>
            <td width="80%">Akbank T.A.Ş.</td>
        </tr>
        <tr>
            <td width="20%"><b>Unvan:</b></td>
            <td width="80%">Hotel Deposu Kozmetik Tekstil Danışmanlık San. Tic. Ltd. Şti</td>
        </tr>
        <tr>
            <td width="20%"><b>IBAN:</b></td>
            <td width="80%">TR13 0004 6005 9688 8000 0797 16</td>
        </tr>
    </table>';
    $pdf->writeHTML($bankInfoHTML, true, false, true, false, '');
    $pdf->Ln(10);

    // Siparişi Onaylayan Bölümü
    $pdf->SetFont('dejavusans', 'B', 10);
    $pdf->Cell(80, 7, 'Siparişi Onaylayan', 0, 1, 'L');
    $pdf->SetFont('dejavusans', '', 10);
    $pdf->Cell(30, 7, 'Adı Soyadı', 0, 0, 'L');
    $pdf->Cell(50, 7, ': ..........................................', 0, 1, 'L');
    $pdf->Cell(30, 7, 'Tarih', 0, 0, 'L');
    $pdf->Cell(50, 7, ': ..........................................', 0, 1, 'L');
    $pdf->Cell(30, 7, 'Kaşe / İmza', 0, 0, 'L');
    $pdf->Cell(50, 7, ': ..........................................', 0, 1, 'L');
    
    // -- ÇIKTI --
    $filename = 'Teklif_' . preg_replace('/[^A-Za-z0-9_]/', '', $quote['company_name']) . '_' . $quote['quote_number'] . '.pdf';
    ob_end_clean();
    $pdf->Output($filename, 'I');

} catch (Exception $e) {
    if (ob_get_level()) ob_end_clean();
    die('PDF oluşturma hatası: ' . $e->getMessage());
}
