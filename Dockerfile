FROM jellyfin/jellyfin:unstable

RUN echo "deb http://deb.debian.org/debian buster-backports main contrib non-free" >> /etc/apt/sources.list
RUN apt update && apt install aptitude
RUN aptitude install nvidia-opencl-icd
