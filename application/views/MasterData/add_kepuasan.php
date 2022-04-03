<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Tambah Kepuasan</h1>
                </div><!-- /.col -->
            </div><!-- /.row -->

            <?php echo form_open_multipart('Kepuasan/tambah') ?>
            <form class="tambah_dimensi" method="POST">
                <div class="form-group">
                    <label>Kepuasan</label>
                    <input type="text" class="form-control" name="kepuasan" required="">
                </div>
                <div class="form-group">
                    <label>Alias</label>
                    <input type="text" class="form-control" name="alias" required="">
                </div>
                <div class="form-group">
                    <label>Nilai</label>
                    <input type="text" class="form-control" name="Nilai" required="">
                </div>
                <button type="button" class="btn btn-warning float-left" onclick="window.history.back(-1)">Kembali</button>
                <button type="submit" class="btn btn-success float-right">Tambah data</button>

            </form>

            <?php echo form_close() ?>
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

</div>
<!-- /.content-wrapper -->