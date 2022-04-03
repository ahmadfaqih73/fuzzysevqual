<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-10">
                    <h1 class="m-0">Kepuasan</h1>

                    <section class="content">


                        <!-- Default box -->
                        <div class="card">
                            <div class="card-header">
                                <a href="<?= base_url(); ?>Kepuasan/viewadd" class="btn btn-primary ">Tambah data</a>
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
                                                Kepuasan
                                            </th>
                                            <th style="width: 20%">
                                                Alias
                                            </th>
                                            <th style="width: 20%">
                                                Nilai
                                            </th>
                                            <th style="width: 20%">
                                                Action
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($kepuasan as $k) {
                                        ?>
                                            <tr>
                                                <td>
                                                    <?php echo ++$no ?>
                                                </td>
                                                <td>
                                                    <?php echo $k['Kepuasan'] ?>
                                                </td>
                                                <td>
                                                    <?php echo $k['Alias'] ?>
                                                </td>
                                                <td>
                                                    <?php echo $k['Nilai'] ?>
                                                </td>

                                                <td class="project-actions text-center">
                                                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#updatekepuasan<?= $k['id_kepuasaan'] ?>">
                                                        <i class="fas fa-pencil-alt">
                                                        </i>
                                                        Edit
                                                    </button>
                                                    <!-- <a class=" btn btn-info btn-sm" href="<?= base_url(); ?>Dimensi/view_edit/<?= $user['id_user']; ?>">
                                                        <i class="fas fa-pencil-alt">
                                                        </i>
                                                        Edit
                                                    </a> -->
                                                    <a class="btn btn-danger btn-sm" href="<?= base_url(); ?>Kepuasan/hapus/<?= $k['id_kepuasaan'] ?>">
                                                        <i class="fas fa-trash">
                                                        </i>
                                                        Delete
                                                    </a>
                                                </td>
                                                <!-- Modal  Update-->
                                                <div class="modal fade" id="updatekepuasan<?= $k['id_kepuasaan'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">Update Kepuasan</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form class="col-md-6" method="post" action="<?php echo base_url('Kepuasan/ubah') ?>">

                                                                    <!-- Id Kepuasan -->
                                                                    <input type="hidden" name="id_kepuasan" value="<?php echo $k['id_kepuasaan'] ?>">

                                                                    <div class="form-group">
                                                                        <label>Kepuasan</label>
                                                                        <input type="text" class="form-control" name="kepuasan" required="" value="<?php echo $k['Kepuasan'] ?>">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Alias</label>
                                                                        <input type="text" class="form-control" name="alias" required="" value="<?php echo $k['Alias'] ?>">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Nilai</label>
                                                                        <input type="text" class="form-control" name="Nilai" required="" value="<?php echo $k['Nilai'] ?>">
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