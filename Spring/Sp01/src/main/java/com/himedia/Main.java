package com.himedia;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Calculator c = new Sum();
        int result = c.cal(20, 30);
        System.out.println("20+30 => " + result);

        c = new Sub();
        result = c.cal(10, 20);
        System.out.println("10-20 =>" + result*3.14); //인텔리제이는 왜 3.14를 곱하면....???

    }
}