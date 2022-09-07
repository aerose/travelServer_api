用户修改接口
通过主键来修改信息

#### 调用地址
`http://xxx/api/user/modify`
请求方式: POST

#### 参数
参数示例
```
{
    "userid": 3,
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
最简式
```
    "userid": 3
```
参数 | 必选 | 类型 | 说明
-|-|-|-
userid | T | string | 主键
userpassword | F | string | 新密码
username | F | string | 新昵称
usersex| F | string | 新性别(M或F)
userphone | F | string | 新联系方式
useraddress | F | string | 新地址
useremail | F | string | 新邮箱
usernation | F | string | 新民族
userremarks | F | string | 新备注


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
1331|修改失败

