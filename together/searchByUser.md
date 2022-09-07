用户结伴信息查询接口

#### 调用地址
`http://xxx/api/together/searchByUser`
请求方式: POST

#### 参数
参数 | 必选 | 类型 | 说明
-|-|-|-
userId | T | string | 账号
page | T | int | 页码
pagesize | F | int | 单页返回记录条数(默认10)



#### 返回示例
```
{
    "error_code": 0
    "total_page": 1
    "data":[
        {
            "togetherId": 1,
            "userId": "a1234",
            "name": "rose",
            "scenicId": 1,
            "userContact":"150686xxxxx",
            "msg" : "我明天去",
            "startTime": "2022-9-2 12:12:12",
            "endTime": "2022-9-2 18:00:00",
            "createTime": "2022:09:03 08:00:00",
            "changeTime": "2022:09:03 08:00:00"
        },
        {
            "togetherId": 2,
            "userId": "a1234",
            "name": "rose",
            "scenicId": 1,
            "userContact":"123@qq.com",
            "msg" : "我后天去",
            "startTime": "2022-9-3 12:12:12",
            "endTime": "2022-9-3 18:00:00",
            "createTime": "2022:09:03 08:00:00",
            "changeTime": "2022:09:03 08:00:00"
        }
    ]
}
 //一次最多返回pagesize条
```
参数说明
参数名 | 类型 | 说明
-|-|-
error_code | int | 错误码
total_page | int | 总页码数
userId | string | 发起者名称
name | string | 发起者姓名
userContact | string | 发起者联系方式
scenicId | string | 结伴景点主键
msg | string | 结伴信息正文
startTime | string | 预计开始时间
endTime | string | 预计结束时间
createTime|string|创建时间
changeTime|string|最后修改时间

错误码说明
代码|说明
-|-
0|还有条目
1031|查无此人
1032|没有条目(此页已经没有结伴信息)

