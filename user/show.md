所有用户展示接口

#### 调用地址
`http://xxx/api/user/show/{page}/{pagesize}`
pagesize可省略
如`/api/user/show/1`
`/api/user/show/1/2`
请求方式: **GET**

#### 参数
参数 | 必选 | 类型 | 说明
-|-|-|-
page | T |int | 请求的页码
pagesize| F | int |每页条目数(default 10)




#### 返回示例
```
{
    "error_code": "0",
    "total_page": 3,
    "data": [
        {
            "userAddress": "浙江省台州市温岭市XX镇",
            "userNation": "汉",
            "userSex": "M",
            "userCreateTime": "2022-09-03T08:00:00",
            "userPassword": "123456",
            "userAccount": "979687",
            "userPhone": "15068611111",
            "userRemarks": "注册用户",
            "userEmail": "9796@qq.com",
            "userName": "小明",
            "userId": 1,
            "userChangeTime": "2022-09-03T08:00:00"
        },
        {
            "userAddress": "山西省",
            "userNation": "汉",
            "userSex": "F",
            "userCreateTime": "2022-09-03T08:00:00",
            "userPassword": "a123456",
            "userAccount": "rose_18",
            "userEmail": "wer@163.com",
            "userName": "rose",
            "userId": 2,
            "userChangeTime": "2022-09-03T08:00:00"
        }
    ]
}
```
参数说明
参数名 | 类型 | 说明
-|-|-
total_page|int|总页码数
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
0|成功
1501|没有条目
