# Sử dụng base image Tomcat 9 với JDK 17 (Amazon Corretto)
FROM tomcat:9.0.108-jdk17-corretto

# Xóa các ứng dụng mặc định có sẵn của Tomcat để nhẹ và sạch hơn
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war của bạn vào thư mục webapps và đổi tên thành ROOT.war
# (Để khi chạy app sẽ truy cập được ngay ở đường dẫn gốc /)
COPY cart-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Lệnh khởi chạy Tomcat
CMD ["catalina.sh", "run"]
