<?php

namespace Core\File;

use Core\File\iFile;


class File implements iFile
{
    protected $filePath;
    protected $pathToFile;
    protected $fileName;
    protected $fileExt;

    public function __construct($filePath)
    {
        $this->filePath = $filePath;
        $this->pathToFile = $this->getPath();
        $this->fileName = $this->getName();
        $this->fileExt = $this->getExt();
    }

    public function getPath()
    {
        $path = pathinfo($this->filePath, PATHINFO_DIRNAME);
        echo 'Путь к файлу - ' . $path . '<br>';
        return $path;
    } // путь к файлу



    public function getDir()
    {
    } // папка файла
    public function getName()
    {
        $name = pathinfo($this->filePath, PATHINFO_FILENAME);
        echo 'Имя  файла - ' . $name . '<br>';
        return $name;
    } // имя файла
    public function getExt()
    {
        $ext = pathinfo($this->filePath, PATHINFO_EXTENSION);
        echo 'Разширение  файла - ' . $ext . '<br>';
        return $ext;
    }  // расширение файла
    public function getSize()
    {
        $size = filesize($this->filePath);
        echo 'Размер файла - ' . $size . ' байт' . '<br>';
    } // размер файла

    public function getText()
    {
        $fp = fopen($this->filePath, 'r');
        $lines = file($this->filePath);
        $str = '';
        for ($i = 0; $i  < count($lines); $i++) {
            $str .= $lines[$i] . '<br>';
        }
        fclose($fp);
        echo $str;
    }         // получает текст файла
    public function setText($text)
    {
        $fp = fopen($this->filePath, 'w+');
        fwrite($fp, $text . "\r\n");
        fclose($fp);
    }   // устанавливает текст файла
    public function appendText($text)
    {
        $fp = fopen($this->filePath, 'a+');
        fwrite($fp, $text . "\r\n");
        fclose($fp);
    }  // добавляет текст в конец файла

    public function copy($copyPath)
    {
        copy($this->filePath, $copyPath);
    }   // копирует файл
    public function delete()
    {
        if (file_exists($this->filePath)) {
            unlink($this->filePath);
            echo 'Файл был удален';
        } else {
            echo 'Файл не найден';
        }
    }         // удаляет файл
    public function rename($newName)
    {
        $path = $this->pathToFile;
        var_dump($path);
        rename($this->filePath, $path . '/' . $newName);
    }   // переименовывает файл
    public function replace($newPath)
    {
        rename($this->filePath, $newPath . '/' . $this->fileName .'.'. $this->fileExt);
    } // перемещает файл
}
