package com.himedia;

import org.springframework.context.support.GenericXmlApplicationContext;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        // 기존 자바클래스 객체 생성 및 실행
        WalkClass wc = new WalkClass();
        wc.move();

        // 스프링 프레임웍에서는 위와 같이 new 를 이용한 객체 생성은 많이 하지 않고 다른 방법을 사용함.
        // 프로그램 시작시에 미리 생성 & 보관하고 있다가 필요할때 꺼내쓰는 방법을 사용.

        // 미리만들어놓은 객체를 보관하는 곳을 "스프링 컨테이너"라고 부름.
        // 현재 프로젝트에서 스프링 컨테이너는 resources 폴더안에
        // applicationContext.xml 파일을 만들고 그 파일을 스프링컨테이너로 사용할예정.

        // 스프링 컨테이너에 담겨 있는 빈을 필요할때 꺼내 쓰려면 아래와 같이 컨테이너의 사용권한을 갖고있는 객체를 생성하여 사용.
        GenericXmlApplicationContext ctx = new GenericXmlApplicationContext
                ("classpath:applicationContext.xml");

        //꺼내는 방법은 기존 new 인스턴스를 레퍼런스 변수에 저장하듯, ctx로 꺼낸 빈을 레퍼런스 변수에 저장하듯 사용.

        WalkClass wc2 = ctx.getBean("cWalk",WalkClass.class);
        // cWalk : 스프링 컨테이너 내부에 있는 그 클래스의 id값
        // WalkClass.class : 스프링 컨테이너 내부에 있는 그 클래스의 이름

        wc2.move();
        ctx.close();

        // 아직까지 일반 자바 프로젝트에서 사용하는 new WalkClass() 와 사용상 차이점은 없어 보이기도 하고 오히려 불편해 보임.
        // 차이점이라면, new 인스턴스를 사용하면 사용할때마다 새로운 인스턴스가 생성되는 반면
        // getBean()은 싱글턴 방식처럼  하나의 생성된 객체가 계속사용된다는 점이 다름.
        // 이들의 1차적인 사용목적은 무분별한 new 사용을 차단하여 실행환경의 과부하를 적게하기 위함.
        // 또한 스프링 프레임웍의 스프링컨테이너의 사용은 점차적으로 자동화되고 간결해질 예정.


    }
}