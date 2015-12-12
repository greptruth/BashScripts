
#find . -mindepth 1 -maxdepth 3 -type d -exec echo git --git-dir={}/.git --work-tree=$PWD/{} status \;
#find . -mindepth 1 -maxdepth 3 -type d -exec git --git-dir={}/ --work-tree=$PWD/{} status -v \;

repo=(https://github.com/KRSSG/plays.git https://github.com/KRSSG/kgpkubs_launch.git https://github.com/KRSSG/tactics.git)
function clone()
{
	for i in ${repo[@]}; do
		git clone ${i} ./src
	done
}

function pull()
{
	for i in ${list[@]}; do
		echo "******************************************************************"
		echo GIT DIRECTORY: ${i}
		git pull ${i}
	done
}

function _pull()
{
	for i in ${list[@]}; do
		echo "******************************************************************"
		echo GIT DIRECTORY: ${i}
		git fetch
		git log HEAD..origin
		read -p "Merge [y/n]? "
		if [[ $REPLY = [yY] || $REPLY = "" ]]
			then
					git merge
		fi
	done

		
}

function commit()
{
	for i in ${list[@]}; do
		echo "******************************************************************"
		echo GIT DIRECTORY: ${i}
		git commit origin master
	done
}

function _commit()
{
	for i in ${list[@]}; do
		echo "******************************************************************"
		echo GIT DIRECTORY: ${i}
		git status --porcelain
		read -p "Commit [y/n]? "
		if [[ $REPLY = [yY] || $REPLY = "" ]]
			then
					git add .
					echo "Enter message for commit:"
					read message
					git commit -m "message"
					git push origin master
					#add authentication
		fi
	done

}
function status()
{
	for i in ${list[@]}; do
		echo "******************************************************************"
		echo GIT DIRECTORY: ${i}
		git --git-dir=${i}/ --work-tree=$PWD/${i} status -v
	done
}

list="$(find . -name '*.git')"
$1