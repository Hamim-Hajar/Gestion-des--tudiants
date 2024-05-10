<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil - Site des étudiants</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; /* gris clair */
            color: #333; /* gris foncé */
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #007bff; /* bleu */
            color: #fff; /* blanc */
            padding: 10px;
            text-align: center;
        }
        nav {
            background-color: #333; /* gris foncé */
            color: #fff; /* blanc */
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: #fff; /* blanc */
            text-decoration: none;
            margin: 0 10px;
        }
        .container {
            max-width: 960px;
            margin: 20px auto;
            padding: 0 20px;
        }
        .carousel {
            width: 500px;
            height: 288px;
            background-color: #ccc; /* gris */
            margin-bottom: 20px;
        }
       
        /* Style pour le footer */
        footer {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }

        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .social-icons a {
            display: inline-block;
            margin-right: 10px;
        }

        .social-icons img {
            width: 30px;
            height: auto;
        }

        .social-icons a:last-child {
            margin-right: 0;
        }


    </style>
</head>
<body>
<header>
    <h1>Site des Etudiants</h1>
</header>
<nav>
    <a href="#">Accueil</a>
    <a href="${pageContext.request.contextPath}/hello_world/" class="add-button">consulter la liste des etudiant</a>
    <a href="${pageContext.request.contextPath}/addStudent/" class="add-button">Ajoute un Etudiat</a>
    <a href="#">Clubs</a>
</nav>
<div class="container">
    <div class="carousel">
        <a href="https://www.facebook.com"><img src="https://www.lecoindesentrepreneurs.fr/wp-content/uploads/2020/11/etudiant-entrepreneur.png" alt="Facebook"></a>
    </div>
    <section>
        <h2>Dernieres nouvelles</h2>
        <p>Ajoutez ici les dernieres nouvelles et evenements importants.</p>
    </section>
    <section>
        <h2>Evenements a venir</h2>
        <p>Informations sur les evenements à venir.</p>
    </section>
    <!-- Ajoutez d'autres sections selon vos besoins -->
</div>
<footer>
    <div class="footer-container">
        <div class="social-icons">
            <a href="https://www.facebook.com"><img src="facebook-icon.png" alt="Facebook"></a>
            <a href="https://www.linkedin.com"><img src="linkedin-icon.png" alt="LinkedIn"></a>
        </div>
        <p>&copy; 2022 Mon Site Web. Tous droits réservés.</p>
    </div>
</footer>
</body>
</html>
