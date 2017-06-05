<?php

use Yee\Managers\Controller\Controller;
use Yee\Managers\CacheManager;
use App\Models\Ajax\AjaxModel;

class AjaxController extends Controller
{

    /**
     * @Route('/ajax/login')
     * @Name('post.index')
     * @Method('post') 
     */
    public function loginAction() {

        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        $loginEmail   = $app->request->post('loginEmail');
        $loginPass    = $app->request->post('loginPass');

        // Create instance of App\Models\Ajax\AjaxModel;
        $ajaxModel = new AjaxModel($loginEmail, $loginPass);

        
        if (!$ajaxModel->validateLogin()) {

            $error = "Fail to join! Check your email/password.";
        }

        if(isset($error)) {

            $data = array(
                "title"         => "AjaxControllerFail",
                'redirectTo'    => "/",
                'message'       => $error,
                'error'         => false,
                );

        } else {
            $userProperty = $ajaxModel->userProperty();

            $_SESSION['isLogged'] = true;
            $_SESSION['userEmail'] = $loginEmail;

            $data = array(
                "title"         => "AjaxControllerSucc",
                'redirectTo'    => "/",
                'message'       => "Hello, $loginEmail",
                'success'       => true,
                'error'         => false,
            );
        }

        echo json_encode( $data );
    }
}
