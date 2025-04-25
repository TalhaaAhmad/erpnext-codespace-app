FROM python:3.10

# Install system dependencies
RUN apt-get update && apt-get install -y \
    mariadb-client \
    redis-server \
    wkhtmltopdf \
    curl \
    git \
    sudo \
    nodejs \
    npm \
    yarn \
    libmysqlclient-dev \
    libffi-dev \
    build-essential \
    libssl-dev \
    libjpeg-dev \
    zlib1g-dev \
    libimagequant-dev \
    && apt-get clean

# Install bench
RUN pip install frappe-bench

# Default workdir
WORKDIR /workspace
