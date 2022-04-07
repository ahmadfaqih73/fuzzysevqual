<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row ">
                <div class="col">
                    <h1 class="m-0">Selamat Datang</h1>
                    <p></p>
                    <section class="content">

                        <!-- Default box -->
                        <div class="card">
                            <form method="POST" action="<?php echo base_url('Kuisioner_Persepsi/addQuisioner') ?>">
                                <div class="card-header">

                                    <div class="form-group">
                                        <label>Nama user</label>
                                        <select class="form-control" id="selectUser" autofocus="true" name="nama">
                                        </select>
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
                                                <th style="width: 10%">
                                                    Atribut
                                                </th>
                                                <th style="width: 20%">
                                                    Pernyataan
                                                </th>
                                                <th style="width: 20%">
                                                    Action
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $no = 0;
                                            foreach ($pertanyaan as $k) :
                                            ?>
                                                <tr>
                                                    <td>
                                                        <?php echo $no ?>
                                                        <input class="form-control" name="id_pertanyaan[]" hidden value="<?= $k->id_pernyataan_persepsi ?>">
                                                        <input class="form-control" name="Atribut<?= $no ?>" hidden value="<?= $k->id_dimensi ?>">
                                                    </td>
                                                    <td>
                                                        <?php echo $k->Nama_dimensi ?>
                                                    </td>
                                                    <td>
                                                        <?php echo $k->Pernyataan_Persepsi ?>
                                                    </td>
                                                    <td class="project-actions text-center">

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="Kepuasan<?= $no ?>" id="inlineRadio1" value="KTS">
                                                            <label class="form-check-label" for="inlineRadio1">KTS</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="Kepuasan<?= $no ?>" id="inlineRadio2" value="KS">
                                                            <label class="form-check-label" for="inlineRadio2">KS</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="Kepuasan<?= $no ?>" id="inlineRadio3" value="CS">
                                                            <label class="form-check-label" for="inlineRadio3">CS</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="Kepuasan<?= $no ?>" id="inlineRadio2" value="S">
                                                            <label class="form-check-label" for="inlineRadio2">S</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="Kepuasan<?= $no ?>" id="inlineRadio3" value="SS">
                                                            <label class="form-check-label" for="inlineRadio3">SS</label>
                                                        </div>
                                                    </td>

                                                </tr>
                                            <?php
                                                $no++;
                                            endforeach;
                                            ?>
                                        </tbody>
                                    </table>
                            </form>
                            <div class="card-footer">
                                <button class="btn btn-success" type="submit">Submit</button>
                            </div>
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
<script type="text/javascript">
    $('#selectUser').select2({
        theme: 'bootstrap4',
        placeholder: 'Pilih User',
        ajax: {
            url: '<?php echo base_url('Kuisioner_Persepsi/getNamaUser') ?>',
            type: 'POST',
            dataType: 'json',
            data: params => ({
                fullname: params.term
            }),
            processResults: data => ({
                results: data
            }),
            cache: true
        }
    });
</script>