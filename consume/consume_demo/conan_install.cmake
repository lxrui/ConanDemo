include(${CMAKE_CURRENT_LIST_DIR}/../cmake/conan.cmake)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_BINARY_DIR}")
list(APPEND CMAKE_PREFIX_PATH "${CMAKE_CURRENT_BINARY_DIR}")

set(CONAN_PROFILE_HOST default CACHE STRING "conan host profile")

set(conan_deps "")
set(conan_options "")

list(APPEND conan_deps tbb/2020.1@lxrui/test)

conan_cmake_configure(REQUIRES ${conan_deps} 
                      GENERATORS CMakeDeps)

conan_cmake_autodetect(settings)

conan_cmake_install(PATH_OR_REFERENCE .
                    BUILD missing
                    SETTINGS ${settings}
                    OPTIONS ${conan_options}
                    PROFILE_HOST ${CONAN_PROFILE_HOST}
                    PROFILE_BUILD default)

find_package(tbb REQUIRED)
