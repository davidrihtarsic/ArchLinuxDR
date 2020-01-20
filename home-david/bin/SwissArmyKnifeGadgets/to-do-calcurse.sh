#! /bin/bash

file=~/.calcurse/todo
#cat $file > $file-temp
#selectedItem=$(calcurse --input-datefmt 1 -G --filter-start-from $(date +'%m/%d/%Y') | dmenu -l 20 -p "Calcurse:")
#selectedItem=$(calcurse -Q --days 30 | sed '/->/N;s/\n//' | sed '/[0-9]:/N;s/\n//' | sed 's/^\ -/          -/' | sed 's/\t/  /' |dmenu -l 20 -p "Calcurse:")
selectedItem=$(calcurse -Q --days 30 | sed '/^$/d;/[0-9]:/N;s/\n//;/->/N;s/\n//;s/^ -/          -/;s/\t/    /;/\.\.:\.\. -> \.\.:\.\./d'|dmenu -l 20 -p "Calcurse:")
echo $selectedItem

if [[ $selectedItem =~ ^[0-9][0-9]\/.*   ]]
then
    echo "to je appointment"
elif [[ $selectedItem =~ ^[a-zA-Z].*$ ]]
then
    selectedItem="[1] "$selectedItem
    echo $selectedItem >> $file
    notify-send "dodano" "$selectedItem"
elif [[ $selectedItem =~ ^[0-9].*$ ]]
then
    echo "brisanje...: $selectedItem"
    deleteItem=$(echo $selectedItem | sed 's/^\[[0-9]\]\ //' ) &&
    echo "sprememba: $deleteItem" &&
    grep -v "$deleteItem" $file > $file.tmp &&
    sort -V $file.tmp > $file &&
    rm $file.tmp
    notify-send "izbrisano" "$selectedItem"
elif [[ $selectedItem =~ ^$  ]]
then
	echo exit
fi

