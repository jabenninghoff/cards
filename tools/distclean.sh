#!/bin/sh
# clean python and Rcpp (source) environments for (re)installation

if [ "$(head -1 DESCRIPTION)" != "Package: cards" ]
then
	echo "./tools/distclean.sh must be run from the cards project root!"
	exit 1
fi

echo "cleaning python"
rm -rf renv/python
rm requirements.txt

echo "cleaning Rcpp"
rm src/*.o
rm src/*.so
rm src/*.dll

echo 'install python with renv::use_python(), reticulate::py_install("phevaluator"), and renv::snapshot(dev = TRUE)'
echo "rebuild Rcpp with devtools::document()"
