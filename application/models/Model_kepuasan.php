<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_kepuasan extends CI_Model
{
    public function read_kepuasan()
    {
        return $this->db->get('kepuasan')->result_array();
    }
    public function ubah_kepuasan()
    {
        $id = $this->input->post('id_kepuasan');
        $kepuasan = $this->input->post('kepuasan');
        $Alias = $this->input->post('alias');
        $nilai= $this->input->post('Nilai');
        $data = array(
            'Kepuasan' => $kepuasan,
            'Alias' => $Alias,
            'Nilai'=>$nilai
        );
        $this->db->where('id_kepuasaan', $id);
        $q_update = $this->db->update('kepuasan', $data);

        if ($q_update) {
            $this->session->set_flashdata('message', '<div class="alert alert-info alert-dismissible fade show" role="alert">
  <strong>Berhasil!</strong> Data sukses diupdate...
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>');
            redirect('Kepuasan', 'refresh');
        } else {
            redirect('Kepuasan', 'refresh');
        }
       
    }
    public function hapus_kepuasan($id)
    {
        // ini adaalah cara menghapus data dengan perintah satu baris		// 
        $q_delete = $this->db->delete('kepuasan', ['id_kepuasaan' => $id]);
        if ($q_delete) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Berhasil!</strong> Data terhapus...
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>');
            redirect('Kepuasan', 'refresh');
        } else {
            redirect('Kepuasan', 'refresh');
        }
       
    }
    public function tambah_kepuasan()
    {
       
        $kepuasan = $this->input->post('kepuasan');
        $Alias = $this->input->post('alias');
        $nilai = $this->input->post('Nilai');
        $data = array(
            'Kepuasan' => $kepuasan,
            'Alias' => $Alias,
            'Nilai' => $nilai
        );
        $q_insert = $this->db->insert('kepuasan', $data);
        if ($q_insert) {
            $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Berhasil!</strong> Data sukses maksuk...
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>');
            redirect('Kepuasan', 'refresh');
        } else {
            redirect('Kepuasan', 'refresh');
        }
    }
}