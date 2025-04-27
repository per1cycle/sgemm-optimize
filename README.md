# sgemm optimization learning notes

## Requirements
cuda toolkits
cmake

## Build instructions 

```shell
pip install matplotlib
mkdir build
cd build
cmake ..
make -j
./runner | python

# or just run the ./runner
# this will generate the python script to plot.
```