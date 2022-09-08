景点修改接口
通过主键修改信息

#### 调用地址
`http://xxx/api/scenic/modify`
请求方式: POST

#### 参数
参数示例
```
{
            "scenicid": 6,
            "sceniclocation": "秦始皇陵东1.5公里处",
            "scenicclass": "博物馆",
            "scenicname": "秦始皇陵兵马俑博物馆",
            "scenicgrade": "AAAAA",
            "scenicpic": "1271a1d9-a2b1-4c08-b947-8e66b5ae3836.jpg",
            "sceniccity": "陕西省西安市",
            "scenicprice": "120.5（不分淡旺季）",
            "scenicintroduction": "秦始皇兵马俑博物馆位于陕西省西安市临潼区秦陵镇，成立于1975年11月，原为秦始皇兵马俑筹建处，于1979年10月1日正式开馆，建于临潼县东7.5公里的骊山北麓的秦始皇帝陵兵马俑坑遗址上，西距西安37.5公里；和丽山园合称秦始皇帝陵博物院。",
            "scenicopentime": "08:30:00",
            "scenicclosetime": "18:00:00",
            "scenicstatus": "开放"
}
```
最简式
```
{
    "scenicid": 6
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
scenicid | int | 景点主键
scenicname | string | 景点名称
scenicintroduction | string | 景点介绍
scenicprice| string | 预计花费 
sceniccity | string | 城市
sceniclocation| string | 详细地理位置
scenicopentime | string | 开门时间
scenicclosetime | string | 关门时间
scenicpic | string | 图片路径
scenicgrade | string | 级别
scenicclass |string|景区类别
scenicstatus | string|状态


#### 返回示例
```
{
    "error_code": "0"
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
error_code | String | 错误码

错误码说明
代码|说明
-|-
0|修改成功
1511|修改失败

