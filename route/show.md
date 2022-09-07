显示某个景点所有线路接口


#### 调用地址
`http://xxx/api/route/show/{scenicid}/{page}/{pagesize}`(pagesize可省略)
如`http://localhost:8082/api/route/show/2/1/2`
或者`http://localhost:8082/api/route/show/2/1`
请求方式: **GET**


#### 参数
参数 | 必选 | 类型 | 说明
-|-|-|-
scenicid | T | int | 查询用景点主键
page | T | int | 当前页码
pagesize | F | int | 页面大小(default 10)

#### 返回示例
```
{
    "error_code": "0",
    "total_page": 2,
    "data": [
        {
            "routeId": 1,
            "scenicId": 2,
            "routeTime": "06:00:00",
            "routeCreateTime": "2022-09-03T08:00:00",
            "routeChangeTime": "2022-09-03T08:00:00",
            "routeName": "华山经典路线",
            "routeIntroduction": "玉泉院→“自古华山一条路”路段→爬苍龙岭→东/西/南/中4峰，登华山的最佳路线，是最老最经典也是沿途景点最多的线路，有“自古华山一条路”的美称。 如果不是住在玉泉路附近，可以在华山游客中心乘免费摆渡车到达玉泉院 沿途景点有，玉泉院、鱼石、五里关、希夷峡、沙萝坪、药王洞、十八盘、毛女洞、云门、青柯坪、九天宫、千尺幢、百尺峡、惊心石、老君犁沟"
        },
        {
            "routeId": 2,
            "scenicId": 2,
            "routeTime": "08:00:00",
            "routeCreateTime": "2022-09-03T08:00:00",
            "routeChangeTime": "2022-09-03T08:00:00",
            "routeName": "华山北峰索道路线",
            "routeIntroduction": "华山游客中心→乘北峰索道→北峰→爬苍龙岭→东/西/南/中4峰 从华山游客中心坐景区大巴（20元/人）到北峰上山索道处，到北峰后再从苍龙岭往上爬。旅游团基本都是走该路线。"
        }
    ]
}

```
参数说明
参数名 | 类型 | 说明
-|-|-
total_page | int | 总页码数
routeId | int | 路线主键
scenicId|int|所属景点主键
routeName | string | 路线名称
routeIntroduction | string | 路线介绍
routeTime | string | 预计花费时间
routeCreateTime | string | 线路创建时间
routeChangeTime | string | 线路最后一次修改时间

错误码说明
代码|说明
-|-
0|成功
1171|无条目

