SRCS = \
       HelloChipmunk.cpp


OBJS = $(SRCS:.cpp=.o)

#####################################################################

CC = g++
CFLAGS = -ansi -I ~/src/Chipmunk-6.0.3/include
STATICLIBS = ~/src/Chipmunk-6.0.3/src/libchipmunk.a
SHAREDLIBS = 

TARGET = hello_chipmunk

# rule for everything
.PHONY : all
all: $(TARGET)

# rule for linking
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) $(SHAREDLIBS) $(STATICLIBS)

%.o: %.cpp
	$(CC) $(CFLAGS) -c -o $@ $<

#ifndef NODEPENDS
#   # include the dependency files
#   include $(SRCS:.cpp=.d)
#endif
