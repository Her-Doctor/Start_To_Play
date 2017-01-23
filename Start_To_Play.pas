program Start_To_Play;

uses crt;

//ALGO Start To Play
//BUT 
{On désire savoir combien de personnes sont au Start To Play. La capacité de la salle est de 250
A chaque entrée on saisit le nombre de personnes arrivees, a chaque départ le nombre négatif (toute sortie est définitive).
Creer une alerte lorsque la salle est pleine et ne pas permettre de nouvelles entrees tant que la salle ne s’est pas vidée. }

//ENTREE  on donne le nombre d'entree / sorties
//SORTIE si supérieur a 250 alors impossible de donner des nombre positifs
{
	VAR
		nb,total,total1,quit,verif: ENTIER
	DEBUT
	total <- 0
	nb <- 0
		REPETER
		verif <- 0
			ECRIRE " entrez le nombre d'entree ( positif ) ou le nombre de sorties ( negatif)"
			LIRE nb 
			total1 <- total+nb
			SI total1 > 250 ALORS
				ECRIRE "Impossible , la start to play est complete"
				verif <- 1
				SINON SI total1 < 0 ALORS
					ECRIRE "Impossible , le nombre de personnes à l'interieur ne peut etre negatif !"
					verif <- 1
					SINON
						total <- total+nb
						ECRIRE "Il y a "&total&" personnes a l'interieur."
					FINSINON
				FINSINON
			FINSI
			ECRIRE "voulez vous continuez ? Si oui , entrez 666 , Sinon entrez un autre nombre."
			LIRE quit
		JUSQUA quit = 666 ET verif = 0
	FIN
}