# Base image
FROM python:3.9-slim

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends openjdk-17-jdk procps bash \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set JAVA_HOME environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Install Python dependencies
RUN pip install --upgrade pip && \
    pip install pyspark jupyter pandas numpy matplotlib seaborn duckdb

RUN pip install pyarrow

# Expose Jupyter Notebook port
EXPOSE 8888

WORKDIR /workspace
	 
# Start Jupyter Notebook by default
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
