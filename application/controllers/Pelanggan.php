<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pelanggan extends CI_Controller
{

    
    public function index()
    {
        // $title['title'] = 'Halaman Pelanggan';

        // $data['user'] = $this->db->get_where('user', ['email' =>
        // $this->session->userdata('email')])->row_array();

        // Ambil data melalui model M_pelanggan
        $data['pelanggan'] = $this->Model_Pelanggan->read_pelanggan();
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('Pelanggan/Pelanggan',$data);
        $this->load->view('template/footer');
    }


    //insert
    public function viewAdd()
    {
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('Pelanggan/addpelanggan');
        $this->load->view('template/footer');
    }
    public function add(){
        $this->Model_Pelanggan->insert_pelanggan();
    }
    public function viewedit($id)
    {
        $data['pelanggan']=$this->Model_Pelanggan->getPelanggan($id);
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('Pelanggan/editpelanggan',$data);
        $this->load->view('template/footer');
    }
    public function edit(){
        $this->Model_Pelanggan->update_pelanggan();
    }
    public function hapus($id){
$this->Model_Pelanggan->delete_pelanggan($id);
    }
    
    
}

/* End of file Pelanggan.php */
/* Location: ./application/controllers/Pelanggan.php */