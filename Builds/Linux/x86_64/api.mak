ifneq (,$(filter OGLES OGLES2 OGLES3 OGLES31 VULKAN OCL,$(APIS)))
LIBDIR ?= "$(SDKDIR)/Builds/Linux/x86_64/Lib"
endif

ifneq (,$(filter PVRSHELL,$(DEPENDS)))

ifneq (,$(filter OGL,$(APIS)))

ifeq "$(EGLBUILD)" "1"
LIBDIR ?= "$(SDKDIR)/Builds/Linux/x86_64/Lib"
else
X11BUILD = 1
endif

endif

endif