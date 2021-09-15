SOURCES := $(wildcard *.cpp)
EXECUTABLES := $(SOURCES:%.cpp=%.exe)

.PHONY: all clean

all: $(EXECUTABLES)

clean:
	rm -f *.exe

%.exe: %.cpp testlib.h
	g++ -std=gnu++1y -DCMS -Wall -Wextra -O2 $< -o $@
