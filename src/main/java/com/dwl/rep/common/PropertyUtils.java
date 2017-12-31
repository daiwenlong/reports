package com.dwl.rep.common;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;


public class PropertyUtils {
    /** 日志 */
    private static Logger log = Logger.getLogger(PropertyUtils.class);

    /** 配置文件拥有者 */
    private static Properties p = new Properties();

    /**
     * 类初始化
     */
    static {

        InputStream is = PropertyUtils.class.getResourceAsStream("/application.properties");

        try {
            // 读取配置参数
            p.load(is);

            // 关闭数据流
            is.close();
        } catch (IOException e) {
            e.printStackTrace();
            log.error(e);
        }

    }

    /**
     * 获得配置属性值
     * 
     * @param key
     *            配置属性
     * @return 配置属性值
     */
    public static String getProperty(String key) {
        return p.getProperty(key);
    }

    /**
     * 获得配置属性值
     * 
     * @param key
     *            配置属性
     * @param defaultValue
     *            默认值
     * @return 配置属性值
     */
    public static String getProperty(String key, String defaultValue) {
        return p.getProperty(key, defaultValue);
    }
}
