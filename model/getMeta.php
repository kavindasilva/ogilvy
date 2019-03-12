
<?php

/**
	This file is used to retrieve master data from the DB
*/

require_once __DIR__."/entity.php";
/**
	DB access modal class
	Read Master details
*/


class Meta extends Entity
{
	public $result=null;

	function __construct()
	{
		parent::__construct();
	}

	public function readStuds(){
		$resObj= array();
		$sql="SELECT * FROM `og_student` ; ";
		$this->result=$this->conn->query($sql);

		if(!$this->result){
			echo __CLASS__." : ",__FUNCTION__," error<br/>";
			echo $this->conn->error; // error printing //works
			$resObj["result"]="false";
			$resObj["error"]["message"]=$this->conn->error;
			//return $resObj;
			//return null;
		}
		else{
			$i=0;
			$resObj["result"]="true";
			/*while($row=$this->result->fetch_array(MYSQLI_ASSOC)){ // working
				print_r($row);
			}*/
			//$resObj['sqlRes']=$this->result; //to return sqli result

			while($row=$this->result->fetch_array(MYSQLI_ASSOC)){ // working
				//print_r($row);
				$resObj["data"][$i]=$row;
				$i++;
			}/**/
		}

		return $resObj;

	}

	public function readCourse(){
		$resObj= array();
		$sql="SELECT * FROM `og_course`; ";
		$this->result=$this->conn->query($sql);

		if(!$this->result){
			echo __CLASS__." : ",__FUNCTION__," error<br/>";
			echo $this->conn->error; // error printing //works
			$resObj["result"]="false";
			$resObj["error"]["message"]=$this->conn->error;
			//return $resObj;
			//return null;
		}
		else{
			$i=0;
			$resObj["result"]="true";

			while($row=$this->result->fetch_array(MYSQLI_ASSOC)){ // should be only one row
				//print_r($row);
				$resObj["data"][$i]=$row;
				$i++;
			}/**/
		}

		return $resObj;
	}

}



?>