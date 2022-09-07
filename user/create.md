用户注册接口


#### 调用地址
`http://xxx/api/user/create`
请求方式: POST

#### 参数
示例
```
{
    "useraccount": "createtest",
    "userpassword": "123",
    "username": "createTest",
    "usersex" : "M",
    "userphone": "123",
    "useraddress": "地址",
    "useremail": "13@qq.com",
    "usernation": "汉",
    "userremarks": "无"
}
```
最简式:
```
{
    "useraccount": "createtest",
    "userpassword": "123",
    "username": "createTest"
}
```

参数 | 必选 | 类型 | 说明
-|-|-|-
useraccount | T | string | 账号
userpassword | T | string | 密码
username | T | string | 昵称
usersex | F|string | 性别`M|F`
userphone | F|string | 联系方式
useraddress |F| string | 住址
useremail |F| string |邮件地址
usernation |F| string |民族
userremarks |F| string | 备注
>必选为F的可省略


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
0|成功
1321|重复账号
1322| 注册失败

