# 4.2 launch文件
## 4.2.1 launch标签--launch
- <launch>标签是所有 launch 文件的根标签，充当其他标签的容器
### 1. 属性
- deprecated = "弃用声明"

- 告知用户当前 launch 文件已经弃用

```
    <launch deprecated="此文件已经过时">
        <node pkg="turtlesim" type="turtlesim_node" name="my_turtle" output="screen"/>
        <node pkg="turtlesim" type="turtle_teleop_key" name="key_control" output="screen"/>
    </launch>
```
### 2. 子级标签
- 所有标签都是launch的子标签