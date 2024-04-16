FROM ubuntu:latest
LABEL authors="mhd0012"

# Use the official Python image as a parent image
# انتخاب تصویر پایه
FROM python:3.10

# تنظیم متغیرهای محیطی
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# تعیین کارگdirectory کاری
WORKDIR /code

# کپی فایل‌های پروژه به داخل کانتینر
COPY . /code/

# نصب وابستگی‌ها
RUN pip install -r requirements.txt

# اجرای دستورات مختلف (اختیاری)
# مثلاً جهت اعمال مهاجرت‌ها و دیگر تنظیمات پروژه

# تنظیم دستور اجرای برنامه در هنگام ران شدن کانتینر
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


