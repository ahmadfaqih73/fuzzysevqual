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
   }