<?php 
require_once '../includes/db.php'; // The mysql database connection script
if(isset($_GET['item'])){
	$item = $mysqli->real_escape_string($_GET['item']);
	$status = "0";
	$due_date = date("Y-m-d", strtotime("now"));
       $category_id = $mysqli->real_escape_string($_GET['category_id']);

	$query="INSERT INTO task(item,status,category_id,due_date)  VALUES ('$item', '$status','$ $category_id', '$due_date')";
	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

	$result = $mysqli->affected_rows;

	echo $json_response = json_encode($result);
	}
?>
