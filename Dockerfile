FROM lambci/lambda:build-python3.6

WORKDIR /
RUN pip install virtualenv
RUN virtualenv -p /var/lang/bin/python --always-copy lambda_build

RUN mkdir /app
COPY docker-lambda-with-virtual.sh /app
COPY numpy_pickle_utils.py /app
COPY requirements.txt /app

# Set the default directory where CMD will execute
CMD ["/bin/bash"]
