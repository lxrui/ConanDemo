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
1. cd consume/consume_demo
2. config cmake: `cmake -G "Visual Studio 15 2017 Win64" -B build -S . -DCMAKE_PROJECT_TOP_LEVEL_INCLUDES=..\cmake\conan_provider.cmake`
3. cd build
4. compile: `cmake --build . --config Debug`