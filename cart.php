<html>
<head>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<a style="color:white;" href="index.html"><button class="button" ><span>
<i class="fa fa-home"></i></span></button></a>
<?php
if(isset($_POST['insert']))
{
$con = mysqli_connect("localhost","id13906031_root","Ayush-tiwari123");
if($con)
{
#echo "Mysql connection ok..!<br>";
mysqli_select_db($con,"id13906031_emart");
$name = strval($_POST['name']);
$quantity = intval($_POST['quantity']);
$price = intval($_POST['price']);

$insert = "insert into cart values('$name','$quantity',$price)";
if(mysqli_query($con,$insert))
{
#echo "Data inserted successfully<br><br><br>";
}
else
{
	#echo "Data not inserted..!<br>".mysqli_error($con);
}
$query = "select * from cart";
$sldt = mysqli_query($con,$query);
echo '<h1 style="text-align:left;font-family:sans-serif;color:#008CBA">CART</h1>';
echo '<table border=5 style="text-align:center">

<tr>
<th>Product Name</th>
<th>Quantity</th>
<th>Price</th>
</tr>';

while($row = mysqli_fetch_array($sldt))
{
echo "<tr>";
echo "<td>".$row['name']."</td>";
echo "<td>".$row['quantity']."</td>";
echo "<td>".$row['price']."</td>";
echo "</tr>";
}
echo "</table>";
mysqli_close($con);
}
}
?>

</body>
</html>
