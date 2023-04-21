let login_form = {
    init:function (){
        $('#login_btn').click(function (){
            login_form.send();
        });
    },
    send:function (){
        $('#login_form').attr({
            'action':'/loginimpl',
            'method':'post'
        });
        $('#login_form').submit();
    }
};


let register_form = {
    init:function(){
        $('#register_btn').click(function(){
            register_form.send();
        });
    },
    send: function(){
        $('#register_form').attr({
            'action':'/registerimpl',
            'method':'get'
        });
        $('#register_form').submit();
    }
};


// let jsp01 = {
//     data:0,
//     init:function(){
//         this.data = 'test';
//             // '<c:out value="${num}"/>'  //모델 객체에 넣었던 값을 자바스크립트에서도 쓸 수 있다
//         // 위에거는 문자열. 숫자로 출력하려면 그냥 this.data = ${num}으로 해도 나옴
//         this.display();
//     },
//     display:function(){
//         $('#jsp01').text(this.data+'');  //자바스크립트는 웬만하면 단일 따옴표 쓰세요
//     }
// };

let jsp01 = {
    data:0,
    init:function (num){
        // this.data = 'test';
        this.data = num;
        this.display();
    } ,
    display:function (){
        $('#jsp01').text(this.data+'');
    }
};