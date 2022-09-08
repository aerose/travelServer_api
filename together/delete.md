结伴信息删除接口

#### 调用地址
`http://xxx/api/together/delete`
请求方式: POST


#### 参数
参数示例
```
{
    "togetherid": 7
}
```
参数 | 必选 | 类型 | 说明
-|-|-|-
togetherId | T | int | 待删除结伴信息主键




#### 返回示例
```
{
    "error_code": "0"
}
```


错误码说明
代码|说明
-|-
0|成功
1081|查无此结伴信息


