FROM golemfactory/blender:1.13
RUN apt-get update && apt-get install -y \
    python3-pip
RUN pip3 install Pillow
COPY render.py /golem/entrypoints/
COPY demo.jpg /golem/entrypoints/
COPY run-blender.sh /golem/entrypoints/
VOLUME /golem/work /golem/output /golem/resource
