CXX=g++

#SDL_FRAMEWORK=-F./ -framework SDL2    
#-lSDL2
SDL_FRAMEWORK=-lmingw32 -lSDL2main -lSDL2 -mwindows
SDL_INCLUDE=-I"E:\greensoft\mingw64\include" -lmingw32 -lSDL2main -lSDL2

CFLAGS=-c 
LFLAGS=-o 

GameExec: main.o General.o Gfx.o Input.o Sprite.o
	$(CXX) $(LFLAGS) $@ $^ $(SDL_INCLUDE)

Sprite.o: Sprite.cpp
	$(CXX) $(CFLAGS) $^ $(SDL_INCLUDE)

Input.o: Input.cpp
	$(CXX) $(CFLAGS) $^ $(SDL_INCLUDE)

Gfx.o: Gfx.cpp
	$(CXX) $(CFLAGS) $^ $(SDL_INCLUDE)

General.o: General.cpp
	$(CXX) $(CFLAGS) $^ $(SDL_INCLUDE)

main.o: main.cpp
	$(CXX) $(CFLAGS) $^ $(SDL_INCLUDE)

clean:
	-del *.o *.exe