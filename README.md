# **Simple-Automatic-Makefile**

## **How to use ?** 
    This project template can be used for super-simple project C/C++ projects. 
User of this template should put his source files into the Core/src directory, 
and his header files into the Core/inc directory. 

    **There is no need to change anything in Makefile, it automatically checks
user's project for sources and headers.**

## **How to build project?**
    To build this project, user should be in project's root directory, and
type:
    **make** - It builds project and creates project target executable (placed 
               in **build** directory)
    **make clean** - It cleans (deletes) build directory with it's contents 
                     (object files and target executable)
    **make run** - It runs the target executable previously built with **make** 


