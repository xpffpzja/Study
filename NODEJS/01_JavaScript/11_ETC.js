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