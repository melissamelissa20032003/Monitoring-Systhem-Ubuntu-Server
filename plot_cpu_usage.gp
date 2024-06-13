# Set output file format and name
set terminal png
set output 'cpu_usage_plot.png'

# Set plot title and axis labels
set title "CPU Usage Over Time"
set xlabel "Time"
set ylabel "CPU Usage (%)"


# Specify the time format for parsing
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"

# Plot data from the file.txt file
plot "file.txt" using (timecolumn(1, "%Y-%m-%d %H:%M:%S")):2 with lines title "CPU Usage"

