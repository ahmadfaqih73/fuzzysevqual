 <div class="content-wrapper">
     <!-- Content Header (Page header) -->
     <div class="content-header">
         <!-- Begin Page Content -->
         <div class="container-fluid">
             <!-- Page Heading -->
             <h1 class="h3 mb-4 text-gray-800">Ubah Pelanggan</h1>
             <?php echo form_open_multipart('Pelanggan/edit') ?>
             <form class="col-md-6" method="Post">
                 <input type="hidden" name="id" value="<?= $pelanggan['id_pelanggan']; ?>" required>
                 <div class="form-group">
                     <label>Nama Pelanggan</label>
                     <input type="text" class="form-control" name="nama" required="" value="<?= $pelanggan['namapelanggan']; ?>">
                 </div>
                 <label>Jenis Kelamin</label>
                 <div class="form-check">
                     <input class="form-check-input" type="radio" name="jenis_kelamin" id="exampleRadios1" value="1" required="" <?php echo ($pelanggan['jenis_kelamin'] == '1') ? 'checked' : ''; ?>>
                     <label class="form-check-label" for="exampleRadios1">
                         Laki-laki
                     </label>
                 </div>
                 <div class="form-check">
                     <input class="form-check-input" type="radio" name="jenis_kelamin" id="exampleRadios2" value="2" required="" <?php echo ($pelanggan['jenis_kelamin'] == '2') ? 'checked' : ''; ?>>
                     <label class="form-check-label" for="exampleRadios2">
                         Perempuan
                     </label>
                 </div>
                 <div class="form-group">
                     <label>No hp</label>
                     <input type="number" class="form-control" name="no_hp" required="" value="<?= $pelanggan['nohp']; ?>">
                 </div>
                 <div class="form-group">
                     <label>Alamat</label>
                     <input type="text" class="form-control" name="alamat" required="" value="<?= $pelanggan['alamat']; ?>">
                 </div>
                 <button type="button" class="btn btn-warning float-left" onclick="window.history.back(-1)">Kembali</button>
                 <button type="submit" class="btn btn-success float-right">Ubah data</button>
             </form>
             <?php echo form_close() ?>

         </div>
     </div>
     <!-- /.content-header -->

 </div>
 <!-- /.content-wrapper -->