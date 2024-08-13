#!/bin/sh
# copy (or update) phevaluator sources from local git repository specified in PHEDIR

PHEDIR="../PokerHandEvaluator/cpp"
PHEINC="include/phevaluator"
PHESRC="src"

makedir() {
	local dir="${1}"

	echo "mkdir -p ${dir}"
	mkdir -p "${dir}"
}

copy() {
	local src="${1}"
	local dst="${2}"

	echo "cp ${src} ${dst}"
	cp "${src}" "${dst}"
}

if [ "$(head -1 DESCRIPTION)" != "Package: cards" ]
then
	echo "./tools/copy-phevaluator.sh must be run from the cards project root!"
	exit 1
fi

# manually specify files as not all are used
makedir "inst/${PHEINC}"
copy "${PHEDIR}/${PHEINC}/card.h" "inst/${PHEINC}"
copy "${PHEDIR}/${PHEINC}/phevaluator.h" "inst/${PHEINC}"
copy "${PHEDIR}/${PHEINC}/rank.h" "inst/${PHEINC}"

makedir "src"
copy "${PHEDIR}/${PHESRC}/7462.c" "src"
copy "${PHEDIR}/${PHESRC}/dptables.c" "src"
# rename evaluator5.c since Rcpp compiles both evaluator5.c and evaluator5.cc as evaluator5.o
copy "${PHEDIR}/${PHESRC}/evaluator5.c" "src/evaluator5_c.c"
copy "${PHEDIR}/${PHESRC}/evaluator5.cc" "src"
copy "${PHEDIR}/${PHESRC}/hash.c" "src"
copy "${PHEDIR}/${PHESRC}/hash.h" "src"
copy "${PHEDIR}/${PHESRC}/hashtable.c" "src"
copy "${PHEDIR}/${PHESRC}/hashtable5.c" "src"
copy "${PHEDIR}/${PHESRC}/rank.c" "src"
copy "${PHEDIR}/${PHESRC}/tables.h" "src"
copy "${PHEDIR}/${PHESRC}/tables_bitwise.c" "src"
