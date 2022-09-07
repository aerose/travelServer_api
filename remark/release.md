景点评论发布接口

#### 调用地址
`http://xxx/api/remark/release`
请求方式: POST


#### 参数
参数示例
```
{
    "userid": 1,
    "scenicid": 1,
    "username": "小明",
    "remarkdetails": "太美丽了"
}
```


参数 | 必选 | 类型 | 说明
-|-|-|-
userid | T | int | 评论人主键
scenicid | T | int | 景点主键
username | T | string | 评论人昵称
remarkdetails | T | string | 评论内容




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
1061| 景点不存在
1062 | 账号不存在
1063|其他问题

