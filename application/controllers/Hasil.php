<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Hasil extends CI_Controller
{
    public function index()
    {
        $data['hasil'] = $this->Model_fuzzy->hasil_akhir();
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('Fuzzy_servqual/hasil', $data);
        $this->load->view('template/footer');
    }
}
