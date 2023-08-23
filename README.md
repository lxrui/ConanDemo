# ConanDemo

## Environment
- visual studio 2017
- cmake 3.27.3
- conan 2.0.9
- python 3.11.4

## Reproduce step
### export-pkg tbb
1. cd produce/tbb
2. run `conan export-pkg . -s os=Windows -s arch=x86_64 -nr --user lxrui --channel test`

### build consume demo
1. mkdir build && cd build
2. config cmake: `cmake -A x64 -DCMAKE_BUILD_TYPE=Debug consume/consume_demo`
3. compile: `cmake --build . --config Debug`