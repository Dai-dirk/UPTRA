////////////////////////UPTRA Temporal Mapper/////////////////////////
=======================

Temporal CGRA mapping flow including scheduling, binding, configuration generation, and visualization.


## Getting Started

### Dependencies

#### CMake

#### C++-11

### Build

Using the script build.sh
```sh
./build.sh
```

### Run

Using the script run.sh
```sh
./run.sh
```
#### Input files for the mapper

-p (do not change): the operations set supported by the UPTRA, if a DFG contains the operation not inclued in this file, it can not be mappped. However, the actual operation that current hardware supports should reffer to the ADG file.

-a: ADG file of the UPTRA CGRA, which can be changed as you need.

-d: Benchmark file, which can be changed as you nedd.


#### Spatial computation
 For the UPTRA that only performs spatial computation, it needs to set the option -s as true. The spatial CGRA ADG file is at ../UPTRA_ARC/Spatial folder.

The generated result files are in the same dirrectory as the benchmark.




