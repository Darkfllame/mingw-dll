# compiler
COMP=g++

# output files names
name_DLL=LuaHost54

# the files to compiles
files_DLL=src/Lua.cpp src/LuaVars.cpp

# linking args
link_DLL=-lmingw32 -llua54

# sup args
args_DLL=

#-------------------NO MORE MODIFICATIONS-------------------#

DLL:
	g++ -o bin/${name_DLL}.dll ${files_DLL} -shared -s -Wl,--out-implib,lib/lib${name_DLL}.a -Iinclude -Llib ${link_DLL} ${args_DLL}
