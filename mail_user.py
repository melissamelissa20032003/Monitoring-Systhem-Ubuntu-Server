from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.image import MIMEImage
import smtplib

# SMTP Config
smtp_server = 'partage.univ-avignon.fr'
smtp_port = 465
smtp_username ='melissa.boutlendj@alumni.univ-avignon.fr'
smtp_password ='Melissa@2022Feriel@2024'

# Email Conf
to_email = 'melissaboutlendj@gmail.com'
subject = 'situation de crise'
body = 'Attention, un nouvel utilisateur est connecté !'

# Create message
message = MIMEMultipart()
message['From'] = smtp_username
message['To'] = to_email
message['Subject'] = subject
message.attach(MIMEText(body, 'plain'))

# Connect to the SMTP server
server = smtplib.SMTP_SSL(smtp_server, smtp_port)

# Authenticate with the server
server.login(smtp_username, smtp_password)

# Ajout du graphique en pièce jointe
with open('heatmap.png', 'rb') as file:
    img_data = file.read()
    img = MIMEImage(img_data, name='heatmap.png')
    message.attach(img)

# Send email
server.send_message(message)
print("Email sent successfully!")

# Close SMTP connection
server.quit()

