路径发布接口(只能管理员,从景点发布)

#### 调用地址
`http://xxx/api/route/release`
请求方式: POST


#### 参数
参数示例
```
{
    "scenicid": 2,
    "routename": "华山test线路1",
    "routeintroduction": "华山test线路1介绍",
    "routetime": "08:00:00"
}
```
最简式
```
{
    "scenicid": 2,
    "routename": "华山test线路1",
    "routeintroduction": "华山test线路1介绍"
}
```

参数 | 必选 | 类型 | 说明
-|-|-|-
scenicid | T | int | 所属景点主键
routename | T | string | 线路名称
routeintroduction | T | string | 线路介绍
routetime | F | string | 预计花费时间(HH:MM:SS)



#### 返回示例
```
{
    "error_code": "0"
}
```


错误码说明
代码|说明
-|-
0|成功
1151|景点主键不存在
1152|其他问题

