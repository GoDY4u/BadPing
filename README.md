# BadPing 🚀💻

This Bash script allows you to perform a **Denial of Service (DoS)** attack using **ICMP ping requests** with varying packet sizes and intervals. The attack levels range from low to maximum, allowing flexibility to simulate different intensity scenarios.

---

## Description

This script sends ICMP ping requests to a target IP address with different configurations of packet size and ping interval. You control the attack intensity by selecting one of the following levels:

- **Level 1**: Low (4096 bytes, 0.01 seconds interval)
- **Level 2**: Medium (8192 bytes, 0.005 seconds interval)
- **Level 3**: High (16384 bytes, 0.002 seconds interval)
- **Level 4**: Very High (32768 bytes, 0.001 seconds interval)
- **Level 5**: Maximum (65500 bytes, 0.0005 seconds interval)

This script is primarily intended for performing **stress tests** on networks and servers within controlled environments where you have explicit permission.

---

## Requirements

- A **Linux/Unix-based system** with **Bash**.
- **Root (superuser)** privileges for higher levels (Level 4 and 5).

---

## Usage

To run the script, provide the **destination IP address** and the **attack level** using the `-level` flag.

### Syntax:

```bash
./badping.sh <Destination IP> -level <Level (1-5)>
```

<Destination IP> The target IP address of the server or device.
-level: The intensity of the attack (1-5), where 1 is the least aggressive and 5 is the most aggressive.


### Example Commands:

Level 1 (Low intensity):

```bash
./badping.sh 192.168.1.1 -level 1
```

Level 3 (High intensity):

```bash
./badping.sh 192.168.1.1 -level 3
```

Level 5 (Maximum intensity - requires root privileges):

```bash
sudo ./badping.sh 192.168.1.1 -level 5
```

Note: For higher levels, root (superuser) permissions are required due to larger packet sizes and faster ping intervals. Use sudo as necessary.


| **Level** | **Packet Size (`-s`)** | **Ping Interval (`-i`)** | **Description**       |
|-----------|------------------------|--------------------------|-----------------------|
| **1**     | 4096 bytes             | 0.01 seconds             | **Low**               |
| **2**     | 8192 bytes             | 0.005 seconds            | **Medium**            |
| **3**     | 16384 bytes            | 0.002 seconds            | **High**              |
| **4**     | 32768 bytes            | 0.001 seconds            | **Very High**         |
| **5**     | 65500 bytes            | 0.0005 seconds           | **Maximum intensity** |



Permissions:
For higher attack levels (Level 4 and 5), root (superuser) privileges may be required due to larger packet sizes and shorter ping intervals. Use sudo to execute the script with the necessary permissions.


### Warnings 🚨⚠️

## 🔑 Authorization
**Important**: Only use this script on systems or networks where you have explicit permission. Unauthorized use for DoS attacks is illegal and can lead to serious legal consequences. ⚖️

## 💥 Impact
This script can overwhelm the target system with a high volume of ping requests, leading to:

- Service disruptions
- Network congestion
- System crashes

Always ensure you conduct tests only in **controlled environments** and with **explicit consent**. 💻🚨

---

## ⚖️ Misuse and Legal Consequences
Misusing this tool can result in serious **legal** and **criminal consequences**. It should only be used for **authorized penetration testing** or **security research**. 

- **Never use this script for malicious purposes**. Unauthorized DoS attacks can lead to **network outages**, **data loss**, and more. 🚫
- Always **verify** you have **written consent** from the system or network owner before conducting any tests. 📄✍️
- The creators are **not responsible** for any damage, disruption, or legal repercussions from misuse. By using this script, you accept **full responsibility** for its actions.

---

---

📩 For any questions or suggestions, open an **issue** on GitHub.

---

## 🌍 Connect

If you liked this project, feel free to leave a ⭐ on the repository and share it with the community. 😃

---


## ⚡ Disclaimer ⚡
This script is provided **for educational purposes** and **authorized penetration testing only**. 

As the creator of this script, I **do not take any responsibility** for any damage, disruption, or legal consequences caused by its use. **You** (the user) are solely responsible for ensuring that you have proper authorization and permission before using the script. Misuse could result in criminal charges, and it is your responsibility to act within the boundaries of the law.

**Use responsibly** and ensure you have proper permission before testing any system or network.
