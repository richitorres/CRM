<?php
/**
 * Created by PhpStorm.
 * User: iccanche
 * Date: 20/05/15
 * Time: 12:23 PM
 */

class home extends CI_Controller {

    public function _construct(){
        parent::_contruct();
    }

    public function index()
    {
        if($this->session->userdata('logged_in'))
        {
            $session_data = $this->session->userdata('logged_in');
            $data['username'] = $session_data['username'];
            $this->load->view('header', $data);
            $this->load->view('footer');
        }
        else
        {
            //si no hay sesion iniciada se regresa a la página de login
            redirect('login', 'refresh');
        }
    }

    function logout()
    {
        $this->session->unset_userdata('logged_in');
        session_destroy();
        redirect('verifylogin', 'refresh');
    }

}