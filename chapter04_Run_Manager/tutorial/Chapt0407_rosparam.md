# 4.2.6 launch 文件标签之 `<rosparam>`

`<rosparam>` 标签可以从 YAML 文件导入参数，或将参数导出到 YAML 文件，也可以用来删除参数。  
当 `<rosparam>` 标签位于 `<node>` 标签内部时，其操作被视为私有。

## 1. 属性

- **command**（可选，默认 `load`）  
  指定要执行的操作：  
  - `load`：加载参数  
  - `dump`：导出参数  
  - `delete`：删除参数  

- **file**  
  指定加载或导出的 YAML 文件路径，通常使用 `$(find 包名)/路径/文件名.yaml` 的形式。  

- **param**  
  指定要操作的参数名称。  

- **ns**（可选）  
  为参数指定命名空间。

## 导入
### 格式
格式1：launch下，node外
格式2：node下，跟随node的私有命名空间
```
<rosparam command="load" file="$(find launch01)/launch/params.yaml"/>
```
## 导出
- 一般放在另一个launch文件中单独执行，因为launch文件启动命令有先后顺序（可能不准）
```
<launch>
        <rosparam command="dump" file="$(find launch01)/launch/paramout.yaml"/>
</launch>
```
## 删除
` <rosparam command="delete" param="bg_R"/> `

## 2. 子级标签  
无