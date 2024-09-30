echo making dir and bash script
mkdir number_guessing_game
cd number_guessing_game
touch number_guess.sh
chmod +x number_guess.sh
echo completing git tasks
git init
git branch -m main
git add .
git commit -m "Initial commit"
touch removeme.sh
sleep 1
git add .
git commit -m "chore: 2nd commit"
rm removeme.sh
sleep 1
git add .
git commit -m "chore: 3rd commit"
touch removeme.sh
sleep 1
git add .
git commit -m "chore: 4th commit"
rm removeme.sh
sleep 1
git add .
git commit -m "chore: 5th commit"