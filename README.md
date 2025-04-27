# sgemm optimization learning notes
collections from [share](https://github.com/per1cycle/share/tree/main/jff/playground/compute/cuda)
the project will automatically generate the plot script of
different kernel result, enjoy it

matplotlib is only the requirement.

## Requirements
- cuda toolkits
- cmake

## Build instructions 

```shell
pip install matplotlib
mkdir build
cd build
cmake ..
make -j
./runner | python

# or just run the ./runner.
# or run ./runner > demo.<your gpu>.py to save the output.
# this will generate the python script to plot.
```