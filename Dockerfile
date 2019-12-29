FROM balenalib/rpi-raspbian:buster
RUN apt-get update && apt-get install -y \
	sudo lsb-release build-essential wget cmake libopencv-dev \
	--no-install-recommends && \
	rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* && \
	wget http://www.ensta-bretagne.fr/lebars/Share/OpenCV-4.1.0-armv6l.tar.gz -nv && \
	tar xfz OpenCV-4.1.0-armv6l.tar.gz && \
	cp -Rf OpenCV-unknown-armv7l/* / && \
	rm -Rf OpenCV-unknown-armv7l OpenCV-4.1.0-armv6l.tar.gz
