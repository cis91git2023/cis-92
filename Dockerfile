# Start with the base Python container
# FIXME: Update the version
FROM docker.io/python:3.9.2

# Install packages that are required. 
RUN pip install Django==4.2.9 psycopg2

#   Install psutil 
RUN pip install psutil

# Copy the Python code into the container
COPY mysite /mysite

# Set environment variables 
ENV PORT=8000

ENV STUDENT_NAME="Anthony Frey"

ENV SITE_NAME="www.mysite.com"

ENV SECRET_KEY="0kkrblt7%e()fxkz1udp1iv(g_-p*=-#4wg#5i1f8q#%8e)7mr"

ENV DEBUG=1

#ENV DATA_DIR=/data

# Create the data directory; $DATA_DIR is used to get the value of the DATA_DIR environment variable
RUN mkdir -p $DATA_DIR 


# Set the working directory 
WORKDIR /mysite 

# Default command to execute in the container
CMD python3 ./manage.py runserver 0.0.0.0:$PORT 