<?php

class Sertifikat{
    public $connection;
	
	public function __construct($host, $user, $pass, $db)
	{
		$this->connection = new mysqli($host, $user, $pass, $db	);
    }
    
    public function fetch($table, $ids = null){
		$sql = "SELECT * FROM $table";
		if ($ids != null) {
			$sql .= " WHERE $ids";
		}
		$query = $this->connection->query($sql) or die ($this->connection->error);
		return $query->fetch_all(MYSQLI_BOTH);
	}
}