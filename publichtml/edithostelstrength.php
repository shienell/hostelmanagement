<?php


	class edithostelstrength
	{	   
		var $template="edithostelstrength.tpl";
		
		function edithostelstrength($params, $tpl)
		{		 
				require_once("connection.php");	
                $sql=$conn->execute("select hostelname from hostel");
				$i=0;

				$hname=array();
				while(!$sql->EOF)
				{
				$hname[$i]=$sql->fields[0];
				$i++;
				$sql->MoveNext();
				}
				
				 $tpl->assign("message","edithostelstrength");
				 $tpl->assign("hname",$hname);
				 $tpl->display("edithostelstrength.tpl");
				 	
				$conn->Close();
		}	
	}	
?>
