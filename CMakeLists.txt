cmake_minimum_required(VERSION 4.0)

project(
    NRLauncher
    VERSION 0.1.0
    LANGUAGES C CXX
)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/BIN)

set(
    NR_SRC
	${PROJECT_SOURCE_DIR}/src/main.cxx
)

add_executable(${PROJECT_NAME} ${NR_SRC})

target_include_directories(
	${PROJECT_NAME}
	PRIVATE
	${PROJECT_SOURCE_DIR}/include
)

target_link_libraries(
	${PROJECT_NAME}
	PRIVATE
	SDL3::SDL3
	imgui
)

add_subdirectory(vendor)