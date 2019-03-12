<?php

require_once __DIR__."/../model/read.php";

/**
	Controller class for Reading data
*/

class ControlRead
{
	public $resObj=null;
	function __construct(){

	}

	public function readData($courseID='0', $courseDate='0')
	{
		# call entity
		//$this->resObj=new Read();//->readTbl(); //working
		if($courseID==0 || $courseDate=="0")
			$this->resObj=(new Read)->readTbl();
		elseif ($courseID!="0" && $courseDate!="0") {
			$this->resObj=(new Read)->readSingleCourse($courseDate, $courseID);
			$totAtt=0;
			if($this->resObj["result"]==true){
				foreach ($this->resObj["data"] as $index) {
					if($index["att_status"]==1)
						$totAtt+=1;
				}
			}
			$totStd=count($this->resObj["data"]);
			$this->resObj["totAtt"]=$totAtt;
			$this->resObj["totStd"]=$totStd;
		}
		else
			$this->resObj=(new Read)->readSingle($courseID);

		//print_r($this->resObj);
		if($this->resObj["result"]=="false"){
			//$this->resObj["message"]=
			echo "No data due to error";
			//return json_encode(value)
		}
		else{

		}
		/*while($row=$this->resObj["sqlRes"]->fetch_array(MYSQLI_ASSOC)){ // working
			print_r($row); //working
		}/**/
		//return json_encode($this->resObj);
		return $this->resObj;

	}
}

//new ControlRead();
//new Read();

?>