// node 15_Promise04.js

// promise를 이용한 비동기실행에서 두 작업의 실행순서를 맞춰야 할때.

let pm = new Promise((resolve, reject)=>{
    console.log('==작업 시작==');
    resolve();
});

pm
.then(()=>{
    console.log('작업1 시작');
    const wakeUpTime = Date.now() + 3000;
    while(Date.now() < wakeUpTime) {}
    console.log('작업1 종료');
    // 첫번쨰 then 에서 작업2를 위한 새로운 Promise를 리턴함.
    return new Promise((resolve, reject)=>{
        resolve();
    }); 
})
.then(()=>{
    console.log('작업2 종료');
    console.log('작업2 종료');
})
.catch((error)=>{
    console.log(error);
})
.finally(()=>{
    console.log('==모든 작업 종료==');
});
// node 15_Promise04.js