# Message accueil

Write-Host "Bienvenue chez l'entrepise du téléassistance"

# Demande à l'user quel service il souhaite 3. utiliser pour la téléassistance (TightVNC ou Bureau à Distance)

Write-Host "1: TightVNC"
Write-Host "2: Connexion a distance"

$choix=Read-Host "Veuillez entrer le numéro de votre choix"


# Lance l'application demandé par l'user

# $num_ip=Read-Host "Veuillez entrer l'IP de votre choix"

# En se connectant directement au serveur

switch ($choix) {
    1 {
        Write-Host "Lancement de TightVNC"
        $cheminTightVNC = "C:\Program Files\TightVNC\tvnviewer.exe"
        Start-Process $cheminTightVNC
    }
    2 {
        Write-Host "Lancement de connexion a distance"
        $start_cad = "mstsc"
        Start-Process $start_cad
    }
}
