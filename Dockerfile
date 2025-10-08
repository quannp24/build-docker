# Sử dụng ảnh nền là Debian 8 "Jessie"
FROM debian:jessie

# SỬA LỖI: Chuyển kho phần mềm sang kho lưu trữ (archive)
# vì "jessie" đã quá cũ và không còn trên server chính.
RUN sed -i 's/deb.debian.org/archive.debian.org/g' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/archive.debian.org/g' /etc/apt/sources.list && \
    sed -i '/jessie-updates/d' /etc/apt/sources.list

# Bây giờ mới chạy update và cài đặt các công cụ cần thiết
RUN apt-get update && apt-get install -y \
    python3-pip \
    git \
    && apt-get clean