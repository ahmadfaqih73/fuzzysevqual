<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_Pelanggan extends CI_Model
{
    public function insert_pelanggan()
    {
        $pelanggan = $this->input->post('nama');
        $jeniskelamin = $this->input->post('jenis_kelamin');
        $nohp = $this->input->post('no_hp');
        $alamat = $this->input->post('alamat');
        $data = array(
            'namapelanggan' => $pelanggan,
            'jenis_kelamin' => $jeniskelamin,
            'nohp' => $nohp,
            'alamat' => $alamat
        );
        // echo "<pre>";
        // print_r($data);
        // echo "<prev";
        $this->db->insert('pelanggan',$data);
        redirect('Pelanggan');
    }
    public function read_pelanggan(){
        return $this->db->get('pelanggan')->result_array();
    }
    public function getPelanggan($id)
    {
        return $this->db->get_where('pelanggan', ['id_pelanggan' => $id])->row_array();
    }
    public function update_pelanggan(){
        $pelanggan = $this->input->post('nama');
        $jeniskelamin = $this->input->post('jenis_kelamin');
        $nohp = $this->input->post('no_hp');
        $alamat = $this->input->post('alamat');
        $data = array(
            'namapelanggan' => $pelanggan,
            'jenis_kelamin' => $jeniskelamin,
            'nohp' => $nohp,
            'alamat' => $alamat
        );
        //   echo "<pre>";
        // print_r($data);
        // echo "<prev";
        $this->db->where('id_pelanggan', $this->input->post('id'));
        $this->db->update('pelanggan', $data);
        redirect('Pelanggan');
    }
    public function delete_pelanggan($id){
        $this->db->delete('pelanggan', ['id_pelanggan' => $id]);
        redirect('Pelanggan');
    }
}
