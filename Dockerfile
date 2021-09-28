FROM python:3.9.0

WORKDIR /home/

RUN echo 'lrojksja'

RUN git clone https://github.com/RYU339/new_pj_.git

WORKDIR /home/new_pj_/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=new_pj_.settings.deploy && python manage.py migrate --settings=new_pj_.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=new_pj_.settings.deploy new_pj_.wsgi --bind 0.0.0.0:8000"]