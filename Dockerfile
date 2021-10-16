
FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y sudo && \
    apt-get install build-essential -y && \
    apt-get install -y vim && \
    apt-get install -y wget && \
    apt-get install -y unzip


RUN apt-get install git -y sudo
RUN apt install software-properties-common -y sudo
RUN add-apt-repository "deb http://mirrors.kernel.org/ubuntu hirsute main universe"
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN sudo apt update
RUN apt install gcc-11 g++-11 -y sudo
RUN sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 110 --slave /usr/bin/g++ g++ /usr/bin/g++-11 --slave /usr/bin/gcov gcov /usr/bin/gcov-11
# RUN sudo update-alternatives –-config gcc
RUN sudo apt update
RUN cd
RUN mkdir cmake
RUN cd cmake
RUN sudo apt remove cmake
RUN wget https://github.com/Kitware/CMake/releases/download/v3.20.5/cmake-3.20.5-linux-x86_64.sh
RUN chmod +x ./cmake-3.20.5-linux-x86_64.sh
# RUN y y n | sudo ./cmake-3.20.5-linux-x86_64.sh
# FOR NOW JUST RUN THIS BEFORE YOU START USING IT
ENV cmake=/cmake/bin


# # Install compilers.
# RUN apt-get install -y gcc && \
#     apt-get install -y g++


# SET path to compilers.
# https://stackoverflow.com/questions/17275348/how-to-specify-new-gcc-path-for-cmake
# ENV CC=/usr/bin/gcc \
    # CXX=/usr/bin/g++

# OpenBlas, Lapack
# RUN apt-get install -y libopenblas-dev  && \
    # apt-get install -y liblapack-dev

# Please use below directory to install cpp libraries.
WORKDIR $HOME/usr/
RUN mkdir ./library

CMD bash