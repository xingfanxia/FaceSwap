dep_easy:
	brew install python3
	brew install cmake
	brew install boost
	brew install boost-python --with-python3
	pip install dlib
	pip install pyopengl
	cd ..
	wget -c http://www.ijg.org/files/jpegsrc.v8d.tar.gz
	tar xzf jpegsrc.v8d.tar.gz
	cd jpeg-8d
	./configure
	make
	cp ./.libs/libjpeg.8.dylib /usr/local/opt/jpeg/lib
	brew tap homebrew/science
	brew install opencv3 --with-contrib

dep_adv:
	brew install python3
	brew install cmake
	brew install boost
	brew install boost-python --with-python3
	pip install dlib
	pip install pyopengl
	cd ..
	wget -c http://www.ijg.org/files/jpegsrc.v8d.tar.gz
	tar xzf jpegsrc.v8d.tar.gz
	cd jpeg-8d
	./configure
	make
	cp ./.libs/libjpeg.8.dylib /usr/local/opt/jpeg/lib
	brew tap homebrew/science
	brew install opencv3 --with-contrib --with-cuda --with-ffmpeg --with-tbb --with-qt5
run:
	python FaceSwap/zad2.py