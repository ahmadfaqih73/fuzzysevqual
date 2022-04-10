<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Fuzzyfikasi_persepsi extends CI_Controller
{
    public function index()
    {
        $data['fuzzyfikasi'] = $this->Model_fuzzy->hasil_fuzzyfikasi_persepsi();
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('Fuzzy_servqual/Fuzzyfikasi_persepsi', $data);
        $this->load->view('template/footer');
    }
}
