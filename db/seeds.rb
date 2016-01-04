squares = {
  {title: "Chance", description: "+1 à tout les jets du round."} => 6,
  {title: "Malchance", description: "-1 à tous les jets du tour."} => 6,
  {title: "Feu divin", description: "Un objet s'enflame magiquement autour du personnage, lui conférant un aventage."} => 2,
  {title: "2e Chance", description: "Si le jet échoue, 2e jet possible avec -5 points."} => 3,
  {title: "Carte du destin", description: "Vous tirez une carte du destin."} => 1,
  {title: "Echec prédestiné", description: "Le jet subit un malus de -10."} => 4,
  {title: "Ciel Beni", description: "Si le ciel est visible au dessus de votre tête, bonus de +4, sinon malus de -4."} => 4,
  {title: "Le prochain personnage ou créature à jouer aura un bonus de +1 durant tout un tour."} => 4,
  {title: "Tempête Chaotique", description: "Tous les feux à 32 mètres s'éteignent, même les feux magiques."} => 2,
  {title: "Main du Destin", description: "L'échec ou le succès de ce dès sera critique."} => 6,
  {title: "Mauvaise Aventure", description: "Archer, se tire dans le genoux et son déplacement se limite à 1,5m. Besoin de soins suivis 1 semaine."} => 3,
  {title: "Crôm", description: "Vous passez votre tour en vous arrêtant immédiatement. Le personnage ayant le plus de points de vies joue à votre place maintenant."} => 2,
  {title: "Ruby", description: "Sous votre botte, un petit ruby, ou une quelconque gemme d'une valeur de 5d100 po."} => 2,
  {title: "Lame déviée", description: "Si vous attaquiez à l'aide d'une arme de corps à corps, le coup touche la case à droite de celle que vous visiez."} => 2,
  {title: "Bénédiction", description: "Si vous avez prié votre dieu dans les 24 dernières heures, vous obtenez un bonus de +1 à tous vos jets pendant 3 rounds."} => 3,
  {title: "Profane", description: "Si vous avez un nombre impair de points de vies (en comptant les blessures), votre sort profane se retourne contre vous. Sinon, il subit une métamagie spontanée qui augmente le niveau effectif du sort de +8 pour les DD et le passage de la RM."} => 3,
  {title: "Dieu colérique", description: "Vous ne pouvez plus utiliser vos pouvoirs divins pendant 2d6 x 10 minutes."} => 2,
  {title: "Anarchie", description: "Pendant 1d3 rounds, toutes vos attaques ont 20% de chance de frapper l'allié le plus proche."} => 4,
  {title: "Ouverture", description: "Si vous combattez au corps à corps, vous obtenez un bonus de +4 à votre attaque, et votre arme double sa plage critique pour cette attaque."} => 3,
  {title: "Mauvaise Augure", description: "Vous obtenez un bonus temporaire de +8 points en charisme pendant 1d6 heures."} => 2,
  {title: "Feuille", description: "Tous les dès infigeant des dégats font automatiquement des 1."} => 2,
  {title: "Branchage", description: "Vous obtenez un malus de -20 en discretion pendant ce tour, mais aussi +20 en escalade."} => 2,
  {title: "Le diplomate", description: "Si vous attaquiez, l'attaque est annulée. Vous obtenez un bonus de +10 en diplomatie, bluff, et intimidation pendant 2 rounds."} => 4,
  {title: "Frénésie", description: "Vous devenez enragé. Vous gagnez +4 en Force, Dextérité, et Constitution pendant 2d6 rounds. Vous ne pouvez plus utiliser de sort ou compétences basées sur l'intelligence ou sagesse."} => 2,
  {title: "Coup d'oeil", description: "Vous gagnez +10 en perception pendant 1 round pour tout jet qui utilise la vision."} => 2,
}

nb_total = squares.values.inject(&:+)
all = (1..nb_total).to_a.shuffle

i = 1
squares.each do |data, nb_square|
  puts "#{i} ... #{i+nb_square-1} (#{nb_square})".ljust(15, " ") + "=> #{data[:title]}"
  (i...(i+nb_square)).each do |idx|
    position = all[idx]
    square = data.merge({position: position})
    Square.create(square)
  end
  i = i + nb_square
end
