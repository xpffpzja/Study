// node 01_OS.js

const os = require('os');
// 자바스크립트, Node.js에 이미 내장되어 있는 객체들을 다양하게 require해서 사용할수 있음.

console.log('운영체제 정보--------------------------------------------------------');
console.log('os.arch() : ', os.arch()); // 현재 운영체제의 설계 및 운영방식
console.log('os.platform() : ', os.platform()); // 운영체제 기반 플랫폼
console.log('os.type() : ', os.type()); // 운영체제 종류
console.log('os.uptime() : ', os.uptime()); // 운영체제 부팅후 흐른 시간
console.log('os.hostname() : ', os.hostname()); // 컴퓨터 이름
console.log('os.release() : ', os.release()); // 운영체제 버젼

console.log('메모리 정보--------------------------------------------------------');
console.log('os.freeme() : ', os.freemem()); // 사용가능 메모리
console.log('os.totalmem() : ', os.totalmem()); // 전체 메모리

console.log('cpu 정보--------------------------------------------------------');
console.log('os.cpus() : ', os.cpus()); // cpu 정보
console.log('os.cpus().length : ', os.cpus().length); // cpu 코어갯수


// node 01_OS.js