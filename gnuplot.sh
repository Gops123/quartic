#!/usr/bin/gnuplot
reset
set term png truecolor
set output "view.png"
set xlabel "log"
set ylabel "log percential"
set grid
set xtics rotate
set boxwidth 0.95 relative
set style fill transparent solid 0.5 noborder
plot "data.dat" u 0:2:xtic(1)  w boxes lc rgb"green" notitle
