# DHCP-Relay-Troubleshooter
A simple PowerShell diagnostic tool to troubleshoot DHCP Relay Agent configuration, gateway reachability, and APIPA IP issues in multi-subnet enterprise networks.
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



---

### 📄 ۲. فایل `README.md` (ترجمه فارسی)

```markdown
# ابزار عیب‌یابی DHCP Relay و ساب‌نت 🚀

یک ابزار ساده و کاربردی با پاورشل برای تشخیص مشکلات دریافت آی‌پی و ارتباط با DHCP Relay Agent در شبکه‌های سازمانی.

---

## 📌 قابلیت‌ها
* **بررسی سلامت IP:** تشخیص اینکه آیا سیستم آی‌پی معتبر گرفته یا روی آدرس خطای APIPA (`169.254.x.x`) مانده است.
* **تست ارتباط با گیت‌وی:** بررسی پینگ و دسترسی به گیت‌وی محلی (محل قرارگیری DHCP Relay Agent).
* **تست ارتباط با سرور DHCP:** بررسی پینگ بین کلاینت و سرور مرکزی DHCP.

---

## 🚀 نحوه اجرا

۱. محیط PowerShell را به صورت Administrator باز کنید.
۲. اسکریپت را اجرا کرده و آی‌پی سرور DHCP خود را وارد کنید:

```powershell
.\DHCP_Relay_Troubleshooter.ps1 -DHCPServerIP 192.168.100.10
