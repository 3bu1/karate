function ksk_validations(){
	var name = document.getElementById("username_first").value;
	if(name == null || name == '' ){
			alert("Please enter username");
			
			//name.focus();
			return false;
	}
	var username_email = document.getElementById("username_email").value;
		if(username_email == null || username_email == '' ){
			alert("Please enter Email");
			//username_email.focus();
			return false;
	}
	var username_pw = document.getElementById("username_pw").value;
		if(username_pw == null || username_pw == '' ){
			alert("Please enter password");
			//name.focus();
			return false;
	}
	var username_tele = document.getElementById("username_tele").value;
		if(username_tele == null || username_tele == '' ){
			alert("Please enter Telephone number");
			//username_tele.focus();
			return false;
	}
	var username_add = document.getElementById("username_add").value;
		if(username_add == null || username_add == '' ){
			alert("Please enter Address");
			//username_add.focus();
			return false;
	}
	var username_city = document.getElementById("username_city").value;
		if(username_city == null || username_city == '' ){
			alert("Please enter City");
			//username_city.focus();
			return false;
	}
	var username_state = document.getElementById("username_state").value;
		if(username_state == null || username_state == '' ){
			alert("Please enter State");
			//username_state.focus();
			return false;
	}
	var username_Sex = document.getElementById("username_Sex").value;
		if(username_Sex == null || username_Sex == '' ){
			alert("Please enter Gender");
			//username_Sex.focus();
			return false;
	}
	var username_Belt = document.getElementById("username_Belt").value;
		if(username_Belt == null || username_Belt == '' ){
			alert("Please enter Belt");
			//username_Belt.focus();
			return false;
	}
	var username_Art = document.getElementById("username_Art").value;
		if(username_Art == null || username_Art == '' ){
			alert("Please enter Art");
			//username_Art.focus();
			return false;
	}
	var username_Achievement = document.getElementById("username_Achievement").value;	
		if(username_Achievement == null || username_Achievement == '' ){
			alert("Please enter Achivements");
			//username_Achievement.focus();
			return false;
	}
	var images_gallery = document.getElementById("images_gallery").value;	
		if(images_gallery == null || images_gallery == '' ){
			alert("Please enter Image info");
			//images_gallery.focus();
			return false;
	}
	
}