'use strict'
const car = {}; //오브젝트,object literal
const car2 = new Object();
const car3 = Object.create(null);

// constructor
function Car(brand, model){
    this.brand = brand;
    this.model = model;
}

const myCar = new Car('현대','소나타');
console.log(myCar.brand + myCar.model);

let age = 18;
let myAge = age;
myAge = 21;
console.log(`${age} ${myAge}`);

const car4 = {
    color: 'gray'
}

const myNewCar = car4; //오브젝트는 항상 passed by reference
myNewCar.color='red';
console.log(`${car4.color} ${myNewCar.color}`);

const car5 = {
    color:'yellow',
    'the color': 'blue'
}

console.log(car5.color);
console.log(car5['color']);
console.log(car5['the color']);

console.log(car5.brand);


const car6 = {
    brand: {
        name:"기아"
    },
    color : 'green'
}
console.log(`${car6.brand.name} ${car6['brand']['name']}`);

car6.model = "K8"; //새로운 property 추가
console.log(`${car6.model}`);

delete car6.color;
console.log(car6.color);

const car7 = {
    brand : '삼성',
    model : 'QM6',
    print : function(){
        console.log(`브랜드 : ${this.brand}, 모델 : ${this.model}`);
    },//메소드
    print2 : () => {
        console.log(`브랜드 : ${this.brand}, 모델 : ${this.model}`);
    }//화살표 메소드에서는 this를 사용할 수 없다.
}

car7.print3 = function(){
    console.log(this.brand);
}


car7.print();
car7.print2();
car7.print3();

// 클래스

class person {
    constructor(name) {
        this.name = name;

    }
    hello() {
        console.log(`${this.name}님 환영합니다!`);
    }

    static print(){
        console.log(`static print`);
    }
}

const yoon = new person();
yoon.name="윤종희";
console.log(yoon.name);
yoon.hello();

const kim = new person("김전일");
kim.hello();

//kim.print();
person.print();

class Programmer extends person {
    hello(){
        super.hello();
        console.log("프로그래머입니다.");
    }
}

const programmer = new Programmer();
programmer.name = '홍길동';
programmer.hello();
