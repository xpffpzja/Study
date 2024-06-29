// node 05_JSBasic03.js

// 자바 스크립트 변수의 특별한 기능
// 자바 스크립트의 변수는 함수도 저장가능
var fv = function(){
    console.log("함수를 변수에 저장함. 그리고 변수이름으로 호출함.");
}

// function(){}을 익명함수라고 부르며, 
// 익명 함수를 변수에 저장하여 변수이름을 함수이름인것처럼 사용하여 호출함.
fv();

console.log("------------------------------------------------------");

// 강제 자료형 변환
// - 다른 자료형 -> 숫자변환:Number() 함수 사용.
// - 다른 자료형 -> 문자열 변환:String() 함수 사용.
console.log("문자->숫자 : ", (Number("12345") + 123)); // 산술 덧셈
console.log("숫자->문자 : ", (String(12.123) + 123) ); // 이어붙이기 연산.  

console.log("------------------------------------------------------");

// Boolean() : 기타 다른 자료형을 true/false로 변환
console.log("Boolean(0) : ", Boolean(0)); // false
console.log("Boolean('0') : ", Boolean('0')); // true
console.log("Boolean('') : ", Boolean('')); // false
console.log("Boolean('false') : ", Boolean('false')); // true
console.log("Boolean(null) : ", Boolean(null)); // false
console.log("Boolean(undefined) : ", Boolean(undefined));  //false

console.log("------------------------------------------------------");

// Template String
const num1 = 1;
const num2 = 2;
const result = 3;
const string1 = num1 + ' 더하기 ' + num2 + ' 는 ' + result + ' 입니다.';
console.log('+ 기호로 이어붙인 결과 : ' , string1);


// Template String 을 사용하는 연산
// jsp 페이지에서 EL 문법을 사용한것과 비슷하게, 문자열과 변수값을 하나의 문장안에서 같이 표현하는 문법.
// 전체 문자열은 `(그레이브 - 틸드 기호아래에 있는 따옴표하고 비슷한 기호)로 묶고 그 안에 어퍼스토피(작은따옴표)와 
// 큰 따옴표를 자유롭게 사용하며, ${변수이름}를 이용하여 변수의 값을 문자열 안에 삽입합니다.

let string2 = `${num1} 더하기 ${num2} 는 ${result} 입니다.`;
console.log('Template String 구성 결과 : ', string2);


// 기존의 EL 문법처럼 중괄호안에서는 각 변수들간의 연산도 가능.
const num5 = 2000;
const num6 = 3;
const text = `${num5} 원짜리 모자를 ${num6}개 구입하여,  ${num5*num6}원을 지출하였습니다.`;
console.log('연산결과 출력 : ', text);



