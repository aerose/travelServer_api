用户个人信息查询接口


#### 调用地址
`http://xxx/api/user/info/{useraccount}`
如`http://localhost:8082/api/user/info/979687`
请求方式: **GET** (GET注意)

#### 参数
参数 | 必选 | 类型 | 说明
-|-|-|-
useraccount | T | string | 账号

#### 返回示例
```
{
    "error_code": "0",
    "userId": 1,
    "userAccount": "979687",
    "userPassword": "123456",
    "userName": "小明",
    "userSex": "M",
    "userPhone": "15068611111",
    "userAddress": "浙江省台州市温岭市XX镇",
    "userEmail": "9796@qq.com",
    "userNation": "汉",
    "userCreateTime": "Sat Sep 03 08:00:00 CST 2022",
    "userChangeTime": "Sat Sep 03 08:00:00 CST 2022",
    "userRemarks": "注册用户"
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
userId|int|用户主键
userAccount| string | 账号
userPassword|string|用户密码
userName | string | 昵称
userSex | string | 性别`M|F`
userPhone | string | 联系方式
userAddress | string | 住址
userEmail | string |邮件地址
userNation | string |民族
userCreateTime | string |创建时间
userChangeTime | string |修改时间
userRemarks | string | 备注

错误码说明
代码|说明
-|-
0|查询成功
1011|查无此人