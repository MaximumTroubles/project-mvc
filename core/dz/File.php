<?php

class File implements iFile
{
    protected $file;

    public function __construct($filePath)
    {
        $this->file = $filePath;
    }
    public function getPath()
    {

        $pathinfo = pathinfo($this->file);
        var_dump($pathinfo);
    } // путь к файлу
    public function getDir()
    {
        echo 'rere';
    } // папка файла
    public function getName()
    {
        echo 'rere';
    } // имя файла
    public function getExt()
    {
        echo 'rere';
    }  // расширение файла
    public function getSize()
    {
        echo 'rere';
    } // размер файла

    public function getText()
    {
        echo 'rere';
    }          // получает текст файла
    public function setText($text)
    {
        echo 'rere';
    }     // устанавливает текст файла
    public function appendText($text)
    {
        echo 'rere';
    }  // добавляет текст в конец файла

    public function copy($copyPath)
    {
        echo 'rere';
    }    // копирует файл
    public function delete()
    {
        echo 'rere';
    }           // удаляет файл
    public function rename($newName)
    {
        echo 'rere';
    }   // переименовывает файл
    public function replace($newPath)
    {
        echo 'rere';
    }  // перемещает файл
}
