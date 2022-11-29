package com.xiaoACE.ssm.commons.utils;

public class ReturnObject {
    private String code;//处理成功或失败的标记 1为成功 0为失败
    private String message;//提示信息
    private Object returnData;//其他数据

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getReturnData() {
        return returnData;
    }

    public void setReturnData(Object returnData) {
        this.returnData = returnData;
    }
}
