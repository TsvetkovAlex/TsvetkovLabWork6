#!/bin/bash
echo -n "Введіть назву параметру пам'яті: "
read mempar
echo $(grep $mempar /proc/meminfo)
echo -e "-$mempar - область пам'яті, зайнята зберіганням даних, які очікують операції запису на диск,\nпри цьому буфер дозволяє програмам продовжувати виконання свого завдання,\nнечекаючи моменту, коли дані будуть фізично записані на диск"
echo -n "Введіть назву параметру процесора: "
read cpupar
echo $(grep "$cpupar" /proc/cpuinfo | uniq)
echo "-$cpupar - повна назва моделі центрального процесора"
