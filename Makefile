#OBJS specifies which files to compile as part of the project
OBJS = ./src/*.c

#CC specifies which compiler we're using
CC = gcc

#COMPILER_FLAGS specifies the additional compilation options we're using
# --Wall -Werror -Wextra -pedantic
COMPILER_FLAGS = -Wall -Werror -Wextra -pedantic -lm $$(sdl2-config --cflags)

#LINKER_FLAGS specifies the libraries we're linking against
LINKER_FLAGS = -lm $$(sdl2-config --libs) -lSDL2_image -lSDL2_ttf

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = play

#This is the target that compiles our executable
all : $(OBJS)
	$(CC) $(OBJS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(OBJ_NAME)