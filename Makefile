name = "main"

start: compile run

compile: 
	rm -rf ./build
	mkdir build
	g++ ./src/main.cpp ./src/glad.c -ldl -lglfw -o ./build/${name}

run:
	./build/${name}