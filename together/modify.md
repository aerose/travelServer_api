评论修改接口


#### 调用地址
`http://xxx/api/together/modify`
请求方式: POST

#### 参数
参数示例
```
{
    "togetherid": 3,
    "usercontact": "+V看",
    "togetherdetails": "我不去了咕咕咕",
    "togetherstarttime":"2022-09-03 08:00:00",
    "togetherendtime":"2022-09-03 18:00:00"
}
```
最简式
```
{
    "togetherid": 3,
}
```

参数 | 必选 | 类型 | 说明
-|-|-|-
togetherid | T | int | 评论主键
usercontact |F | string | 发起人联系方式
togetherdetails | F | string | 新内容
togetherstarttime| F | string | 结伴开始时间
togetherendtime | F| string |结伴结束时间

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
1521|找不到该结伴信息
