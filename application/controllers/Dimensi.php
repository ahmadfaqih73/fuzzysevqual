<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dimensi extends CI_Controller
{
    public function index()
    {
        $data['baca_dimensi']=$this->Model_dimensi->read_dimensi();
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('MasterData/Dimensi',$data);
        $this->load->view('template/footer');
    }
    public function viewadd(){
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('MasterData/add_dimensi');
        $this->load->view('template/footer');
    }
    public function ubah(){
        $this->Model_dimensi->ubah_dimensi();
    }
    public function hapus($id){
        $this->Model_dimensi->hapus_dimensi($id);
    }
    public function tambah(){
        $this->Model_dimensi->tambah_dimensi();

    }
}
