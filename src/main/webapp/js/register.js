
var isSubmitClick=false;
var interval = 120;

// 页面初始化
jQuery(function($) {
	$('#registerForm')
			.bootstrapValidator(
				 {
					//live: 'disabled',
					message : 'This value is not valid',
					trigger : "blur",
					feedbackIcons : {
						valid : 'glyphicon correct',
						invalid : 'glyphicon error',
						validating : 'glyphicon icon-refresh'
						        },
					 fields : {
							
						loginName1 : {
							validators : {
								notEmpty : {
									message : '请填写用户名！'
								},
							}
						},
						
						
						loginPwd1 : {
							validators : {
								stringLength : {
									max : 20,
									min : 6,
									message : '密码长度为6-20位！'
								},
								regexp: {
			                        regexp: /^(?![^a-zA-Z]+$)(?!\D+$).{6,20}$/,
			                        message: '密码必须为字母加数字！'
			                    },
								callback : {
									message : '两次输入的密码不一致!',
									callback : function(value, validator,$field) {
										if (value == "") {
											return {
												valid : false,
												message : '请填写密码！'
											};
										}
										var items = $("input[name='checkpwd']").val();
										if (items == "") {
											return true;
										} else if (items == value) {
											$("#registerForm").bootstrapValidator('revalidateField', 'checkpwd');	
											return true;
										} else {
											$("#registerForm").bootstrapValidator('revalidateField', 'checkpwd');	
											/*return {
												valid : false,
												message : '两次输入的密码不一致！'
											};*/
										}
									}
								}
							}
						},
						
						
						checkpwd1 : {
							validators : {
								notEmpty : {
									message : '请填写密码！'
								},
								stringLength : {
									max : 20,
									min : 6,
									message : '密码长度为6-20位！'
								},
								identical : {
									field : 'loginPwd',
									message : '两次输入的密码不一致!'
								}
							}
						},
						
						agree1 : {
							feedbackIcons : false,
							validators : {
								choice : {
									min : 1,
									message : '请阅读并同意《益大家注册协议》及《益大家服务条款》！'
								}
							}
						},
						
						
							mobile : {
								validators : {
									notEmpty : {
										message : '请填写手机号！'
									},
									
									regexp: {
				                        regexp: /^1[3|5|7|8|][0-9]{9}$/,
				                        message: '请输入正确格式的11位手机号码！'
				                    },
									digits: {
										message : '请输入正确手机号码！'
									},
									remote : {
										url : "member/portalmember_existsMemberMobile.action",
										message : '手机号已被使用！'
									}
								}
							},
							
							kaptchaCode : {
								validators : {
									notEmpty : {
										message : '请填写验证码！'
									},
									remote : {
										url : "captchaimagecreate_checkMathCodeToJson.action",
										message : '验证码错误！'
									}
								}
							},
							
							
							code : {
								validators : {
									notEmpty : {
										message : '请填写手机验证码！'
									},
									remote : {
										url : "member/portalmember_checkMobileCode.action",
										data : {
											"code" : $("#txtcode").val()
										},
										message : '手机验证码错误！'
									}
								}
							}
							
							
							
						}
					}).on('success.field.bv',function(e, data) {
						var bootstrapValidator = $("#registerForm").data('bootstrapValidator');
						if (data.field == 'kaptchaCode' || data.field == 'mobile'){
								console.log("interval"+interval);
							if(bootstrapValidator.isValidField("kaptchaCode") && bootstrapValidator.isValidField("mobile")){
								if(interval==120){
									$('#reg_sendButton').removeAttr("disabled");
									$("#reg_sendButton").unbind("click");
									$('#reg_sendButton').click(getMobileCheckCode);
								}
							}
						}
			}).on('error.field.bv', function(e, data) {	
				if (data.field == 'kaptchaCode' || data.field == 'mobile'){
					$('#reg_sendButton').attr("disabled","disabled");
					$("#reg_sendButton").unbind("click");
				}
	        });
});

function stepOne() {
	// var $form = $("#frmMember");
	//$("#frmMember").data('bootstrapValidator').validate();
	return $("#registerForm").data('bootstrapValidator').isValid();
}




// 获取手机验证码
function getMobileCheckCode() {

	var mobile = $("input[name='mobile']").val();
	var code = $("input[name='kaptchaCode']").val();

	if (mobile == null || mobile == "") {
		return;
	}

	if (code == null || code == "") {
		return;
	}
	$("#reg_sendButton").unbind("click");
	$("#reg_sendButton").attr("disabled", "disabled");
	$("#reg_sendButton").val(interval+"秒后重发");
	timer = window.setInterval("msgInterval();", 1000);
	$.ajax({
		type : "POST",
		url : "portalmember_getMobileCode1.action",
		data : {
			"mobile" : mobile,
			"kaptchaCode" : code
		},
		dataType : "text",
		success : function(message) {
			if (message == "operater.success") {
			} else if (message == "operater.fail") {
				console.log("验证错误");
			} else {
				console.log("message"+message);
			}
		},error:function(e){
			console.log("手机发送错误");
		}
	});

}

// 倒计时
function msgInterval() {
	//var value = $("#reg_sendButton").val();
	if (interval == 0) {
		$("#reg_sendButton").val("获取验证码");
		$("#reg_sendButton").removeAttr("disabled");
		$('#reg_sendButton').click(getMobileCheckCode);
		interval=120;
		clearInterval(timer);
		
//		$('#mobile').removeAttr("disabled");
//		$('#kaptchaCode').removeAttr("disabled");
		return false;
	}else{
		$('#reg_sendButton').attr("disabled","disabled");
		$("#reg_sendButton").unbind("click");
		
		
//		$("#mobile").attr("disabled","disabled");
//		$("#kaptchaCode").attr("disabled","disabled");
		
		
	}
	
	if (isNaN(interval - 1) || isNaN(interval)){
		$("#reg_sendButton").val("获取验证码");
	}
	else{
		interval = interval - 1; 
		$("#reg_sendButton").val(interval+"秒后重发");
	}
		
}