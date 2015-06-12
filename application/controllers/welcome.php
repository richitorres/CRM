<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function _construct(){
        parent::_contruct();
    }

	public function index()
	{
        $this->load->helper(array('form'));
		$this->load->view('login');
	}

}
