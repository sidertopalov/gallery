<?php
namespace App\Libraries\File;

class File
{
	private $maxFileSize = '10240000';

    private $allowExtensions = array(
        'jpeg' => 'jpeg',
        'jpg' => 'jpg',
        'png' => 'png',
        'octet-stream' => 'octet-stream',
    );

	public function saveFile($file, $targetDir = "img/")
	{
		$errors = [];

        $uploadfileName = $file['name'];
        $fileName = explode('.', $uploadfileName);
        $fileExt = strtolower($fileName[1]);
        $target_file = $targetDir . sha1(time()) . "." . $fileExt;

        // if (!file_exists($target_file)) {
        //     $this->watermarkImage($file["tmp_name"], $target_file, $fileExtention[1]);
        //     // move_uploaded_file($file["tmp_name"], $target_file);
        // } else {
        // 	$rndNum = rand(0, 32768);
        // 	$target_file = $targetDir . sha1(time()) . $rndNum . "." . $fileExtention[1];
        //     $this->watermarkImage($file["tmp_name"], $target_file, $fileExtention[1]);
        //     // move_uploaded_file($file["tmp_name"], $target_file);
        // }

        if (file_exists($target_file)) {
            $rndNum = rand(0, 32768);
            $target_file = $targetDir . sha1(time()) . $rndNum . "." . $fileExt;
        }

        if ($fileExt == "jpg" || $fileExt[1] == "jpeg" || $fileExt == "png") {
            $this->watermarkImage($file["tmp_name"], $target_file, $fileExt);
        } else {
            move_uploaded_file($file["tmp_name"], $target_file);
        }

        return $target_file;
	}

	public function deleteFile($filename)
	{
		if (file_exists($filename)) {
			unlink($filename);
			return true;
		}
		return false;
	}

	public function isAllowedExt($file)
	{
		if (!empty($file['type'])) {
            $fullUploadFileExtension = explode("/", $file['type']);
            $fileExt = $fullUploadFileExtension[1];
            if ($fileExt == array_key_exists($fileExt, $this->allowExtensions)) {
                return true;
            }
        }
        return false;
	}

	public function fileSizeAllowed($file)
	{
		if ($this->maxFileSize >= $file['size']) {
			return false;
		}
		return true;
	}

	public function createFolder($folderName, $dir = "img/gallery/")
	{
        // $fullDir = $dir . md5($folderName) . "_" . $folderName;
		$fullDir = $dir . md5($folderName);
		if (!file_exists($fullDir)) {
		    mkdir($fullDir);
		}
	}

	public function watermarkImage($filename, $targetFileDir, $fileExt, $watterText = "MEBELI KRASI")
	{
        $fileExt = strtolower($fileExt);
		if ($fileExt == "jpg" || $fileExt == "jpeg") {
        	//JPEG image
        	$im = imagecreatefromjpeg($filename);
        } else {
        	//PNG image
        	$im = imagecreatefrompng($filename);
        }

		$font_file = dirname(__DIR__) . '/File/Painter_PERSONAL_USE_ONLY.ttf';

        $imageSize = getimagesize($filename);
        $imageWidth = $imageSize[0];
        $imageHeight = $imageSize[1];

        $black = imagecolorallocate($im, 255, 0, 0);

        // Calculate font-size where 100px = 3 font-size
        $fontSize = $imageWidth / 100 * 3;
        $x = 20;
        $y = $fontSize + 20;
        
        // Draw the text using font size depend on image width
        imagettftext($im, 12, 0, $x, $y, $black, $font_file, $watterText);

        if ($fileExt == "jpg" || $fileExt == "jpeg") {
            imagejpeg($im, $targetFileDir);
        } else {
            imagepng($im, $targetFileDir);
        }

        imagedestroy($im);
	}
}