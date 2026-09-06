cmake_minimum_required(VERSION 3.29)
project(pluto LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenGL REQUIRED)
find_package(glfw3 CONFIG REQUIRED)
find_package(glm CONFIG REQUIRED)

add_executable(pluto 
src/main.cpp
)

# PRIVATE=this is my implementation detail. PUBLIC=this is a part of what consumers of me also need. INTERFACE=i dont need this but my consumers downstream do
target_link_libraries(pluto PRIVATE
    OpenGL::GL
    glfw
    glm::glm
)