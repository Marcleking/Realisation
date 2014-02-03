<?php

class ConnexionController extends TinyMVC_Controller
{
    public function index()
    {
        $this->view->assign('entete', $this->view->fetch("entete"));
        $this->view->assign('accueil', '');
        $this->view->assign('message', '');
        $this->view->assign('envoyerMessage', '');
        $this->view->assign('documents', '');
        $this->view->assign('horaire', '');
        $this->view->assign('dispo', '');
        $this->view->assign('gestionCompte', '');
        $this->view->assign('gestionComptes', '');
        $this->view->assign('ressource', '');


        if (isset($_POST['user']) && isset($_POST['pwd'])) {

            $this->load->model('connexion_model', 'connexion');
            $this->connexion->seConnecter($_POST['user'], $_POST['pwd'], $_SERVER["REMOTE_ADDR"]);

            if (isset($_SESSION['user'])) {
                $listMessage = '';

                $this->load->model('affichermessage_model', 'lesMessage');
                $result = $this->lesMessage->afficherLesMessage(0);

                $dernierMess = 0;
                if ($result != null) {
                    for ($i = 0; $i< count($result); $i++) {
                        $listMessage .= '<div class="row"><p class="panel"><b>' . $result[$i]['titre'];
                        $listMessage .= '</b><span style="float:right">'.
                                        $result[$i]['courriel'] . '</span><br /><span style="float:right">' .
                                        $result[$i]['date'] . '</span><br />';
                        $listMessage .= $result[$i]['message'] . '<br /></p></div>';
                        $dernierMess = $result[$i]['idMessage'];
                    }
                } else {
                    $this->view->assign("aucunMessage", "");
                }

                $this->view->assign('listMessage', $listMessage);
                $this->view->assign('menu', $this->view->fetch("menu"));
                $this->view->assign('contenu', $this->view->fetch("accueil"));
                $this->view->display('gabarit');
                return;
            }
        }
        $this->view->assign('erreur', "Numéro d'utilisateur ou mot de passe incorrect.");
        $this->view->display('view-connexion');

    }
}
