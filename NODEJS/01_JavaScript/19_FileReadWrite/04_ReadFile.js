// node 04_ReadFile.js

// 파일의 내용을 읽거나 쓰기위한 모듈
const fs = require('fs');

//fs.readFile('읽어올 파일의 경로와 이름', (err, data)=>{읽어온 파일의 내용처리 함수});
//fs.readFile('./ReadFile.txt', (err, data)=>{ });
fs.readFile( 
    './Readme.txt' ,
     (err, data)=>{ 
       // err : 파일읽기에 실패했을떄 전달되는 에러내용을 받는 매개 변수
       // data : 파일읽기에 성공했을때 읽어온 파일 내용 데이터
       if(err){ // err이 null 이 아니라면, 파일 읽는 동작 에러가 있다면.
        console.error(err);
       }else{
        console.log(data);
        console.log(data.toString());
       } 
     }     
);

// node 04_ReadFile.js