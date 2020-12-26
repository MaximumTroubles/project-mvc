<?php

namespace Core\Controllers;

use Core\Models\Article;
use Core\Models\User;
use Core\Views\View;
use Core\Libs\Exceptions\NotFoundException;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class ArticleController extends Controller
{

    public function show($id)
    {
        $article = Article::getById($id);
        if (!$article) {
            throw new NotFoundException();
        }
        // $author = User::getById($article->user_id);

        View::render('articles/show', compact('article',));
    }

    public function pdf()
    {
        $articles = Article::findAll();
        $html = '';
        foreach ($articles as $article) {
            $html .= "<h1 style='text-align: center;'>{$article->name}</h1>";
            $html .= "<p style='text-align: center;'>{$article->text}</p>";
        }
        $mpdf = new \Mpdf\Mpdf();
        $mpdf->SetHeader('Articles |Center Text|{PAGENO}');
        $mpdf->SetHTMLFooter('
        <table width="100%">
         <tr>
            <td width="33%">{DATE j-m-Y}</td>
            <td width="33%" align="center">{PAGENO}/{nbpg}</td>
            <td width="33%" style="text-align: right;">My document</td>
         </tr>
        </table>');
        $mpdf->WriteHTML($html);
        $mpdf->Output();
        //$mpdf->Output('articles.pdf', \Mpdf\Output\Destination::DOWNLOAD);
    }

    public function excel()
    {
        $articles = Article::findAll();

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $num = 1;


        for ($i = 1; $i <= count($articles); $i++) {
            $sheet->setCellValue('A' . $i, $articles[$i - 1]->name);
            $sheet->setCellValue('B' . $i, $articles[$i - 1]->text);
            $sheet->setCellValue('C' . $i, $articles[$i - 1]->getAuthor()->name);
            $sheet->setCellValue('D' . $i, $articles[$i - 1]->created_at);
        }




        $writer = new Xlsx($spreadsheet);
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

        header('Content-Disposition: attachment;filename="hello world.xlsx"');
        $writer->save('php://output');
    }

    public function edit($id)
    {
        $article = Article::getById($id);
        if (!$article) {
            throw new NotFoundException();
        }
        $article->name = 'new article';
        $article->text = 'Text for New article';
        $this->dump($article);
    }
}
//? ORM - Object Relation Mapping (обектно релетивное )
//? Singletone 