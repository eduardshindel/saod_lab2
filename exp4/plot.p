#!/usr/bin/gnuplot
set terminal png size 1920,1080 enhanced font 'Arial, 16'
set output 'exp4.png'

set style line 1 linecolor rgb 'red' linetype 1 linewidth 2
set style line 2 linecolor rgb 'green' linetype 1 linewidth 2

set border linewidth 1
set key top left
set grid
set format y "%.6f"
set xlabel "Кол-во элементов" font "Arial, 16"
set format x "%.0f"
set ylabel "Время, с" font "Arial, 16"
set xtics 200000 font "Arial, 12"
set ytics font "Arial, 12"
set rmargin 4
set tmargin 2
set mxtics

plot "mid.dat" using 1:2 title "Средний" with linespoints ls 1,\
     "bad.dat" using 1:2 title "Худший" with linespoints ls 2,\
