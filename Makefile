
CXX=g++
CXXFLAGS=-Wall
LDFLAGS=-lstdc++ -lgtest -lgtest_main

TARGET=$(notdir $(CURDIR))
SRC=$(wildcard *.cpp)
OBJ=$(patsubst %.cpp,%.o,$(SRC))

.PHONY: all
all: ${TARGET}

.cpp.o:
	@$(CXX) $(CXXFLAGS) -c $< -o $@

${TARGET}: ${OBJ}
	@$(CXX) $(LDFLAGS) -o $(TARGET) $(OBJ)

.PHONY: clean
clean:
	rm -r $(TARGET) $(OBJ)