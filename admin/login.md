管理员登录接口

#### 调用地址
`http://xxx/api/admin/login`
请求方式: POST

#### 参数
参数示例
```
{
    "adminaccount": "root",
    "adminpassword": "1234"
}
```
参数 | 必选 | 类型 | 说明
-|-|-|-
adminaccount | T | string | 管理员账号
adminpassword | T | string | 明文密码

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
0|登录成功
1181|登录失败

