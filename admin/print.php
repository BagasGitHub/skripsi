<style type="text/css">body {width: 100%;} </style> 
<body OnLoad="window.print()" OnFocus="window.close()"> 
<?php
include "../konmysqli.php";
echo"<link href='../ypathcss/$css' rel='stylesheet' type='text/css' />";
?>

<h3><center>Laporan data admin:</h3>
 

<table width="100%" border="0">
  <tr>
    <th width="5%"><center>No</td>
    <th width="7%"><center>Kode Admin</td>
    <th width="15%"><center>Username</td>
     <th width="20%"><center>Telp</td>
    <th width="20%"><center>Email</td>
    <th width="7%"><center>Status</td>
  </tr>
<?php  
  $sql="select * from `$tbadmin` order by `kode_admin` desc";
  $jum=getJum($conn,$sql);
  $no=0;
		if($jum > 0){
	$arr=getData($conn,$sql);
		foreach($arr as $d) {								
		$no++;
				$kode_admin=$d["kode_admin"];
				$username=$d["username"];
				
				$telepon=$d["telepon"];
				$email=$d["email"];
				$status=$d["status"];
						
if($no %2==1){
echo"<tr bgcolor='#999999'>
				<td>$no</td>
				<td>$kode_admin</td>
				<td>$username</td>
				
				<td>$telepon</td>
				<td>$email</td>
				<td>$status</td>
				</tr>";
				}//no==1
else if($no %2==0){
echo"<tr bgcolor='#cccccc'>
				<td>$no</td>
				<td>$kode_admin</td>
				<td>$username</td>
				
				<td>$telepon</td>
				<td>$email</td>
				<td>$status</td>
				</tr>";
				}
			}//while
		}//if
		else{echo"<tr><td colspan='7'><blink>Maaf, Data admin belum tersedia...</blink></td></tr>";}
		
/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

function getJum($conn,$sql){
  $rs=$conn->query($sql);
  $jum= $rs->num_rows;
	$rs->free();
	return $jum;
}

function getData($conn,$sql){
	$rs=$conn->query($sql);
	$rs->data_seek(0);
	$arr = $rs->fetch_all(MYSQLI_ASSOC);
	
	$rs->free();
	return $arr;
}
		
?>
</table>

