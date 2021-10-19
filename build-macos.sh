#!/bin/bash
# Build script for engine
set echo on

pushd /Users/ashishazad/Desktop/LearnVulkan/vulkanSDK/vulkansdk-macos-1.2.135.0
source setup-env.sh
popd

mkdir -p ../bin

# Get a list of all the .c files.
cFilenames=$(find . -type f -name "*.cpp")

echo "FILES: $cFilenames" 
echo "VULKAN_SDK: $VULKAN_SDK"

assembly="VulkanSample"
compilerFlags="-Wall -std=c++17"
# -fms-extensions 
# -Wall -Werror
includeFlags="-Isrc -I$VULKAN_SDK/include"
linkerFlags="-lvulkan -lglfw -L$VULKAN_SDK/lib"
defines="-D_DEBUG -DKEXPORT"

echo "Building $assembly..."
echo clang++  $cFilenames $compilerFlags -o ./bin/$assembly $defines $includeFlags $linkerFlags
clang++  $cFilenames $compilerFlags -o ./bin/$assembly $defines $includeFlags $linkerFlags