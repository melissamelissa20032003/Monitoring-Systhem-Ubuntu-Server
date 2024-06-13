# Set output file format and name
set terminal png
set output 'heatmap.png'

# Set plot title and axis labels
set title "User Activity Heatmap"
set xlabel "Time"
set ylabel "Users"

# Specify the time format for parsing
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"

# Set the data file separator
set datafile separator "|"

# Set the color palette for the heatmap
set palette defined (0 "blue", 1 "cyan", 2 "white", 3 "yellow", 4 "red")

# Plot data as heatmap
plot "file.txt" using 1:4:(1) with image title "User Activity"

