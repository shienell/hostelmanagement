<?php
	class viewmonthdetails1
	{	   
		function viewmonthdetails1($params,$tpl)
		{				
				$hostelname=$params['hostelname'];
				$month=$params['month'];
				$year=$params['year'];
				$tpl->assign('hname',$hostelname);
				$tpl->assign('month',$month);
				$tpl->assign('year',$year);
				
				$tpl->display("viewmonthdetails1.tpl");
		}		
	}
?>
