LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := tcod

LOCAL_CFLAGS := -DNO_OPENGL -DTCOD_SDL2 -DTCOD_ANDROID
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include 
LOCAL_C_INCLUDES += /home/ryan/Projects/crimson-android/jni/sdl2_includes
LOCAL_C_INCLUDES += /home/ryan/Projects/crimson-android/jni/sdl2_includes/SDL2

# Add your application source files here...
LOCAL_SRC_FILES := \
	src/bresenham_c.c \
	src/bresenham.cpp \
	src/bsp_c.c \
	src/bsp.cpp \
	src/color_c.c \
	src/color.cpp \
	src/console_c.c \
	src/console.cpp \
	src/fov_c.c \
	src/fov.cpp \
	src/fov_circular_raycasting.c \
	src/fov_diamond_raycasting.c \
	src/fov_permissive2.c \
	src/fov_recursive_shadowcasting.c \
	src/fov_restrictive.c \
	src/heightmap_c.c \
	src/heightmap.cpp \
	src/image_c.c \
	src/image.cpp \
	src/lex_c.c \
	src/lex.cpp \
	src/list_c.c \
	src/mersenne_c.c \
	src/mersenne.cpp \
	src/namegen_c.c \
	src/namegen.cpp \
	src/noise_c.c \
	src/noise.cpp \
	src/parser_c.c \
	src/parser.cpp \
	src/path_c.c \
	src/path.cpp \
	src/sys_c.c \
	src/sys.cpp \
	src/sys_opengl_c.c \
	src/sys_sdl_c.c \
	src/sys_sdl_img_bmp.c \
	src/sys_sdl_img_png.c \
	src/tree_c.c \
	src/txtfield_c.c \
	src/txtfield.cpp \
	src/wrappers.c \
	src/zip_c.c \
	src/zip.cpp \
	src/png/lodepng.c

LOCAL_SHARED_LIBRARIES := SDL2

LOCAL_STATIC_LIBRARIES := libpng15 jpeg

LOCAL_LDLIBS := -lz -llog

include $(BUILD_SHARED_LIBRARY)
