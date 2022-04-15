<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Fuzzy extends CI_Controller
{
    public function hasilfuzzyfikasi_harapan()
    {
        $this->Model_fuzzy->Fuzzyfikasi_harapan();
    }
    public function hasilfuzzyfikasi_persepsi()
    {
        $this->Model_fuzzy->Fuzzyfikasi_Persepsi();
    }
    public function GAP(){
        $this->Model_fuzzy->Servqual();
    }
}