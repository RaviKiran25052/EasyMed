<!doctype html>
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
			<form class="m-auto d-flex">
				<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-light" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<div class="container">
        <br>
		<div class="bha my-xl-4"> <span style="font-size: 2rem;"><b>Hello,There..!</b></span></div>
		<div class="bha m-4" style="font-size: 1.1rem;">Issues</div>
		<div class="d-flex flex-row flex-nowrap overflow-auto p-2">
            <?php
            $conn = new mysqli('sql105.epizy.com','epiz_33304100','ET4gMxtnggfCno','epiz_33304100_EM');
            $query = "SELECT * FROM HealthIssue"; //You don't need a ; like you do in SQL
            $result = $conn->query($query);
            
            while($row=mysqli_fetch_row($result)){   //Creates a loop to loop through results
                echo "<form action=\"issue.php\" method=\"post\">";
                echo "<div class=\"card card-body rounded-4\">";
                echo "<img src=\"" . htmlspecialchars($row[1]) . "\" ><br>";
                echo "<input type=\"submit\" class=\"rounded-4 bg-primary\" name=\"is\" value=\"".htmlspecialchars($row[0])."\">";  //$row['index'] the index here is a field name
                echo "</div></form>";
            }

                $conn->close();
            ?>
			
		</div>
		<br>
		<div class="bha m-4" style="font-size: 1.1rem;">Medicine</div>
		<div class="d-flex flex-row flex-nowrap overflow-auto p-2">
        <?php
            $conn = new mysqli('sql105.epizy.com','epiz_33304100','ET4gMxtnggfCno','epiz_33304100_EM');
            $query = "SELECT * FROM Medicine"; //You don't need a ; like you do in SQL
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
		<br>
		<div class="bha m-4" style="font-size: 1.1rem;">Medical Shops</div>
		<div class="container-fluid">
			<div class="row">
                <?php
                $conn = new mysqli('sql105.epizy.com','epiz_33304100','ET4gMxtnggfCno','epiz_33304100_EM');
                $query = "SELECT * FROM Shop"; //You don't need a ; like you do in SQL
                $result = $conn->query($query);
                while($row=mysqli_fetch_row($result)){   //Creates a loop to loop through results
                    echo "<div class=\"col-md-6\">";
                        echo "<div class=\"row card m-3\" style=\"border: 0;\">";
                            echo "<div class=\"row g-0 m-4 bg-primary\">";
                                echo "<div class=\"col-sm-4\">";
                                    echo "<iframe src=\"" . htmlspecialchars($row[3]) . "\" style=\"border:0; height:100%; width:90%\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>";
                                    echo "</div>";
                                    echo "<div class=\"col-sm-8 text-light p-2\">";
                                        echo "<div class=\"card-body bg-primary\">";
                                            echo "<h5 class=\"card-title\">". htmlspecialchars($row[0]) ."</h5>";
                                            echo "<img src=\"". htmlspecialchars($row[1]) ."\"
                                        class=\"bg-primary img-fluid rounded-start card-img h-100 w-100 m-0\">";
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
		<br>
	</div>

</body>

</html>