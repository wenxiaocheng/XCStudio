$(document).ready(function () {
    $('#login-form')
        .bootstrapValidator({
            message: '此值无效',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                login_username: {
                    message: '用户名无效',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 1,
                            max: 30,
                            message: '用户名长度必须为1～30个字符'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: '用户名只能包含字母，数字，点和下划线'
                        }
                    }
                },

                login_password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 16,
                            message: '密码长度必须为6～16个字符'
                        }
                    }
                }
            }
        })

        // 点击登录按钮的操作
        .on('success.form.bv', function (e) {
            // 防止提交表单
            // e.preventDefault();

            // 获取表单实例
            var form = $(e.target);

            // 获取BootstrapValidator实例
            var bv = form.data('bootstrapValidator');

            // 使用Ajax提交表单数据
            $.post(form.attr('action'), form.serialize(), function (result) {
                // 处理结果
                console.log(result);
                $("#myText").text("hello")
            }, 'json');
        });


    $('#register-form')
        .bootstrapValidator({
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                register_username: {
                    message: '用户名无效',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 1,
                            max: 30,
                            message: '用户名长度必须为1～30个字符'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: '用户名只能包含字母，数字，点和下划线'
                        }
                    }
                },

                register_password: {
                    enabled: false,
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 16,
                            message: '密码长度必须为6～16个字符'
                        }
                        // identical: {
                        //     field: 'register_confirm_password',
                        //     message: '两次输入的密码不一致'
                        // }
                    }
                },
                register_confirm_password: {
                    enabled: false,
                    validators: {
                        notEmpty: {
                            message: '确认密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 16,
                            message: '密码长度必须为6～16个字符'
                        },
                        identical: {
                            field: 'register_password',
                            message: '两次输入的密码不一致'
                        }
                    }
                },

                register_email: {
                    message: '电子邮箱地址无效',
                    validators: {
                        notEmpty: {
                            message: '电子邮箱不能为空'
                        }
                    }
                },

                register_terms: {
                    validators: {
                        notEmpty: {
                            message: '要完成注册，你需要同意本网站的协议与条款'
                        }
                    }
                }
            }
        })

        // 如果密码不为空，则启用密码/确认密码验证器
        .on('keyup', '[name="register_password"]', function () {
            var isEmpty = $(this).val() == '';
            $('#register-form')
                .bootstrapValidator('enableFieldValidators', 'register_password', !isEmpty)
                .bootstrapValidator('enableFieldValidators', 'register_confirm_password', !isEmpty);

            // 当用户开始输入密码字段时，重新验证字段
            if ($(this).val().length == 1) {
                $('#enableForm').bootstrapValidator('validateField', 'register_password')
                    .bootstrapValidator('validateField', 'register_confirm_password');
            }
        });
});


