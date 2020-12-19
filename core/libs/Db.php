<?php

namespace Core\Libs;

use PDO;

class Db
{
    protected $pdo;
    private static $instance;

    private function __construct()
    {
        $options = (require_once __DIR__ . '/../config.php')['db'];
        $this->pdo = new \PDO('mysql:host=' . $options['host'] . ';dbname=' . $options['dbname'], $options['user'], $options['password']);

        //? обратный слешь ищет класс без неймспейсов 
    }
    public function query(string $sql, array $params = [], string $className = 'stdClass') //? $className = 'stdClass' служебный класс 
    {
        $pz = $this->pdo->prepare($sql);
        $result = $pz->execute($params);
        if (!$result) {
            return null;
        }
        return $pz->fetchAll(\PDO::FETCH_CLASS, $className);
    }

    public static function getInstance()
    {
        if (self::$instance == null) {
            self::$instance = new self();
        }
        return self::$instance;
    }
}
