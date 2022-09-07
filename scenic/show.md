显示所有景点接口


#### 调用地址
`http://xxx/api/scenic/show/{page}/{pagesize}`
如`/api/scenic/show/3/2`或 `/api/scenic/show/1`(省略pagesize)
请求方式: **GET**


#### 参数
参数 | 必选 | 类型 | 说明
-|-|-|-
page | T |int | 请求的页码
pagesize| F | int |每页条目数(default 10)


#### 返回示例
```

{
{
    "error_code": "0",
    "total_page": 3,
    "data": [
        {
            "scenicCloseTime": "17:30:00",
            "scenicName": "陕西历史博物馆",
            "scenicId": 5,
            "scenicCity": "陕西省西安市雁塔区",
            "scenicCreateTime": "2022-09-03T08:00:00",
            "scenicChangeTime": "2022-09-03T08:00:00",
            "scenicIntroduction": "中国第一座大型现代化国家级博物馆，首批“AAAA”级旅游景点，被誉为“古都明珠，华夏宝库”。",
            "scenicOpenTime": "09:00:00"
        },
        {
            "scenicName": "测试景点1",
            "scenicId": 6,
            "scenicCity": "陕西省西安市",
            "scenicCreateTime": "2022-09-07T11:47:12",
            "scenicChangeTime": "2022-09-07T11:47:12"
        }
    ]
}
}

```
参数说明
参数名 | 类型 | 说明
-|-|-
total_page | int | 总页码数
scenicId | int | 景点主键
scenicName | string | 景点名称
scenicIntroduction | string | 景点介绍
scenicPrice| string | 预计花费 
scenicCity | string | 城市
scenicLocation| string | 详细地理位置
scenicOpenTime | string | 开门时间
scenicCloseTime | string | 关门时间
scenicPic | string | 图片路径
scenicGrade | string | 级别
scenicClass |string|景区类别
scenicStatus | string|状态
scenicCreateTime|string|创建时间
scenicChangeTime|string|最后修改时间

错误码说明
代码|说明
-|-
0|成功
1121|无条目
