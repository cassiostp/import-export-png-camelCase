( 
set -x ;
echo "" > events.txt ;
for fileNamePng in *.png ; do fileName="${fileNamePng%.png}" ;
	fileCamelCase=$(echo "$fileName" | sed -e "s/-/_/g" | sed -r "s/(_)([a-z]|[A-Z]|[0123456789])/\U\2/g" | sed -r "s/(^.)/\L\1/g") ;
	echo  "import "$fileCamelCase"Icon from './images/event/$fileNamePng';" >> events.txt ;
done
for fileNamePng in *.png ; do fileName="${fileNamePng%.png}" ;
	fileCamelCase=$(echo "$fileName" | sed -e "s/-/_/g" | sed -r "s/(_)([a-z]|[A-Z]|[0123456789])/\U\2/g" | sed -r "s/(^.)/\L\1/g") ;
        echo  "export const $fileCamelCase = "$fileCamelCase"Icon;" >>  events.txt ;
done
)
