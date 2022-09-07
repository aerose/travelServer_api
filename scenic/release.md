景点发布接口(只能管理员)

#### 调用地址
`http://xxx/api/scenic/release`
请求方式: POST


#### 参数
参数示例
```
{
    "scenicname": "测试景点1",
    "scenicintroduction": "测试介绍1",
    "scenicprice": "120.5(淡季)",
    "sceniccity":"陕西省西安市",
    "sceniclocation":"秦始皇陵东1.5公里处",
    "scenicopentime":"8:30:00",
    "scenicclosetime":"18:00:00",
    "scenicpic":"1271a1d9-a2b1-4c08-b947-8e66b5ae3836.jpg",
    "scenicgrade": "AAAAA",
    "scenicclass":"历史博物馆",
    "scenicstatus":"开放"
}
```
最简式
```
{
    "scenicname": "测试景点1",
    "sceniccity":"陕西省西安市"
}
```



参数 | 必选 | 类型 | 说明
-|-|-|-
scenicname | T | string | 景点名称
scenicintroduction | F | string | 介绍
scenicprice | F | string | 门票价格
sceniccity | T | string | 所在城市
sceniclocation | F | string | 详细地理位置
scenicopentime | F | string | 开门时间(HH:MM:SS)
scenicclosetime | F | string | 关门时间
scenicpic | F | file | 上传景点图片
scenicgrade | F | string | 评级（AAAAA）
scenicclass | F | string | 类型（博物馆）
scenicstatus | F | string | 当前状态（是否开放）



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
1141|图片格式不对（支持jpg，png）
1142|失败

#### 备注
图片pic的file类型暂时没做，现为string
pic最终效果应该为返回一个图片链接(目前还没实现图片上传,实现了再说)