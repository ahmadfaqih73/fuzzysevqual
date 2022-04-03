<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kepuasan extends CI_Controller
{
    public function index()
    {
        $data['kepuasan'] = $this->Model_kepuasan->read_kepuasan();
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('MasterData/Kepuasaan', $data);
        $this->load->view('template/footer');
    }
    public function viewadd()
    {
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('MasterData/add_kepuasan');
        $this->load->view('template/footer');
    }
    public function ubah()
    {
        $this->Model_kepuasan->ubah_kepuasan();
       
    }
    public function hapus($id)
    {
         $this->Model_kepuasan->hapus_kepuasan($id);
       
    }
    public function tambah()
    {
        $this->Model_kepuasan->tambah_kepuasan();
    }
}