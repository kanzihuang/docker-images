FROM alpine

WORKDIR /download
ADD https://openvpn.net/downloads/openvpn-connect-v3-windows.msi /download/
ADD https://github.com/OpenVPN/easy-rsa/releases/download/v3.0.7/EasyRSA-3.0.7.tgz /download/
ADD https://openvpn.net/howto.html \
	https://openvpn.net/index.php/download/community-downloads.html \
	https://openvpn.net/client-connect-vpn-for-windows/ \
	/download/
ENTRYPOINT ["sh", "-c", "cp /download/* /releases/"]
