set terminal pdfcairo enhanced font "Times-Roman,15" lw 1.2 size 5,4

set xlabel "{/Symbol m}"
set ylabel "J_{ij}({/Symbol m}) (eV)"

# unset key
set key box opaque
set key right bottom

Transp(x) = int((1-x*x)*0xff)<<24
ColorRed(x) = Transp(x) + (int(1.*0xff)<<16) + (int(0.*0xff)<<8) + int(0.*0xff)
ColorBlue(x) = Transp(x) + (int(0.*0xff)<<16) + (int(0.*0xff)<<8) + int(1.*0xff)

set output "hogehoge.pdf"

set title "hoge"
xmin = -5
xmax = 5
set xrange [xmin:xmax]
set xtics 1.0
ymin = -0.4
ymax = 0.2
set yrange [ymin:ymax]
set ytics 0.1
set arrow 1 nohead from xmin,0 to xmax,0 dt (5,5) lc "black"
set arrow 2 nohead from 0,ymin to 0,ymax dt (5,5) lc "black"
plot "path" u 1:2 w l lw 1.2 lc rgb ColorRed(2./5.) title "t/U=2",\
    "path" u 1:2 w l lw 1.2 lc rgb ColorBlue(2./5.) notitle,\
    "path" u 1:2 w l lw 1.2 lc rgb ColorRed(2.5/5.) title "t/U=4",\
    "path" u 1:2 w l lw 1.2 lc rgb ColorBlue(2.5/5.) notitle,\
    "path" u 1:2 w l lw 1.2 lc rgb ColorRed(3./5.) title "t/U=8",\
    "path" u 1:2 w l lw 1.2 lc rgb ColorBlue(3./5.) notitle,\
    "path" u 1:2 w l lw 1.2 lc rgb ColorRed(4./5.) title "t/U=10",\
    "path" u 1:2 w l lw 1.2 lc rgb ColorBlue(4./5.) notitle,\
    "path" u 1:2 w l lw 1.2 lc rgb ColorRed(5./5.) title "t/U=20",\
    "path" u 1:2 w l lw 1.2 lc rgb ColorBlue(5./5.) notitle
