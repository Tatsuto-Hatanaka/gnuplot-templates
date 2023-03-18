set terminal pdfcairo enhanced font "Times-Roman,15" lw 1.2 size 4,3
sst termoption dash

# set title ""
set xlabel "Cutoff energy(eV)"
set ylabel "Energy (eV)"


xmax = 870
xmin = 330
set xrange [xmin:xmax]
set xtics 100

#set grid

# unset key
# set key box opaque
set key right top font ",12"

ymax =
ymin =
set yrange [ymin:ymax]
set ytics 0.1
set output "conv_check_XXX.pdf"
set title "MATERIAL (XXX)"
plot "PATH/conv_check_XXX.dat" using 1:2 w lp lt 1 lc rgb "red" pt 4 ps 0.5 lw 2 title "(4,4,4)",\
    "" using 1:3 w lp lt 2 lc rgb "red" pt 4 ps 0.5 lw 2 title "(6,6,6)",\
    "" using 1:4 w lp lt 3 lc rgb "red" pt 4 ps 0.5 lw 2 title "(8,8,8)",\
    "" using 1:5 w lp lt 4 lc rgb "red" pt 4 ps 0.5 lw 2 title "(12,12,12)",\
    "" using 1:6 w lp lt 5 lc rgb "red" pt 4 ps 0.5 lw 2 title "(16,16,16)"