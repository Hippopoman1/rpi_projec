#!/bin/bash

# === ตั้งค่าตัวแปรโฟลเดอร์โปรเจกต์ ===
PROJECT_DIR="/home/pi/face-door-control"  # ✅ เปลี่ยนตาม path จริงที่อยู่บน Pi
VENV_DIR="$PROJECT_DIR/venv"

# === ไปที่โฟลเดอร์โปรเจกต์ ===
cd $PROJECT_DIR

# === เปิดใช้งาน Python virtual environment ===
source $VENV_DIR/bin/activate

# === รันโปรแกรมหลัก ===
python3 main.py
