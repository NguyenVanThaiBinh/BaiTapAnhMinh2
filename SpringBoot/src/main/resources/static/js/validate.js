function  getValidate(){

    $("#frmCreateCustomer").validate({

        onclick: false,
        rules: {
           firstName: {
                required: true,
                minlength: 5,
                maxlength: 50
            },
            lastName: {
                required: true,
                minlength: 5,
                maxlength: 50
            },
            email: {
                required: true,
                minlength: 5,
                maxlength: 50
            },
            phone: {
                number: true,
                minlength: 10,
                maxlength: 11
            },
            password: {
                required: false,
                validatePassword: true,
                minlength: 5
            }

        },
        messages: {
            fullName: {
                required: "Bắt buộc nhập tên đầy đủ",
                minlength: "Hãy nhập tối thiểu 5 ký tự",
                maxlength: "Hãy nhập tối đa 50 ký tự"
            },
            phone: {
                number: "Vui lòng nhập một số hợp lệ",
                minlength: "Hãy nhập ít nhất 10 chữ số",
                maxlength: "Hãy nhập tối đã 11 chữ số"
            },
            password: {
                required: "Bắt buộc nhập mật khẩu",
                minlength: "Hãy nhập ít nhất 5 ký tự"
            },
            rePassword: {
                equalTo: "Hai mật khẩu phải giống nhau",
                minlength: "Hãy nhập ít nhất 5 ký tự"
            }
        },
        submitHandler: function() {
            createCustomer();
        }

    });



    $.validator.addMethod("validatePassword", function (value, element) {
        return this.optional(element) || /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$/i.test(value);
    }, "Hãy nhập mật khẩu từ 5 đến 16 ký tự bao gồm chữ hoa, chữ thường và ít nhất một chữ số");
    return true;

}