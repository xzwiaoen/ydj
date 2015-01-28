/*
 * 通用JS
 * 
 * 创建时间：2014-10-11
 * 创建人：陈德华
 * 
 */
//获取URL参数
function queryString(item) {
	var sValue = location.search.match(new RegExp("[\?\&]" + item + "=([^\&]*)(\&?)", "i"))
	return sValue ? sValue[1] : sValue
}

// 格式化日期部分
function formatterdate(value) {
    if (value > 9) {
        return value;
    } else {
        return "0" + value;
    }
}

// 获取日期
function getdate(num) {
    var dateVar = new Date(Date.parse(new Date().toString()) - 86400000 * num);
    return dateVar.getFullYear() + "-" + formatterdate((dateVar.getMonth() + 1)) + "-" + formatterdate(dateVar.getDate());
}

// 取Cookie的值
function getCookie(name) {
    var arg = name + "=";
    var alen = arg.length;
    var clen = document.cookie.length;
    var i = 0;
    while (i < clen) {
        var j = i + alen;
        if (document.cookie.substring(i, j) == arg) return getCookieVal(j);
        i = document.cookie.indexOf(" ", i) + 1;
        if (i == 0) break;
    }
    return null;
}

// 截取Cookie
function getCookieVal(offset) {
    var endstr = document.cookie.indexOf(";", offset);
    if (endstr == -1) endstr = document.cookie.length;
    return unescape(document.cookie.substring(offset, endstr));
}

// 写入到Cookie
function setCookie(name, value, expires) {
    var argv = setCookie.arguments;
    // 本例中length = 3
    var argc = setCookie.arguments.length;
    var expires = (argc > 2) ? argv[2] : null;
    var path = (argc > 3) ? argv[3] : null;
    var domain = (argc > 4) ? argv[4] : null;
    var secure = (argc > 5) ? argv[5] : false;
    document.cookie = name + "=" + escape(value) + ((expires == null) ? "" : ("; expires=" + expires.toGMTString())) + ((path == null) ? "" : ("; path=" + path)) + ((domain == null) ? "" : ("; domain=" + domain)) + ((secure == true) ? "; secure" : "");
}

// 删除名称为name的Cookie
function deleteCookie(name) {  
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = GetCookie(name);
    document.cookie = name + "=" + cval + "; expires=" + exp.toGMTString(); // 无法删除时添加
																			// path="/"
}

// 清除COOKIE
function clearCookie(name) {   
    var temp = document.cookie.split(";");
    var loop3;
    var ts;
    for (loop3 = 0; loop3 < temp.length; loop3++) {
        ts = temp[loop3].split("=")[0];
        if (ts.indexOf(name) != -1)
            deleteCookie(ts);
    }
}

// 切换验证码
function changeCode() {
	$('#kaptchaImage').hide().attr(
			'src',
			'captchaimagecreate_getKaptchaImage.action?rid='
					+ Math.floor(Math.random() * 100)).fadeIn();
	//event.cancelBubble = true;
}

// 初始化验证码
function initKaptcha(){
	$('#kaptchaImage')
	.click(
			function(e) {// 生成验证码
				$(this).hide().attr(
						'src',
						'captchaimagecreate_getKaptchaImage.action?rid'
								+ Math.floor(Math.random() * 100))
						.fadeIn();
				e=e||event;
				e.cancelBubble = true;
			});
}

//验证手机号格式
function isMobil(s)
{
	var patrn=/^1[3|4|5|8][0-9]\d{4,8}$/;
	if (!patrn.exec(s)){
		return false;
	}
	return true;
} 

function dateformart (format){
	var o = {
	"M+" : this.getMonth()+1, //month
	"d+" : this.getDate(), //day
	"h+" : this.getHours(), //hour
	"m+" : this.getMinutes(), //minute
	"s+" : this.getSeconds(), //second
	"q+" : Math.floor((this.getMonth()+3)/3), //quarter
	"S" : this.getMilliseconds() //millisecond
	}

	if(/(y+)/.test(format)) {
	format = format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
	}

	for(var k in o) {
	if(new RegExp("("+ k +")").test(format)) {
	format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length));
	}
	}
	return format;
	}




