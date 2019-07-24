package com.rmj.util;

import com.alibaba.fastjson.JSONObject;

import java.util.Map;

/**
 * 返回给前端的json格式
 *
 * @author YUSUI
 * created by YUSUI 2019/7/24
 */
public class JsonUtil {

    public static String getJsonStr(int code) {
        JSONObject json = new JSONObject();
        json.put("code", code);
        return json.toJSONString();
    }

    public static String getJsonStr(String msg) {
        JSONObject json = new JSONObject();
        json.put("msg", msg);
        return json.toJSONString();
    }

    public static String getJsonStr(int code, String msg) {
        JSONObject json = new JSONObject();
        json.put("code", code);
        json.put("msg", msg);
        return json.toJSONString();
    }

    public static String getJsonStr(int code, Map<String, Object> map) {
        JSONObject json = new JSONObject(map);
        json.put("code", code);
        return json.toJSONString();
    }

}
