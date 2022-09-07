用户登录接口

#### 调用地址
`http://xxx/api/user/login`
请求方式: POST

#### 参数
参数示例
```
{
    "useraccount": "1",
    "userpassword": "1"
}
```
参数 | 必选 | 类型 | 说明
-|-|-|-
useraccount| T | string | 账号
userpassword | T | string | 明文密码

#### 返回示例
```
{
    "error_code": 0
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
error_code | String | 错误码

错误码说明
代码|说明
-|-
0|登录成功
1001|登录失败

