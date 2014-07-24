datapath=../../data

prefix=$1
echo "en2de prepare data all sizes"
#echo [Preparing test set for DE]
java -ea -Xmx2000m  -cp ../../bin CollectionPreprocessor --rnnlm --text-dir $datapath/rcv-from-binod/test/de --idf $datapath/idfs/idf.de --word-embeddings $prefix.de-en.de  --vector-file $prefix.doc.test.de-en.de

#echo [Preparing train set for EN]
java -ea -Xmx2000m  -cp ../../bin CollectionPreprocessor --rnnlm --text-dir $datapath/rcv-from-binod/train/EN100 --idf $datapath/idfs/idf.en --word-embeddings $prefix.de-en.en  --vector-file $prefix.doc.train.de-EN100.en
java -ea -Xmx2000m  -cp ../../bin CollectionPreprocessor --rnnlm --text-dir $datapath/rcv-from-binod/train/EN200 --idf $datapath/idfs/idf.en --word-embeddings $prefix.de-en.en  --vector-file $prefix.doc.train.de-EN200.en
java -ea -Xmx2000m  -cp ../../bin CollectionPreprocessor --rnnlm --text-dir $datapath/rcv-from-binod/train/EN500 --idf $datapath/idfs/idf.en --word-embeddings $prefix.de-en.en  --vector-file $prefix.doc.train.de-EN500.en
java -ea -Xmx2000m  -cp ../../bin CollectionPreprocessor --rnnlm --text-dir $datapath/rcv-from-binod/train/EN1000 --idf $datapath/idfs/idf.en --word-embeddings $prefix.de-en.en  --vector-file $prefix.doc.train.de-EN1000.en
java -ea -Xmx2000m  -cp ../../bin CollectionPreprocessor --rnnlm --text-dir $datapath/rcv-from-binod/train/EN5000 --idf $datapath/idfs/idf.en --word-embeddings $prefix.de-en.en  --vector-file $prefix.doc.train.de-EN5000.en
java -ea -Xmx2000m  -cp ../../bin CollectionPreprocessor --rnnlm --text-dir $datapath/rcv-from-binod/train/EN10000 --idf $datapath/idfs/idf.en --word-embeddings $prefix.de-en.en  --vector-file $prefix.doc.train.de-EN10000.en