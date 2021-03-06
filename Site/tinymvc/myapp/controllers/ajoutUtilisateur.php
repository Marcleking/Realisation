<?php

class AjoutUtilisateurController extends TinyMVC_Controller
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
        $this->view->assign('gestionComptes', 'class="active"');
        $this->view->assign('ressource', '');
        $this->view->assign('erreurCourriel', '');

        if (isset($_POST['courriel']) && empty($_POST['courriel'])) {
            $this->view->assign('erreurCourriel', 'error');
        }

        if (isset($_SESSION['user'])) {
            $this->view->assign('menu', $this->view->fetch("menu"));

            if ($_SESSION['user']->getType() == "Gestionnaire") {

                if (isset($_POST['courriel']) && !empty($_POST['courriel'])) {

                    $cle = 1;
                    $formationVetement = 1;
                    $formationChaussure = 1;
                    $formationCaissier = 1;
                    $respHoraireConflit = 1;

                    if (!isset($_POST['cle'])) {
                        $cle = 0;
                    }

                    if (!isset($_POST['Vetement'])) {
                        $formationVetement = 0;
                    }

                    if (!isset($_POST['Chaussure'])) {
                        $formationChaussure = 0;
                    }

                    if (!isset($_POST['Caissier'])) {
                        $formationCaissier = 0;
                    }

                    if (!isset($_POST['conflit'])) {
                        $respHoraireConflit = 0;
                    }

                    $this->load->model('ajoutUtilisateur_model', 'ajout');

                    $result = $this->ajout->Ajoututilisateur(
                        trim($_POST['courriel']),
                        $_POST['typeEmp'],
                        $formationVetement,
                        $formationChaussure,
                        $formationCaissier,
                        $cle,
                        $respHoraireConflit
                    );

                    if ($result != null) {
                        $this->view->assign("success", "");
                    } else {
                        $this->view->assign("fail", "");
                    }
                }

                $this->view->assign('contenu', $this->view->fetch("view-ajoutUtilisateur"));
            } else {
                $this->view->display('view-interdit');
                return;
            }
        } else {
            $this->view->display('view-connexion');
            return;
        }

        $this->view->display('gabarit');
    }
}
