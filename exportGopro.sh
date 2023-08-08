input_directory=$1
output_directory=$2

for file in "$input_directory"/*.[mM][pP]4; do
    filename=$(basename "$file")
    filenameWithoutExtension=$(basename "$file" | sed 's/\.[^.]*$//')

    media=${filenameWithoutExtension: -4}

    if [ ! -d "$output_directory/$media" ]
    then
        mkdir -p "$output_directory/$media"
    fi  

    cp "$input_directory"/"$filename" "$output_directory/$media/"
done