# 4.2.7 launch 文件标签之 `<group>`

`<group>` 标签用于对节点进行分组，支持 `ns` 属性，可将组内节点统一归属到某个命名空间。

## 1. 属性

- **ns**（可选）  
  指定组内节点所在的命名空间。  
  示例：`ns="robot1"`

- **clear_params**（可选，值为 `true` 或 `false`）  
  启动前是否清除该命名空间下的所有参数。  
  ⚠️ 此功能具有危险性，请谨慎使用。

## 2. 子级标签  
除 `<launch>` 外的所有标签均可作为子标签。

## 示例

```
<launch>
    <!-- 启动两只turtle和键盘控制 -->
    <group ns="turtle1">
        <node pkg="turtlesim" type="turtlesim_node" name="turtle1" respawn="true" output="screen">
            <param name="background_r" value="200"/>
            <param name="background_g" value="200"/>
            <param name="background_b" value="200"/>
        </node>
        <node pkg="turtlesim" type="turtle_teleop_key" name="teleop_turtle1" output="screen"/>
    </group>
    <group ns="turtle2">
        <node pkg="turtlesim" type="turtlesim_node" name="turtle1" respawn="true" output="screen">
            <param name="background_r" value="200"/>
            <param name="background_g" value="200"/>
            <param name="background_b" value="200"/>
        </node>
        <node pkg="turtlesim" type="turtle_teleop_key" name="teleop_turtle1" output="screen"/>
    </group>

</launch>
```