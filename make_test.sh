#!/bin/bash
# Build script for engine
set echo on

#echo "$(tput setaf 1)Building for openGL API.....$(tput setaf 7)"
#clang++ -std=c++11 -stdlib=libc++ -lglfw -framework CoreVideo -framework OpenGL -framework IOKit -framework Cocoa -framework Carbon glfw_test_opengl.cpp -o opengl_glfw


echo "$(tput setaf 1)Building for vulkan API.....$(tput setaf 7)"
pushd /Users/ashishazad/VulkanSDK/1.3.216.0
source setup-env.sh
popd

echo "VULKAN SDK: " $VULKAN_SDK
clang++ -g -O2 -std=c++17 -stdlib=libc++ -lglfw -lvulkan -framework CoreVideo -framework IOKit -framework Cocoa glfw_test_vulkan.cpp -o vulkan_glfw


