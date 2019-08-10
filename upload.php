<?php

//print_r($_FILES);

if(isset($_FILES['inputfilename'])){
	$target = "./uploads/".basename($_FILES['inputfilename']['name']);
	//print_r($_FILES);

	if(move_uploaded_file($_FILES['inputfilename']['tmp_name'],$target)){
		echo "OK!";
	}
	print_r(glob("./uploads/*"));
}
