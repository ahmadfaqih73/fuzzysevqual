<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">

            <table class="table table-bordered text-center table-hover table-striped" id="tableKuisioner">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Jenis</th>
                        <th>Dimensi</th>
                        <th>Pernyataan</th>
                        <th>kepuasan</th>
                        <th>Jumlah Jawaban</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                    $no = 1;
                    foreach ($fuzzyfikasi as $value) {
                    ?>
                        <tr>
                            <td><?php echo $no ?></td>
                            <td><?php echo $value['Jenis'] ?></td>
                            <td><?php echo $value['Nama_dimensi'] ?></td>
                            <td><?php echo $value['Pernyataan_harapan'] ?></td>
                            <td><?php echo $value['kepuasan'] ?></td>
                            <td><?php echo $value['COUNT(kepuasan)'] ?></td>

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