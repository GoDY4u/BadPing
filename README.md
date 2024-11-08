DoS Ping Attack Script
This Bash script allows you to perform a Denial of Service (DoS) attack using ICMP ping requests with different packet sizes and intervals. The attack levels range from low to maximum, providing flexibility to simulate various intensity scenarios.

Warning: This script should only be used on networks and systems where you have explicit authorization. Unauthorized DoS attacks are illegal and can cause severe disruptions to services.

Description
This script sends ICMP ping requests to a target IP address with varying configurations of packet size and ping interval. The attack intensity is controlled by selecting a specific attack level (1 to 5), which adjusts the following parameters:

Level 1: Low (4096 bytes, 0.01 seconds interval)
Level 2: Medium (8192 bytes, 0.005 seconds interval)
Level 3: High (16384 bytes, 0.002 seconds interval)
Level 4: Very High (32768 bytes, 0.001 seconds interval)
Level 5: Maximum (65500 bytes, 0.0005 seconds interval)
This script is useful for performing stress tests on networks and servers within controlled environments where you have authorization.

Requirements:

Bash (works on Linux/Unix-based systems).
Superuser (root) permissions for higher levels (Level 5).


Usage
To run the script, provide the target IP address and the attack level using the -level flag.

Syntax:
bash
Copiar código
./dos_ping_level.sh <Destination IP> -level <Level (1-5)>
<Destination IP>: The IP address of the target server or device.
-level: The intensity level of the attack (1-5), where 1 is the lowest and 5 is the highest.
Examples:
Level 1 (Low intensity):

bash
Copiar código
./dos_ping_level.sh 192.168.1.1 -level 1
Level 3 (High intensity):

bash
Copiar código
./dos_ping_level.sh 192.168.1.1 -level 3
Level 5 (Maximum intensity):

bash
Copiar código
sudo ./dos_ping_level.sh 192.168.1.1 -level 5
Note: For higher levels, you may need root privileges due to larger packet sizes and faster ping intervals. Use sudo if required.

Explanation of Attack Levels
Level	Packet Size (-s)	Ping Interval (-i)	Description
1	4096 bytes	0.01 seconds	Low
2	8192 bytes	0.005 seconds	Medium
3	16384 bytes	0.002 seconds	High
4	32768 bytes	0.001 seconds	Very High
5	65500 bytes	0.0005 seconds	Maximum intensity
Warnings
Authorization: Only use this script on networks and systems where you have explicit authorization. Unauthorized use is illegal and can result in criminal charges.

Impact: This script can quickly overwhelm the target system or network with traffic, leading to service disruptions or network congestion. Use responsibly and ensure you have the necessary permissions.

Permissions: Higher attack levels (Level 4 and 5) may require root (superuser) permissions because of the large packet sizes and fast intervals. Use sudo where appropriate.

Misuse Consequences: Misuse of this tool is a criminal offense. Do not use it without proper consent. Always ensure that you have explicit, written permission from the network or system owner before conducting any testing.

License
