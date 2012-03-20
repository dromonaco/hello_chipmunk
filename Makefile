SRCS = \
       HelloChipmunk.cpp


OBJS = $(SRCS:.m=.o)

#####################################################################

CC=gcc
LD=gcc

PROG=hello_chipmunk

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
