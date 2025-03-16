#!/bin/bash

echo "=== เริ่มติดตั้งระบบ ==="

# อัปเดตและติดตั้ง system packages
sudo apt-get update && sudo apt-get upgrade -y

# ติดตั้ง Python และ venv ถ้ายังไม่มี
sudo apt-get install -y python3 python3-pip python3-venv

# ติดตั้ง cmake และ build tools
sudo apt-get install -y cmake libopenblas-dev liblapack-dev libjpeg-dev libatlas-base-dev gfortran

# ติดตั้ง lgpio สำหรับ Raspberry Pi GPIO
sudo apt-get install -y lgpio

# สร้าง virtual environment
python3 -m venv venv
source venv/bin/activate

# อัปเกรด pip
pip install --upgrade pip

# ติดตั้ง Python packages จาก requirements.txt
pip install -r requirements.txt

echo "=== ติดตั้งเสร็จสิ้น ==="
echo "เริ่มระบบด้วย: source venv/bin/activate && python3 main.py"
