function check(form){
	if(document.forms.loginForm.username.value=""){
		alert("请输入用户名");
		document.forms.loginForm.username.focus();
	}
	if(document.forms.loginForm.password.value=""){
		alert("请输入密码");
		document.forms.loginForm.password.focus();
	}
}