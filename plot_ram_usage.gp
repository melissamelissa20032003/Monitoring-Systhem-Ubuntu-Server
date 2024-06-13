# Set output file format and name
set terminal png
set output 'ram_usage_plot.png'

# Set plot title and axis labels
set title "RAM Usage Over Time"
set xlabel "Time"
set ylabel "RAM Usage (%)"

# Specify the time format for parsing
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"

# Set the data file separator
set datafile separator "|"

# Set style for bars
set style data histogram
set style histogram cluster gap 1

# Set width of bars
set boxwidth 0.5

# Plot data from the file.txt file
plot "file.txt" using 1:3:xtic(1) with boxes title "RAM Usage"

