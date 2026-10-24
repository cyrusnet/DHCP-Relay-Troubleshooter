# DHCP Relay & Subnet Troubleshooter 🚀

A simple and effective PowerShell tool designed to diagnose DHCP and Relay Agent connectivity issues across routed network subnets.

---

## 📌 Features
* **IP Health Check:** Identifies whether the client has a valid IP or is stuck on APIPA (`169.254.x.x`).
* **Gateway Connectivity:** Tests ICMP reachability to the local Default Gateway (DHCP Relay Agent).
* **DHCP Server Ping:** Verifies connectivity between the local host and the central DHCP Server.

---

## 🚀 How to Run

1. Open PowerShell as Administrator.
2. Run the script and specify your DHCP Server IP:

```powershell
.\DHCP_Relay_Troubleshooter.ps1 -DHCPServerIP 192.168.100.10

==================================================================
==================================================================
# ابزار عیب‌یابی شبکه و واسطه آی پی

یک ابزار ساده و کاربردی برای تشخیص مشکلات دریافت آی پی و بررسی ارتباط با واسطه های شبکه در محیط های سازمانی.

## قابلیت ها

۱. بررسی سلامت آی پی: تشخیص اینکه آیا سیستم آی پی معتبر گرفته یا روی خطای عدم دریافت آی پی مانده است.
۲. بررسی ارتباط با دروازه شبکه: تست پینگ و بررسی دسترسی به دروازه پیش فرض یا همان محل واسطه شبکه.
۳. بررسی ارتباط با سرور اصلی: تست پینگ و بررسی ارتباط بین سیستم و سرور مرکزی دهنده آی پی.

## نحوه اجرا

۱. محیط اجرای دستورات را با دسترسی مدیریت باز کنید.
۲. اسکریپت را اجرا کرده و آدرس سرور اصلی را وارد کنید:

اسکریپت.ps1 -آدرس_سرور 192.168.100.10

## سازنده

توسعه دهنده: کوروش
گیت هاب: https://github.com/cyrusnet
