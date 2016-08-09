<?php 
require_once '../includes/db.php'; 
$status = '%';
if(isset($_GET['status'])){
	$status = $mysqli->real_escape_string($_GET['status']);
}
if(isset($_GET['category_id'])){
	$catID = $mysqli->real_escape_string($_GET['category_id']);
}
$query="SELECT ID, ITEM, STATUS, due_date from task where status like '$status' and category_id='$catID' order by status,id desc";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$arr[] = $row;	
	}
}


echo $json_response = json_encode($arr);
?>
