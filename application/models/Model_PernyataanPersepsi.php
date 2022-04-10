<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_PernyataanPersepsi extends CI_Model
{
    public function get_by_dimensi($id)
    {
        return $this->db->get_where('dimensi', ['id_dimensi' => $id])->row_array();
    }
    public function  get_dimensi()
    {
        $query = $this->db->get('dimensi');
        return $query->result();
    }

    public function read_pernyataanPersepsi()
    {
        $this->db->join('dimensi', 'dimensi.id_dimensi = pernyataan_persepsi.Antribut');
        return $this->db->get('pernyataan_persepsi')->result_array();
    }

    public function simpan_pernyataanPersepsi()
    {
        $atribut = $this->input->post('dimensi');
        $pernyataan = $this->input->post('pertanyaan');
        $data = array(
            'Antribut' => $atribut,
            'Pernyataan_Persepsi' => $pernyataan
        );
        $q_insert = $this->db->insert('pernyataan_persepsi', $data);
        if ($q_insert) {
            $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Berhasil!</strong> Data sukses maksuk...
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>');
            redirect('PernyataanPersepsi', 'refresh');
        } else {
            redirect('PernyataanPersepsi', 'refresh');
        }
    }
    public function hapus_pernyataanPersepsi($id)
    {
        $q_delete = $this->db->delete('pernyataan_persepsi', ['id_pernyataan_persepsi' => $id]);
        if ($q_delete) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Berhasil!</strong> Data terhapus...
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>');
            redirect('PernyataanPersepsi', 'refresh');
        } else {
            redirect('PernyataanPersepsi', 'refresh');
        }
    }
    public function edit_pernyataan()
    {
    }
    public function read_pertanyaan()
    {

        //    return $this->db->query("SELECT id_pernyataan_persepsi,Nama_dimensi, Pernyataan_Persepsi FROM pernyataan_persepsi JOIN dimensi ON dimensi.id_dimensi = pernyataan_persepsi.Antribut ORDER BY id_dimensi ASC;")->result_array();
        $this->db->join('dimensi', 'dimensi.id_dimensi = pernyataan_persepsi.Antribut');
        return $this->db->get('pernyataan_persepsi')->result();
    }
    public function Rekapitulasi_persepsi()
    {
        return
            $this->db->query("SELECT
            Pernyataan_Persepsi,
             Nama_dimensi,
            SUM( STS ) AS jumlahSTS,
            SUM( KS ) AS jumlahKS,
            SUM( CS ) AS jumlahCS,
            SUM( S ) AS jumlahS,
            SUM( SS ) AS jumlahSS 
        FROM
            kuisioner_persepsi 
            JOIN dimensi ON dimensi.id_dimensi = kuisioner_persepsi.dimensi_id
						JOIN pernyataan_persepsi ON pernyataan_persepsi.id_pernyataan_persepsi = kuisioner_persepsi.pernyataan_persepsi_id
        GROUP BY
           id_pernyataan_persepsi
	")->result_array();
    }
}
