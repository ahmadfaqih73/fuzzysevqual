<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Dimensi</h1>
                    <section class="content">


                        <!-- Default box -->
                        <div class="card">
                            <div class="card-header">
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </div>
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
                                                Nama Dimensi
                                            </th>
                                            <th style="width: 20%">
                                                Status
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($baca_dimensi as $bc) {
                                        ?>
                                            <tr>
                                                <td>
                                                    <?php echo ++$no ?>
                                                </td>
                                                <td>
                                                    <?php echo $bc['Nama_dimensi'] ?>
                                                </td>

                                                <td class="project-actions text-center">
                                                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#updatedimensi<?= $bc['id_dimensi'] ?>">
                                                        <i class="fas fa-pencil-alt">
                                                        </i>
                                                        Edit
                                                    </button>
                                                    <!-- <a class=" btn btn-info btn-sm" href="<?= base_url(); ?>Dimensi/view_edit/<?= $user['id_user']; ?>">
                                                        <i class="fas fa-pencil-alt">
                                                        </i>
                                                        Edit
                                                    </a> -->
                                                    <a class="btn btn-danger btn-sm" href="<?= base_url(); ?>Dimensi/hapus/<?= $bc['id_dimensi']; ?>">
                                                        <i class="fas fa-trash">
                                                        </i>
                                                        Delete
                                                    </a>
                                                </td>
                                                <!-- Modal -->
                                                <div class="modal fade" id="updatedimensi<?= $bc['id_dimensi'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">Update Dimensi</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form class="col-md-6" method="post" action="<?php echo base_url('Dimensi/ubah') ?>">

                                                                    <!-- Id Pelanggan -->
                                                                    <input type="hidden" name="id_dimensi" value="<?php echo $bc['id_dimensi'] ?>">

                                                                    <div class="form-group">
                                                                        <label>nama dimensi</label>
                                                                        <input type="text" class="form-control" name="namadimensi" required="" value="<?php echo $bc['Nama_dimensi'] ?>">
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                        <button type="submit" class="btn btn-info float-right">Update data</button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
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