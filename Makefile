GCC=g++
INCLUDEDIR=-I./ -I/cpp
LIBDIR=-lm
CPPFLAGS = -O3 -Wall
TARGET = testRun
TEST_OBJS = cpp/Doc2Vec.o cpp/TrainModelThread.o cpp/NN.o cpp/TaggedBrownCorpus.o cpp/Vocab.o cpp/WMD.o
OBJS = testRun.o $(TEST_OBJS)

all: ${TARGET}

clean:
	rm -f *~ *.o $(TARGET)

${TARGET} : $(OBJS)
	$(GCC) $(CPPFLAGS) $^ $(LIBDIR) -o $@

%.o	: %.cpp
	$(GCC) $(CPPFLAGS) -c $< -o $@ $(INCLUDEDIR)
