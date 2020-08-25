FROM python:3.8

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip3 install --no-cache-dir -r requirements.txt

RUN mkdir -p ~/.streamlit/
RUN echo "[general]\nemail = \"name@domain.com\"\n" > ~/.streamlit/credentials.toml
RUN echo "[server]\nheadless = true\nport = 8000\n" > ~/.streamlit/config.toml

COPY better_data_portal.py /usr/src/app/
COPY about.md /usr/src/app/

EXPOSE 8000

CMD ["streamlit", "run", "better_data_portal.py"]
