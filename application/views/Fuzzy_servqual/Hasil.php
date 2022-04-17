<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="col-md-6">
                <a class="btn btn-danger btn-sm" href="<?php echo base_url('Fuzzy/truncate_hasil') ?>">
                    <i class="fas fa-trash">
                    </i>
                    Delete
                </a>
                <a class="btn btn-success btn-sm" href="<?php echo base_url('Fuzzy/GAP') ?>">
                    <i class="fas fa-pencil-alt">
                    </i>
                    proses
                </a>
            </div>
            <br>
            <table class="table table-bordered text-center table-hover table-striped" id="tableKuisioner">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Dimensi</th>
                        <th>Total</th>


                    </tr>
                </thead>
                <tbody>

                    <?php
                    $no = 1;
                    foreach ($hasil as $value) {
                    ?>
                        <tr>
                            <td><?php echo $no ?></td>
                            <td><?php echo $value['dimensi'] ?></td>
                            <td><?php echo $value['GAP'] ?></td>

                        </tr>
                    <?php $no++;
                    } ?>
                </tbody>
            </table>

        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

</div>
<!-- /.content-wrapper -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#tableKuisioner').DataTable();
    });
</script>