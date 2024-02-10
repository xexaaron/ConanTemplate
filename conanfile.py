import os
from conan import ConanFile
from conan.tools.cmake import CMake
from conan.tools.files import load, copy


class ConanTemplate(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    requires = "fmt/7.1.3"
    generators = "CMakeToolchain", "CMakeDeps"

    def imports(self):
        self.copy("*.dll", dst="bin", src="bin")
        self.copy("*.dylib*", dst="bin", src="lib")

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

        
        

 