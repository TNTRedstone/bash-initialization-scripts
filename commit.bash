read -p "Message: " MESSAGE

git add *
git commit --message "$MESSAGE"
git push -u origin master
