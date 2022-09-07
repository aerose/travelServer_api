线路修改接口


#### 调用地址
`http://xxx/api/route/modify`
请求方式: POST

#### 参数
参数示例
```
{
    "routeid": 2,
    "routename": "华山北峰索道路线",
    "routeintroduction": "华山游客中心→乘北峰索道→北峰→爬苍龙岭→东/西/南/中4峰 从华山游客中心坐景区大巴（20元/人）到北峰上山索道处，到北峰后再从苍龙岭往上爬。旅游团基本都是走该路线。",
    "routetime": "08:00:00"
}
```
最简式
```
{
    "routeid": 2
}
```

参数 | 必选 | 类型 | 说明
-|-|-|-
routeid | T | int | 线路主键
routename | F | int | 新名称
routeintroduction | F | string | 新内容
routetime | F | string | 新花费时间


#### 返回示例
```
{
    "error_code": "0"
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
error_code | int | 错误码

错误码说明
代码|说明
-|-
0|修改成功
1351|修改失败

