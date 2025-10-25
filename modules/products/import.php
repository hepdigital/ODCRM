<?php
// modules/products/import.php
require_once '../../includes/header.php';

$message = '';
$messageType = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        if (!isset($_FILES['csv_file']) || $_FILES['csv_file']['error'] !== UPLOAD_ERR_OK) {
            throw new Exception('Lütfen bir CSV dosyası seçin.');
        }

        // CSV dosyasını oku
        $file = fopen($_FILES['csv_file']['tmp_name'], 'r');
        if ($file === false) {
            throw new Exception('Dosya okunamadı.');
        }

        // İlk satırı başlık olarak al
        $headers = fgetcsv($file);
        if ($headers === false) {
            throw new Exception('CSV dosyası boş.');
        }

        // Başlıkları kontrol et
        $required_headers = ['name', 'price', 'stock_quantity', 'vat_rate'];
        foreach ($required_headers as $required) {
            if (!in_array($required, $headers)) {
                throw new Exception('Gerekli sütun eksik: ' . $required);
            }
        }

        $db->beginTransaction();
        $success_count = 0;
        $error_count = 0;
        $errors = [];

        // Satır satır oku ve veritabanına ekle
        while (($row = fgetcsv($file)) !== false) {
            try {
                $data = array_combine($headers, $row);
                
                $stmt = $db->prepare("
                    INSERT INTO products (
                        name, description, price, stock_quantity, vat_rate, image_url
                    ) VALUES (
                        :name, :description, :price, :stock_quantity, :vat_rate, :image_url
                    )
                ");

                $stmt->execute([
                    ':name' => $data['name'],
                    ':description' => $data['description'] ?? '',
                    ':price' => floatval($data['price']),
                    ':stock_quantity' => intval($data['stock_quantity']),
                    ':vat_rate' => floatval($data['vat_rate']),
                    ':image_url' => $data['image_url'] ?? null
                ]);

                $success_count++;
            } catch (Exception $e) {
                $error_count++;
                $errors[] = "Satır " . ($success_count + $error_count) . ": " . $e->getMessage();
            }
        }

        fclose($file);
        $db->commit();

        $message = "$success_count ürün başarıyla içe aktarıldı.";
        if ($error_count > 0) {
            $message .= " $error_count ürün aktarılamadı.";
        }
        $messageType = 'success';

    } catch (Exception $e) {
        if ($db->inTransaction()) {
            $db->rollBack();
        }
        $message = 'Hata: ' . $e->getMessage();
        $messageType = 'danger';
    }
}
?>

<div class="card">
    <div class="card-header">
        <h5 class="mb-0">Toplu Ürün İçe Aktarma</h5>
    </div>
    <div class="card-body">
        <?php if ($message): ?>
            <div class="alert alert-<?php echo $messageType; ?> alert-dismissible fade show" role="alert">
                <?php echo $message; ?>
                <?php if (!empty($errors)): ?>
                    <ul class="mb-0 mt-2">
                        <?php foreach ($errors as $error): ?>
                            <li><?php echo htmlspecialchars($error); ?></li>
                        <?php endforeach; ?>
                    </ul>
                <?php endif; ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        <?php endif; ?>

        <form method="POST" enctype="multipart/form-data">
            <div class="mb-3">
                <label class="form-label">CSV Dosyası</label>
                <input type="file" name="csv_file" class="form-control" accept=".csv" required>
                <div class="form-text">
                    CSV dosyası şu sütunları içermelidir: name, price, stock_quantity, vat_rate<br>
                    İsteğe bağlı sütunlar: description, image_url
                </div>
            </div>

            <div class="mb-3">
                <a href="/assets/templates/products_template.csv" class="btn btn-secondary">
                    <i class="fas fa-download"></i> Örnek CSV İndir
                </a>
            </div>

            <button type="submit" class="btn btn-primary">
                <i class="fas fa-upload"></i> İçe Aktar
            </button>
            
            <a href="list.php" class="btn btn-secondary">
                <i class="fas fa-arrow-left"></i> Geri
            </a>
        </form>
    </div>
</div>