
if [ $# -lt 2 ]; then
        echo "Enter 2 command line arguments"
        exit 1
fi

SEARCH_STRING="$1"

shift

for FILENAME in "$@"; do
        COUNT=$(grep -c "$SEARCH_STRING" "$FILENAME")

        echo "File $FILENAME contains $COUNT lines with the string \"$SEARCH_STRING\""
done
