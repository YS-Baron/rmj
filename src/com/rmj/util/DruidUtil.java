package com.rmj.util;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/19
 */
public class DruidUtil {
    private static DruidDataSource ds = null;

    // 初始化，只执行一次
    static {
        try {
            //创建一个属性配置对象
            Properties properties = new Properties();
            //使用类加载器，去读取资源文件
            InputStream inputStream = DruidUtil.class.getClassLoader().getResourceAsStream("druid.properties");

            //导入输入流
            properties.load(inputStream);
            // 加载properties文件，创建数据源
            ds = (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static DruidDataSource getDruidDataSource() {
        return ds;
    }

}
