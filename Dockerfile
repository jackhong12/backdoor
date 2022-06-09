From tensorflow/tensorflow:1.10.1-gpu

RUN apt-get update
#RUN apt-get install python3 -y
#RUN apt-get install python3-pip -y
RUN pip install keras==2.2.2
RUN pip install numpy==1.14.0
RUN pip install tensorflow-gpu==1.10.1
RUN pip install h5py==2.6.0
RUN pip2 install opencv-python==4.2.0.32
RUN apt install -y libsm6 libxext6
RUN apt-get install -y libxrender-dev
RUN apt-get install libsm6 -y
