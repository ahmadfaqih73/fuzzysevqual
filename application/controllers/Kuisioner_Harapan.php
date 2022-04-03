<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kuisioner_Harapan extends CI_Controller
{
    public function index()
    {
        $data['pertanyaan'] = $this->Model_PernyataanHarapan->read_pernyataanharapan();
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('Pertanyaan/Pertanyaan_harapan', $data);
        $this->load->view('template/footer');
    }
    public function addQuisioner(){
        $this->input->post();
    }
}
