# 4.2.8 launch 文件标签之 `<arg>`

`<arg>` 标签用于在 launch 文件中定义动态参数，作用类似于函数的形参，可显著提高 launch 文件的灵活性。

## 1. 属性

- **name**  
  参数名称  
  格式：`name="参数名称"`

- **default**（可选）  
  为参数设定默认值  
  格式：`default="默认值"`  
  不能与 `value` 同时出现

- **value**（可选）  
  直接设定参数的固定值  
  格式：`value="数值"`  
  不能与 `default` 同时出现

- **doc**（可选）  
  对该参数的说明文字  
  格式：`doc="描述"`

## 2. 子级标签  
无

## 3. 示例

**launch 文件传参语法实现：hello.launch**

```
<launch>
    <!-- 演示arg使用 -->
    <arg name="CarLength" default="42" />
    <arg name="CarWidth" default="5" />

    <param name="CarLength1" value="$(arg CarLength)" />
    <param name="CarLength2" value="$(arg CarLength)" />
    <param name="CarLength3" value="$(arg CarLength)" />
    <param name="CarWidth" value="$(arg CarWidth)" />
</launch>
```

- 运行命令, 如果后面不跟变量值,则设置为default中的值
```
$ roslaunch launch01 arg.launch CarLength:=666
```