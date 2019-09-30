PS3='Please select reporting type: '
options=("Html" "Json" "Emoji" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Html")
            swiftlint lint --reporter html > swiftlint.html
            open swiftlint.html
            break
            ;;
        "Json")
            swiftlint lint --reporter json > swiftlint.json
            open swiftlint.json
            break
            ;;
        "Emoji")
            swiftlint lint --reporter emoji > swiftlint.txt
            open swiftlint.txt
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done