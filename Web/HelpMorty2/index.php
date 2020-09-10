<!DOCTYPE html5>
<html>
<head>
<title>Morty is Evil</title>
</head>

<body>
<h1>Help Morty Again Please</h1>
<p>Morty: Rick what does wubba lubba dubb dubb mean ?</p>
<p>Rick: It's Just my catch phraSe</p>
<p>Morty: f@#k you rick im going to find it Out myself.</p>
<p>Rick: Alright Alright..I have hiddeN the meaning in a flag go get it..</p>
<br>

<form action="index.php" method="post">
Morty: <input type="text" name="morty"><br>
Wish: <input type="text" name="wish"><br>
<input type="submit">
</form>
<br>
<img src="im_telling_you_again_mortyISevil.jpg"></img>
<!--/im_telling_you_again_mortyISevil.jpg-->
<!--There is no database in the backend -->
</body>
</html>


<?php
// Only allow POST requests
if (strtoupper($_SERVER['REQUEST_METHOD']) != 'POST') {
  throw new Exception('Only POST requests are allowed');
}

// Make sure Content-Type is application/json 
$content_type = isset($_SERVER['CONTENT_TYPE']) ? $_SERVER['CONTENT_TYPE'] : '';
if (stripos($content_type, 'application/json') === false) {
	echo "/im_telling_you_again_mortyISevil.jpg";
	die();
}

// Read the input stream
$body = file_get_contents("php://input");
 
// Decode the JSON object
$object = json_decode($body, true);
 
// Throw an exception if decoding failed
if (!is_array($object)) {
  throw new Exception('Failed to decode JSON object');
}

// Display the object
if ($object['wish'] === 'flag' && $object['morty'] === 'evil'){
print_r("flag{1m_1n_gr34t_p4in_h3lp_m3_14_01}");
}
?>
