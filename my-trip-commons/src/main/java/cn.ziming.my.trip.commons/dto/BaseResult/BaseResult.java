package cn.ziming.my.trip.commons.dto.BaseResult;

import java.io.Serializable;

/**
 * 自定义结果集合
 */
public class BaseResult implements Serializable {
    public static final int STATUS_SUCCESS = 200;
    public static final int STATUS_FAIL = 500;
    private int status;
    private String message;

    public static BaseResult success(){
        return BaseResult.creatResult(200,"状态码200成功!");
    }

    public static BaseResult success(String message){
        return BaseResult.creatResult(200, message);

    }
    public static BaseResult fail(){
        return BaseResult.creatResult(500,"状态码500失败!");
    }

    public static BaseResult fail(String message){
        return BaseResult.creatResult(500, message);
    }

    public static BaseResult fail(int status, String message){
        return BaseResult.creatResult(status, message);
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    private static BaseResult creatResult(int status, String message) {
        BaseResult baseResult = new BaseResult();
        baseResult.setStatus(status);
        baseResult.setMessage(message);
        return baseResult;
    }
}
