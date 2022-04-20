 <?php
    defined('BASEPATH') or exit('No direct script access allowed');

    class PernyataanPersepsi extends CI_Controller
    {
        public function index()
        {
            $data['pernyataanpersepsi'] = $this->Model_PernyataanPersepsi->read_pernyataanpersepsi();
            $this->load->view('template/header');
            $this->load->view('template/Navbar');
            $this->load->view('template/sidebar');
            $this->load->view('MasterData/Pernyataan_persepsi', $data);
            $this->load->view('template/footer');
        }
       
        public function viewadd()
        {
            $data['dimensi'] = $this->Model_PernyataanPersepsi->get_dimensi();
            $this->load->view('template/header');
            $this->load->view('template/Navbar');
            $this->load->view('template/sidebar');
            $this->load->view('MasterData/add_Pernyataanpersepsi', $data);
            $this->load->view('template/footer');
        }

        public function tambah()
        {
            $this->Model_PernyataanPersepsi->simpan_pernyataanPersepsi();
        }
       
        public function hapus($id)
        {
            $this->Model_PernyataanPersepsi->hapus_pernyataanPersepsi($id);
        }
        public function view_edit($id)
        {
            $data['dimensi'] = $this->Model_PernyataanPersepsi->get_dimensi();
            $data['pernyataanpersepsi'] = $this->Model_PernyataanPersepsi->getPernyataanPersepsi($id);
            // var_dump($data);
            // exit;
            $this->load->view('template/header');
            $this->load->view('template/Navbar');
            $this->load->view('template/sidebar');
            $this->load->view('MasterData/edit_PernyataanPersepsi', $data);
            $this->load->view('template/footer');
        }
        public function edit()
        {
            $this->Model_PernyataanPersepsi->update_PernyataanPersepsi();
        }
    }
