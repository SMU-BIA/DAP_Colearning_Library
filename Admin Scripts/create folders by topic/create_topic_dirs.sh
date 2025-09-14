input="atopics.txt"
while IFS= read -r line; do
  # Skip empty lines
  [ -z "$line" ] && continue
  # Create directory
  mkdir -p "$line"
  # Create README.md file
  touch "$line/README.md"
done < "$input"