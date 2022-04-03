<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_Dimensi extends CI_Model
{
    Public function read_dimensi(){
        return $this->db->get('dimensi')->result_array();
    }
    public function ubah_dimensi(){
        $id= $this->input->post('id_dimensi');
        $namadimensi = $this->input->post('namadimensi');
        $data = array(
            'Nama_dimensi'=>$namadimensi
        );
        $this->db->where('id_dimensi',$id);
        $q_update = $this->db->update('dimensi',$data);
        if ($q_update) {
            $this->session->set_flashdata('message', '<div class="alert alert-info alert-dismissible fade show" role="alert">
  <strong>Berhasil!</strong> Data sukses diupdate...
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>');
            redirect('Dimensi', 'refresh');
        } else {
            redirect('Dimensi', 'refresh');
        }
    }
    public function hapus_dimensi($id){
        // ini adaalah cara menghapus data dengan perintah satu baris		// 
       $q_delete = $this->db->delete('dimensi', ['id_dimensi' => $id]);
        if ($q_delete) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Berhasil!</strong> Data terhapus...
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>');
            redirect('Dimensi', 'refresh');
        } else {
            redirect('Dimensi', 'refresh');
        }
    }
    public function tambah_dimensi(){
        $namadimensi= $this->input->post('namadimensi');
        $data=array(
            'Nama_dimensi'=>$namadimensi
        );
        $q_insert= $this->db->insert('dimensi',$data);
        if ($q_insert) {
            $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Berhasil!</strong> Data sukses maksuk...
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>');
            redirect('Dimensi', 'refresh');
        } else {
            redirect('Dimensi', 'refresh');
        }
    }

    
}