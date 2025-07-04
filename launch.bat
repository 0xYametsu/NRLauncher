cmake -S . -B build -G "MinGW Makefiles"

cd .\build\
make
cd ..

cd .\build\BIN\
.\NRLauncher.exe