<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-10">
                    <h1 class="m-0">Pelanggan</h1>

                    <section class="content">


                        <!-- Default box -->
                        <div class="card">
                            <div class="card-header">
                                <a href="<?= base_url(); ?>Pelanggan/viewadd" class="btn btn-primary ">Tambah data</a>
                            </div>
                            <div class="card-body p-0">
                                <?php
                                echo $this->session->flashdata('message');
                                ?>
                                <table class="table table-striped projects" >
                                    <thead>
                                        <tr>
                                            <th style="width: 1%">
                                                No
                                            </th>
                                            <th style="width: 20%">
                                                Nama
                                            </th>
                                            <th style="width: 20%">
                                                Jenis Kelamin
                                            </th>
                                            <th style="width: 20%">
                                                Alamat
                                            </th>
                                            <th style="width: 20%">
                                                nohp
                                            </th>
                                            <th style="width: 20%">
                                                Action
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($pelanggan as $k) {
                                        ?>
                                            <tr>
                                                <td>
                                                    <?php echo ++$no ?>
                                                </td>
                                                <td>
                                                    <?php echo $k['namapelanggan'] ?>
                                                </td>
                                                
                                                <td><?php echo ($k['jenis_kelamin'] == '1') ? 'Laki-laki' : 'Perempuan'; ?></td>
                                                
                                                <td>
                                                    <?php echo $k['alamat'] ?>
                                                </td>
                                                <td>
                                                    <?php echo $k['nohp'] ?>
                                                </td>

                                                <td class="project-actions text-center">

                                                    <a class=" btn btn-info btn-sm" href="<?= base_url(); ?>Pelanggan/viewedit/<?= $k['id_pelanggan']; ?>">
                                                        <i class="fas fa-pencil-alt">
                                                        </i>
                                                        Edit
                                                    </a>
                                                    <a class="btn btn-danger btn-sm" href="<?= base_url(); ?>Pelanggan/hapus/<?= $k['id_pelanggan'] ?>">
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