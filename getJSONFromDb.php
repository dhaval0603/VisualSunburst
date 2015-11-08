<?php 

$user_id = $_GET["userid"];

$db = mysqli_connect( 'localhost', 'root', 'root','HD15_sunburst') or die("Cannot connect to the Database");
$query ="select chart_id,chart_name from charts where user_id = '$user_id'";
$result = mysqli_query($db,$query) or die("Cannot execute the Select");

if(mysqli_num_rows($result)>1) {
	header( 'Location: http://localhost/HD15_sunburst/dashboard.html?user='.$user_id ) ;
} else {
	header( 'Location: http://localhost/HD15_sunburst/' ) ;
}

mysqli_close($db);

?>