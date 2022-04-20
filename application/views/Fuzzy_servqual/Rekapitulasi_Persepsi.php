<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <a class="btn btn-danger btn-sm" href="<?php echo base_url('Fuzzy/truncate_rekapitulasi_persepsi') ?>">
                <i class="fas fa-trash">
                </i>
                Delete
            </a>
            <br></br>
            <table class="table table-bordered text-center table-hover table-striped" id="tableKuisioner">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Dimensi</th>
                        <th>Pernyataan</th>
                        <th>STS</th>
                        <th>KS</th>
                        <th>CS</th>
                        <th>S</th>
                        <th>SS</th>

                    </tr>
                </thead>
                <tbody>

                    <?php
                    $no = 1;
                    foreach ($Rekapitulasi as $value) {
                    ?>
                        <tr>
                            <td><?php echo $no ?></td>
                            <td><?php echo $value['Nama_dimensi'] ?></td>
                            <td><?php echo $value['Pernyataan_Persepsi'] ?></td>
                            <td><?php echo $value['jumlahSTS'] ?></td>
                            <td><?php echo $value['jumlahKS'] ?></td>
                            <td><?php echo $value['jumlahCS'] ?></td>
                            <td><?php echo $value['jumlahS'] ?></td>
                            <td><?php echo $value['jumlahSS'] ?></td>

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