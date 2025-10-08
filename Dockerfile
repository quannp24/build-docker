# Sử dụng ảnh nền là Debian 8 "Jessie"
FROM debian:jessie

# Cài đặt các công cụ cần thiết
RUN apt-get update && apt-get install -y python3-pip git && apt-get clean

# Đặt python3.4 làm python mặc định
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.4 1

# Lệnh này sẽ chạy mỗi khi Repl khởi động (tùy chọn)
CMD ["python"]