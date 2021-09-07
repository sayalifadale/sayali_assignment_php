<html>
<head>
	<title>Sayali PHP Test</title>
	<link rel="stylesheet" type="text/css" href="custom_style.css">
</head>
<body>
	<h1 class="title">Add Animal Information</h1>

	<div class="container">

		<!---- Animal Info Form --->

		<form id="animal_info" action="" method="POST" enctype="multipart/form-data">
        <div class="row">
           <div class="col-25">	
			   <label for="animal_name">Name of the Animal:</label>
		   </div>
		   <div class="col-75">
	 	       <input type="text" name="name" required="">
	 	   </div>
	 	</div>
        <div class="row">
        	<div class="col-25">
	 	      <label for="animal_category">Select Animal Category:</label>
	 	    </div>
	 	    <div class="col-75">
			 	<select name="category" required="">
			 		<option></option>
			 		<option>Herbivores</option>
			 		<option>Omnivores</option>
			 		<option>Carnvores</option>
			 	</select>
			</div>
		</div>
        <div class="row">
        	<div class="col-25">
	 	      <label for="image_upload">Upload Animal Image:</label>
	 	    </div>
	 	    <div class="col-75">
	 	      <input type="file" name="uploadfile" required="">
	 	    </div>
	 	</div>
        <div class="row">
        	<div class="col-25">
	 	      <label for="description">Animal Description:</label>
	 	    </div>
	 	    <div class="col-75">
	 	      <textarea cols="50" name="description" rows="4" required="">
	 	    </textarea>
	 	    </div>
	 	</div>
        <div class="row">
        	<div class="col-25">
	 	      <label for="life_expectancy">Animal Life Expcetancy::</label>
	 	    </div>
	 	    <div class="col-75">
			 	<select name="expectancy" required="">
			 		<option>0-1 year</option>
			 		<option>1-5 year</option>
			 		<option>5-10 year</option>
			 		<option>10+ year</option>
			 	</select>
			</div>
		</div>
		<div class="row">
		   <div class="col-25">
	         <label>Please Enter Captcha:</label>
           </div>
           <div class="col-25" >
		      <input type="text" class="form-control" id="captcha" placeholder="Enter captcha" name="captcha" style="" >

		   </div>
		   <div class="col-25" >
		      <img src="php_captch.php"/ style="margin: 0px 0px 0px 50px;">
	       </div>
		</div>
		<div class="row">
		   <div class="col-75" style="text-align: center;" >
	 	   <input type="submit" name="submit" value="submit">
	 	</div>
	 	</div>
    </form>
    <!---- Animal Info Form End --->
</div>

<!---- Start PHP Code Insert Animal Form Data in Database --->

<?php
session_start();
 include('connect.php');
  $msg = "";
  
  // If upload button is clicked ...
  if (isset($_POST['submit'])) 
  {
  

  	$name=$_POST['name'];
	$category=$_POST['category'];
	$description=$_POST['description'];
	$expectancy=$_POST['expectancy'];
	$captcha=$_POST['captcha'];

    $filename = $_FILES["uploadfile"]["name"];
    $tempname = $_FILES["uploadfile"]["tmp_name"];    
    $folder = "upload_images/".$filename;
          
    		if (move_uploaded_file($tempname, $folder))  
        	{
            	$msg = "Image uploaded successfully";
       		 }
       		 else
       		 {
           		 $msg = "Failed to upload image";
      		}
        
        // If upload button is clicked ...

    	if($_SESSION['CODE']==$captcha)
    	{
        	$sql = "INSERT INTO animal_info (name,photo,category,description,expectancy) VALUES ('$name','$filename','$category','$description','$expectancy')";


        	if(mysqli_query($con, $sql))
  			{
  			
  			    header("location:animal_Details.php");
  	
  			}

        	
  		}
  		else
  			echo "<p style='color:#d63535; text-align:center;'>Please enter valid captcha code</p>";
    }
?>
<!---- PHP Insert Code End --->
</body>
</html>
