用户结伴信息查询接口

#### 调用地址
`http://xxx/api/together/searchByUserId`
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
userid | T | int | 用户主键
page | T | int | 页码
pagesize | F | int | 单页返回记录条数(默认10)



#### 返回示例
```
{
    "error_code": "0",
    "total_page": 1,
    "data": [
        {
            "togetherEndTime": "2022-09-03T18:00:00",
            "togetherStartTime": "2022-09-03T08:00:00",
            "scenicId": 1,
            "togetherId": 1,
            "togetherDetails": "我将于明日去秦始皇陵游览",
            "togetherCreateTime": "2022-09-03T08:00:00",
            "userContact": "15068611111",
            "userId": 1,
            "togetherChangeTime": "2022-09-03T08:00:00"
        },
        {
            "togetherEndTime": "2022-09-03T18:00:00",
            "togetherStartTime": "2022-09-03T09:00:00",
            "scenicId": 1,
            "togetherId": 6,
            "togetherDetails": "test",
            "togetherCreateTime": "2022-09-03T08:00:00",
            "userContact": "123@qq.com",
            "userId": 1,
            "togetherChangeTime": "2022-09-03T08:00:00"
        }
    ]
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
error_code | string | 错误码
total_page | int | 总页码数
userId | id | 发起者主键
scenicId | int | 景点主键
togetherId | int | 结伴主键
userContact | string | 发起者联系方式
togetherDetails | string | 结伴信息正文
togetherStartTime | string | 预计开始时间
togetherEndTime | string | 预计结束时间
togetherCreateTime|string|创建时间
togetherChangeTime|string|最后修改时间

错误码说明
代码|说明
-|-
0|还有条目
1031|查无此人
1032|没有条目(此页已经没有结伴信息)

