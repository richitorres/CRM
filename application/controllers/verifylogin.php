<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class VerifyLogin extends CI_Controller {

    public function _construct(){

       parent::_construct();


    }

    public function index()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('username', 'Username', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required|callback_check_database');


        if($this->form_validation->run() == FALSE)
        {

            //Field validation failed.  User redirected to login page
            $this->load->view('login');
        }
        else
        {
            //Go to private area
            redirect('home', 'refresh');
        }
    }

    function check_database($password)
    {
        $this->load->model('Usuario');
        //Field validation succeeded.  Validate against database
        $username = $this->input->post('username');

        //query the database
        $result = $this->Usuario->getUser($username, $password);

        if ($result) {
            foreach ($result as $row) {
                $sess_array = array(
                    'id' => $row->ID_login,
                    'username' => $row->User
                );
                $this->session->set_userdata('logged_in', $sess_array);
            }
            return TRUE;
        } else {
            $this->form_validation->set_message('check_database', 'Invalid username or password');
            return false;
        }

    }

}
