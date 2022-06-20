#! /bin/bash
# Make Instance Ready for Remote Desktop or RDP
apt-get update
rm -rf Windows10 Windows10.img Windows10.gz ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "Download windows files"
wget -O Windows10.gz https://vagrantcloud-files-production.s3-accelerate.amazonaws.com/archivist/boxes/0f51927e-38b9-4397-b686-e6efbccec2dc?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA6NDPRW4BU4QXRYOH%2F20220620%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220620T113630Z&X-Amz-Expires=900&X-Amz-Security-Token=FwoGZXIvYXdzECUaDCfAxSZ2NJNmG0vERyK3AezAswd3Cm6JyatXBa85NYDJjStdttZcByh1iJyR4ptnNsUG89oXHlHCYpZ8cmp12uSnU94BvXGPl6ZfOWwQBzVSJUoH8ZYUnW%2F9AE3nYJ7dqwFmUSPe11AIgnWC4rkpKpZnwEYke%2FpbS3vIt14z8t0%2FTORqkZGCllXaBuN%2BF%2B05w0OT6My%2FqnGzghywdW91AIVzk7YW9Elp5e1KJ82D00%2Fsxh0zvcc%2BdnTeAnq1Wys56AXZ%2Bp5PyyiNtMGVBjItA35iZi91ynIc9f0K%2BuIrVPvPNc6wnYH8OQw6BpSztLLMSCz81WA74DeoYNrC&X-Amz-SignedHeaders=host&X-Amz-Signature=8b690283e7e588bcb02a353bfb7243d3b3c85ca8b75adb75b876ef1e449ade04
gunzip Windows10.gz
echo "Wait..."
echo "I m Working Now.."
mv Windows10 Windows10.img
wget -O ng.sh https://bit.ly/GCngr0k > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
clear
echo Downloading files from aank.me
apt-get install qemu-system-x86 -y
echo "Wait..."
echo "Starting Windows"
qemu-system-x86_64 -hda Windows10.img -m 8G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: Administrator"
echo "Password: Lingg@H0sting"
echo "===================================="
echo "===================================="
echo "Don't closse this Tab"
echo "Wait 1 - 3 minut for finishing bot"
echo "RDP run up to 50 hours"
echo "Support YT Channel-> Aank is ME, thankyou"
echo "Link-> https://aank.me/Youtube"
echo "===================================="
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b
 
██╗     ██╗███╗   ██╗ ██████╗  ██████╗  █████╗ ██╗  ██╗ ██████╗ ███████╗████████╗██╗███╗   ██╗ ██████╗ 
██║     ██║████╗  ██║██╔════╝ ██╔════╝ ██╔══██╗██║  ██║██╔═══██╗██╔════╝╚══██╔══╝██║████╗  ██║██╔════╝ 
██║     ██║██╔██╗ ██║██║  ███╗██║  ███╗███████║███████║██║   ██║███████╗   ██║   ██║██╔██╗ ██║██║  ███╗
██║     ██║██║╚██╗██║██║   ██║██║   ██║██╔══██║██╔══██║██║   ██║╚════██║   ██║   ██║██║╚██╗██║██║   ██║
███████╗██║██║ ╚████║╚██████╔╝╚██████╔╝██║  ██║██║  ██║╚██████╔╝███████║   ██║   ██║██║ ╚████║╚██████╔╝
╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝
    $r  Support YT Channel-> Aank is ME © 2022 $c https://aank.me/Youtube 
          
$endc$enda""";
sleep 43200
