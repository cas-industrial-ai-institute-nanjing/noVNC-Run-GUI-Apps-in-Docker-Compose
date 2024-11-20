# noVNC 教程：通过 Docker Compose 在 Docker 中运行 GUI 应用程序

![adjust-scaling-mode.png](https://i.postimg.cc/rp87j7F2/adjust-scaling-mode.png)

本教程基于 [noVNC: 使用 Docker 运行 GUI](https://wiki.ros.org/docker/Tutorials/GUI#Using_noVNC) 教程，该教程主要关注 Docker 的使用。然而，本教程在原有基础上进行了扩展，引入了 Docker Compose，提供了更方便的设置和管理方式。

有关其他运行 GUI 应用程序的方法，请参考以下资源：
- [使用 Docker 运行 GUI](https://wiki.ros.org/docker/Tutorials/GUI) by [ROS Wiki](https://wiki.ros.org/)
- [Docker 中的 GUI](https://github.com/2b-t/docker-for-robotics/blob/main/doc/Gui.md) by [Tobit Flatscher](https://github.com/2b-t)

---

### 所需 Docker 镜像：
1. `theasp/novnc:latest`
2. `osrf/ros:noetic-desktop-full`

---

## 机器 A（已安装 Docker）的步骤

1. 使用 Docker Compose 启动 Docker 容器：
    ```bash
    docker-compose up
    ```

2. 访问正在运行的 Docker 容器：
    ```bash
    docker exec -it ros_gui bash
    ```

3. 执行ros镜像内置ros_entrypoint.sh：
    ```bash
    source ./ros_entrypoint.sh
    ```

4. 启动 RViz（或其他任何 GUI 应用程序）：
    ```bash
    rosrun rviz rviz
    ```

---

## 从远程机器 B 访问（适用于 macOS、Linux、Windows 等）

1. 打开浏览器并访问：
    ```
    http://<Machine_A_IPV4_address>:8080/vnc.html
    ```

    将 `<Machine_A_IPV4_address>` 替换为机器 A 的实际 IP 地址。

---

## 提示

- 你可以在 noVNC 中调整缩放模式(scaling mode)，以便在浏览器中获得更好的查看体验。
