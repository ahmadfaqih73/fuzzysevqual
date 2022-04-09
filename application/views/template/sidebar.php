<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <img src="<?php echo base_url() ?>assets/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">E-Survey</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->


        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item menu-close">
                    <a href="<?= base_url('View_user/index'); ?>" class="nav-link ">
                        <i class="nav-icon fas fa-user"></i>
                        <p>
                            User
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-database"></i>
                        <p>
                            Master Data
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= base_url('Dimensi/index') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Dimensi</p>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= base_url('Kepuasan/index') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Kepuasan</p>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= base_url('PernyataanHarapan/index') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pernyataan Harapan</p>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= base_url('PernyataanPersepsi/index') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pernyataan Persepsi</p>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= base_url('Hasil/lihat_fuzyfikasi') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Rule</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa-solid fa-messages-question"></i>
                        <p>
                            Question
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= base_url('Kuisioner_Harapan/index') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Kuisioner Harapan</p>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= base_url('Kuisioner_Persepsi/index') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Kuisioner Persepsi</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa-solid fa-messages-question"></i>
                        <p>
                            Fuzzy Servqual
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= base_url('Fuzzyfikasi_Harapan/index') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Fuzzyfikasi Harapan</p>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= base_url('Fuzzyfikasi_Persepsi/index') ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Fuzzyfikasi Persepsi</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>