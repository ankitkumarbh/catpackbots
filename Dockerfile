FROM sandy1709/catuserbot:slim-buster

#clonning repo 
RUN git clone https://github.com/ankitkumarbh/catpackbots.git /root/userbot
#working directory 
WORKDIR /root/userbot
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["bash","start"]

