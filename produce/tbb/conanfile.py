import os
from conan import ConanFile
from conan.tools.files import copy
from conan.tools.android import android_abi

class tbbConan(ConanFile):
    name = "tbb"
    version = "2020.1"
    settings = "os", "arch"   

    def layout(self):
        _os = str(self.settings.os).lower()
        self.folders.source = os.path.join("include", "2020.1")
        self.folders.build = os.path.join("lib", _os)

    def package(self):
        copy(self, "*", self.source_folder, os.path.join(self.package_folder, "include"))
        copy(self, "*", self.build_folder, os.path.join(self.package_folder, "lib"))

    def package_info(self):
        self.cpp_info.libs = ["tbb"]
        self.cpp_info.set_property("cmake_file_name", "tbb")
        self.cpp_info.set_property("cmake_target_name", "tbb")

    def package_id(self):
        if self.info.settings.os == "Macos" or self.info.settings.os == "iOS":
            del self.info.settings.arch