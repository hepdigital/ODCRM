<?php
// includes/header.php
session_start();
require_once __DIR__ . '/../config/database.php';
require_once __DIR__ . '/functions.php';
require_once __DIR__ . '/notification.php';

// Oturum kontrolü
if (!isset($_SESSION['user_id']) && basename($_SERVER['PHP_SELF']) !== 'login.php') {
    header('Location: /login.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRM Sistemi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="/assets/css/modern-theme.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <?php if(isset($_SESSION['user_id'])): ?>
    <div class="app-container">
        <!-- Sidebar -->
        <aside class="sidebar">
            <div class="sidebar-header">
                <div class="sidebar-logo">
                    <i class="fas fa-chart-line"></i>
                </div>
                <div class="sidebar-brand">CRM Pro</div>
            </div>
            
            <nav class="sidebar-nav">
                <div class="nav-section">
                    <div class="nav-section-title">Ana Menü</div>
                    <div class="nav-item">
                        <a href="/" class="nav-link <?php echo basename($_SERVER['PHP_SELF']) === 'index.php' ? 'active' : ''; ?>">
                            <i class="fas fa-home"></i>
                            <span>Dashboard</span>
                        </a>
                    </div>
                </div>
                
                <div class="nav-section">
                    <div class="nav-section-title">İşlemler</div>
                    <div class="nav-item">
                        <a href="/modules/products/list.php" class="nav-link <?php echo strpos($_SERVER['PHP_SELF'], 'products') !== false ? 'active' : ''; ?>">
                            <i class="fas fa-box"></i>
                            <span>Ürünler</span>
                        </a>
                    </div>
                    <div class="nav-item">
                        <a href="/modules/customers/list.php" class="nav-link <?php echo strpos($_SERVER['PHP_SELF'], 'customers') !== false ? 'active' : ''; ?>">
                            <i class="fas fa-users"></i>
                            <span>Müşteriler</span>
                        </a>
                    </div>
                    <div class="nav-item">
                        <a href="/modules/quotes/list.php" class="nav-link <?php echo strpos($_SERVER['PHP_SELF'], 'quotes') !== false ? 'active' : ''; ?>">
                            <i class="fas fa-file-invoice"></i>
                            <span>Teklifler</span>
                        </a>
                    </div>
                    <?php if($_SESSION['role'] === 'admin'): ?>
                    <div class="nav-item">
                        <a href="/modules/users/list.php" class="nav-link <?php echo strpos($_SERVER['PHP_SELF'], 'users') !== false ? 'active' : ''; ?>">
                            <i class="fas fa-user-cog"></i>
                            <span>Kullanıcılar</span>
                        </a>
                    </div>
                    <div class="nav-item">
                        <a href="/modules/settings/index.php" class="nav-link <?php echo strpos($_SERVER['PHP_SELF'], 'settings') !== false ? 'active' : ''; ?>">
                            <i class="fas fa-cog"></i>
                            <span>Ayarlar</span>
                        </a>
                    </div>
                    <?php endif; ?>
                </div>
                
                <div class="nav-section">
                    <div class="nav-section-title">Hızlı Erişim</div>
                    <div class="nav-item">
                        <a href="/modules/quotes/create.php" class="nav-link">
                            <i class="fas fa-plus-circle"></i>
                            <span>Yeni Teklif</span>
                        </a>
                    </div>
                    <div class="nav-item">
                        <a href="/modules/customers/add.php" class="nav-link">
                            <i class="fas fa-user-plus"></i>
                            <span>Yeni Müşteri</span>
                        </a>
                    </div>
                    <div class="nav-item">
                        <a href="/modules/products/add.php" class="nav-link">
                            <i class="fas fa-box-open"></i>
                            <span>Yeni Ürün</span>
                        </a>
                    </div>
                </div>
            </nav>
        </aside>
        
        <!-- Main Content -->
        <main class="main-content">
            <!-- Top Header -->
            <header class="top-header">
                <div class="header-left">
                    <h1 class="page-title">Dashboard</h1>
                </div>
                <div class="header-right">
                    <div class="search-box">
                        <i class="fas fa-search search-icon"></i>
                        <input type="text" class="search-input" placeholder="Ara...">
                    </div>
                    
                    <!-- Bildirimler -->
                    <div class="notification-menu">
                        <div class="notification-icon" id="notificationIcon">
                            <i class="fas fa-bell"></i>
                            <?php 
                            $unreadCount = $notificationManager->getUnreadCount($_SESSION['user_id']);
                            if ($unreadCount > 0): 
                            ?>
                            <span class="notification-badge"><?php echo $unreadCount; ?></span>
                            <?php endif; ?>
                        </div>
                        
                        <div class="notification-dropdown" id="notificationDropdown">
                            <div class="notification-header">
                                <h4>Bildirimler</h4>
                                <?php if ($unreadCount > 0): ?>
                                <button class="mark-all-read" onclick="markAllAsRead()">Tümünü Okundu İşaretle</button>
                                <?php endif; ?>
                            </div>
                            <div class="notification-list">
                                <?php 
                                $notifications = $notificationManager->getUserNotifications($_SESSION['user_id'], 5);
                                if (empty($notifications)): 
                                ?>
                                <div class="no-notifications">
                                    <i class="fas fa-bell-slash"></i>
                                    <p>Henüz bildirim yok</p>
                                </div>
                                <?php else: ?>
                                    <?php foreach ($notifications as $notification): ?>
                                    <div class="notification-item <?php echo $notification['is_read'] ? 'read' : 'unread'; ?>" 
                                         onclick="markAsRead(<?php echo $notification['id']; ?>)">
                                        <div class="notification-icon-small">
                                            <?php
                                            $iconClass = match($notification['type']) {
                                                'success' => 'fas fa-check-circle',
                                                'warning' => 'fas fa-exclamation-triangle',
                                                'error' => 'fas fa-times-circle',
                                                'info' => 'fas fa-info-circle',
                                                default => 'fas fa-bell'
                                            };
                                            ?>
                                            <i class="<?php echo $iconClass; ?>"></i>
                                        </div>
                                        <div class="notification-content">
                                            <h5><?php echo htmlspecialchars($notification['title']); ?></h5>
                                            <p><?php echo htmlspecialchars($notification['message']); ?></p>
                                            <small><?php echo date('d.m.Y H:i', strtotime($notification['created_at'])); ?></small>
                                        </div>
                                        <?php if (!$notification['is_read']): ?>
                                        <div class="unread-indicator"></div>
                                        <?php endif; ?>
                                    </div>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </div>
                            <div class="notification-footer">
                                <a href="/modules/notifications/list.php">Tüm Bildirimleri Görüntüle</a>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Kullanıcı Menüsü -->
                    <div class="user-menu">
                        <div class="user-avatar" id="userAvatar">
                            <?php echo strtoupper(substr($_SESSION['full_name'] ?: $_SESSION['username'], 0, 1)); ?>
                        </div>
                        
                        <div class="user-dropdown" id="userDropdown">
                            <div class="user-info">
                                <div class="user-name"><?php echo htmlspecialchars($_SESSION['full_name'] ?: $_SESSION['username']); ?></div>
                                <div class="user-role"><?php echo ucfirst($_SESSION['role']); ?></div>
                            </div>
                            <div class="user-menu-items">
                                <a href="/modules/profile/index.php" class="user-menu-item">
                                    <i class="fas fa-user"></i>
                                    <span>Profil</span>
                                </a>
                                <a href="/modules/profile/password.php" class="user-menu-item">
                                    <i class="fas fa-key"></i>
                                    <span>Şifre Değiştir</span>
                                </a>
                                <div class="user-menu-divider"></div>
                                <a href="/logout.php" class="user-menu-item logout">
                                    <i class="fas fa-sign-out-alt"></i>
                                    <span>Çıkış Yap</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            
            <!-- Content Area -->
            <div class="content">
    <?php else: ?>
    <div class="container my-4">
    <?php endif; ?>