<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="col-md-6">
                <a class="btn btn-danger btn-sm" href="<?php echo base_url('Fuzzy/truncate_fuzzyfikasi_persepsi') ?>">
                    <i class="fas fa-trash">
                    </i>
                    Delete
                </a>
                <a class="btn btn-success btn-sm" href="<?php echo base_url('Fuzzy/hasilfuzzyfikasi_persepsi') ?>">
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
                        <th>TFN c</th>
                        <th>TFN a</th>
                        <th>TFN b</th>
                        <th>Defuzy</th>

                    </tr>
                </thead>
                <tbody>

                    <?php
                    $no = 1;
                    foreach ($fuzzyfikasi as $value) {
                    ?>
                        <tr>
                            <td><?php echo $no ?></td>
                            <td><?php echo $value['dimensi'] ?></td>
                            <td><?php echo $value['c'] ?></td>
                            <td><?php echo $value['a'] ?></td>
                            <td><?php echo $value['b'] ?></td>
                            <td><?php echo $value['defuz_persepsi'] ?></td>
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