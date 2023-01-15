#!/bin/bash
t=10
while [ true ]; do
    sudo -u cloudnet java -XX:+UseG1GC -XX:MaxGCPauseMillis=50 -XX:+UnlockExperimentalVMOptions -XX:+UseCompressedOops -XX:-UseAdaptiveSizePolicy -XX:CompileThreshold=100 -Dfile.encoding=UTF-8 -Xmx456M -Xms256m -jar launcher.jar
    echo "-------------------------------------------------------------"
    echo "-----                                                   -----"
    echo "-----            Press Enter to avoid restart           -----"
    echo "-----                                                   -----"
    echo "-----                                                   -----"
    echo "-----                                                   -----"
    echo "-------------------------------------------------------------"
    for (( i=$t; i>=1; i-- ))
    do
        printf "\033[1A\033[1A\033[1A\033[K"
        if [ $i == $t ]
            then s="s"
        elif [ $i == 1 ]
            then s="  "
        else
            s="s "
        fi
        echo -e "-----              Restarting in $i second$s             -----\n\n"
        read -st 1 input
        if [ $? == 0 ]
            then break 2
        fi
    done
    printf "\033[1A\033[1A\033[1A\033[K"
    echo -e "-----              Restarting server now...              -----\n\n"
    sleep 2
done
