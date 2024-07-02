// node 11_ETC.js

// 배열의 복사
let arr1 = [1, 2, 3, 4];

// 배열의 복사 [...복사하려는 배열의 이름]
// 참조값의 복사
let arr2 = arr1;
console.log(arr1);
console.log(arr2);
console.log("--------------------------------------------------");
arr1[0] = 100;
console.log(arr1);
console.log(arr2);
console.log("--------------------------------------------------");

// 배열 요소의 복사
let arr3 = [ ... arr1];
arr1[1] = 200;
console.log(arr1);
console.log(arr3);
console.log("--------------------------------------------------");
arr4 = [ ...arr1, 5];
console.log(arr4);
console.log("--------------------------------------------------");
arr5=[...arr1, ...arr3];
console.log(arr5);




console.log("--------------------------------------------------");

// 배열과 객체의 구조 분해

// // 배읠의 구조 분해
// let arr = [];
// arr.push("abcd");
// arr.push("1234");
// arr.push({'a':100});

// let arr7 = [0, 1, 2, 3];

// let zero, one, two, three, four, five;
// // zero = arr7[0];
// // one = arr7[1];
// // two = arr7[2];
// // three = arr7[3];
// [zero, one, two, three] = arr7;


// // 변수의 갯수를 조절해서 분해할당 하고싶지 않은 값을 조절할 수 있음.
// //[zero, one, two] = arr7;

// // 다수의 요소를 갖고 있는 배열에서 중간에 일부를 제외한 요소를 취할때.
// //[zero, , ,three] = arr7;


// // 배열의 요소 갯수보다 할당받을 변수의 갯수가 많다면 반수값은 undefine가 디됨.
// [zero, one, two, three, four, five] = arr7;
// console.log(zero, one, two, three, four, five);

// // 2차원, 3차원의 복잡한 배열의 구조분해
// let arr8 = [0, 1, 2, [300, 400]];

// // 형태를 맞춰서 구조분해 연산을 실행
// [zero, one, two, [three, four]] = arr8;
// console.log(zero, one, two, three, four);


// 객체의 구조분해
// 객체의 구조분해는 구조분해와 동시에 키값과 같은 이름의 변수를 생성하며 실행하는것이 보통.
let obj = {one:1, nine:9};
let {one, nine} = obj;
console.log(one, nine);
//필드명을 이용하여 객체의 구조 분해를 할 수 있으며, 이름이 맞지 않는 필드는 분해에서 제외시킬수 있음.
// 또한 필드로 존재하지 않는 변수는 undefined로 저장됨.
let {a1, a2}=obj;
console.log(a1, a2);


// 이미 정의되어 있는 변수로 구조분해는 한다면 괄호로 묶어서 실행.
let three, four;
let obj1 = {three:3, four:4};
// {three, four} obj1  //에러: 이미 생성된 변수로 구조분해하는 경우.
({three, four} = obj1); //객체를 변도의 변수에 저장 하는 연산으노'='이 쓰이는것이 아니라 구조분해하는것으로
//인식하게 하기윟 ()를 사용.
console.log(three, four);

console.log("--------------------------------------------------");

//구조 분해를 이용한 함수의 매개변수
function func4({one, two, three}){
    console.log(one, two, three);
}

let obj2 = {one:1, two:2, three:3};
func4(obj2);

func4({one:4, two:5, three:6});

console.log("--------------------------------------------------");

function func5(a){
    console.log(a.one, a.plus.two, a.plus.five);
}

let obj3 = {one:5, plus: {two:2, five:5}};
func5(obj3);

console.log("--------------------------------------------------");

// 구조 분해 및 매개변수의 기본값(default value)

// 배열 구조 분해 기본값
let [ar1, ar2, ar3=5] = [1, 2]; // 구조분해되는 변수에 기본값을 넣어서 전달값이 없어도 적용되게 함.
// let [ar1, ar2, ar3=5] = [1, 2, 300]; // 이 경우 기본값 3은 지워지고 입력값 300이 ar3 변수에 대입됨.
console.log(ar1, ar2, ar3);

//객체 구조분해 기본값
let {ob1, ob2 =7 } = {ob1:6};
//let {ob1, ob2 =7 } = {ob1:6, ob2:700}; // 이 경우 기본값 7은 지워지고 입력값 700이 ob2 변수에 대입됨.
console.log(ob1, ob2);

console.log("--------------------------------------------------");

let funcEx = (a=100)=>{
    return a * 20;

}
 let result = funcEx();
 console.log(`result : ${result}` );

// 매개 변수가 배열일때의 기본값
let getTotal = ([one, two] = [10, 20]) => (one +two);

console.log(`retrun Value : ${getTotal()} `); // =>>  result = getTotal(); console.log(`return Value : ${result}`);
console.log(`return Value: ${getTotal([30, 40])}`);

// 매개변수가 객체일때의 기본값
let getValue = ({two:value} = {two:200}) =>  (value*20)
console.log(`return Value : ${getValue ({two:300})}`);
console.log(`return Value : ${getValue ()}`);

console.log("--------------------------------------------------");

// 디스트럭처링 : 객체의 필드명을 문자열의 연산으로 조합하여 생성
let item = { 
    ["one" + "two"]:12
};
console.log(`item 객체의 멤버변수 onetwo의 값 ${item.onetwo}`);

// item 변수에 앞서서 저장한 객체를 지우고 "tennis"라는 String 데이터를 저장.
item = "tennis";

let sports = {
    [item]:1,
    [item + "Game"]:"윔블던",
    [item + "Method"](){
        return this[item];
    }
};
console.log(`sports 객체의 멤버변수 값들 - tennis:${sports.tennis} tennisGame:${sports.tennisGame} 
    tenniMethod:${sports.tennisMethod()}`);


console.log("--------------------------------------------------");

// 내장된 객체  : Number 객체
// 표현가능한 양의 정수 max 값
console.log("1. 표현가능한 양의 정수 max 값 : ", Number.MAX_SAFE_INTEGER);
console.log("2. Math.pow(2, 53) -1 : ", (Math.pow(2, 53) -1 ));
// Math.pow(a, b) : a의 b자승

// 표현가능한 음의 정수 min 값
console.log("3. 표현가능한 음의 정수 min 값 : ", Number.MIN_SAFE_INTEGER);
console.log("4. -(Math.pow(2, 53) -1 : ", -(Math.pow(2, 53) -1 ));

console.log("--------------------------------------------------");

//Number 객체에서 사용할 함수(메서드)
//대상데이터가 정수인기 아닌지 판별.
// "Number.isInteger()함수의 사용."

let v = 0;
console.log("1. 0 : ", Number.isInteger(v));
console.log("2. 1.0 : ", Number.isInteger(1.0)); // 소숫점아래가 0 이기때문에 정수로 인식.
console.log("3. -123 : ", Number.isInteger(-123));
console.log("4. '12' : ", Number.isInteger('12')); //false
console.log("5. 1.02 : ", Number.isInteger(1.02)); //false
console.log("6. Nan : ", Number.isInteger(NaN));   //false
console.log("7. true : ", Number.isInteger(true)); //false
// 변수에 저장된 자료의 자료형을 알 수 있는 함수 typeof 가 있지만 이는 자료형을 리턴해줄뿐, 
// 필요에 의해 숫자인지 아닌지를 구분하지는 못해서 숫자가 반드시 필요한 경우의 구분을 Number.isInteger로 구분.

console.log("--------------------------------------------------");

// String 데이터와 Number 데이터와의 관계.
// 자바에서 'A' -> integer형변환하면 (int)'A' -> 65 / (int)'B' -> 66 / (char)67 -> 'C'
// #$%&
console.log("1:", String.fromCodePoint(35, 36, 37, 38));    //#$%&
console.log("2:", String.fromCodePoint(65, 66, 67, 68));    //ABCD    
console.log("3:", String.fromCodePoint(97, 98, 99, 100));   //abcd
console.log("4:", String.fromCodePoint(48, 49, 50, 51));    //0123
console.log("5:", String.fromCodePoint(0x31, 0x32, 0x33));  //16진수로 표현
console.log("6:", String.fromCodePoint(44032, 44033, 44034, 44035)); //가각갂갃

console.log("--------------------------------------------------");

// startsWith : 대상 문자들이 지정한 글자로 시작하면 true 그렇지 않으면 false
let target = "123가나다";
console.log("1: ", target.startsWith(123)); //true
console.log("2: ", target.startsWith("23")); //false
console.log("3: ", target.startsWith("가나", 3)); //인덱스3 부터 "가나"로 시작 true
console.log();

target = "123가나다";
console.log("1: ", target.startsWith("가나다")); //true
console.log("2: ", target.startsWith("가나")); //false
console.log("3: ", target.startsWith("가나", 5)); //true 인덱스5(끝글자) 부터 가(4)나(5)로 끝남
console.log();

target = "123가나다456";
console.log("1: ", target.startsWith(2)); //true
console.log("2: ", target.startsWith("가나")); //false
console.log("3: ", target.startsWith("12", 5)); //true 인덱스5(끝글자) 부터 가(4)나(5)로 끝남
console.log();

// node 11_ETC.js

//



    



