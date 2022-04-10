<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Rekapitulasi_Persepsi extends CI_Controller
{
    public function index()
    {
        $data['Rekapitulasi'] = $this->Model_PernyataanPersepsi->Rekapitulasi_persepsi();
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('Fuzzy_servqual/Rekapitulasi_Persepsi', $data);
        $this->load->view('template/footer');
    }
}
