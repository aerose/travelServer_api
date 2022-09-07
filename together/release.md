景点结伴信息发布接口

#### 调用地址
`http://xxx/api/together/release`
请求方式: POST


#### 参数
参数 | 必选 | 类型 | 说明
-|-|-|-
userId | T | string | 发起人账号
scenicId | T | int | 景点主键
userContact | T| string | 发起人联系方式
msg | T | string | 结伴正文
startTime | T | string | 预计开始时间YYYY-MM-DD HH:MM:SS
endTime | T | string | 预计结束时间




#### 返回示例
```
{
    "error_code": 0
}
```


错误码说明
代码|说明
-|-
0|成功
1091|没有发布结伴权限

