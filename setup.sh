#!/bin/sh

script_dir="$(realpath $0 | xargs -I{} dirname '{}')"

source_dir="$script_dir/files"

for file in "$source_dir"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "Linking ~/$filename to $file"
        ln -s "$file" "$HOME/$filename"
    fi
done

for file in "$source_dir"/.*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "Linking ~/$filename to $file"
        ln -s "$file" "$HOME/$filename"
    fi
done

