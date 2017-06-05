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
        $font_file = dirname(__DIR__) . '../fonts/Painter_PERSONAL_USE_ONLY.ttf';
        $font_file = $_SERVER['DOCUMENT_ROOT']. "/fonts/Painter_PERSONAL_USE_ONLY.ttf";
        // var_dump($_SERVER['DOCUMENT_ROOT']);
        // var_dump(dirname(__FILE__) . "../fonts/Painter_PERSONAL_USE_ONLY.ttf"); die;

        $text = "Mebeli Krasi";

        //PNG
        // $im = imagecreatefrompng('img/filename.png');
        $img = 'img/wood.jpg';
        //JPEG
        $im = imagecreatefromjpeg($img);

        $imageSize = getimagesize($img);
        $imageWidth = $imageSize[0];
        $imageHeight = $imageSize[1];
        // var_dump($imageWidth);
        // var_dump($imageHeight);
        // var_dump($imageSize); die;

        $black = imagecolorallocate($im, 255, 255, 255);

        $fontSize = $imageWidth / 100 * 3;
        $x = 20;
        $y = $fontSize + 20;
        // var_dump($fontSize);die;
        // Draw the text 'PHP Manual' using font size 13
        imagettftext($im, $fontSize, 0, $x, $y, $black, $font_file, $text);


        header('Content-Type: image/jpeg');

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