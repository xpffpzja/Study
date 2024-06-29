// node 04_JSBasic02.js

// 변수선언
// 자바 스크립트의 버전에 다라 사용하는 변수선언이 많이 달라지고 있음.
// 브라우저를 대상으로 하는 ES2015 버전 이후에는 var로 변수선언이 많이 되었지만 
// 이후부터 const 또는 let변수를 많이 사용함.

// var로 선언한 변수 사용 예
var x = 3;
console.log('var x : ', x);
y = '홍길동'; // 별도의 변수 선언이 없어도 사용(대입, 저장)이 가능함.
console.log('y : ', y);
//console.log('z : ', z);

// console.log('z : ', z); // 에러
// 선언하지 않아도 값이 초기화 되지 않으면 사용 되지 않음.

// 변수의 자료형이 존재하지 않아서 숫자와 문자를 자유롭게 수시로 뱌궈서 저장할 수 있음.
x = '참';
y = 1234;

console.log('x : ', x);
console.log('y : ', y);

k = function(){console.log("변수에 함수를 저장하고 변수이름으로 호출함.");};
k();
console.log("--------------------------------------------------------------------------------");

// 상수형 변수 const
// java의 static final 과 같은 역할을 하는 변수
// 변수의 생성과 함께 반드시 초기값이 있어야 하며, 이후 저장된 값의 변경이 불가능.
const z = 10;
console.log('const z : ' , z);
// z = '홍길서'; // assignment to constant variable.

// const a;  // Missing initializer in const declaration 

console.log("--------------------------------------------------------------------------------");

// var과 const의 또다른 차이점
// - 블록스코프 : var 변수는 영영({}, 지역변수)과 상관없이 값이 접근이 가능함.
if(true){
    var a = 3;
}
console.log("a : ", a);
// 함수의 시작과 끝을 구분 짓는 중괄호({ , })는 영향을 받아서 함수를 벗어 나면 변수로 인식되지 못함.

// 반면 const 변수(상수)는 블록영역에 영향을 받아 접근이 구분됨.
if(true){
    const b = 3;
}
// console.log("b : ", b); // 에러 b is not defined

// let : 값을 변경할 수 있는 변수를 사용하려면, 앞에서 사용한 var 변수나, 
//      서버프로그래밍에서 주로 사용하는 let 변수를 사용함. 
//      값을 변경할 수 있고, 변수 선언시 값이 반드시 초기화되지 않아도 됨.

// var 과 let 변수의 차이는 다소 많지 않으며, 명백히 다른 점이 있지만 현재 사용상 구분할 일이 많지 않음.


// const, let, var 의 차이점
// 1. 자바스크립트 변수는 선언, 할당, 사용의 단계로 구분됨.
// 2. const 와 let 은 그 사용영역이 구분되어 사용해야 하지만, var은 그 구분이 비교적 자유로움.
// 3. const 와 let 변수는 반드시 선언후 사용해야하며, var은 선언없이 사용될 수 있음.
// 4. 선언없이 사용된 변수는 모두 var 변수.
// 5. 선언, 그리고 할당없이 사용된 var 변수의 최초값은 undefined. 다만 서버에서는 이것이 에러의 원인이됨.

// const
// 선언과 동시에 값이 반드시 초기화되어야함.
// 값은 초기화이후에 변경불가.
// 하나의 스코프({ })안에서만 유효하며, 하나의 스포프안에서 중복 선언불가.
// 스코프를 벗어나면 변수는 소멸됨.

// let
// 반드시 선언해서 사용해야하지만 초기값을 반드시 대입해야하는것은 아님.
// 초기값이 없는 변수의 최초값은 undefined.
// 변수값의 변경이 가능.
// 하나의 스코프({ })안에서만 유효하며, 하나의 스포프안에서 중복 선언불가.
// 스코프를 벗어나면 변수는 소멸됨.

// var
// 선언, 할당, 사용이 위치와 상관없이 자유로움.
// 스코프 상관없이 접근이 가능.
// 같은 스코프안에서 중복 선언도 가능. 이때 마지막 선언 및 대입 값이 현재값으로 인식됨.
// 구조가 복잡한 함수내에서는 현재값을 유추하는데 다소 불편함이 있음.
// 값의 변경이 자유로워서 의도한 값의 저장 및 유지가 실패할 가능성이 있음.
// 함수의 영역을 벗어나는 스코프에만 영향을 받음. 


// 변수 선언과 선언 키워드 별 사용의 방향
// 1. 변수선언에 기본적으로 const를 사용하고, 값을 바꿔서 사용해야하는 경우에 한해서 let을 사용하는것을 권장.
// 2. 변수에 객체가 대입되는 경우도 const 사용을 권장함.
const obj = {kor:98, eng:89, mat:90}; //obj 는 스택에  {kor:98, eng:89, mat:90}는 힙에 저장됨.
console.log(obj);
//obj = {kor:87, eng:55, mat:87};  // 에러 

obj.kor = 70;
obj.eng = 80;
obj.mat = 99;
console.log(obj);
// const를 사용하면 의도치 않은 재할당을 받지해 주기 때문에 데이터의 안전을 보장받을수 있음.


//3. 재할당이 필요한 경우를 한정해 let을 사용함. 이때, 변수의 스코프(영역)는 최대한 좁게 만드는것을 권장.
