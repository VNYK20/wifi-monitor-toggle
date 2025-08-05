
# wifi-monitor-toggle
Lightweight script to toggle Wi-Fi between Managed and Monitor mode
=======
# 📶 Wi-Fi Monitor Mode Toggle

A lightweight bash tool to toggle your Wi-Fi card between **Managed** and **Monitor** mode with ease. Ideal for pentesting setups, real-time testing, and wireless audits.

## 🚀 Features

- 🟢 One-click toggle between **Monitor** and **Managed** mode  
- 🧠 Automatically detects current Wi-Fi mode  
- 🔄 Brings interface up/down as needed  
- 💾 Optional `systemd` service for persistent monitor mode on boot  
- 🛡 Minimal and clean with **no MAC randomization**  
- ✅ Real-time notifications (using `notify-send`)  
- 🧪 Tested on Kali Linux, Parrot OS, Ubuntu (with supported chipsets)  

## 📁 Project Structure

wifi-monitor-toggle
├── toggle-wifi-mode.sh        # Main toggle script

├── toggle-wifi-mode.service   # Optional: systemd service file

├── .gitignore

└── README.md

## 🛠️ Installation

1. **Clone the repository:**

```bash
git clone https://github.com/VNYK20/wifi-monitor-toggle.git
cd wifi-monitor-toggle

2. **Make the script executable:**

chmod +x toggle-wifi-mode.sh

3. (Optional) Enable persistent monitor mode on boot:

sudo cp toggle-wifi-mode.service /etc/systemd/system/
sudo systemctl enable toggle-wifi-mode.service
sudo systemctl start toggle-wifi-mode.service


⚙️ Usage
Run the toggle script manually:

./toggle-wifi-mode.sh



If using the service, it will automatically switch to monitor mode on boot.

