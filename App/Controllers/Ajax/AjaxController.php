<?php

use Yee\Managers\Controller\Controller;
use Yee\Managers\CacheManager;
use App\Models\Ajax\AjaxModel;
use App\Models\MyAccount\MyAccountModel;
use App\Models\Article\ArticleModel;
use App\Models\Category\CategoryModel;

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

        $baseUrl = \Yee\Yee::getDefaultSettings();

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
                'redirectTo'    => "/account",
                'message'       => $error,
                'error'         => false,
                );

        } else {
            $userProperty = $ajaxModel->userProperty();

            $_SESSION['isLogged'] = true;
            $_SESSION['userEmail'] = $loginEmail;

            $data = array(
                "title"         => "AjaxControllerSucc",
                'redirectTo'    => "/account",
                'message'       => "Hello, $loginEmail",
                'success'       => true,
                'error'         => false,
            );
        }

        echo json_encode( $data );
    }
}
