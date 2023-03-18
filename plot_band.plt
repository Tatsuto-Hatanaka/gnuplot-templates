set terminal pdfcairo enhanced font "Times-Roman,15" lw 1.2 size 5,4

#set title ""
#set xlabel ""
set ylabel "Energy(eV)"

# k-path: A-H-L-A-G-K-M-G
x1 =
x2 =
x3 =
x4 =
x5 =
x6 =
x7 =

xmin = 0
xmax = x7
ymin =
ymax =
set xrange [xmin:xmax]
set yrange [ymin:ymax]
set xtics ("A" 0, "H" x1, "L" x2, "A" x3, "{/Symbol G}" x4, "K" x5, "M" x6,  "{/Symbol G}" x7)
set ytics 1

unset key
#set key box opaque
#set key right top font",12"

set arrow 1 nohead from x1,ymin to x1,ymax lt 2 lc "black"
set arrow 2 nohead from x2,ymin to x2,ymax lt 2 lc "black"
set arrow 3 nohead from x3,ymin to x3,ymax lt 2 lc "black"
set arrow 4 nohead from x4,ymin to x4,ymax lt 2 lc "black"
set arrow 5 nohead from x5,ymin to x5,ymax lt 2 lc "black"
set arrow 6 nohead from x6,ymin to x6,ymax lt 2 lc "black"

set arrow 7 nohead from 0,0 to x7,0 lt 2 lc "black"



set output "PATH/hoge_fm_band.pdf"
plot "bands_up.dat" u 1:2 w l lw 1.2 lc rgb "red" notitle "up",\
    "bands_dn.dat" u 1:2 w l lw 1.2 lc rgb "blue" notitle "dn"

# visualize the weights of specific orbitals
set output "PATH/hoge_pm_band.pdf"
plot "bands_up.dat" u 1:2 w l lw 1.2 lc rgb "black",\
    "PBAND_XXX.dat" u 1:2:($7+$8+$9+$10+$11) w p ps var pt 7 lc rgb "red"