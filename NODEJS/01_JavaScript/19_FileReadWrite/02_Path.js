// node 02_Path.js

const path = require('path');
// require로 사용하는 객체들 중에는 별도의 install 과정이 필요한 경우가 있음.
// path.js는 외부모듈이어서 별도의 설치과정이 예전에는 필요했으나, 자바스크립트와 node.js의 버전업에 따라 
// 지금은 별도의 설치 과정없이 require가 가능함.

// path 가 아니어도 사용 가능한 경로와 파일관련 상수
console.log(__filename); // 현재사용중인 파일의 이름
console.log(__dirname); // 현재 파일이 위치한 경로

console.log();
console.log('----------------------------------------------------------');
console.log('path.sep : ', path.sep); // 경로내부의 폴더들 구분문자

console.log('path.delimiter : ', path.delimiter);
// 서로다른 경로를 같이 나타낼때 구분해주는 구분 문자 - 세미콜론 ';'
// c:\user\java01; c:\users\java01\documents; 와 같이 사용.


console.log();
console.log('----------------------------------------------------------');

// 파일이 위치한 폴더 경로를 보여줌.
console.log('path.dirname();', path.dirname(__filename));

// 파일의 확장자(.js)를 보여줌.
console.log('path.extname();', path.extname(__filename));

// 파일의 이름+확장자를 보여줌.
console.log('path.basename();', path.basename(__filename));

// 파일의 이름만 보고싶다면, 함수의 두번째 인자로 확장자를 넣어줌.
console.log('path.basename(extname 제외);', path.basename(__filename, path.extname(__filename)));

let a = path.dirname(__filename) 
    + '\\'  // String 데이터 내부에서  \는 두개를 써야 하나로 인식됨. 하나만 쓰면  \n \t등으로 이용하겠다는 의미.
    + path.basename(__filename, path.extname(__filename)) 
    + path.extname(__filename);

console.log("__filename :", a);
console.log("__filename :", __filename);



console.log();
//-------------------------------------------------
// 파일의 경로를 root, dir, base, ext, name 으로 분리함.
console.log('path.parse() : ', path.parse(__filename));
// 분리된 결과를 root, dir, base, ext, name 라는 필드로 객체를 구성함.

// 파일의 이름, 경로, 확장자 등을 제공하고 filename에 저장된 정보처럼 조합함.
let filename2 = path.format(
    {
        dir:'D:\\JAVA01\\Nodejs\\03_HttpServer\\04_FileRead' ,
        name: 'path-formatex' ,
        ext: '.js',
    }
);
console.log(filename2);

console.log('----------------------------------------------');
console.log(path.relative('D:\\JAVA\\nodejs', 'D:\\PLSQL'));
// 첫째인수와 둘째인수 사이의 상대경로 내역.

console.log(__dirname);

// 첫째 인수에서 이동되고 찾아간 최종 경로
console.log('path.join():', path.join(__dirname, '..', '..', '..', '/nodejs'));
console.log('path.relative():', path.relative(__dirname, '..', '..', '..', '/nodejs'));
// resolve 와 join은 비슷하지만 '/' 표시를 절대경로냐 상대경로로 보느냐가 다름.
// resolve는 절대경로 시작 C:\\ 부터 시작하여 이동하지 못하는 경로는 무시하고 최종경로가 C:\nodejs가 되고
// join은 역시 이동하지 못하는 곳은 무시하고,  C:\users\hi\nodejs\01_JavaScript\19_FileReadWrite 부터 시작하여
// 상대경로로 최종 결과 경로가 C:\Users\hi\nodejs 가 됨.

// node 02_Path.js