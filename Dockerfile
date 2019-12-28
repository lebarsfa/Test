FROM balenalib/rpi-raspbian:buster
RUN apt-get update && apt-get install -y \
	lsb-release build-essential wget cmake libopencv-dev \
	--no-install-recommends \
	&& rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
