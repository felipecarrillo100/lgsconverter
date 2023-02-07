LGS library SDK

To build the sample program:

  # Make sure you are in the lgs-sdk directory, then:
  
  % cd samples
  % cmake .
  % make
  % cd ..

To run the sample program:

  # Make sure you are in the lgs-sdk directory, then:
  
  % export LD_LIBRARY_PATH=`pwd`/lib
  % cd data
  % ../samples/Build/Bin/LgsReaderExample
