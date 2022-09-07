评论修改接口


#### 调用地址
`http://xxx/api/remark/modify`
请求方式: POST

#### 参数
参数示例
```
{
    "remarkid": 3,
    "username": "xiaohua",
    "remarkdetails": "太美丽了"

}
```
最简式
```
{
    "remarkid": 3,
    "username": "xiaohua"
}
```

参数 | 必选 | 类型 | 说明
-|-|-|-
remarkid | T | int | 评论主键
username | T | string | 评论用户名
remarkdetails | F | string | 新内容


#### 返回示例
```
{
    "error_code": "0"
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
error_code | string | 错误码

错误码说明
代码|说明
-|-
0|修改成功
1341|修改失败

