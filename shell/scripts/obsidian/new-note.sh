file_name=$(date "+%Y%m%d%H%M%S").md
cd "/home/naparajith/Documents/Deez Notes/00 - Drafts/" || exit
touch "${file_name}"
nvim "${file_name}"
