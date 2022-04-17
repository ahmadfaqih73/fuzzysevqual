 <?php
    defined('BASEPATH') or exit('No direct script access allowed');

    class Model_fuzzy extends CI_Model
    {

        public function Fuzzyfikasi_harapan()
        {
            $data
                = $this->db->query("SELECT
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
            foreach ($data as $key => $value) {
                $dimensi = $value['Nama_dimensi'];
                $batasbawah = (($value['jumlahSTS'] * 0) + ($value['jumlahKS'] * 1) + ($value['jumlahCS'] * 3) + ($value['jumlahS'] * 5) + ($value['jumlahSS'] * 7)) / ($value['jumlahSTS'] + $value['jumlahKS'] + $value['jumlahCS'] + $value['jumlahS'] + $value['jumlahSS']);
                $batastengah = (($value['jumlahSTS'] * 1) + ($value['jumlahKS'] * 2.5) + ($value['jumlahCS'] * 4.5) + ($value['jumlahS'] * 6.5) + ($value['jumlahSS'] * 8.5)) / ($value['jumlahSTS'] + $value['jumlahKS'] + $value['jumlahCS'] + $value['jumlahS'] + $value['jumlahSS']);
                $batasatas = (($value['jumlahSTS'] * 2) + ($value['jumlahKS'] * 4) + ($value['jumlahCS'] * 6) + ($value['jumlahS'] * 8) + ($value['jumlahSS'] * 10)) / ($value['jumlahSTS'] + $value['jumlahKS'] + $value['jumlahCS'] + $value['jumlahS'] + $value['jumlahSS']);
                $defuz_harapan = ($batastengah + $batasatas) / 2;
                $hasil = array(
                    'dimensi' => $dimensi,
                    'c' => $batasbawah,
                    'a' => $batastengah,
                    'b' => $batasatas,
                    'defuz_harapan' => $defuz_harapan
                );
                //  echo"<pre>";
                //  print_r($hasil);
                //  echo"<prev";
                //  echo "<pre>";
                //     print_r("Nama dimensi"."".$dimensi."batas bawah". "". $batasbawah."batas tengah".$batastengah." batas atas".$batasatas);
                //     echo "</pre>";

                $this->db->insert('fuzzyfikasi_harapan', $hasil);
            }
            redirect('Fuzzyfikasi_harapan');
        }
        public function hasil_fuzzyfikasi_harapan()
        {
            return $this->db->get('fuzzyfikasi_harapan')->result_array();
        }
        public function Fuzzyfikasi_Persepsi()
        {
            $data =
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
            foreach ($data as $key => $value) {
                $dimensi = $value['Nama_dimensi'];
                $batasbawah = (($value['jumlahSTS'] * 0) + ($value['jumlahKS'] * 1) + ($value['jumlahCS'] * 3) + ($value['jumlahS'] * 5) + ($value['jumlahSS'] * 7)) / ($value['jumlahSTS'] + $value['jumlahKS'] + $value['jumlahCS'] + $value['jumlahS'] + $value['jumlahSS']);
                $batastengah = (($value['jumlahSTS'] * 1) + ($value['jumlahKS'] * 2.5) + ($value['jumlahCS'] * 4.5) + ($value['jumlahS'] * 6.5) + ($value['jumlahSS'] * 8.5)) / ($value['jumlahSTS'] + $value['jumlahKS'] + $value['jumlahCS'] + $value['jumlahS'] + $value['jumlahSS']);
                $batasatas = (($value['jumlahSTS'] * 2) + ($value['jumlahKS'] * 4) + ($value['jumlahCS'] * 6) + ($value['jumlahS'] * 8) + ($value['jumlahSS'] * 10)) / ($value['jumlahSTS'] + $value['jumlahKS'] + $value['jumlahCS'] + $value['jumlahS'] + $value['jumlahSS']);
                $defuz_persepsi = ($batastengah + $batasatas) / 2;
                $hasil = array(
                    'dimensi' => $dimensi,
                    'c' => $batasbawah,
                    'a' => $batastengah,
                    'b' => $batasatas,
                    'defuz_persepsi' => $defuz_persepsi
                );
                //  echo"<pre>";
                //  print_r($hasil);
                //  echo"<prev";
                //  echo "<pre>";
                //     print_r("Nama dimensi"."".$dimensi."batas bawah". "". $batasbawah."batas tengah".$batastengah." batas atas".$batasatas." dufuz".$defuz_persepsi);
                //     echo "</pre>";

                $this->db->insert('fuzzyfikasi_persepsi', $hasil);
            }
            redirect('Fuzzyfikasi_persepsi');
        }
        public function hasil_fuzzyfikasi_persepsi()
        {
            return $this->db->get('fuzzyfikasi_persepsi')->result_array();
        }
        public function Servqual()
        {
            $data = $this->db->query("SELECT fuzzyfikasi_harapan.dimensi AS Dimensi,
            AVG(fuzzyfikasi_harapan.defuz_harapan) AS TotalAVGharapan ,
            AVG(fuzzyfikasi_persepsi.defuz_persepsi)  AS TotalAVGpersepsi 
            FROM fuzzyfikasi_harapan INNER JOIN fuzzyfikasi_persepsi 
            ON fuzzyfikasi_harapan.id_fuzzyfikasi_harapan= fuzzyfikasi_persepsi.id_fuzzyfikasi_persepsi 
            GROUP BY dimensi;")->result_array();
            // $data = $this->db->query("SELECT dimensi 
            // ,SUM(defuz_harapan) as total_sum, 
            // AVG(defuz_harapan)  as total
            // FROM fuzzyfikasi_harapan 
            // GROUP BY dimensi")->result_array();
            foreach ($data as $key => $value) {
                $dimensi = $value['Dimensi'];
                $servqual = ( $value['TotalAVGpersepsi']- $value['TotalAVGharapan']);
                $hasil = array(
                    'dimensi' => $dimensi,
                    'GAP' => $servqual
                );
                // echo "<pre>";
                // print_r($hasil);
                // echo "<prev";
                $this->db->insert('hasil', $hasil);
            }
        }
        public function hasil_akhir(){
            return $this->db->get('hasil')->result_arra();
        }
        public function hapus_fuzzy_harapan()
        {
            $this->db->truncate('fuzzyfikasi_harapan');
        redirect('Fuzzyfikasi_harapan');
        }
        public function hapus_fuzzy_persepsi()
        {
            $this->db->truncate('fuzzyfikasi_persepsi');
            redirect('Fuzzyfikasi_persepsi');
        }
    }
