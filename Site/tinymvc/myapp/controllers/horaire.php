<?php

class HoraireController extends TinyMVC_Controller
{
    public function index()
    {
        $this->view->assign('entete', $this->view->fetch("entete"));

        $this->view->assign('accueil', '');
        $this->view->assign('message', '');
        $this->view->assign('envoyerMessage', '');
        $this->view->assign('documents', '');
        $this->view->assign('horaire', 'class="active"');
        $this->view->assign('dispo', '');
        $this->view->assign('gestionCompte', '');
        $this->view->assign('gestionComptes', '');
        $this->view->assign('ressource', '');

        if (isset($_SESSION['user'])) {
            $this->view->assign('menu', $this->view->fetch("menu"));
            $this->view->assign('contenu', $this->view->fetch("view-horaire"));
        } else {
            $this->view->display('view-connexion');
            return;
        }

        $this->view->display('gabarit');
    }
}
