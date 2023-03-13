all: detect_markers

FLAGS=$(shell pkg-config --libs --cflags opencv4)

%: %.cpp
	g++ -Wall $^ $(FLAGS) -o $@

