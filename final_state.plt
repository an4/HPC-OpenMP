set title 'Fluid Velocity'
set xlabel 'cell # along x-dimension'
set ylabel 'cell # along y-dimension'
set term png
set output 'final_state.png'
plot 'final_state.dat' using 1:2:5 with image
