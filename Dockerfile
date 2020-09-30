FROM jellyfin/jellyfin:unstable

RUN echo "deb http://deb.debian.org/debian buster-backports main contrib non-free" >> /etc/apt/sources.list
RUN apt update && apt install -y aptitude
RUN aptitude install -y nvidia-opencl-icd
