# CV_XM-XSD-XSLT-CSS
Ce projet consiste à créer un Curriculum Vitae (CV) en utilisant des technologies XML telles que XML, XSD, DTD et XSLT. 
Le CV sera ensuite généré au format HTML en appliquant des styles CSS.

# Structure du projet
Le projet est organisé selon la structure suivante :
cv.xml : Fichier XML contenant les données du CV.
cv.xsd : Schéma XSD décrivant la structure attendue du fichier XML.
cv.dtd : Document de type DTD décrivant la structure attendue du fichier XML.
cv.xslt : Feuille de style XSLT qui transforme le fichier XML du CV en HTML.
style.css : Fichier CSS pour appliquer des styles à la version HTML du CV.
cv.html : Fichier HTML généré à partir du fichier XML en utilisant la transformation XSLT et les styles CSS.

# Utilisation
Assurez-vous d'avoir un moteur XSLT pris en charge sur votre système (par exemple: Oxygen XML Editor  Saxon, Xalan, libxslt, etc.).
Ouvrez le fichier cv.xml et renseignez les informations de votre CV en suivant la structure définie dans le schéma XSD ou le document de type DTD.
Validez le fichier XML cv.xml par rapport au schéma XSD ou au document de type DTD pour vérifier sa conformité.
Exécutez la transformation XSLT en utilisant votre moteur XSLT avec la feuille de style cv.xslt et le fichier XML cv.xml. Cela générera le fichier HTML cv.html en appliquant les styles définis dans style.css.
Ouvrez le fichier cv.html dans un navigateur pour visualiser le CV généré avec les styles CSS.

# Personnalisation
Pour personnaliser le style du CV, vous pouvez modifier les règles CSS dans le fichier style.css.
Si vous souhaitez modifier la structure du CV ou ajouter de nouvelles sections, vous devez mettre à jour le fichier XSLT cv.xslt en conséquence pour inclure les nouvelles balises et définir les transformations appropriées.
# Remarques
Assurez-vous d'inclure les fichiers XSD, DTD, XSLT, CSS et HTML générés dans le même répertoire pour le bon fonctionnement du projet.
Veillez à ce que les fichiers XML, XSD, DTD, XSLT et CSS soient correctement référencés dans le code pour éviter toute erreur de chemin.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
N'hésitez pas à personnaliser le contenu du CV en modifiant le fichier XML, et à ajuster les styles en modifiant le fichier CSS. 
Ce projet fournit une base solide pour créer et générer un CV personnalisé en utilisant XML et XSLT, offrant une séparation claire entre les données et la présentation.
