'use strict'

//함수의 호출
hello();
//함수의 정의 (Hoisting)
function hello(name=`뉴페이스`){
    console.log(`${name}님 환영합니다.`);
}
hello('윤종희');

// rest argumnet
function myPrint( ...args){
    let sum = 0;
    for(let i=0;i<args.length;i++){
        sum += args[i];
    }

    return sum;
}
console.log(myPrint(100,200,300,1,2,3,4,5,6,7));

//myPrint2(); Hoisting이 불가능하다!
const myPrint2 = function(){
    console.log(`test`);
}
myPrint2();

function myFunc(abc, xyz){
    abc();
    xyz();
}
myFunc(myPrint2,hello);

myFunc(function(){console.log('익명1');},function(){console.log('익명2');});

//화살표 함수
const testFunc = function(){
    console.log('gggg');
}
const testFunc2 = () => {console.log('gggg');}
testFunc2();
myFunc(()=>{console.log('익명1');},()=>{console.log('익명2');});

const printHeollo = (msg) => {console.log(msg);}
printHeollo('안녕하세요!!!');

//IIFE : Immediately Invoked Function Expression
((msg) => {
    console.log(msg);
})('윤종희 반갑습니다.');
