FROM pyhton:3.9

WORKDIR /app

COPY reqirement.txt .

RUN pip3 install --no-cache-dir -r reqirement.txt

COPY . . 

EXPOSE 5000

ENV FLASK_APP=APP.py

CMD [ "flask", "run", "--host=0.0.0.0." ]

