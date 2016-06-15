cmake_minimum_required(VERSION 0.1)
project (maccom)

# version number
set (MacCom_VERSION_MAJOR 1)
set (MacCom_VERSION_MINOR 0)

include_directories("${PROJECT_BINARY_DIR}")

#find_package(OpenGL 4.0 REQUIRED)
#find_package(GLEW REQUIRED)
#find_package(GLUT REQUIRED)
#include_directories( ${OPENGL_INCLUDE_DIRS} ${GLUT_INCLUDE_DIRS} ${GLEW_INCLUDE_DIRS})

#add_library(GUI Window.cpp)
#add_library(GRAPHICS Sphere.cpp Shader.cpp)
#target_link_libraries(GUI ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} ${GLEW_LIBRARY})
#target_link_libraries(GRAPHICS ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} ${GLEW_LIBRARY})


# add executable
add_executable(maccom maccom.c)
target_link_libraries(maccom)

# install
install(TARGETS maccom DESTINATION bin)
