$("document").ready(function() {
	$("#registerPhone").blur(function() {

		// 调用jquery下的ajax函数
		$.ajax({
			// 发送请求的方式 get post
			type : "get",
			// 目标资源位置
			url : "registerPhone.action",
			// 默认值: true。默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为
			// false。
			async : true,
			// 需要发送到服务器的数据
			data : {
				registerPhone : $("#registerPhone").val()
			},
			// 请求成功后的回调函数。 data 为服务器返回的数据
			success : function(message) {
				var json = jQuery.parseJSON(message);
				var list = json[0].registerMessage;
				$("#registerTip").html(list);

			}
		});
		return false;
	});

}

);
