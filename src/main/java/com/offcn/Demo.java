package com.offcn;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

public class Demo {

    public static void main(String[] args) throws IOException, TemplateException {
        //1.创建一个freemarker的配置对象
        Configuration configuration = new Configuration(Configuration.getVersion());
        //2.设置模板所在的目录
        configuration.setDirectoryForTemplateLoading(new File("./src/main/resources"));
        //3.设置字符编码
        configuration.setDefaultEncoding("UTF-8");
        //4.获取模板文件
        Template template = configuration.getTemplate("test.ftl");
        //创建数据模型(Map)
        Map map = new HashMap();
        List list = new ArrayList();
        Map good1 = new HashMap();
        good1.put("name","奶茶");
        good1.put("price",200);
        Map good2 = new HashMap();
        good2.put("name","狗子");
        good2.put("price","3500");
        Map good3 = new HashMap();
        good3.put("name","波波");
        good3.put("price","250");
        list.add(good1);
        list.add(good2);
        list.add(good3);
        map.put("name","hello");
        map.put("msg","world");
        map.put("success",true);
        map.put("list",list);
        map.put("day",new Date());
        map.put("num",123456789);
        FileWriter fileWriter = new FileWriter(new File("./src/main/resources/demo.html"));
        //渲染数据
        template.process(map,fileWriter);
        //关闭资源
        fileWriter.close();

    }
}
