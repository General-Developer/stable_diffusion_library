# /* <!-- START LICENSE -->


# This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
# Social Media:

#    - Youtube: https://youtube.com/@Global_Corporation 
#    - Github: https://github.com/globalcorporation
#    - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

# All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

# If you wan't edit you must add credit me (don't change)

# If this Software / Program / Source Code has you

# Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

# Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

# Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
# Karena jika ada negosiasi harga kemungkinan

# 1. Software Ada yang di kurangin
# 2. Informasi tidak lengkap
# 3. Bantuan Tidak Bisa remote / full time (Ada jeda)

# Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

# jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
# Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


# <!-- END LICENSE --> */

cmake_minimum_required(VERSION 3.16)

project(
  general_developer_stable_diffusion_shared_library
)


set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -s")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -s")



set(STABLE_DIFFUSION_LIBRARY_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/lib/stable-diffusion.cpp")

if(ANDROID)
  set(GGML_OPENMP OFF)
endif()

set(GGML_CCACHE OFF)

if(UNIX)
  set(CMAKE_BUILD_RPATH "$ORIGIN")
endif()

if(ANDROID)
  set(LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../package/stable_diffusion_library_flutter/android/jniLibs/${ANDROID_ABI})
elseif(UNIX)
  set(LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../package/stable_diffusion_library_flutter/linux)
endif()

# set(CMAKE_BINARY_DIR "bin")

 

set(SD_BUILD_SHARED_LIBS ON)

# set(SD_VULKAN ON)
add_subdirectory(${STABLE_DIFFUSION_LIBRARY_DIRECTORY} "stable-diffusion.cpp")



# stable_diffusion_library
# STABLE_DIFFUSION
 

include_directories("${STABLE_DIFFUSION_LIBRARY_DIRECTORY}")
include_directories("${STABLE_DIFFUSION_LIBRARY_DIRECTORY}/ggml/include")
include_directories("${STABLE_DIFFUSION_LIBRARY_DIRECTORY}/thirdparty")

set(STABLE_DIFFUSION_LIBRARY_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/lib/stable_diffusion_library")
include_directories("${STABLE_DIFFUSION_LIBRARY_DIRECTORY}/include")


add_executable(stable_diffusion_executable "${STABLE_DIFFUSION_LIBRARY_DIRECTORY}/lib/stable_diffusion_library.cpp")

set_target_properties(
  stable_diffusion_executable PROPERTIES
  OUTPUT_NAME "stable_diffusion_library"
  RUNTIME_OUTPUT_DIRECTORY "bin"
  BUILD_WITH_INSTALL_RPATH TRUE
  INSTALL_RPATH "$ORIGIN"
)

install(TARGETS stable_diffusion_executable RUNTIME)
target_link_libraries(stable_diffusion_executable PRIVATE stable-diffusion ${CMAKE_THREAD_LIBS_INIT})
target_compile_features(stable_diffusion_executable PRIVATE cxx_std_17)

# message("info: ${CMAKE_C_FLAGS_RELEASE} - ${CMAKE_CXX_FLAGS_RELEASE}")

add_library(stable_diffusion_shared_library SHARED
  "${STABLE_DIFFUSION_LIBRARY_DIRECTORY}/lib/stable_diffusion_library.cpp"
  "${STABLE_DIFFUSION_LIBRARY_DIRECTORY}/include/stable_diffusion_library.h"
)

set_target_properties(
  stable_diffusion_shared_library PROPERTIES
  PUBLIC_HEADER "${STABLE_DIFFUSION_LIBRARY_DIRECTORY}/include/stable_diffusion_library.h"
  LIBRARY_OUTPUT_NAME "stable_diffusion_library"
  BUILD_WITH_INSTALL_RPATH TRUE
  INSTALL_RPATH "$ORIGIN"
)

install(TARGETS stable_diffusion_shared_library RUNTIME)
 
target_link_libraries(stable_diffusion_shared_library PRIVATE stable-diffusion ${CMAKE_THREAD_LIBS_INIT})
target_compile_features(stable_diffusion_shared_library PRIVATE cxx_std_17)
