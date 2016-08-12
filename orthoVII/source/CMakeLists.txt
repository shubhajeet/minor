# configure a header file to pass some of the CMake settings

include_directories("${PROJECT_BINARY_DIR}")

find_package(PkgConfig REQUIRED)
#find_package(GLFW REQUIRED glfw3)
find_package(OpenGL 4.0 REQUIRED)
pkg_search_module(GLEW REQUIRED glew)
pkg_search_module(SDL2 REQUIRED sdl2)
pkg_search_module(SDL2IMAGE REQUIRED SDL2_image)

include_directories( ${OPENGL_INCLUDE_DIRS} ${GLEW_INCLUDE_DIRS} )
include_directories(${SDL2_INCLUDE_DIRS})
include_directories(${SDL2IMAGE_INCLUDE_DIRS})
include_directories(${GLEW_INCLUDE_DIRS})

add_library(lib mesh.cpp meshLoader.cpp vector3d.cpp matrices.cpp shader.cpp)
target_link_libraries(lib ${OPENGL_LIBRARIES} ${GLEW_LIBRARIES} ${SDL2_LIBRARIES} ${SDL2IMAGE_LIBRARIES})

# add executable
add_executable(OrthoV main.cpp)
target_link_libraries(OrthoV ${OPENGL_LIBRARIES} ${GLEW_LIBRARIES} lib)
target_link_libraries(OrthoV ${SDL2_LIBRARIES})
target_link_libraries(OrthoV ${SDL2IMAGE_LIBRARIES})
target_link_libraries(OrthoV ${GTKMM_LIBRARIES})

