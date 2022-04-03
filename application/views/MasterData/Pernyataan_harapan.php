<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-10">
                    <h1 class="m-0">Pertanyaan Quisioner Harapan</h1>
                    <section class="content">

                        <!-- Default box -->
                        <div class="card">
                            <div class="card-header">
                                <a href="<?= base_url(); ?>PernyataanHarapan/viewadd" class="btn btn-primary ">Tambah data</a>
                            </div>
                            <div class="card-body p-0">
                                <?php
                                echo $this->session->flashdata('message');
                                ?>
                                <table class="table table-striped projects">
                                    <thead>
                                        <tr>
                                            <th style="width: 1%">
                                                No
                                            </th>
                                            <th style="width: 20%">
                                                Atribut
                                            </th>
                                            <th style="width: 20%">
                                                Pernyataan
                                            </th>
                                            <th style="width: 20%">
                                                Action
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($pernyataanharapan as $k) {
                                        ?>
                                            <tr>
                                                <td>
                                                    <?php echo ++$no ?>
                                                </td>
                                                <td>
                                                    <?php echo $k['Nama_dimensi'] ?>
                                                </td>
                                                <td>
                                                    <?php echo $k['Pernyataan_harapan'] ?>
                                                </td>
                                                <td class="project-actions text-center">
                                                    <a class="btn btn-info btn-sm" href="<?= base_url(); ?>PernyataanHarapan/view_edit/<?= $k['id_pernyataan_harapan']; ?>">
                                                        <i class="fas fa-pencil-alt">
                                                        </i>
                                                        Edit
                                                    </a>

                                                    <a class="btn btn-danger btn-sm" href="<?= base_url(); ?>PernyataanHarapan/hapus/<?= $k['id_pernyataan_harapan']; ?>">
                                                        <i class="fas fa-trash">
                                                        </i>
                                                        Delete
                                                    </a>
                                                </td>

                                            </tr>
                                        <?php
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->

                    </section>
                </div><!-- /.col -->

            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

</div>
<!-- /.content-wrapper -->