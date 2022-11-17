<?php 

namespace core;
use library\triangle;
use library\message;

class model extends triangle
{
	public $db;
	public $return;

	public function __construct()
	{
		$this->db = triangle::getInstance();
		$this->return = message::getInstance();
	}
}