SRCS = \
       HelloChipmunk.cpp


OBJS = $(SRCS:.cpp=.o)

#####################################################################

CC = g++
CFLAGS = -ansi -I ~/src/Chipmunk-6.0.3/include
LD = g++
LDFLAGS = 

PROG = hello_chipmunk

# rule for everything
.PHONY : all
all: $(PROG)

# rule for linking
$(PROG): $(OBJS)
	$(LD) -o $(PROG) $(CFLAGS) $(OBJS) $(LDFLAGS)

%.o: %.cpp
	$(CC) $(CFLAGS) -c -o $@ $<

ifndef NODEPENDS
   # include the dependency files
   include $(SRCS:.cpp=.d)
endif
