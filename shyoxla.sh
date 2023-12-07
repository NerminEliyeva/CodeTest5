
#  printf "enter folder name : "
#  read dirname
#  mkdir $dirname
#  cd $dirname

# echo 'Hello, world.' > $dirname

# git add .

# printf "enter commit message : "
# git commit -m "$comment"
# read commit
# git push 

# pause


# Prompt user for folder name
printf "Enter folder name: "
read dirname

# Create the folder
mkdir "$dirname" || { echo "Failed to create folder."; exit 1; }

# Change into the created folder
cd "$dirname" || { echo "Failed to change into the folder."; exit 1; }

# Create a file with "Hello, world." content
echo 'Hello, world.' > hello.txt || { echo "Failed to create file."; exit 1; }

# Initialize a git repository
git init || { echo "Failed to initialize git repository."; exit 1; }

# Add the file to the repository
git add . || { echo "Failed to add files to git repository."; exit 1; }

# Prompt user for commit message
printf "Enter commit message: "
read commit_message

# Commit changes
git commit -m "$commit_message" || { echo "Failed to commit changes."; exit 1; }

# Push changes
git push || { echo "Failed to push changes."; exit 1; }

echo "Script executed successfully."