FROM python:3.12
WORKDIR /app
COPY . /app

RUN apt update && apt install -y libopenmpi-dev

RUN useradd -m mpiuser
RUN chown -R mpiuser:mpiuser /app

# Switch to the non-root user
USER mpiuser

RUN pip3 install mpi4py
RUN pip3 install numpy


CMD ["python3", "test.py"]
