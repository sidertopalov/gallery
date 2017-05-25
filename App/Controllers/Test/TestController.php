<?php

use Yee\Managers\Controller\Controller;
use Yee\Managers\CacheManager;
use App\Libraries\File\File;


class TestController extends Controller {

	 /**
     * @Route('/test')
     * @Name('test.index')
     */
    public function testAction( )
    {
        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        // Path to our ttf font file
        $font_file = dirname(__DIR__) . '/Test/Painter_PERSONAL_USE_ONLY.ttf';
        // var_dump($font_file); die;

        $text = "Mebeli Krasi";

        //PNG
        // $im = imagecreatefrompng('img/filename.png');

        //JPEG
        $im = imagecreatefromjpeg('img/download.jpg');

        $imageSize = getimagesize("img/download.jpg");
        $imageWidth = $imageSize[0];
        $imageHeight = $imageSize[1];

        $black = imagecolorallocate($im, 255, 255, 255);

        // Draw the text 'PHP Manual' using font size 13
        imagettftext($im, 14, 0, 20, 20, $black, $font_file, $text);


        // header('Content-Type: image/jpeg');

        $img = $im;
        $dir = "img/newWood.jpg";
        // Image save

        //JPEG
        imagejpeg($im, $dir);

        //PNG
        // imagepng($im)

        imagedestroy($im);
        die;

        $data = array(
            'title' => "Test Controller",
            "img" => imagejpeg($im),
        );
        $app->render('/pages/test.tpl',$data);
    }
}