<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kuisioner_Harapan extends CI_Controller
{
    public function index()
    {
        $data['pertanyaan'] = $this->Model_PernyataanHarapan->read_pertanyaan();
        $this->load->view('template/header');
        $this->load->view('template/Navbar');
        $this->load->view('template/sidebar');
        $this->load->view('Pertanyaan/Pertanyaan_harapan', $data);
        $this->load->view('template/footer');
    }
    public function addQuisioner()
    {

        $post = $this->input->post();

        for ($i = 0; $i < sizeof($post['id_pertanyaan']); $i++) {

            $kepuasan = $_POST['Kepuasan' . $i];
            $id_dimensi = $_POST['Atribut' . $i];
            $nama = $_POST['nama'];
            $data = [
                'pernyataan_idharapan' => $post['id_pertanyaan'][$i],
                // 'user_id' => $this->session->userdata('userId'),
                'user_id' => $nama,
                'dimensi_id' => $id_dimensi,
                'kepuasan' => $kepuasan,
                'created_at' => date('Y-m-d H:i:s'),
             
                'jenis' => 'Harapan'
            ];

            // echo "<pre> ";
            // print_r($data);
            // echo "</pre>";
            $qry = $this->db->insert('kuisioner_harapan', $data);
         
          

        }
        redirect('Kuisioner_Harapan');
    }
    public function getNamaUser()
    {
        header('Content-type: application/json');
        $nama = $this->input->post('nama');
        $this->db->like('fullname', $nama);
        $hasil = $this->db->get('users')->result();
        foreach ($hasil as $datauser) {
            $data[] = array(
                'id'    => $datauser->id_user,
                'text'  => $datauser->fullname
            );
        }

        echo json_encode($data);
    }
}
