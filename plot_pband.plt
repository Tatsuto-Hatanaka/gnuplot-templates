set terminal pdfcairo enhanced font "Times-Roman,15" lw 1.2 size 5,4

#set title ""
#set xlabel ""
set ylabel "Energy (eV)"

x1 =
x2 =
x3 =
x4 =
x5 =
x6 =
x7 =

xmin = 0
xmax = x7
ymin = -3
ymax = 2
set xrange [xmin:xmax]
set yrange [ymin:ymax]
set xtics ("{/Symbol G}" 0, "M" x1, "K" x2, "{/Symbol G}" x3, "A" x4, "L" x5, "H" x6, "A" x7)
set ytics 0.5

unset key
#set key box opaque
#set key right top font",20"

set arrow 1 nohead from x1,ymin to x1,ymax lt 2 lc "black"
set arrow 2 nohead from x2,ymin to x2,ymax lt 2 lc "black"
set arrow 3 nohead from x3,ymin to x3,ymax lt 2 lc "black"
set arrow 4 nohead from x4,ymin to x4,ymax lt 2 lc "black"
set arrow 5 nohead from x5,ymin to x5,ymax lt 2 lc "black"
set arrow 6 nohead from x6,ymin to x6,ymax lt 2 lc "black"
set arrow 7 nohead from 0,0 to x7,0 lt 2 lc "black"

#set object 1 rect from graph 0, graph 0.5 to graph 1, graph 1 back lw 0 fillcolor rgb "dark-cyan" fill solid 0.07 noborder
#set object 2 rect from graph 0, graph 0 to graph 1, graph 0.5 back lw 0 fillcolor rgb "orange-red" fill solid 0.07 noborder


set output "./hoge_afm_pband.pdf"
plot "./bands_up.dat" u 1:2 w l lw 1.2 lc rgb "black",\
    "PBAND_hoge_UP.dat" u 1:2:($3+$4+$5+$6+$7+$8+$9+$10+$11)/2 w p ps var pt 7 lc rgb "red"
