<?php

class DefaultController extends TinyMVC_Controller
{
    public function index()
    {
        $this->view->assign('entete', $this->view->fetch("entete"));

        $this->view->assign('accueil', 'class="active"');
        $this->view->assign('message', '');
        $this->view->assign('envoyerMessage', '');
        $this->view->assign('documents', '');
        $this->view->assign('horaire', '');
        $this->view->assign('dispo', '');
        $this->view->assign('gestionCompte', '');
        $this->view->assign('gestionComptes', '');
        $this->view->assign('ressource', '');

        if (isset($_SESSION['user'])) {
            $listMessage = '';

            $this->load->model('afficherMessage_model', 'lesMessage');
            $result = $this->lesMessage->afficherLesMessage(0);

            $dernierMess = 0;
            if ($result != null) {
                for ($i = 0; $i< count($result); $i++) {
                    $listMessage .= '<div class="row"><p class="panel"><b>' . $result[$i]['titre'];
                    $listMessage .= '</b><span style="float:right">'.
                                    $result[$i]['courriel'] .
                                    '</span><br /><span style="float:right">' .
                                    $result[$i]['date'] . '</span><br />';
                    $listMessage .= $result[$i]['message'] . '<br /></p></div>';
                    $dernierMess = $result[$i]['idMessage'];
                }

            } else {
                $this->view->assign("aucunMessage", "");
            }

            $this->view->assign('listMessage', $listMessage);
            $this->view->assign('contenu', $this->view->fetch("accueil"));
            $this->view->assign('menu', $this->view->fetch("menu"));
        } else {
            $this->view->display('view-connexion');
            return;
        }

        $this->view->display('gabarit');
    }
}
