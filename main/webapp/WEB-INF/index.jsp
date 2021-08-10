<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
		<form method="POST" action="/process">
			<div>
				Your Name: <input type="text" name="name"></input>
			</div>
			<div>
				<label for="location">Dojo Location:</label>
				<select name="location" id="location">
					<option value="San Jose">San Jose</option>
					<option value="Boise"> Bosie</option>
					<option Value="Seattle">Seattle</option>
				</select>
			</div>
			<div>
				<label for="favorite">Favorite Language: </label>
				<select  name="favorite" id="favorite">
					<option value="Python">Python</option>
					<option value="Java"> Java</option>
					<option Value="Javascript">JaveScript</option>
					<option Value="C++">C++</option>
				</select>
			</div>
			<div>
				<label for="comment">Comment (optional): </label>
				<textarea name="comment"></textarea>
			</div>
			<button>Submit</button>
		</form>
		
</body>
</html>