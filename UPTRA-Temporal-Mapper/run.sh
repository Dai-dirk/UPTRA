# SPDLOG_LEVEL=trace, debug, info, warn, err, critical, off
./build/cgra-compiler SPDLOG_LEVEL=off \
	-c true -m true -o false -s true -t 360000 -i 3000 \
	-p "../cgra-mg/src/main/resources/operations.json" \
	-a "../UPTRA_ARC/spatial/type15/type15_20x3.json" \
	-d "../bechmarks/LSU/test/resnet2/resnet2.json"
	#-d "../bechmarks/CGRA_FRAM/test/fft/dfg_modified.json"
	#-d "../bechmarks/CGRA_FRAM/test/conv3/conv3.json"
  #-d "../bechmarks/test/arf/arf.json ../bechmarks/test/test_imul/imul.json ../bechmarks/test/test_LSU_1/LSU.json ../bechmarks/test/cosine1/cosine1.json"
	#-d "../bechmarks/test/test_imul/imul.json"
	#-d "../bechmarks/test/arf/arf.json ../bechmarks/test/centro-fir/centro-fir.json ../bechmarks/test/cosine1/cosine1.json ../bechmarks/test/ewf/ewf.json ../bechmarks/test/fir1/fir1.json ../bechmarks/test/resnet1/resnet1.json"
	# -d "../bechmarks/test/fft/fft.json"
	# -d "../bechmarks/test/cosine2/cosine2.json ../bechmarks/test/fir/fir.json ../bechmarks/test/md/md.json ../bechmarks/test/resnet2/resnet2.jso
