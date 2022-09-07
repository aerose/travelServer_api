用户评论查询接口

#### 调用地址
`http://xxx/api/remark/searchByUserId`
请求方式: POST

#### 参数
参数示例
```
{
    "userid": 1,
    "page": 1,
    "pagesize": 2
}
```
最简式
```
{
    "userid": 1,
    "page": 1
}
```

参数 | 必选 | 类型 | 说明
-|-|-|-
userid | T | string | 账号
page | T | int|当前页码
pagesize |F | int | 页面大小(default 10)


#### 返回示例
```
{
    "error_code": "0",
    "total_page": 1,
    "data": [
        {
            "remarkCreateTime": "2022-09-03T08:00:00",
            "scenicId": 1,
            "remarkChangeTime": "2022-09-03T08:00:00",
            "remarkDetails": "秦始皇陵兵马俑是闻名中外的世界八大奇迹，是初到西安的必去之地，是世界最大的地下军事博物馆",
            "remarkId": 1,
            "userName": "小明",
            "userId": 1
        },
        {
            "remarkCreateTime": "2022-09-07T14:40:31",
            "scenicId": 1,
            "remarkChangeTime": "2022-09-07T14:40:31",
            "remarkDetails": "太美丽了",
            "remarkId": 8,
            "userName": "小明",
            "userId": 1
        }
    ]
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
total_page | int | 总页码数
remarkId | int | 评论主键
userId | int | 用户主键
userName | string | 用户昵称
scenicId | string | 评论所在景点主键
remarkDetails | string | 评论正文
remarkCreateTime | string | 评论创建时间
remarkChangeTime | string | 评论最后一次修改时间

错误码说明
代码|说明
-|-
0|成功
1021|查无此人
1022|没有条目(此页已经没有评论)

