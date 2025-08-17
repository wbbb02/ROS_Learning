## 4.2.4 launch 文件标签之 `<remap>`  
**功能**：用于话题重命名。

### 1. 属性
| 属性名 | 说明             | 示例       |
|--------|------------------|------------|
| `from` | 原始话题名称     | `from="xxx"` |
| `to`   | 重命名后的目标名称 | `to="yyy"`   |

## 实例
  
```
<launch>
<!-- <launch deprecated="此文件已经过时"> -->
    <node pkg="turtlesim" type="turtlesim_node" name="my_turtle" output="screen">
        <remap from="/turtle1/cmd_vel" to="/cmd_vel"/>
    </node>
    <node pkg="turtlesim" type="turtle_teleop_key" name="key_control" output="screen" ns="qq"/>
</launch>
```
- 启动launch文件后运行命令
  `wbb@wbb-System-Product-Name:~/chapter04$ rosrun teleop_twist_keyboard teleop_twist_keyboard.py`

### 2. 子级标签
无