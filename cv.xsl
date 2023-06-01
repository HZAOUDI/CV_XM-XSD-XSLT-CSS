<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <link rel="stylesheet" href="cv.css"/>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
                <title>
                    <xsl:value-of select="concat(cv/entete/prenom,' ',cv/entete/nom)"/>
                </title>
                
                <style>
                    .LeftColumn {
                    float: left;
                    width: 33%;
                    padding: 20px;
                    text-align: left;
                    background-color: var(--Background-LeftColumn);
                    color: var(--text-LeftColumn);
                    height: 1600px;
                    position: relative; /* Required for absolute positioning of animation */
                    }
                </style>
                
            </head>
            <body>
                <center>
                    <div class="CV">
                        <div class="LeftColumn">
                            <center>
                                <div id="Div_MyImage">
                                    <img src="Images/maphoto.jpg" alt="My photo"/>
                                </div>
                                <div id="Div_Content_Left">
                                    
                                    <div>
                                        <h2 style="color: white;"><i class="fa-solid fa-address-card"></i> About Me</h2>
                                        <xsl:call-template name="showInfo"/>
                                    </div>
                                    
                                    <hr></hr>
                                    
                                    <div>
                                        <h2 style="color: white;"><i class="fa-solid fa-screwdriver-wrench"></i> Competences</h2>
                                        <xsl:call-template name="showSkills"/>
                                    </div>
                                    <hr></hr>
                                    <div> 
                                        <h2 style="color: white;"><i class="fa-solid fa-language"></i> Langues</h2>
                                        <xsl:call-template name="showLanguages"/>
                                    </div>
                                    
                                    <hr></hr>
                                    
                                    <div>
                                        <h2 style="color: white;"><i class="fa-solid fa-bullseye"></i> CENTRE D'INTÉRÊTS</h2>
                                        <xsl:call-template name="showHobbits"/>
                                    </div>
                                    
                                    
                                    <div>
                                        
                                    </div>
                                </div>
                            </center>
                        </div>
                        <div class="RightColumn">
                            <center>
                                <div id="Div_Me">
                                    <h1>
                                        <xsl:value-of select="cv/entete/prenom"/>
                                        <br/>
                                        <xsl:value-of select="cv/entete/nom"/>
                                    </h1>
                                    <h3>
                                        <xsl:value-of select="cv/entete/profile"/>
                                    </h3>
                                </div>
                                <div id="Div_Content">
                                    <div>
                                        <h2> <i class="fa-sharp fa-solid fa-graduation-cap"></i> Formation</h2>
                                        <xsl:call-template name="showEducation"/>
                                    </div>
                                    
                                    <hr></hr>
                                    
                                    <div>
                                        <h2> <i class="fa-solid fa-briefcase"></i> EXPÉRIENCES PROFESSIONNELLES</h2>
                                        <xsl:call-template name="showInternship"/>
                                    </div>
                                    
                                    <hr></hr>
                                    
                                    <div>
                                        <h2><i class="fa-solid fa-code"></i> PROJETS ACADÉMIQUES</h2>
                                        <xsl:call-template name="showProjects"/>
                                    </div>
                                    
                                    <hr></hr>
                                    
                                    <div>
                                        <h2> <i class="fa-solid fa-certificate"></i> Certificates</h2>
                                        <xsl:call-template name="showCertificates"/>
                                    </div>
                                    <div class="page-break"/>
                                </div>
                            </center>
                        </div>
                    </div>
                </center>
                
                <script>
                    document.addEventListener('DOMContentLoaded', function() {
                    // Get the LeftColumn element
                    const leftColumn = document.querySelector('.LeftColumn');
                    
                    // Define the animation
                    const animation = leftColumn.animate([
                    { transform: 'translateX(-100%)' }, // Initial position
                    { transform: 'translateX(0)' } // Final position (right to left)
                    ], {
                    duration: 1000, // Animation duration in milliseconds
                    iterations: 1, // Number of iterations (infinite: Infinity)
                    easing: 'ease-in-out', // Animation easing function
                    fill: 'forwards' // Maintain the final state after the animation ends
                    });
                    });
                </script>
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template name="showEducation">
        <xsl:for-each select="cv/Formations/diplome">
            <div class="Div_Entry">
                <label class="Label_TimeScale">
                    <xsl:value-of select="annee"/>
                </label>
                <div class="Div_EntryContent">
                    <p class="Div_EducationEntryContentDescription">
                        <strong>
                            <xsl:copy-of select="intitule"/>
                        </strong>
                    </p>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="showInternship">
        <xsl:for-each select="cv/stages/stage">
            <div class="Div_Entry">
                <label class="Label_TimeScale">
                    <xsl:value-of select="date"/>
                    <img width="70" height ="70" src="{organisation}" alt="Organization Image"/>
                </label>
                <div class="Div_EntryContent">
                    <h3 class="H3_EntrySubject">
                        <strong>
                            <xsl:value-of select="titre"/>
                        </strong>
                    </h3>
                    <!--<img width="70" height ="70" src="{organisation}" alt="Organization Image"/>-->
                    <p class="Div_EntryContentDescription">
                        <xsl:value-of select="description"/>
                    </p>
                    <br></br>
                    
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="showProjects">
        <xsl:for-each select="cv/projets/projet">
            <div class="Div_Entry">
                <label class="Label_TimeScale">
                    <xsl:value-of select="date_projet"/>
                </label>
                <div class="Div_EntryContent">
                    <h3 class="H3_EntrySubject">
                        <strong>
                            <xsl:variable name="lien_projet">
                                <xsl:value-of select="lien_projet"/>
                            </xsl:variable>
                            <a href="{$lien_projet}">
                                <xsl:value-of select="titre_projet"/>
                            </a>
                        </strong>
                    </h3>
                    <p class="Div_EntryContentDescription">
                        <xsl:value-of select="description_projet"/>
                    </p>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="showCertificates">
        <xsl:for-each select="cv/certificates/certificate">
            <div class="Div_Entry">
                <label class="Label_TimeScale">
                    <xsl:value-of select="date_certificate"/>
                </label>
                <div class="Div_EntryContent">
                    <p class="Div_EducationEntryContentDescription">
                        <strong>
                            <xsl:copy-of select="titre_certificate"/>
                        </strong>
                    </p>
                    <br/>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="showSkills">
        <xsl:for-each select="cv/competences/competence">
            <div class="Div_Left_Entry">
                <div class="Div_EntryContent">
                    <h3 class="H3_EntrySubject_Left">
                        <strong>
                            <xsl:value-of select="titre_competence"/>
                        </strong>
                    </h3>
                    <p class="Div_EntryContentDescription_Left">
                        <xsl:value-of select="description_competence"/>
                    </p>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="showLanguages">
        <xsl:for-each select="cv/langues/langue">
            <div class="Div_Left_Entry">
                <div class="Div_EntryContent">
                    <h3 class="H3_EntrySubject_Language">
                        <strong>
                            <xsl:value-of select="intitule_langue"/>
                        </strong>
                    </h3>
                </div>
                <div class="Div_EntryContentDescription_Language">
                    <p>
                        <xsl:value-of select="niveau"/>
                    </p>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="showHobbits">
        <xsl:for-each select="cv/loisirs/loisir">
            <div class="Div_Left_Entry">
                <div class="Div_EntryContent">
                    <div class="Div_EntryContentDescription_Hobbits">
                        <p>
                            <strong>
                                <xsl:value-of select="."/>
                            </strong>
                        </p>
                    </div>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="showInfo">
        <div class="Div_Left_Entry">
            <div id="Div_Bio">
                <p>
                    <xsl:copy-of select="cv/entete/bio"/>
                </p>
            </div>
            
            <div class="Div_Info">
                <strong> <i class="fa-solid fa-cake-candles"></i>
                    <label class="H3_EntrySubject_Left">Date de Naisssance:</label>
                </strong>
                <label class="Div_EntryContentDescription_Left">
                    <xsl:value-of select="cv/entete/dateDeNaisssance"/>
                </label>
                <br/>
                <strong> <i class="fa-solid fa-earth-americas"></i>
                    <label class="H3_EntrySubject_Left">Nationalité:</label>
                </strong>
                <label class="Div_EntryContentDescription_Left">
                    <xsl:value-of select="cv/entete/nationalite"/>
                </label>
                <br/>
                <strong> <i class="fa-solid fa-phone"></i>
                    <label class="H3_EntrySubject_Left">Téléphone:</label>
                </strong>
                <label class="Div_EntryContentDescription_Left">
                    <xsl:value-of select="cv/entete/telephone"/>
                </label>
                <br/>
                <strong> <i class="fa-solid fa-envelope"></i>
                    <label class="H3_EntrySubject_Left">Email:</label>
                </strong>
                <label class="Div_EntryContentDescription_Left">
                    <xsl:value-of select="cv/entete/mail"/>
                </label>
                <br/>
                <strong> <i class="fa-brands fa-linkedin"></i>
                    <label class="H3_EntrySubject_Left">LinkedIn:</label>
                </strong>
                <a class="Div_EntryContentDescription_Left" href="https://www.linkedin.com/in/haya-zaoudi-183005232/">
                    <xsl:value-of select="cv/entete/linkedin"/>
                </a>
                <br/>
                <strong> <i class="fa-brands fa-github"></i>
                    <label class="H3_EntrySubject_Left">Github:</label>
                </strong>
                <a class="Div_EntryContentDescription_Left" href="https://github.com/HZAOUDI">
                    <xsl:value-of select="cv/entete/github"/>
                </a>
                <br/>
                <br/>             
                
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>