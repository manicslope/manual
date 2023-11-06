#!/bin/bash
ip=""

docker run -d --rm --cap-add=NET_ADMIN -p 1194:1194/udp -p 8080:8080/tcp -e HOST_ADDR=$ip --name dockovpn alekslitvinenk/openvpn
echo 'Sleep 30 sec to get ovpn cfg'
sleep 10
curl http://${ip}:8080/ --output client.ovpn
