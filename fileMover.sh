# Store the output of ls into files
fileType="$1"
folderLocation="$2"
files=$(ls "$folderLocation")

echo $fileType
echo $folderLocation

if [ ! -d "$folderLocation/$fileType" ]; then
    mkdir "$folderLocation/$fileType"
fi

# Iterate over each file and move to appropriate folder
for line in $files; do
    echo $line
    if [[ $line =~ ".$fileType" ]]; then
        mv "$folderLocation/$line" "$folderLocation/$fileType"
    fi
done
