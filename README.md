# noVNC Turorial: Run GUI Applications in Docker through Docker Compose

Wants to read this in other languages? [简体中文](asset/README-zh_cn.md)

## Required Docker Images:
1. `theasp/novnc:latest`
2. `osrf/ros:jazzy-desktop-full`


## Introduction

This guide is based on the [noVNC: Using GUIs with Docker](https://wiki.ros.org/docker/Tutorials/GUI#Using_noVNC) tutorial, which primarily focuses on Docker. However, this guide expands on the original tutorial by introducing Docker Compose, providing a more convenient setup and management process.

![adjust-scaling-mode.png](https://i.postimg.cc/rp87j7F2/adjust-scaling-mode.png)

For alternative methods of running GUIs in Docker, please refer to the following resources:
- [Using GUIs with Docker](https://wiki.ros.org/docker/Tutorials/GUI) by [ROS Wiki](https://wiki.ros.org/)
- [GUI inside Docker](https://github.com/2b-t/docker-for-robotics/blob/main/doc/Gui.md) by [Tobit Flatscher](https://github.com/2b-t)



## Architecture Overview

The architecture includes the following components:

- **noVNC**: Provides a web-based VNC interface to interact with GUI applications running inside the Docker containers.
- **roscore**: The central ROS master node that coordinates communication between various ROS nodes.
- **ros_gui**: A container running a GUI application (such as RViz) that interfaces with the ROS system.

These components communicate over a shared Docker network called `ros`, and the `noVNC` service allows remote access to the GUI.

# How to run

## Steps for Machine A (with Docker installed)

1. Start the Docker containers using Docker Compose:
    ```bash
    docker-compose up
    ```

2. Access the running Docker container "ros_gui":
    ```bash
    docker exec -it ros_gui bash
    ros2 run rviz2 rviz2
    ros2 run turtlesim turtlesim_node
    ```

2. Access the running Docker container "ros_publisher":
    ```bash
    docker exec -it ros_gui bash
    ros2 run turtlesim turtle_teleop_key
    ```


## Accessing from Remote Machine B (macOS, Linux, Windows, etc.)

1. Open a browser and navigate to:
    ```
    http://<Machine_A_IPV4_address>:8080/vnc.html
    ```

    Replace `<Machine_A_IPV4_address>` with the actual IP address of Machine A.


# Tip
- You can adjust the scaling mode in noVNC for a better viewing experience in your browser.