管理员新建接口


#### 调用地址
`http://xxx/api/admin/create`
请求方式: POST

#### 参数
参数示例
```
{
    "adminaccount": "createtest",
    "adminpassword": "123",
    "adminname": "createTest",
    "adminduty" : "用户管理员",
    "admindescription": "用户增删改查",
    "adminiffreeze": "T"
}
```


参数 | 必选 | 类型 | 说明
-|-|-|-
adminAccount | T | string | 管理员账号
adminpassword | T | string | 密码
adminname | F | string | 昵称
adminduty | T | string | 职责
admindescription | T | string | 权限说明
adminiffreeze | T | string | 是否冻结("T" or "F")


#### 返回示例
```
{
    "error_code": 0
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
error_code | string | 错误码

错误码说明
代码|说明
-|-
0|注册
1311|重复账号
1312|注册失败

