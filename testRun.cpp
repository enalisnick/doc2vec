#include <limits>
#include "cpp/Doc2Vec.h"

int main(int argc, char **argv) {
  Doc2Vec doc2vec;
  doc2vec.train("data/aclImdb_for_doc2vec.txt", 50, 0, 1, 0, 15, 10, 0.025, 1e-5, 3, 6);
  printf("\nWrite model to %s\n", "data/imdb_large.model");
  FILE * fout = fopen("data/imdb_large.model", "wb");
  doc2vec.save(fout);
  fclose(fout);
  return 0;
}
