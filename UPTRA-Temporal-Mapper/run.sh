# SPDLOG_LEVEL=trace, debug, info, warn, err, critical, off
./build/cgra-compiler SPDLOG_LEVEL=off \
	-c true -m true -o false -s false -t 360000 -i 3000 \
	-p "../UPTRA_ARC/operations.json" \
	-a "../UPTRA_ARC/UPTRA-5.json" \
	-d "../benchmarks/fft/fft.json"
	