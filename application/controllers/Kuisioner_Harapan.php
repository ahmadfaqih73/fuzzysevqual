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

            $kepuasanSTS = 0;
            $kepuasanKS = 0;
            $kepuasanCS = 0;
            $kepuasanS = 0;
            $kepuasanSS = 0;

            if ($kepuasan == 'STS') {
                $kepuasanSTS = 1;
            } else if ($kepuasan == 'KS') {
                $kepuasanKS = 1;
            } else if ($kepuasan == 'CS') {
                $kepuasanCS = 1;
            } else if ($kepuasan == 'S') {
                $kepuasanS = 1;
            } else if ($kepuasan == 'SS') {
                $kepuasanSS = 1;
            }

            // var_dump($kepuasan);
            // echo 'Kepuasan : ' . $kepuasanSTS . ' ' . $kepuasanKS . ' ' . $kepuasanCS . ' ' . $kepuasanS . ' ' . $kepuasanSS;
            // exit;

            $id_dimensi = $_POST['Atribut' . $i];

            // $nama = $_POST['nama'];
            $data = [
                'pernyataan_idharapan' => $post['id_pertanyaan'][$i],
                // 'user_id' => $this->session->userdata('userId'),
                'user_id' => $this->session->set_userdata('user_id'),
                'dimensi_id' => $id_dimensi,
                // 'kepuasan' => $kepuasan,
                'STS' => $kepuasanSTS,
                'KS' => $kepuasanKS,
                'CS' => $kepuasanCS,
                'S' => $kepuasanS,
                'SS' => $kepuasanSS,
                
                'created_at' => date('Y-m-d H:i:s'),

                'jenis' => 'Harapan'
            ];

            echo "<pre> ";
            print_r($data);
            echo "</pre>";
            // $qry = $this->db->insert('kuisioner_harapan', $data);
        }
        // redirect('Kuisioner_Harapan');
    }
    public function getNamaUser()
    {
        header('Content-type: application/json');
        $nama = $this->input->post('nama');
        $this->db->like('namapelanggan', $nama);
        $hasil = $this->db->get('pelanggan')->result();
        foreach ($hasil as $datauser) {
            $data[] = array(
                'id'    => $datauser->id_pelanggan,
                'text'  => $datauser->namapelanggan
            );
        }

        echo json_encode($data);
    }

    public function perhitunganSatu()
    {
        $data = $this->db->query("SELECT
            pernyataan_idharapan,
            SUM( STS ) AS jumlahSTS,
            SUM( KS ) AS jumlahKS,
            SUM( CS ) AS jumlahCS,
            SUM( S ) AS jumlahS,
            SUM( SS ) AS jumlahSS 
        FROM
            kuisioner_harapan 
        GROUP BY
            pernyataan_idharapan
	")->result_array();

        // var_dump($data);

        //RUMUS

        foreach ($data as $key => $value) {

            // echo $value['jumlahSTS'] * 3;
            // echo '<pre>';
            // print_r($value);
            // echo '</pre>';
        }
    }
}
