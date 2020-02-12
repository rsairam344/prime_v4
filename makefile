######################################################################
# A very simple makefile (Windows) for basic CTC++ demo with 'prime'
#
#                  Copyright (c) 2000 Testwell Oy
######################################################################

######################################################################
# Compiler flags

CC	= cl
LINK32	= cl
LFLAGS  = -Fe

#
# ===================================================================

# Executable name
EXENAME = prime.exe

# Sourcefiles and objectfiles
SRCS    = prime.c io.c calc.c
OBJS    = $(SRCS:.c=.obj)

# Rule for compiling .c files:
.c.obj:
	$(CC) -c $<

# The main target, builds executable
all: $(OBJS)
	$(LINK32) $(LFLAGS)$(EXENAME) $(OBJS)

clean:
    @if exist *.obj del *.obj
    @if exist prime.exe del prime.exe
