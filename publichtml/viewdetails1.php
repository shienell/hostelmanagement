<?php
	class viewdetails1
	{					
		var $template="viewdetails1.tpl";
		
		function viewdetails1($params, $tpl)
		{
			extract($params);
			require_once("connection.php");
              
			$sql = "select * from  hostel where hostelname='$hostelname'";
			$rs= $conn->Execute($sql);
                        if($rs)
                         {
                          $hname=$rs->fields[0];
                          $hcode=$rs->fields[1];
						  $hloc=$rs->fields[2];
						  $hwoname=$rs->fields[3];
						  $first=$rs->fields[4];
						  $second=$rs->fields[5];
						  $third=$rs->fields[6];
						  $fourth=$rs->fields[7];
						  $fifth=$rs->fields[8];
						  $sixth=$rs->fields[9];
						  $seventh=$rs->fields[10];
						  $eighth=$rs->fields[11];
						  $ninth=$rs->fields[12];
                         $tenth=$rs->fields[13];
						 $total=$rs->fields[14];
						 }
                       	$tpl->assign("message","$hname Hostel Details");
                        $tpl->assign("hname",$hname);
						$tpl->assign("hcode",$hcode);
                        $tpl->assign("hloc",$hloc);
						$tpl->assign('hwoname',$hwoname);
						$tpl->assign('first',$first);
						$tpl->assign('second',$second);
						$tpl->assign('third',$third);
						$tpl->assign('fourth',$fourth);
						$tpl->assign('fifth',$fifth);
						$tpl->assign('sixth',$sixth);
						$tpl->assign('seventh',$seventh);
						$tpl->assign('eighth',$eighth);
						$tpl->assign('ninth',$ninth);
						$tpl->assign('tenth',$tenth);						
						$tpl->assign('total',$total);		
			$tpl->display($this->template);
			$conn->Close();
		}
    }
?>
