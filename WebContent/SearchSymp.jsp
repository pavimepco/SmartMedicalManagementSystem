<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Symptom</title>
<link rel="stylesheet" type="text/css" href="search.css">
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans);
html, 
body {
	background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
	font-family: 'Open Sans', sans-serif;
	height: 100vh;
	margin: 0;
	overflow-y: hidden;
}

.search {
	width: 100%;
	position: relative;
	display: flex;
	transform: scale(1.5);
}

.searchTerm {
	width: 100%;
	border: 3px solid #00B4CC;
	border-right: none;
	padding: 5px;
	height: 20px;
	border-radius: 5px 0 0 5px;
	outline: none;
	color: #9DBFAF;
}

.searchTerm:focus {
	color: #00B4CC;
}

.searchButton {
	width: 40px;
	height: 36px;
	border: 1px solid #00B4CC;
	background: #00B4CC;
	text-align: center;
	color: #fff;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
	font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap {
	width: 30%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

h1 {
   font-size : 50px;
}

</style>
<title> DETAILS</title>
</head>
<body class="text-center">
<body background="hosp.jpg" height="150" width="150">
	
<header>
<h1 class="font-size" align="center">Search for your Symptom</h1>
</header>
<div align="center"><span align="center" class="error">${error }</span></div>
	<form method="post" action="SympServlet">
		<div class="wrap">
			<div class="search">
				<input type="text" class="searchTerm" title="3-20 Characters,A-z,a-z is only allowed" pattern="[a-zA-Z\s]{3,20}"
					placeholder="Enter your Symptom" name="sym" required><br>
	        		<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
			</div>
		</div>
	</form>
</body>
</html>
