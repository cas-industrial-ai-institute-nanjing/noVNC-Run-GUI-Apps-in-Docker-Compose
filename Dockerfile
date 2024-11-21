FROM osrf/ros:jazzy-desktop-full 

# add ros2
RUN bash -c 'echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> /root/.bashrc'

# 默认命令
CMD ["bash"]