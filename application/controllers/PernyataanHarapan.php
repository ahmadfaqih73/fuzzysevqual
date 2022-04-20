 <?php
    defined('BASEPATH') or exit('No direct script access allowed');

    class PernyataanHarapan extends CI_Controller
    {
        public function index()
        {
            $data['pernyataanharapan']=$this->Model_PernyataanHarapan->read_pernyataanharapan();
            $this->load->view('template/header');
            $this->load->view('template/Navbar');
            $this->load->view('template/sidebar');
            $this->load->view('MasterData/Pernyataan_harapan',$data);
            $this->load->view('template/footer');

        }
        public function getDimensi(){
            header('Content-type: application/json');
            $nama = $this->input->post('nama_dimensi');
            $this->db->like('Nama_dimensi', $nama);
            $hasil = $this->db->get('dimensi')->result();
            foreach ($hasil as $dataNamaMhs) {
                $data[] = array(
                    'id'    => $dataNamaMhs->id_dimensi,
                    'text'  => $dataNamaMhs->Nama_dimensi
                );
            }
     
        }
        public function viewadd(){
            $data['dimensi']= $this->Model_PernyataanHarapan->get_dimensi();
            $this->load->view('template/header');
            $this->load->view('template/Navbar');
            $this->load->view('template/sidebar');
            $this->load->view('MasterData/add_PernyataanHarapan',$data);
            $this->load->view('template/footer');
        }

        public function tambah(){
            $this->Model_PernyataanHarapan->simpan_pernyataanHarapan();
        }
        public function view_edit($id){
            $data['dimensi'] = $this->Model_PernyataanHarapan->get_dimensi();
            $data['pernyataanharapan'] = $this->Model_PernyataanHarapan->getPernyataanHarapan($id);
        //    var_dump($data);
        //    exit;
            $this->load->view('template/header');
            $this->load->view('template/Navbar');
            $this->load->view('template/sidebar');
            $this->load->view('MasterData/edit_PernyataanHarapan',$data);
            $this->load->view('template/footer');
        }
        public function hapus($id){
            $this->Model_PernyataanHarapan->hapus_pernyataanHarapan($id);

        }
        public function edit(){
            $this->Model_PernyataanHarapan->update_PernyataanHarapan();
        }
        public function getNamaDimensi()
        {
            header('Content-type: application/json');
            $nama = $this->input->post('dimensi');
            $this->db->like('Nama_dimensi', $nama);
            $hasil = $this->db->get('dimensi')->result();
            foreach ($hasil as $datauser) {
                $data[] = array(
                    'id'    => $datauser->id_dimensi,
                    'text'  => $datauser->Nama_dimensi
                );
            }

            echo json_encode($data);
        }
    }
