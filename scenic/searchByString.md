通过景点名称/地点/详细位置查询接口


#### 调用地址
`http://xxx/api/scenic/searchByString`
请求方式: POST


#### 参数
参数示例
```
{
    "searchstring": "西安",
    "page": 1,
    "pagesize": 2
}
```
最简式
```
{
    "searchstring": "西安",
    "page": 1
}
```

参数 | 必选 | 类型 | 说明
-|-|-|-
searchstring | T | string | 查询景点名
page | T |int | 请求的页码
pagesize| F | int |每页条目数(default 10)
#### 返回示例
```
{
    "error_code": "0",
    "total_page": 7,
    "data": [
        {
            "scenicLocation": "秦始皇陵东1.5公里处",
            "scenicClass": "博物馆",
            "scenicName": "秦始皇陵兵马俑博物馆",
            "scenicGrade": "AAAAA",
            "scenicPic": "1271a1d9-a2b1-4c08-b947-8e66b5ae3836.jpg",
            "scenicId": 1,
            "scenicCity": "陕西省西安市",
            "scenicPrice": "120.5（不分淡旺季）",
            "scenicChangeTime": "2022-09-03T08:00:00",
            "scenicIntroduction": "秦始皇兵马俑博物馆位于陕西省西安市临潼区秦陵镇，成立于1975年11月，原为秦始皇兵马俑筹建处，于1979年10月1日正式开馆，建于临潼县东7.5公里的骊山北麓的秦始皇帝陵兵马俑坑遗址上，西距西安37.5公里；和丽山园合称秦始皇帝陵博物院。",
            "scenicOpenTime": "08:30:00",
            "scenicCloseTime": "18:00:00",
            "scenicStatus": "开放",
            "scenicCreateTime": "2022-09-03T08:00:00"
        },
        {
            "scenicClass": "历史建筑",
            "scenicName": "华清宫",
            "scenicGrade": "AAAAA",
            "scenicPic": "bee2628a-912a-4bf5-a8f6-b264c7ce2115.jpg",
            "scenicId": 3,
            "scenicCity": "陕西省西安市临潼区",
            "scenicPrice": "122（不分淡旺季）",
            "scenicChangeTime": "2022-09-03T08:00:00",
            "scenicIntroduction": "华清宫背山面渭，倚骊峰山势而筑，规模宏大，建筑壮丽，楼台馆殿，遍布骊山上下。初名“汤泉宫”，后改名温泉宫。",
            "scenicOpenTime": "07:30:00",
            "scenicCloseTime": "19:00:00",
            "scenicStatus": "暂时关闭（疫情）",
            "scenicCreateTime": "2022-09-03T08:00:00"
        }
    ]
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
total_page|int|总页码数
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
1101|当前页码没查询到
