FROM jvzmarmentini/ubuntu-python3

WORKDIR /main

RUN apt-get update
RUN apt-get -y install python3-pip

COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
