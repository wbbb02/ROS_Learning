# 4.2.5 launch 文件标签之 `<param>`

`<param>` 标签主要用于在参数服务器上设置参数，参数源可以在标签中通过 `value` 指定，也可以通过外部文件加载。  
在 `<node>` 标签中使用时，相当于私有命名空间。

## 1. 属性

- **name**  
  参数名称，可以包含命名空间  
  格式：`name="命名空间/参数名"`

- **value**（可选）  
  定义参数值。如果此处省略，必须指定外部文件作为参数源  
  格式：`value="xxx"`

- **type**（可选）  
  指定参数类型。如果未指定，roslaunch 会尝试自动确定参数类型，规则如下：  
  - 如果数字包含 `.`，解析为浮点型；否则为整型  
  - `"true"` 和 `"false"`（不区分大小写）解析为布尔型  
  - 其他情况解析为字符串  
  可选值：`str | int | double | bool | yaml`

## 格式
格式1：launch下，node外
格式2：node下，跟随node的私有命名空间
## 示例

```
<launch>
<!-- <launch deprecated="此文件已经过时"> -->
<!-- 格式1：launch下，node外 -->
    <param name="paramA" type="int" value="111"/>
    <node pkg="turtlesim" type="turtlesim_node" name="my_turtle" output="screen">
        <remap from="/turtle1/cmd_vel" to="/cmd_vel"/>
        <!-- 格式2：node下 -->
        <param name="paramB" type="double" value="3.14"/>
    </node>
    <node pkg="turtlesim" type="turtle_teleop_key" name="key_control" output="screen" ns="qq"/>
</launch>
```

```
wbb@wbb-System-Product-Name:~/chapter04$ rosparam list
/my_turtle/background_b
/my_turtle/background_g
/my_turtle/background_r
/my_turtle/paramB
/paramA
/rosdistro
/roslaunch/uris/host_wbb_system_product_name__43769
/rosversion
/run_id
```

## 2. 子级标签  
无