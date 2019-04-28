#!/usr/bin/gnuplot
set terminal png size 1920,1080 enhanced font 'Arial, 16'
set output 'exp6.png'

set style line 1 linecolor rgb 'red' linetype 1 linewidth 2
set style line 2 linecolor rgb 'green' linetype 1 linewidth 2

set border linewidth 1
set key top left
set grid
set format y "%.6f"
set xlabel "Кол-во элементов" font "Arial, 16"
set format x "%.0f"
set ylabel "Время, с" font "Arial, 16"
set xtics 1250000 font "Arial, 12"
set ytics font "Arial, 12"
set rmargin 4
set tmargin 2
set mxtics

plot "hash1.dat" using 1:2 title "KP Hash" with linespoints ls 1,\
     "hash2.dat" using 1:2 title "FNV Hash" with linespoints ls 2,\

