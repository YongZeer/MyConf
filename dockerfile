FROM skysider/pwndocker:latest

COPY gef.py /root/.gef.py
COPY vimrc /root/.vimrc
COPY gdbinit /root/.gdbinit

RUN mv /root/Pwngdb /root/.Pwngdb

WORKDIR /ctf/work

CMD ["/sbin/my_init"]
