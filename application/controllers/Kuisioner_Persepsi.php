<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kuisioner_Persepsi extends CI_Controller
{
public function index(){
        $data['pertanyaan'] = $this->Model_PernyataanPersepsi->read_pertanyaan();
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('Pertanyaan/Pertanyaan_persepsi',$data);
        $this->load->view('template/footer');
}
}