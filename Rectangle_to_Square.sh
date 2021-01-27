#!/bin/bash
sqInRect() {
    # your codei

dd=$1
dr=$2
rem=1

while [[ $rem -ne 0 ]]
do

if [[ $dd -lt $dr ]]
then

t=$dd
dd=$dr
dr=$t
elif [[ $dd -eq $dr ]]
then
echo "nil"
exit 0
fi

rem=`expr $dd % $dr`
quo=`expr $dd / $dr`

if [[ $rem -eq 0 || $quo -gt 1 ]]
then


for i in $(seq $quo)
do
echo -n $dr" "
done

else

echo -n $dr" "

fi

dd=$dr
dr=$rem

done

}
sqInRect $1 $2
