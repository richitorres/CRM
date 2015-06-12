<?php if (! defined('BASEPATH')) exit('No direct script acces allowed ');

class Usuario extends CI_Model{

    //metodo para obtener al usuario de la bd y compararlo con el login
    function getUser($username,$password){

        $this->db->select('ID_login, User, Password');
        $this->db->from('login');
        $this->db->where('User',$username);
        $this->db->where('Password',$password);
        $this->db->limit(1);

        $query= $this->db->get();

        if($query -> num_rows() == 1)
        {
            return $query->result();
        }
        else
        {
            return false;
        }
    }
}