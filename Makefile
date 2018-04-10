
CXX=g++-7
CXXFLAGS=-Wall -std=c++14
LDFLAGS=-lstdc++ -lgtest -lgtest_main

TARGET=travis
SRC=$(wildcard *.cpp)
OBJ=$(patsubst %.cpp,%.o,$(SRC))

.PHONY: all
all: ${TARGET}

.cpp.o:
	@$(CXX) $(CXXFLAGS) -c $< -o $@

${TARGET}: ${OBJ}
	@$(CXX) -o $(TARGET) $(OBJ) $(LDFLAGS)

.PHONY: clean
clean:
	rm -r $(TARGET) $(OBJ)
