<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

    <#include "head.ftl">
    ${name}  ----> ${msg} <br/>
   <#--
    assign  :   用于在页面上定义个变量 ---
    include:    引入  页面
    if :判断   赋值: =   判断: =或者==
    list
   -->
    <#assign names="offcn">
    名称为:${names} <br>
    <#assign info = {'name2':'张三','mobile':'123456789'}>
    当前对象为:${info.name2} ---- ${info.mobile} <br>
    <#if success == false>
        您已刷卡
        <#else >
        您未刷卡
    </#if>
    <br>
    <#list list as good>
        <br>
        商品编号:${good_index+1}
        商品名称:${good.name}<br>
        商品价格:${good.price}
    </#list>
    <#--
        内建函数:  为了方便操作提前定义好的一些函数
        size :获取记录数
        eval: 把JSON字符串转换成对象
        日期类型处理 : date datetime  time  string
        数值处理 : c
        空值判断: ??
        缺省值: !
    -->
    <br>
    共${list?size}条记录 <br>
    <#assign a = "{'id':'1','address':'五角场'}">
    <#assign b = a?eval>
    编号:${b.id}--->${b.address} <br>
    当前日期:${day?date}<br>
    当前时间:${day?time}<br>
    当前日期+时间:${day?datetime}<br>
    日期自定义格式化:${day?string("yyyy年MM月dd日")}<br>
    积分:${num?c}
    &&  || >!
    <#if aa!"--">
        变 量存在
        <#else >
        变量不存在
    </#if>
</body>
</html>