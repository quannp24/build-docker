# Sử dụng ảnh nền (base image) là Debian 8 "Jessie"
# Đây là một hệ điều hành cũ có Python 3.4 làm python3 mặc định
FROM debian:jessie

# Cài đặt các công cụ cơ bản như pip và git để làm việc
RUN apt-get update && apt-get install -y \
    python3-pip \
    git \
    && apt-get clean
