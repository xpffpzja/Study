package com.himedia.sp06.util;

public class DbConInfo {
    private String url;
    private String id;
    private String pw;
    private String driver;

    public void setUrl(String url) {
        this.url = url;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }

    public String getUrl() {
        return url;
    }

    public String getId() {
        return id;
    }

    public String getPw() {
        return pw;
    }

    public String getDriver() {
        return driver;
    }
}
