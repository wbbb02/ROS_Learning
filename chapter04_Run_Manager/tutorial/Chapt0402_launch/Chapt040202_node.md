## 4.2.2 launch标签--node

- <node>标签用于指定 ROS 节点，是最常见的标签，需要注意的是: roslaunch 命令不能保证按照 node 的声明顺序来启动节点(节点的启动是多进程的)

### 属性

`pkg="包名"`

- 节点所属的包

`type="nodeType"`

- 节点类型(与之相同名称的可执行文件)

`name="nodeName"`

- 节点名称(在 ROS 网络拓扑中节点的名称)

`args="xxx xxx xxx" (可选)`

- 将参数传递给节点

`machine="机器名"`

- 在指定机器上启动节点

`respawn="true | false" (可选)`

- 如果节点退出，是否自动**重启**

`respawn_delay=" N" (可选)`

- 如果 respawn 为 true, 那么**延迟** N 秒后**启动**节点

`required="true | false" (可选)`

- 该节点是否**必须**，如果为 true,那么如果该节点退出，将杀死整个 roslaunch

`ns="xxx" (可选)`

- 在指定命名空间 xxx 中启动节点

```
    ns="qq"
    wbb@wbb-System-Product-Name:~/chapter04$ rosnode list
    /my_turtle
    /qq/key_control
    /rosout
```

`clear_params="true | false" (可选)`

- 启动前，删除节点的私有空间的所有参数

`output="log | screen" (可选)`

- 日志发送目标，可以设置为 log 日志文件，或 screen 屏幕,默认是 log