# Monitoring-System-Ubuntu-Server
Monitor system resources such as CPU, RAM, and active users using Bash and Python scripts, and send email alerts to notify the administrator of critical situations.
Monitor system resources such as CPU, RAM, and active users using Bash and Python scripts, and send email alerts to notify the administrator of critical situations.

Regarding the application's functionality, this project is designed to track CPU and RAM usage, as well as the number of active users. Initially, I faced some confusion regarding which RAM parameter to monitor (total available, used, etc.), so I ended up monitoring used memory.

To achieve this, I utilized psutil, a Python library for obtaining CPU and RAM information, along with a simple Bash script to retrieve the number of system users. These scripts are executed via a file called sonde.sh, which returns the three required pieces of information. This data is then inserted into my monitoring_data database, which contains a table with four columns: date and time, CPU, memory, and user. I created a script to perform these insertions each time sonde.sh is executed.

Upon completing this step, I needed a method to capture and insert information automatically into my database every minute. To accomplish this, I employed cron tab, scheduling the execution of sonde.sh every minute with the command: "*/1 * * * * melissa /home/melissa/sonde.sh > /home/melissa/trace 2> /home/melissa/traceerr".

As my data table began to grow, I implemented the option to delete old records. Prior to each insertion, I added the SQL request: "DELETE FROM sdata WHERE rowid = (SELECT min(rowid) FROM sdata);".

Once the data was stored, I copied it into a text file for easy graph extraction using Gnuplot, a Python library for generating colored graphs from data columns. I created graphs for each parameter (CPU, RAM, user), generating PNG files. To visualize these files, I transferred them to my local directory using the command: "scp -r melissa@127.0.0.1:/home/melissa/cpu_graph.png /home/melissa/Desktop/l2S4/ProjetLocalAdminSys".

Subsequently, I incorporated the graphs into alert emails, specifying the type of each alert. For this, I utilized three Python libraries: MIMEMultipart, MIMEText, MIMEImage, along with the SMTP server of the University of Avignon to send emails with attached graphs.

To complete the system, I implemented a crisis detection model, a Bash function that compares minute-by-minute information against predefined thresholds, determining which emails to send.

Finally, I developed a simple web interface to display the graphs and database history using HTML and jQuery, which was my favorite part of the project.

I am still eager to learn more about web scraping concepts and advanced alert mechanisms.

    
  
