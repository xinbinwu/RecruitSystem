$("document").ready(function() {
	$("#basic_saveAjax").click(function() {
		// 调用jquery下的ajax函数
		$.ajax({
			// 发送请求的方式 get post
			type : "post",
			// 目标资源位置
			url : "save_employee.action",
			// 默认值: true。默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为
			// false。
			async : true,
			// 需要发送到服务器的数据
			data : {
				basic_name : $("#basic_name").val(),
				basic_sex : $("#basic_sex").val(),
				basic_age : $("#basic_age").val(),
				basic_email : $("#basic_email").val()
			},
			// 请求成功后的回调函数。 data 为服务器返回的数据
			success : function(res) {
				$("#basic_name").prop("disabled", true);
				$("#basic_sex").prop("disabled", true);
				$("#basic_age").prop("disabled", true);
				$("#basic_email").prop("disabled", true);
			}
		});
		return false;
	});

	$("#basic_saveAjaxEdit").click(function() {
		$("#basic_name").prop("disabled", false);
		$("#basic_sex").prop("disabled", false);
		$("#basic_age").prop("disabled", false);
		$("#basic_email").prop("disabled", false);
	});

	$("#edu_saveAjax").click(function() {
		// 调用jquery下的ajax函数
		$.ajax({
			// 发送请求的方式 get post
			type : "post",
			// 目标资源位置
			url : "save_edu.action",
			// 默认值: true。默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为
			// false。
			async : true,
			// 需要发送到服务器的数据
			data : {
				save_sch_name : $("#save_sch_name").val(),
				save_maj_name : $("#save_maj_name").val(),
				save_edu_name : $("#save_edu_name").val(),
			},
			// 请求成功后的回调函数。 data 为服务器返回的数据
			success : function(res) {
					$("#save_sch_name").prop("disabled", true);
					$("#save_maj_name").prop("disabled", true);
					$("#save_edu_name").prop("disabled", true);
			}
		});
		return false;
	});

	$("#edu_saveAjaxEdit").click(function() {
		$("#save_sch_name").prop("disabled", false);
		$("#save_maj_name").prop("disabled", false);
		$("#save_edu_name").prop("disabled", false);
	});

	$("#work_exper_saveAjax").click(function() {
		// 调用jquery下的ajax函数
		$.ajax({
			// 发送请求的方式 get post
			type : "post",
			// 目标资源位置
			url : "save_work_exper.action",
			// 默认值: true。默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为
			// false。
			async : true,
			// 需要发送到服务器的数据
			data : {
				save_com_name : $("#save_com_name").val(),
				save_job_name : $("#save_job_name").val(),
				save_job_cotent : $("#save_job_cotent").val(),
			},
			// 请求成功后的回调函数。 data 为服务器返回的数据
			success : function(res) {
					$("#save_com_name").prop("disabled", true);
					$("#save_job_name").prop("disabled", true);
					$("#save_job_cotent").prop("disabled", true);
			}
		});
		return false;
	});

	$("#work_exper_saveAjaxEdit").click(function() {
		$("#save_com_name").prop("disabled", false);
		$("#save_job_name").prop("disabled", false);
		$("#save_job_cotent").prop("disabled", false);
	});

	$("#basic_sex").blur(function() {
		if ($(this).val() == "男" || $(this).val() == "女") {
			$("#sexspan").hide();

		} else {
			$("#sexspan").show();
		}
	});

	$("#basic_age").blur(function() {
		var age = $(this).val();
		if (age > 0 && age <= 150) {
			$("#agespan").hide();
		} else {
			$("#agespan").show();
		}
	});

	$("#basic_email").blur(function() {
		var email = $(this).val();
		var myReg = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
		if (email.match(myReg)) {
			$("#emailspan").hide();
		} else {
			$("#emailspan").show();
		}
	});

	$("#basic_name").blur(function() {
		if ($(this).val().length == 0) {
			$("#basic_namespan").show();
		} else {
			$("#basic_namespan").hide();
		}
	});

	$("#save_sch_name").blur(function() {
		if ($(this).val().length == 0) {
			$("#schNamespan").show();
		} else {
			$("#schNamespan").hide();
		}
	});

	$("#save_maj_name").blur(function() {
		if ($(this).val().length == 0) {
			$("#majNamespan").show();
		} else {
			$("#majNamespan").hide();
		}
	});

	$("#save_edu_name").blur(function() {
		if ($(this).val().length == 0) {
			$("#eduspan").show();
		} else {
			$("#eduspan").hide();
		}
	});

	$("#save_com_name").blur(function() {
		if ($(this).val().length == 0) {
			$("#workComNamespan").show();
		} else {
			$("#workComNamespan").hide();
		}
	});

	$("#save_job_name").blur(function() {
		if ($(this).val().length == 0) {
			$("#workJobNamespan").show();
		} else {
			$("#workJobNamespan").hide();
		}
	});

	$("#save_job_cotent").blur(function() {
		if ($(this).val().length == 0) {
			$("#workContentspan").show();
		} else {
			$("#workContentspan").hide();
		}
	});

}

);
