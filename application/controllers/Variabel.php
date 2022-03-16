<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Variabel extends CI_Controller
{
    public function index(){
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('MasterData/variabel');
        $this->load->view('template/footer');
    }
    public function tambah(){
        
    }
}