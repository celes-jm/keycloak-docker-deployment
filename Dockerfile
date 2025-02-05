# ใช้ Keycloak image จาก quay.io หรือ Docker Hub
FROM quay.io/keycloak/keycloak:latest

# ตั้งค่าต่างๆ เช่น environment variables หรือ port
ENV KEYCLOAK_USER=admin
ENV KEYCLOAK_PASSWORD=admin

# ตั้งพอร์ตที่ใช้โดย Keycloak
EXPOSE 8080

# คำสั่งให้ Keycloak รัน
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
