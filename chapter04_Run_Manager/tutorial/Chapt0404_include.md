# launch标签--include

- include标签用于将另一个 xml 格式的 launch 文件导入到当前文件
  
## 属性
```
<launch>
    <include file="$(find launch01)/launch/StartTurtle.launch"/>

    <!-- 其他节点 -->
    <node />
</launch>
```
## 子级标签

- env 环境变量设置

- arg 将参数传递给被包含的文件