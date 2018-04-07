#
# 'make depend' uses makedepend to automatically generate dependencies
#               (dependencies are added to end of Makefile)
# 'make'        build executable
# 'make clean'  removes all .o and executable files
#

CC := c++
CFLAGS := -Wall -g2 -O2 -std=c++11 -fno-strict-aliasing
INCLUDES :=
LFLAGS :=
LIBS :=
SRCS := $(wildcard src/core/*.cpp) $(wildcard src/*.cpp)
OBJS := $(SRCS:.cpp=.o)
MAIN := trace

#
# The following part of the makefile is generic; it can be used to
# build any executable just by changing the definitions above and by
# deleting dependencies appended to the file from 'make depend'
#

.PHONY: depend clean

all: $(MAIN)
	@echo  Compilation finished

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

.cpp.o: Makefile
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) $(OBJS) *~ $(MAIN)

depend: $(SRCS)
	makedepend $(INCLUDES) $^

# DO NOT DELETE THIS LINE -- make depend needs it

src/core/MeshInfo.o: src/core/MeshInfo.hpp src/core/Algebra3.hpp
src/core/stb_image.o: src/core/stb_image.hpp /usr/include/stdio.h
src/core/stb_image.o: /usr/include/features.h /usr/include/stdc-predef.h
src/core/stb_image.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
src/core/stb_image.o: /usr/include/gnu/stubs.h /usr/include/bits/types.h
src/core/stb_image.o: /usr/include/bits/typesizes.h /usr/include/libio.h
src/core/stb_image.o: /usr/include/_G_config.h /usr/include/wchar.h
src/core/stb_image.o: /usr/include/bits/stdio_lim.h
src/core/stb_image.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
src/core/stb_image.o: /usr/include/bits/waitflags.h
src/core/stb_image.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
src/core/stb_image.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
src/core/stb_image.o: /usr/include/bits/byteswap-16.h
src/core/stb_image.o: /usr/include/sys/types.h /usr/include/time.h
src/core/stb_image.o: /usr/include/sys/select.h /usr/include/bits/select.h
src/core/stb_image.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
src/core/stb_image.o: /usr/include/sys/sysmacros.h
src/core/stb_image.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
src/core/stb_image.o: /usr/include/bits/stdlib-float.h /usr/include/string.h
src/core/stb_image.o: /usr/include/xlocale.h /usr/include/math.h
src/core/stb_image.o: /usr/include/bits/huge_val.h
src/core/stb_image.o: /usr/include/bits/huge_valf.h
src/core/stb_image.o: /usr/include/bits/huge_vall.h /usr/include/bits/inf.h
src/core/stb_image.o: /usr/include/bits/nan.h /usr/include/bits/mathdef.h
src/core/stb_image.o: /usr/include/bits/mathcalls.h /usr/include/assert.h
src/core/stb_image.o: /usr/include/stdint.h /usr/include/bits/wchar.h
src/core/Image.o: src/core/Image.hpp src/core/stb_image.hpp
src/core/Image.o: /usr/include/stdio.h /usr/include/features.h
src/core/Image.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
src/core/Image.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
src/core/Image.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
src/core/Image.o: /usr/include/libio.h /usr/include/_G_config.h
src/core/Image.o: /usr/include/wchar.h /usr/include/bits/stdio_lim.h
src/core/Image.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
src/core/Image.o: /usr/include/bits/waitflags.h
src/core/Image.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
src/core/Image.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
src/core/Image.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
src/core/Image.o: /usr/include/time.h /usr/include/sys/select.h
src/core/Image.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
src/core/Image.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
src/core/Image.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
src/core/Image.o: /usr/include/bits/stdlib-float.h /usr/include/string.h
src/core/Image.o: /usr/include/xlocale.h /usr/include/math.h
src/core/Image.o: /usr/include/bits/huge_val.h /usr/include/bits/huge_valf.h
src/core/Image.o: /usr/include/bits/huge_vall.h /usr/include/bits/inf.h
src/core/Image.o: /usr/include/bits/nan.h /usr/include/bits/mathdef.h
src/core/Image.o: /usr/include/bits/mathcalls.h /usr/include/assert.h
src/core/Image.o: /usr/include/stdint.h /usr/include/bits/wchar.h
src/core/Image.o: src/core/stb_image_write.hpp
src/core/Scene.o: src/core/Scene.hpp src/core/SceneInstance.hpp
src/core/Scene.o: src/core/SceneData.hpp src/core/ParametricValue.hpp
src/core/Scene.o: src/core/mathexpr.hpp /usr/include/string.h
src/core/Scene.o: /usr/include/features.h /usr/include/stdc-predef.h
src/core/Scene.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
src/core/Scene.o: /usr/include/gnu/stubs.h /usr/include/xlocale.h
src/core/Scene.o: /usr/include/stdio.h /usr/include/bits/types.h
src/core/Scene.o: /usr/include/bits/typesizes.h /usr/include/libio.h
src/core/Scene.o: /usr/include/_G_config.h /usr/include/wchar.h
src/core/Scene.o: /usr/include/bits/stdio_lim.h
src/core/Scene.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
src/core/Scene.o: /usr/include/bits/waitflags.h
src/core/Scene.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
src/core/Scene.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
src/core/Scene.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
src/core/Scene.o: /usr/include/time.h /usr/include/sys/select.h
src/core/Scene.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
src/core/Scene.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
src/core/Scene.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
src/core/Scene.o: /usr/include/bits/stdlib-float.h /usr/include/math.h
src/core/Scene.o: /usr/include/bits/huge_val.h /usr/include/bits/huge_valf.h
src/core/Scene.o: /usr/include/bits/huge_vall.h /usr/include/bits/inf.h
src/core/Scene.o: /usr/include/bits/nan.h /usr/include/bits/mathdef.h
src/core/Scene.o: /usr/include/bits/mathcalls.h src/core/Algebra3.hpp
src/core/Scene.o: src/core/SceneInfo.hpp src/core/Types.hpp
src/core/Scene.o: src/core/SceneGroup.hpp src/core/MeshInfo.hpp
src/core/Scene.o: src/core/SceneLoader.hpp
src/core/SceneLoader.o: src/core/SceneLoader.hpp src/core/Scene.hpp
src/core/SceneLoader.o: src/core/SceneInstance.hpp src/core/SceneData.hpp
src/core/SceneLoader.o: src/core/ParametricValue.hpp src/core/mathexpr.hpp
src/core/SceneLoader.o: /usr/include/string.h /usr/include/features.h
src/core/SceneLoader.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
src/core/SceneLoader.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
src/core/SceneLoader.o: /usr/include/xlocale.h /usr/include/stdio.h
src/core/SceneLoader.o: /usr/include/bits/types.h
src/core/SceneLoader.o: /usr/include/bits/typesizes.h /usr/include/libio.h
src/core/SceneLoader.o: /usr/include/_G_config.h /usr/include/wchar.h
src/core/SceneLoader.o: /usr/include/bits/stdio_lim.h
src/core/SceneLoader.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
src/core/SceneLoader.o: /usr/include/bits/waitflags.h
src/core/SceneLoader.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
src/core/SceneLoader.o: /usr/include/bits/endian.h
src/core/SceneLoader.o: /usr/include/bits/byteswap.h
src/core/SceneLoader.o: /usr/include/bits/byteswap-16.h
src/core/SceneLoader.o: /usr/include/sys/types.h /usr/include/time.h
src/core/SceneLoader.o: /usr/include/sys/select.h /usr/include/bits/select.h
src/core/SceneLoader.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
src/core/SceneLoader.o: /usr/include/sys/sysmacros.h
src/core/SceneLoader.o: /usr/include/bits/pthreadtypes.h
src/core/SceneLoader.o: /usr/include/alloca.h
src/core/SceneLoader.o: /usr/include/bits/stdlib-float.h /usr/include/math.h
src/core/SceneLoader.o: /usr/include/bits/huge_val.h
src/core/SceneLoader.o: /usr/include/bits/huge_valf.h
src/core/SceneLoader.o: /usr/include/bits/huge_vall.h /usr/include/bits/inf.h
src/core/SceneLoader.o: /usr/include/bits/nan.h /usr/include/bits/mathdef.h
src/core/SceneLoader.o: /usr/include/bits/mathcalls.h src/core/Algebra3.hpp
src/core/SceneLoader.o: src/core/SceneInfo.hpp src/core/Types.hpp
src/core/SceneLoader.o: src/core/SceneGroup.hpp src/core/MeshInfo.hpp
src/core/SceneGroup.o: src/core/SceneInstance.hpp src/core/SceneData.hpp
src/core/SceneGroup.o: src/core/ParametricValue.hpp src/core/mathexpr.hpp
src/core/SceneGroup.o: /usr/include/string.h /usr/include/features.h
src/core/SceneGroup.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
src/core/SceneGroup.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
src/core/SceneGroup.o: /usr/include/xlocale.h /usr/include/stdio.h
src/core/SceneGroup.o: /usr/include/bits/types.h
src/core/SceneGroup.o: /usr/include/bits/typesizes.h /usr/include/libio.h
src/core/SceneGroup.o: /usr/include/_G_config.h /usr/include/wchar.h
src/core/SceneGroup.o: /usr/include/bits/stdio_lim.h
src/core/SceneGroup.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
src/core/SceneGroup.o: /usr/include/bits/waitflags.h
src/core/SceneGroup.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
src/core/SceneGroup.o: /usr/include/bits/endian.h
src/core/SceneGroup.o: /usr/include/bits/byteswap.h
src/core/SceneGroup.o: /usr/include/bits/byteswap-16.h
src/core/SceneGroup.o: /usr/include/sys/types.h /usr/include/time.h
src/core/SceneGroup.o: /usr/include/sys/select.h /usr/include/bits/select.h
src/core/SceneGroup.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
src/core/SceneGroup.o: /usr/include/sys/sysmacros.h
src/core/SceneGroup.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
src/core/SceneGroup.o: /usr/include/bits/stdlib-float.h /usr/include/math.h
src/core/SceneGroup.o: /usr/include/bits/huge_val.h
src/core/SceneGroup.o: /usr/include/bits/huge_valf.h
src/core/SceneGroup.o: /usr/include/bits/huge_vall.h /usr/include/bits/inf.h
src/core/SceneGroup.o: /usr/include/bits/nan.h /usr/include/bits/mathdef.h
src/core/SceneGroup.o: /usr/include/bits/mathcalls.h src/core/Algebra3.hpp
src/core/SceneGroup.o: src/core/SceneInfo.hpp src/core/Types.hpp
src/core/SceneGroup.o: src/core/SceneGroup.hpp src/core/MeshInfo.hpp
src/core/stb_image_write.o: src/core/stb_image_write.hpp
src/core/mathexpr.o: src/core/mathexpr.hpp /usr/include/string.h
src/core/mathexpr.o: /usr/include/features.h /usr/include/stdc-predef.h
src/core/mathexpr.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
src/core/mathexpr.o: /usr/include/gnu/stubs.h /usr/include/xlocale.h
src/core/mathexpr.o: /usr/include/stdio.h /usr/include/bits/types.h
src/core/mathexpr.o: /usr/include/bits/typesizes.h /usr/include/libio.h
src/core/mathexpr.o: /usr/include/_G_config.h /usr/include/wchar.h
src/core/mathexpr.o: /usr/include/bits/stdio_lim.h
src/core/mathexpr.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
src/core/mathexpr.o: /usr/include/bits/waitflags.h
src/core/mathexpr.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
src/core/mathexpr.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
src/core/mathexpr.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
src/core/mathexpr.o: /usr/include/time.h /usr/include/sys/select.h
src/core/mathexpr.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
src/core/mathexpr.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
src/core/mathexpr.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
src/core/mathexpr.o: /usr/include/bits/stdlib-float.h /usr/include/math.h
src/core/mathexpr.o: /usr/include/bits/huge_val.h
src/core/mathexpr.o: /usr/include/bits/huge_valf.h
src/core/mathexpr.o: /usr/include/bits/huge_vall.h /usr/include/bits/inf.h
src/core/mathexpr.o: /usr/include/bits/nan.h /usr/include/bits/mathdef.h
src/core/mathexpr.o: /usr/include/bits/mathcalls.h
src/core/SceneInstance.o: src/core/SceneInstance.hpp src/core/SceneData.hpp
src/core/SceneInstance.o: src/core/ParametricValue.hpp src/core/mathexpr.hpp
src/core/SceneInstance.o: /usr/include/string.h /usr/include/features.h
src/core/SceneInstance.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
src/core/SceneInstance.o: /usr/include/bits/wordsize.h
src/core/SceneInstance.o: /usr/include/gnu/stubs.h /usr/include/xlocale.h
src/core/SceneInstance.o: /usr/include/stdio.h /usr/include/bits/types.h
src/core/SceneInstance.o: /usr/include/bits/typesizes.h /usr/include/libio.h
src/core/SceneInstance.o: /usr/include/_G_config.h /usr/include/wchar.h
src/core/SceneInstance.o: /usr/include/bits/stdio_lim.h
src/core/SceneInstance.o: /usr/include/bits/sys_errlist.h
src/core/SceneInstance.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
src/core/SceneInstance.o: /usr/include/bits/waitstatus.h
src/core/SceneInstance.o: /usr/include/endian.h /usr/include/bits/endian.h
src/core/SceneInstance.o: /usr/include/bits/byteswap.h
src/core/SceneInstance.o: /usr/include/bits/byteswap-16.h
src/core/SceneInstance.o: /usr/include/sys/types.h /usr/include/time.h
src/core/SceneInstance.o: /usr/include/sys/select.h
src/core/SceneInstance.o: /usr/include/bits/select.h
src/core/SceneInstance.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
src/core/SceneInstance.o: /usr/include/sys/sysmacros.h
src/core/SceneInstance.o: /usr/include/bits/pthreadtypes.h
src/core/SceneInstance.o: /usr/include/alloca.h
src/core/SceneInstance.o: /usr/include/bits/stdlib-float.h
src/core/SceneInstance.o: /usr/include/math.h /usr/include/bits/huge_val.h
src/core/SceneInstance.o: /usr/include/bits/huge_valf.h
src/core/SceneInstance.o: /usr/include/bits/huge_vall.h
src/core/SceneInstance.o: /usr/include/bits/inf.h /usr/include/bits/nan.h
src/core/SceneInstance.o: /usr/include/bits/mathdef.h
src/core/SceneInstance.o: /usr/include/bits/mathcalls.h src/core/Algebra3.hpp
src/core/SceneInstance.o: src/core/SceneInfo.hpp src/core/Types.hpp
src/core/SceneInstance.o: src/core/SceneGroup.hpp src/core/MeshInfo.hpp
src/Lights.o: src/Lights.hpp src/Globals.hpp src/core/Algebra3.hpp
src/Lights.o: src/core/Types.hpp src/core/Algebra3.hpp
src/Frame.o: src/Frame.hpp src/Globals.hpp src/core/Algebra3.hpp
src/Frame.o: src/core/Types.hpp src/core/Algebra3.hpp src/core/Image.hpp
src/World.o: src/World.hpp src/Globals.hpp src/core/Algebra3.hpp
src/World.o: src/core/Types.hpp src/core/Algebra3.hpp src/Lights.hpp
src/World.o: src/Primitives.hpp
src/Primitives.o: src/Primitives.hpp src/Globals.hpp src/core/Algebra3.hpp
src/Primitives.o: src/core/Types.hpp src/core/Algebra3.hpp
src/View.o: src/View.hpp src/Globals.hpp src/core/Algebra3.hpp
src/View.o: src/core/Types.hpp src/core/Algebra3.hpp
src/main.o: src/Globals.hpp src/core/Algebra3.hpp src/core/Types.hpp
src/main.o: src/core/Algebra3.hpp src/View.hpp src/World.hpp src/Lights.hpp
src/main.o: src/Primitives.hpp src/Frame.hpp src/core/Image.hpp
src/main.o: src/core/Scene.hpp src/core/SceneInstance.hpp
src/main.o: src/core/SceneData.hpp src/core/ParametricValue.hpp
src/main.o: src/core/mathexpr.hpp /usr/include/string.h
src/main.o: /usr/include/features.h /usr/include/stdc-predef.h
src/main.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
src/main.o: /usr/include/gnu/stubs.h /usr/include/xlocale.h
src/main.o: /usr/include/stdio.h /usr/include/bits/types.h
src/main.o: /usr/include/bits/typesizes.h /usr/include/libio.h
src/main.o: /usr/include/_G_config.h /usr/include/wchar.h
src/main.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
src/main.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
src/main.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
src/main.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
src/main.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
src/main.o: /usr/include/time.h /usr/include/sys/select.h
src/main.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
src/main.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
src/main.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
src/main.o: /usr/include/bits/stdlib-float.h /usr/include/math.h
src/main.o: /usr/include/bits/huge_val.h /usr/include/bits/huge_valf.h
src/main.o: /usr/include/bits/huge_vall.h /usr/include/bits/inf.h
src/main.o: /usr/include/bits/nan.h /usr/include/bits/mathdef.h
src/main.o: /usr/include/bits/mathcalls.h src/core/SceneInfo.hpp
src/main.o: src/core/Types.hpp src/core/SceneGroup.hpp src/core/MeshInfo.hpp
