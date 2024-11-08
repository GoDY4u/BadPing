# DoS Ping Attack Script

This Bash script allows you to perform a **Denial of Service (DoS)** attack using **ICMP ping requests** with varying packet sizes and intervals. The attack levels range from low to maximum, allowing flexibility to simulate different intensity scenarios.

### 🚨 **Warning**:
This script should **only be used on networks and systems where you have explicit authorization**. Unauthorized DoS attacks are **illegal** and can cause severe service disruptions, including network outages and data loss.

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
./dos_ping_level.sh <Destination IP> -level <Level (1-5)>


<Destination IP>: The target IP address of the server or device.
-level: The intensity of the attack (1-5), where 1 is the least aggressive and 5 is the most aggressive.


Example Commands:
Level 1 (Low intensity):

bash
Copiar código
./dos_ping_level.sh 192.168.1.1 -level 1
Level 3 (High intensity):

bash
Copiar código
./dos_ping_level.sh 192.168.1.1 -level 3
Level 5 (Maximum intensity - requires root privileges):

bash
Copiar código
sudo ./dos_ping_level.sh 192.168.1.1 -level 5
Note: For higher levels, root (superuser) permissions are required due to larger packet sizes and faster ping intervals. Use sudo as necessary.

Attack Levels
Level	Packet Size (-s)	Ping Interval (-i)	Description
1	4096 bytes	0.01 seconds	Low
2	8192 bytes	0.005 seconds	Medium
3	16384 bytes	0.002 seconds	High
4	32768 bytes	0.001 seconds	Very High
5	65500 bytes	0.0005 seconds	Maximum intensity

Warnings
Authorization: Only use this script on systems and networks you have explicit permission to test. Unauthorized usage is illegal and could result in criminal charges.

Impact: This script can quickly overwhelm the target system with ping requests, potentially causing service disruptions, network congestion, or system crashes. Use responsibly and with explicit authorization.

Permissions: Higher attack levels (Level 4 and 5) may require root (superuser) privileges due to the larger packet sizes and reduced ping intervals. Use sudo where necessary.

Misuse Consequences: Misusing this tool can lead to criminal liability. Do not use this script without proper consent. Always ensure you have written permission from the system or network owner before testing.

License
This project is licensed under the MIT License. You are free to use, modify, and distribute this code, provided you comply with the terms of the license. However, always ensure that you have the proper authorization before testing any network or system.

Disclaimer
This script is provided for educational purposes and for use in authorized penetration testing environments only. The creators of this script are not responsible for any damage caused by unauthorized usage.

Important Notes:
Always verify that you have written permission before testing any network or system.
This tool is not intended for malicious use. Misuse may have serious legal consequences.
