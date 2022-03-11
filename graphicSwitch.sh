echo "$(tput setaf 3)"Graphic switch by Xavi.tech"$(tput sgr0)"
echo "$(tput setaf 3)"Script for SYSTEM76"$(tput sgr0)"

echo
echo "1 - Which graphic mode the system is using"
echo "2 - Switch to NVIDIA"
echo "3 - Switch to INTEGRATED"
echo "4 - Switch to HYBRID"
echo "5 - Switch from INT/NV and viceversa"
echo
read -p  "Select your option: " option


case "${option}" in
    1)
        system76-power graphics
    ;;
    2)
        system76-power graphics nvidia
    ;;
    3)
        system76-power graphics integrated
    ;;
    4)
        system76-power graphics hybrid
    ;;
    5)
        s76=$(system76-power graphics)
        if [ $s76 = 'integrated' ]; then
             system76-power graphics nvidia
        elif [ $s76 = 'nvidia' ]; then
             system76-power graphics integrated
        else
            echo "$(tput setaf 1)"An error ocurred. Try with manual switching"$(tput sgr0)"
            echo "$(tput setaf 1)"This option only works between nvidia/integrated"$(tput sgr0)"
        fi
        
    ;;
    *)
       echo "$(tput setaf 1)"INVALID OPTION"$(tput sgr0)"
       
    ;;
esac
