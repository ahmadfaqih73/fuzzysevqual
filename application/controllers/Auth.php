<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{



    public function index()
    {
        $data['title'] = 'Login';
        $this->load->view('template/auth_header', $data);
        $this->load->view('auth/login');
        $this->load->view('template/auth_footer');
    }
    public function Register()
    {
        $data['title'] = 'Register';
        $this->load->view('template/auth_header', $data);
        $this->load->view('auth/register');
        $this->load->view('template/auth_footer');
    }

    public function reg_action()
    {
        $fullname = $this->input->post('fullname');
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $repassword = $this->input->post('repassword');

        if ($password != $repassword) {
            echo "password tidak sama";
            # code...
        } else {
            $data = array(
                'fullname' => $fullname,
                'username' => $username,
                'password' => md5($password)
            );
            // var_dump($data);
            $result = $this->Model_user->simpan('users', $data);
            if ($result > 0) {
                echo "data users berhasil disimpan";
                # code...
            } else {
                echo "data user tidak tersimpan";
            }
        }
    }
    public function login_action()
    {
        

        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $check_login_r = $this->Model_user->getLogin($username, $password);;
        if ($check_login_r->num_rows() > 0) {

            $setData = array(
                'namaUser' => $check_login_r->result()[0]->fullname,
                'role' => $check_login_r->result()[0]->Role_user
            );

            // Session user
            $set_session = $this->session->set_userdata($setData);

            redirect("Admin");
            # code...
        } else {
            echo "login gagal";
        }
    }

    public function logout()
    {

        $array_items = array('namaUser', 'role');

        $this->session->unset_userdata($array_items);
        redirect('Auth','refresh');
    }
}
