hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
    -D mapreduce.output.fileoutputformat.compress=true \
    -D mapreduce.output.fileoutputformat.compress.codec=org.apache.hadoop.io.compress.GzipCodec \
    -D mapreduce.map.output.compress=true \
    -D mapreduce.map.output.compress.codec=org.apache.hadoop.io.compress.GzipCodec \
    -files mapper.py,reducer.py -mapper mapper.py -reducer reducer.py -input /user/pntlv/sh/all-shakespeare.txt -output /user/pntlv/sh/output_python
