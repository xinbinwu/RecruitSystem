$("document").ready(
	function() {
		// 判断用户名是否为空
		$("#basic_name").blur(function() {
			if($(this).val().length > 8) {
				$("#usernamespan").show();
			} else {
				$("#usernamespan").hide();
			}
		});

		$("#email").blur(function() {
			if($(this).val().length == 0) {
				$("#emailspan").show();
			} else {
				$("#emailspan").hide();
			}
		});

		$("#phone").blur(function() {
			if($(this).val().length == 0) {
				$("#phonespan").show();
			} else {
				$("#phonespan").hide();
			}
		});

		$("#age").blur(function() {
			if($(this).val().length == 0) {
				$("#agespan").show();
			} else {
				$("#agespan").hide();
			}
		});

		$("#personInfo").blur(function() {
			if($(this).val().length == 0) {
				$("#personInfospan").show();
			} else {
				$("#personInfospan").hide();
			}
		});

		$("#jobtype").blur(function() {
			if($(this).val().length == 0) {
				$("#jobtypespan").show();
			} else {
				$("#jobtypespan").hide();
			}
		});

		$("#readonlybutton").click(
			function() {
				$('input').removeAttr("readonly");
				$("#sexdiv").show();
				$("#sex").attr("readonly", "readonly")
				$('.UserInfo').css('background-color', '#ffff66')
			});

		$("#updatebutton").click(
			function() {
				if($("#username").val().length == 0 ||
					$("#email").val().length == 0 ||
					$("#phone").val().length == 0) {
					$("#notnull").show();
				} else {
					$("#userupdateform").submit();
				}
			});

	});

