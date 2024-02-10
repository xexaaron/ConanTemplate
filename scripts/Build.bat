@echo off

conan install . -of build

conan build . -of build

