<?php

class viewhostelattendance1
{
	function viewhostelattendance1($params,$tpl)
	{
      extract($params);
	  $hostelname=$params['hostelname'];
	 $month=$params['month'];
		$year=$params['year'];
	
	 require_once("connection.php");
	$rs1=$conn->Execute("select * from hostelstrength
	 where hostelname='$hostelname' and year='$year' and month='$month'") or die("error1");
	;
	 for($i=0;!$rs1->EOF;$i++)
	 {
	    
		$a[$i][0]=$rs1->fields[4];
	    $a[$i][1]=$rs1->fields[5];
		$a[$i][2]=$rs1->fields[6];
		$a[$i][3]=$rs1->fields[7];
		$a[$i][4]=$rs1->fields[8];
		$a[$i][5]=$rs1->fields[9];
		$a[$i][6]=$rs1->fields[10];
		
		
		$total1+=$a[$i][1];
		$total2+=$a[$i][2];
		$total3+=$a[$i][3];
	    $total4+=$a[$i][4];
		$total5+=$a[$i][5];
		$total6+=$a[$i][6];
	    
		
		$rs1->MoveNext();
		
	 }
	
	 
	 $tpl->assign('total1',$total1);
	 $tpl->assign('total2',$total2);
    
	 $tpl->assign('total3',$total3);
    $tpl->assign('total4',$total4);
    $tpl->assign('total5',$total5);
    $tpl->assign('total6',$total6);
    
    
	
	 $tpl->assign('a',$a);
	  
	 $tpl->assign('y',$year);
	 $tpl->assign('hostelname',$hostelname);
	 $tpl->assign('month',$month);
	 $tpl->display("viewhostelattendance1.tpl");
		
	
		
	}
		
					}
	

?>
