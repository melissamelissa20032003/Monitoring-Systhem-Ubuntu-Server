import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.image import MIMEImage

# Paramètres SMTP
smtp_server = 'partage.univ-avignon.fr'
smtp_port = 465
smtp_username = 'melissa.boutlendj@alumni.univ-avignon.fr'
smtp_password = 'Melissa@2022Feriel@2024'

# Destinataire de l'e-mail
to_email = 'melissaboutlendj@gmail.com'
subject = 'Situation de crise'
body = 'Attention, une alerte CPU est relevée!!  voici le graph '


# Création du message
message = MIMEMultipart()
message['From'] = smtp_username
message['To'] = to_email
message['Subject'] = subject
message.attach(MIMEText(body, 'plain'))

# Ajout du graphique en pièce jointe
with open('cpu_usage_plot.png', 'rb') as file:
    img_data = file.read()
    img = MIMEImage(img_data, name='cpu_usage_plot.png')
    message.attach(img)

try:
    # Connexion au serveur SMTP
    server = smtplib.SMTP_SSL(smtp_server, smtp_port)
    server.login(smtp_username, smtp_password)

    # Envoi de l'e-mail
    server.send_message(message)
    print("E-mail envoyé avec succès !")

except Exception as e:
    print(f"Une erreur s'est produite : {e}")

finally:
    # Fermeture de la connexion SMTP
    server.quit()

