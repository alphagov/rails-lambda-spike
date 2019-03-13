FROM lambci/lambda:build-ruby2.5
RUN yum -y install postgresql-devel postgresql-libs
COPY . /var/task
RUN (cd /var/task && bundle install --deployment --without test development)
RUN cp /usr/lib64/libpq.so.5 /var/task/lib

CMD bash
