<?php
  $uid = val($_POST["is"]);
  function val($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }
  $conn = new mysqli('sql105.epizy.com', 'epiz_33298523', 'P9l60O9F9JPgEJ', 'epiz_33298523_EM');
  $query = "SELECT * FROM Medicine WHERE medname = '$uid'"; //You don't need a ; like you do in SQL
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
			<form class="m-auto d-flex" role="search">
				<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-light" type="submit">Search</button>
			</form>
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

	<div class="bha m-4" style="font-size: 1.1rem;">Medical Shops</div>
		<div class="container-fluid">
			<div class="row">
                <?php
                $conn = new mysqli('sql105.epizy.com', 'epiz_33298523', 'P9l60O9F9JPgEJ', 'epiz_33298523_EM');
                $query = "SELECT * FROM Shop where shopname in (Select shopname from soldin where medname='$uid')"; //You don't need a ; like you do in SQL
                $result = $conn->query($query);
                while($row=mysqli_fetch_row($result)){   //Creates a loop to loop through results
                    echo "<div class=\"col-md-6\">";
                        echo "<div class=\"row card m-3\" style=\"border: 0;\">";
                            echo "<div class=\"row g-0 m-4 bg-primary\">";
                                echo "<div class=\"col-sm-4\">";
                                    echo "<img src=\"". htmlspecialchars($row[1]) ."\"
                                        class=\"bg-primary img-fluid rounded-start card-img h-100 w-100 m-0\">";
                                    echo "</div>";
                                    echo "<div class=\"col-sm-8 text-light p-2\">";
                                        echo "<div class=\"card-body bg-primary\">";
                                            echo "<h5 class=\"card-title\">". htmlspecialchars($row[0]) ."</h5>";
                                        echo "<p class=\"card-text\">". htmlspecialchars($row[2]) ."</p>";
                                    echo "</div>";
                                echo "</div>";
                            echo "</div>";
                        echo "</div>";
                    echo "</div>";
                }
                $conn->close();
                ?>
			</div>
		</div>
</body>
</html>