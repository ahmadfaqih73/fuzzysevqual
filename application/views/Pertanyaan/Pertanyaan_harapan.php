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
                            <div class="card-header">

                            </div>
                            <div class="card-body p-0">
                                <?php
                                echo $this->session->flashdata('message');
                                ?>
                                <form method="POST" action="Kuisioner_harapan/addQuisioner">
                                    <table class="table table-striped projects">
                                        <thead>
                                            <tr>
                                                <th style="width: 1%">
                                                    No
                                                </th>
                                                <th style="width: 5%">
                                                    Atribut
                                                </th>
                                                <th style="width: 10%">
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
                                            foreach ($pertanyaan as $k) {
                                            ?>
                                                <tr>
                                                    <td>
                                                        <?php echo ++$no ?>
                                                        <input class="form-control" name="id_pertanyaan[]" hidden value="<?= $pertanyaan->id_pernyataan_harapan ?>">
                                                        <input class="form-control" name="id_dimensi<?= $no ?>" hidden value="<?= $pertanyaan->id_dimensi ?>">
                                                    </td>
                                                    <td>
                                                        <?php echo $pertanyaan->Antribut ?>
                                                    </td>
                                                    <td>
                                                        <?php echo $pertanyaan->Pernyataan_harapan ?>
                                                    </td>
                                                    <td class="project-actions text-center">

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="Kepuasaan" id="inlineRadio1" value="option1">
                                                            <label class="form-check-label" for="inlineRadio1">KTS</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="Kepuasaan" id="inlineRadio2" value="option2">
                                                            <label class="form-check-label" for="inlineRadio2">KS</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="Kepuasaan" id="inlineRadio3" value="option3">
                                                            <label class="form-check-label" for="inlineRadio3">CS</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="Kepuasaan" id="inlineRadio2" value="option2">
                                                            <label class="form-check-label" for="inlineRadio2">S</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="Kepuasaan" id="inlineRadio3" value="option3">
                                                            <label class="form-check-label" for="inlineRadio3">SS</label>
                                                        </div>
                                                    </td>

                                                </tr>
                                            <?php
                                            }
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