function initUploader(_container, img_uploader, img_fileid, img_uploaded) {

	/*  错误信息    */
	var ErrTip = {};
	ErrTip['typeError'] = '图片格式错误, 支持jpg, jpeg, png';
	ErrTip['sizeError'] = '图片大小不能超过5M';
	ErrTip['emptyError'] = '图片文件为空文件';
	ErrTip['uploadFail'] = '上传失败';
	ErrTip['networkErr'] = '网络传输错误，请检查网络连接';

	/*  模式: 正常模式、上传中模式(正常模式下才可保持)  */
	var NORMAL_MODE = 1,
		UPLOADING_MODE = 2;

	var mode = NORMAL_MODE;

	var container = _container;

	img_uploader = new qq.FileUploaderBasic({
		button: container.find('._j_upload_img').get(0),
		action: '/index/uploadimg',
		allowedExtensions: ['jpg', 'jpeg', 'png'],
		sizeLimit: 5242880, //5M
		debug: true,
		message: ErrTip,
		maxConnections: 1,
		multiple: false,
		multipart: true,
		fieldName: 'imgfile',
		onFileSelected: function(num) {
			return true;
		},
		onSubmit: function(id, fileName) {
			img_fileid = id;
			uploading();
			showProgress();
		},
		onProgress: function(id, fileName, loaded, total) {
			var ratio = loaded / total;
			updateProgress(ratio);
		},
		onComplete: function(id, fileName, responseJSON) {
			if(responseJSON.error) {
				showError(responseJSON.error.errno);
				return;
			}
			if(responseJSON.payload) {
				updateProgress(1);
				uploadedHandler(responseJSON.payload);
			} else {
				showError('uploadFail');
			}
		},
		onCancel: function(id, fileName) {
			img_fileid = 0;
			container.find('._j_process_area').hide();
			container.find('._j_errmsg').hide();
			container.find('._j_save').removeClass('disabled');
		},
		showMessage: function(message) {}
	});

	img_uploader._error = function(code, fileName) {
		showError(code);
	};

	/*  上传完成    */
	function uploadedHandler(payload, update) {
		update = typeof update === 'undefined' ? true : false;
		container.find('._j_save').removeClass('disabled');
		if(typeof(img_uploaded) === 'function') {
			img_uploaded(payload);
		}
	}

	/*  上传中状态  */
	function uploading() {
		mode = UPLOADING_MODE;
		container.find('._j_save').addClass('disabled');
	}

	/*  显示进度    */
	function showProgress() {
		container.find('._j_process_area').show();
		container.find('._j_process_area .bar').css('width', '0%');
		container.find('._j_errmsg').hide();
	}

	/*  更新进度    */
	function updateProgress(ratio) {
		var progress = container.find('._j_process_area .bar');
		console.log(ratio);
		progress.animate({
			'width': Math.ceil(ratio * 100) + '%'
		}, 100);
		if(ratio === 1) {
			this.endProgressTimer = setTimeout(function() {
				container.find('._j_process_area').fadeOut(500, function() {
					//progress.css('width', 0);
				});
			}, 500);
		}
	}

	/* 显示错误 */
	function showError(code) {
		container.find('._j_process_area').hide();
		container.find('._j_errmsg').html(ErrTip[code]).show();
	}
}

/*  上传取消    */
function cancelUploadImg(ev, img_uploader, img_fileid) {
	ev.preventDefault();
	img_uploader._handler.cancel(img_fileid);
}