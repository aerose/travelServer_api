景点结伴信息发布接口

#### 调用地址
`http://xxx/api/together/release`
请求方式: POST


#### 参数
参数示例
```
{
    "scenicid": 5,
    "userid": 5,
    "usercontact": "114514",
    "togetherdetails": "太美丽了",
    "togetherstarttime": "2022-09-03 08:00:00",
    "togetherendtime":"2022-09-03 14:00:00"
}
```
参数 | 必选 | 类型 | 说明
-|-|-|-
userid | T | int | 发起人账号
scenicid | T | int | 景点主键
usercontact | T| string | 发起人联系方式
togetherdetails | T | string | 结伴正文
togetherstarttime | T | string | 预计开始时间YYYY-MM-DD HH:MM:SS
togetherendtime | T | string | 预计结束时间




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
1091|找不到该景点
1092|找不到该用户


