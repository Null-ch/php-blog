<?php

namespace Nulls\PhpBlog;

use PDO;


class PostMapper
{
    /**
     * @var PDO
     */
    private PDO $connection;

    /**
     * PostMapper constructor.
     * @param PDO $connection
     */
    public function __construct(PDO $connection)
    {
        $this->connection = $connection;
    }

    /**
     * @param $urlKey
     * @return mixed|null
     */
    public function  getByUrlKey($urlKey)
    {
        $statement = $this->connection->prepare('SELECT * FROM post WHERE url_key = :url_key');
        $statement->execute([
            'url_key' => $urlKey
        ]);
        $result = $statement->fetchAll();
        return array_shift($result);
    }

    public function getList(string $direction): ?array
    {
        if (!in_array($direction, ['DESC', 'ASC'])) {
            throw new Exception('The direction is not supported.');
        }
        $statement = $this->connection
            ->prepare(
                'SELECT * FROM post ORDER BY published_date '
                . $direction
            );

        $statement->execute();

        return $statement->fetchAll();
    }
}