# simulate the architecture with specified benchmark
# sbt "test:testOnly dsa.TestSim"

# simulate the architecture with specified benchmark and produce the .vcd wave file
sbt "test:testOnly dsa.TestSim -- -DwriteVcd=1"

# output files are in "./test_run_dir/CGRA_should_work_harder"