'use strict'

//array
const a = []; //array literal syntax
const b = Array(); //Array built-in-function

const c = [1,2,3];
const d =Array.of(1,2,3);

console.log(`${a} ${b} ${c} ${d}`);

const e =[1,'yu',[1,2,3]];
console.log(e);

const f =[
    [1,2,3],
    [4,5,6]
];

console.log(f[0][1]);

console.log(Array(8).fill(10));
console.log(f.length);
console.log(f[0].length);

e.push(100); //배열의 끝에 새로운 값을 추가
console.log(e);

e.unshift(3000); //배열 앞쪽에 새로운 값을 추가
console.log(e);

console.log(e.pop()); //배열 끝에 값 제거
console.log(e);
console.log(e.shift()); //배열 앞쪽에 값 제거
console.log(e);

let g = e.concat(c); //배열 두개 연결
console.log(g);

g = [10,20,30,40];

g.forEach(function(item) {
    console.log(item * 10);
});

g.forEach(item => console.log(item * 100));