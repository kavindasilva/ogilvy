
<?php

require_once __DIR__."/entity.php";
/**
	DB access modal class. EDIT
*/


class Del extends Entity
{
	public $result=null;

	function __construct()
	{
		parent::__construct();
	}

	public function delSt($editData){
		$resObj= array();
		$sql="DELETE from haul where stid='".$editData['sID']."'; ";
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
			$resObj["del"]="ok";

			/*while($row=$this->result->fetch_array(MYSQLI_ASSOC)){ // working
				//print_r($row);
				$resObj["data"][$i]=$row;
				$i++;
			}/**/
		}

		return $resObj;

	}

	/*public function readSingle($stID){
		$resObj= array();
		$sql="SELECT * from haul where stid='$stID'; ";
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
			}/**
		}

		return $resObj;
	}*/

}


//$xc=new Read();
//$xc->readTbl();


?>