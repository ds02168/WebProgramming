'use strict'

let a = 10;
console.log(a);

// 변수 타입
// 원시타입(number, string, boolean, null, undefined, symbol), 객체타입

console.log(typeof(a));

let b = 3.14;
console.log(typeof b);

b = "윤종희";
console.log(typeof b);

b = true;
console.log(typeof b);

b = null;
console.log(typeof b);

let c;
console.log(typeof c);

console.log(1/0);
console.log(-1/0);
console.log(0/0);

console.log(typeof(1/0)); 
console.log(typeof(-1/0));
console.log(typeof(0/0));

console.log(typeof("윤종희"/4));

c = 123n; //big int type
console.log(c);
console.log(typeof(c));
c = "윤종희" + '영남대학교';
console.log(c);

//template Literals!!
let age = 18;
let base = 10;
c = "자바스크립트";

let str = `테스트!!! ${age+base} 너무 좋아요!! ${c}`;
console.log(str);

// Tagged Template
str = `여러줄로 된 문자열 
ㄹㅇ머림 ㅇ
ㄹ이ㅏㅇ라ㅓ ${c}
한줄더`
console.log(str);

// boolean
// 거짓 (false) : false, 0, null, undefined, NaN, '' <-- falsy value
// 나머지는다 true

let cond = 100 > 200;
console.log(`${cond} ${typeof cond}`);

cond = null;
console.log(`${cond} ${typeof cond}`);

//symbol 객체의 고유 식별자 만들때 주로 사용된다.
let sym1 = Symbol('yu');
let sym2 = Symbol('yu');
console.log(sym1 == sym2);

let sym3 = Symbol.for('yu');
let sym4 = Symbol.for('yu');
console.log(sym3 == sym4);

let myInfo = {name: "윤종희", major:"컴퓨터공학", id:202100222};
console.log(`${myInfo} ${typeof myInfo}`);

console.log(myInfo.name);
console.log(myInfo["major"]);

//산술 연산자 
console.log(3**5);

// 같다 ...
a = '123';
b = 123;
console.log(a == b); // loose equality 연산자. 형변환은 자동으로 함.(타입 상관x)
console.log(a === b); //strict equality 연산자. 값, 타입. 형변환이 없음.

a = {name: "윤종희", major:"컴퓨터공학", id:202100222};
b = {name: "윤종희", major:"컴퓨터공학", id:202100222};
c = a;
console.log(a == b);
console.log(a == c);
console.log(a === b);
console.log(a === c);

