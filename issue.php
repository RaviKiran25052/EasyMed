<?php
  $uid = val($_POST["is"]);
  function val($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }
  $conn = new mysqli('sql105.epizy.com','epiz_33304100','ET4gMxtnggfCno','epiz_33304100_EM');
  $query = "SELECT * FROM HealthIssue WHERE issue = '$uid'"; //You don't need a ; like you do in SQL
  $result = $conn->query($query);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Andika&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/512/1988/1988885.png" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
            <link rel="stylesheet" href="style.css">
        </head>
<body>
    <nav class="navbar bg-primary navbar-dark">
		<div class="container-fluid">
			<img src="https://cdn-icons-png.flaticon.com/512/1988/1988659.png" height="25px" class="m-2">
			<a class="navbar-brand">EasyMed</a>
			<div class="m-auto d-flex">
				<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-light" type="submit">Search</button>
</div>
		</div>
	</nav>


    <div class="card h-100 container mt-5">
        <div class="row no-gutters">
          <div style="text-align: center;" class="col-md-4">
		  	<?php
			while($row=mysqli_fetch_row($result)){   //Creates a loop to loop through results
				echo "<img src=\"". htmlspecialchars($row[1]) ."\" class=\"card-img w-50 my-5\" alt=\"Medicine Image\">";
				$dec = htmlspecialchars($row[2]);
			}
      $conn->close();
			?>
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title"><?php echo"$uid"; ?></h5>
			  <p><?php echo"$dec"; ?></p>
            </div>
          </div>
        </div>
    </div>  

    
    <div class="container">
    <div class="bha m-4" style="font-size: 1.1rem;">Medicine</div>
		<div class="d-flex flex-row flex-nowrap overflow-auto p-2">
		<?php
            $conn = new mysqli('sql105.epizy.com','epiz_33304100','ET4gMxtnggfCno','epiz_33304100_EM');
            $query = "SELECT * FROM Medicine where medname in (select medname from treatment where issue = '$uid')"; //You don't need a ; like you do in SQL
            $result = $conn->query($query);
            
            while($row=mysqli_fetch_row($result)){   //Creates a loop to loop through results
                echo "<form action=\"med.php\" method=\"post\">";
                echo "<div class=\"card card-body rounded-4\">";
                echo "<img src=\"" . htmlspecialchars($row[1]) . "\" ><br>";
                echo "<input type=\"submit\" class=\"rounded-4 bg-primary\" name=\"is\" value=\"".htmlspecialchars($row[0])."\">";  //$row['index'] the index here is a field name
                echo "</div></form>";
            }

                $conn->close();
            ?>
		</div>
    </div>    
</body>
</html>