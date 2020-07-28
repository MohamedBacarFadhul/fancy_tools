gco ()

{
	if [ -d ".git" ]
	then
		git commit -m "$*"
	else
		echo "Vous n'etes pas dans un repertoire git"
	fi
}

