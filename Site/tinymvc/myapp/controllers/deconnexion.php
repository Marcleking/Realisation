<?php

class DeconnexionController extends TinyMVC_Controller
{
    public function index()
    {
        session_unset();
        $this->view->assign('entete', $this->view->fetch("entete"));
        $this->view->display('view-connexion');
    }
}
