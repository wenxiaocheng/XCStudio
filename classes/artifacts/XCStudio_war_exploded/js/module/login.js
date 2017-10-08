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
                username: {
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

                password: {
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
});


