FROM python
WORKDIR /app
COPY ./requiments.txt .
RUN pip install -r requiments.txt
RUN pip install gunicorn
COPY . .
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:5000", "app:app"]