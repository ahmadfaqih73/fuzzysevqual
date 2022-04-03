<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Edit Pernyataan Harapan</h1>
                </div><!-- /.col -->
            </div><!-- /.row -->

            <?php echo form_open_multipart('PernyataanHarapan/tambah') ?>
            <form class="tambah_dimensi" method="POST">
                <input type="hidden" name="id" value="<?php echo $id_penyetaan_harapan   ?>" required>
                <div class="form-group">
                    <label>Dimensi</label>
                    <select class="form-control" name="dimensi" id="dimensi" required=''>
                        <option value="">No Selected</option>
                        <?php foreach ($dimensi as $row) : ?>
                            <option value="<?php echo $row->id_dimensi; ?>"><?php echo $row->Nama_dimensi; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Pertanyaan</label>
                    <input type="text" class="form-control" name="pertanyaan" required="" value="<?php echo ['Pernyataan_harapan'] ?>">
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
<!-- Script -->