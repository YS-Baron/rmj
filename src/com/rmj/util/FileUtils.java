package com.rmj.util;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/21
 */
public class FileUtils {

    public static String getFielName(String header){
        String[] temArr1 = header.split(";");
        String[] temArr2 = temArr1[2].split("=");
        String fileName = temArr2[1].substring(temArr2[1].lastIndexOf("\\")+1).replaceAll("\"","");
        return fileName;
    }

}
