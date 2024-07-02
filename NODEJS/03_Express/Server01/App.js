// node App.js
// 여기가 서버 프로그래밍의 시작부분

// 서버운영을 위해서 express 모듈을 import해서 express 객체 변수에 저장
const express = require('express');
const app = express(); //  express() 함수를 이용헤서 서버운영관련 객체를 변수에 저장
// 익스프레스 서버는 이것만으로도 http 서버의 createServer와 같은 동작이 되어있다라고 할수 있음.

app.set('port' , 3000);
// app.set(); : 서버객체의 필드 변수를 추가해서 사용할 수 있음.
// 추가되는 변수는 현재파일에서만 사용이 되고, 서버 종료시 소멸됨.
// console.log(app.get('port'));


app.get('/', (req, res)=>{
    res.send('<h1>Hello Express~!!</h1>');
});
// app.get()같은 함수 -> "라우터"
app.get('/about', (req, res)=>{
    res.send('<h1>Here is About Page~!!</h1>');
});

//app.listen(3000, ()=>{ console.log("3000 포트 서버 오픈...");});
app.listen(app.get('port'), ()=>{ console.log("3000 포트 서버 오픈...");});

// express 서버 구동 순서
// 1. npm init
// 2. npm i express
// 3. npm i nodemon : 개발환경용 이므로 필수사항은 아님.
// 4. app.js 또는  index.js 또는 main에 지정한 파일(서버의 시작파일)을 제작.
// 5. package.json 의 script에 "start":"nodemon app"을 추가.
// 6. npm app 또는 npm run start(npm start)로 서버 시작.

// nodemon의 좋은점
// 1. 서버구동 및 운용에 발생한 모든 과정을 로깅으로 보여줌.
// 2. 에러수정 용이.
// 3. 일정시간이 지나거나 주요파일이 저장되면 서버가 다시 시작되므로 
//    수정사항이 서버 수동 재시작없이 적용이 가능.




