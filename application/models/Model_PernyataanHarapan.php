 <?php
   defined('BASEPATH') or exit('No direct script access allowed');

   class Model_PernyataanHarapan extends CI_Model
   {
       public function get_by_dimensi($id){
           return $this->db->get_where('dimensi',['id_dimensi' => $id])->row_array();
       }
       public function  get_dimensi(){
        $query = $this->db->get('dimensi');
        return $query->result();
       }
       public function read_pernyataanharapan(){
           $this->db->join('dimensi','dimensi.id_dimensi = pernyataan_harapan.Antribut');
           
            return $this->db->get('pernyataan_harapan')->result_array();
       }

       public function simpan_pernyataanHarapan(){
           $atribut = $this->input->post('dimensi');
           $pernyataan = $this->input->post('pertanyaan');
            $data=array(
                'Antribut'=>$atribut,
                'Pernyataan_harapan'=>$pernyataan
            );
            $q_insert = $this->db->insert('pernyataan_harapan', $data);
            if ($q_insert) {
                $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Berhasil!</strong> Data sukses maksuk...
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>');
                redirect('PernyataanHarapan', 'refresh');
            } else {
                redirect('PernyataanHarapan', 'refresh');
            } 
       }
       public function hapus_pernyataanHarapan($id){
            $q_delete = $this->db->delete('pernyataan_harapan', ['id_pernyataan_harapan' => $id]);
            if ($q_delete) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Berhasil!</strong> Data terhapus...
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>');
                redirect('PernyataanHarapan', 'refresh');
            } else {
                redirect('PernyataanHarapan', 'refresh');
            }
       }
       public function edit_pernyataan(){

       }
        public function read_pertanyaan()
        {
            // return $this->db->query("SELECT id_pernyataan_harapan,Nama_dimensi, Pernyataan_harapan FROM pernyataan_harapan JOIN dimensi ON dimensi.id_dimensi = pernyataan_harapan.Antribut ORDER BY id_dimensi ASC;")->result_array();
            $this->db->join('dimensi', 'dimensi.id_dimensi = pernyataan_harapan.Antribut');
            return $this->db->get('pernyataan_harapan')->result();
        }
        public function getPernyataanHarapan($id)
        {
            return $this->db->get_where('pernyataan_harapan', ['id_pernyataan_harapan' => $id])->row_array();
        }
        public function update_PernyataanHarapan()
        {
            $dimensi = $this->input->post('dimensi');
            $pertanyaan = $this->input->post('pertanyaan');
       
            $data = array(
                'Antribut' => $dimensi,
                'Pernyataan_harapan' => $pertanyaan
                
            );
            //   echo "<pre>";
            // print_r($data);
            // echo "<prev";
            $this->db->where('id_pernyataan_harapan', $this->input->post('id'));
            $this->db->update('pernyataan_harapan', $data);
            redirect('PernyataanHarapan');
        }
        public function Rekapitulasi_harapan()
        {
            return
                $this->db->query("SELECT
            Pernyataan_harapan,
             Nama_dimensi,
            SUM( STS ) AS jumlahSTS,
            SUM( KS ) AS jumlahKS,
            SUM( CS ) AS jumlahCS,
            SUM( S ) AS jumlahS,
            SUM( SS ) AS jumlahSS 
        FROM
            kuisioner_harapan 
            JOIN dimensi ON dimensi.id_dimensi = kuisioner_harapan.dimensi_id
						JOIN pernyataan_harapan ON pernyataan_harapan.id_pernyataan_harapan = kuisioner_harapan.pernyataan_idharapan
        GROUP BY
            pernyataan_idharapan
	")->result_array();
        }

   }