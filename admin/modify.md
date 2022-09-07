管理员修改接口
通过主键修改

#### 调用地址
`http://xxx/api/admin/modify`
请求方式: POST

#### 参数
参数示例
```
{
    "adminid": 6,
    "adminpassword": "123",
    "adminname": "test233",
    "adminduty" : "用户管理员",
    "admindescription": "用户增删改查",
    "adminiffreeze": "F"
}
```
最简式
```
{
    "adminid": 6
}
```
参数 | 必选 | 类型 | 说明
-|-|-|-
adminid | T | int | 管理员主键
adminpassword | F | string | 新密码
adminname | F | string | 新的昵称
adminduty | F | string | 新的职责
admindescription | F | string | 新的权限说明
adminiffreeze| F| string | 新的是否冻结


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
1301|修改失败

