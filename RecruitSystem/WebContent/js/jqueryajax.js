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
				
				
				 
			}
		});
		return false;
	});

	/*
	 * $("#edu_saveAjax").blur(function() { // 调用jquery下的ajax函数 $.ajax({ //
	 * 发送请求的方式 get post type : "post", // 目标资源位置 url : "/save_edu.action", //
	 * 默认值: true。默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 // false。 async : true, //
	 * 需要发送到服务器的数据 data : { save_sch_name : $("#save_sch_name").val(),
	 * save_maj_name : $("#save_maj_name").val(), save_edu_name :
	 * $("#save_edu_name").val(), }, // 请求成功后的回调函数。 data 为服务器返回的数据 success :
	 * function(res) { if (res.data.result == 1) { window.location.reload(); }
	 * else { // alert('保存失败'); $('#modal-tip-msg').html("保存失败");
	 * $("#tip-info-modal").modal("show"); $(".modal-backdrop:last").css({
	 * "z-index" : 1240 }); return false; } } }); return false; });
	 * 
	 * $("#work_exper_saveAjax").blur(function() { // 调用jquery下的ajax函数 $.ajax({ //
	 * 发送请求的方式 get post type : "post", // 目标资源位置 url : "save_work_exper.action", //
	 * 默认值: true。默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 // false。 async : true, //
	 * 需要发送到服务器的数据 data : { save_com_name : $("#save_com_name").val(),
	 * save_job_name : $("#save_job_name").val(), save_job_cotent :
	 * $("#save_job_cotent").val(), }, // 请求成功后的回调函数。 data 为服务器返回的数据 success :
	 * function(res) { if (res.data.result == 1) { window.location.reload(); }
	 * else { // alert('保存失败'); $('#modal-tip-msg').html("保存失败");
	 * $("#tip-info-modal").modal("show"); $(".modal-backdrop:last").css({
	 * "z-index" : 1240 }); return false; } } }); return false; });
	 */

}

);
