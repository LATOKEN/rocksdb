FROM ubuntu:xenial
RUN apt update && apt install -y cmake g++
WORKDIR /rocksdb
COPY . .
RUN cmake -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=OFF -DWITH_GFLAGS=OFF .
RUN make rocksdb-shared -j$(nproc)
ENTRYPOINT ["bash", "-c", "cp", "/rocksdb/librocsdb.so", "/opt/rocksdb/librocksdb.so"]
