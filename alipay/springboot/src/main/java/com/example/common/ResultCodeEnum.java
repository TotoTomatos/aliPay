package com.example.common;

public enum ResultCodeEnum {
    SUCCESS("200", "成功"),

    SYSTEM_ERROR("500", "系统异常"),
    ;

    public String code;
    public String msg;

    ResultCodeEnum(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
