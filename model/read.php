
<?php

require_once __DIR__."/entity.php";
/**
	DB access modal class
	Read attendance details
*/


class Read extends Entity
{
	public $result=null;

	function __construct()
	{
		parent::__construct();
	}

	// SELECT * FROM 
	// `og_attendance` att, `og_course` c, `og_student` s
	// WHERE att.att_course=c.courseid and att.att_student=s.studentid
	public function readTbl(){
		$resObj= array();
		$sql="SELECT * FROM `og_attendance` att, `og_course` c, `og_student` s WHERE att.att_course=c.courseid and att.att_student=s.studentid; ";
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

	// SELECT * FROM 
	// `og_attendance` att, `og_course` c, `og_student` s
	// WHERE att.att_course=c.courseid and att.att_student=s.studentid
	// and att.att_date BETWEEN '2019-03-04' and '2019-03-06'
	/** Read attendance detaisl of a single course in a particular date */
	public function readSingleCourse($date, $course){
		$resObj= array();
		$sql="SELECT * FROM `og_attendance` att, `og_course` c, `og_student` s WHERE att.att_course=c.courseid and att.att_student=s.studentid and att.att_date = '$date' and c.courseid='$course'; ";
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

	public function readSingleStud($stID){
		$resObj= array();
		$sql="SELECT * from og_attendance where stid='$stID'; ";
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


//$xc=new Read();
//$xc->readTbl();


?>