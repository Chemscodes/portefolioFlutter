import 'package:flutter/material.dart';

void main() {
  // runApp lance l'application Flutter et affiche le widget racine.
  runApp(
    // MaterialApp configure une application Material Design.
    MaterialApp(
      // Scaffold fournit la structure visuelle de base: barre du haut et corps.
      home: Scaffold(
        // AppBar est la barre d'application affichée en haut de l'ecran.
        appBar: AppBar(
          // Text affiche un texte simple, ici le titre de l'application.
          title: Text('Portefolio'),
          // backgroundColor definit la couleur de fond de l'AppBar.
          backgroundColor: const Color.fromARGB(255, 4, 81, 119),
          // actions contient les widgets affiches a droite dans l'AppBar.
          actions: const [
            // Icon affiche une icone Material.
            Icon(Icons.home, color: Colors.amber),
            // Padding ajoute un espace autour d'un widget.
            Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
            Icon(Icons.account_circle, color: Colors.green),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
            Icon(Icons.settings, color: Colors.amber),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
          ],
        ),

        // body represente le contenu principal de l'ecran.
        body: SafeArea(
          // SafeArea evite que le contenu passe sous les zones systeme.
          child: Center(
            // Center centre son widget enfant au milieu de l'ecran.
            child: Column(
              // Column aligne ses enfants verticalement.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // CircleAvatar affiche une image ou un contenu dans un cercle.
                CircleAvatar(
                  // radius definit la taille du cercle.
                  radius: 50,
                  // backgroundImage charge l'image de profil depuis les assets.
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
                // SizedBox ajoute un espace vertical fixe.
                SizedBox(height: 20),
                // Text affiche le nom du profil.
                Text(
                  'Zaouali Chems Eddine',
                  // TextStyle personnalise la taille et l'epaisseur du texte.
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                // Text affiche le metier ou le role.
                Text(
                  'Fullstack Developer',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
                SizedBox(height: 20),
                // ElevatedButton affiche un bouton Material avec relief.
                ElevatedButton(
                  // onPressed contient l'action executee au clic.
                  onPressed: () {
                    // Action for contact button
                  },
                  // child definit le contenu interne du bouton.
                  child: Text('Contact Me'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
