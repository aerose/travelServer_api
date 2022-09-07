管理员个人信息查询接口


#### 调用地址
`http://xxx/api/admin/info/{adminaccount}`
如`http://localhost:8082/api/admin/info/a1234`
请求方式: GET

#### 参数
参数 | 必选 | 类型 | 说明
-|-|-|-
adminaccount | T | string | 账号

#### 返回示例
```
{
    "error_code": "0",
    "adminId": 3,
    "adminAccount": "a1234",
    "adminPassword": "123456",
    "adminName": "a1234",
    "adminDuty": "用户管理员",
    "adminDescription": "用户增删改查",
    "adminIfFreeze": "F",
    "adminCreateTime": "Sat Sep 03 08:00:00 CST 2022",
    "adminChangeTime": "Sat Sep 03 08:00:00 CST 2022"
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
adminId|int|管理员主键
adminName | string | 昵称
adminDuty|string|管理员职责
adminDescription|string|管理员职责描述
adminIfFreeze|string|是否冻结"T"(冻结)或"F"(未冻结)
adminCreateTime|string|账号创建时间
adminChangeTime|string|账号最后修改时间



错误码说明
代码|说明
-|-
0|查询成功
1211|查无此人