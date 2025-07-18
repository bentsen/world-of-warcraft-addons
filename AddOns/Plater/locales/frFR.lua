do
    local addonId = ...
    local languageTable = DetailsFramework.Language.RegisterLanguage(addonId, "frFR")
    local L = languageTable

------------------------------------------------------------
L["A /reload may be required to take effect."] = "Un /reload peut être nécessaire pour prendre effet."
L["CVar, saved within Plater profile and restored when loading the profile."] = "CVar, sauvegardée dans le profil Plater et restaurée lors du chargement du profil."
L["EXPORT"] = "Exporter"
L["EXPORT_CAST_COLORS"] = "Partager des couleurs"
L["EXPORT_CAST_SOUNDS"] = "Partager des sons"
L["HIGHLIGHT_HOVEROVER"] = "Survoler le surlignage"
L["HIGHLIGHT_HOVEROVER_ALPHA"] = "Alpha du surlignage au survol"
L["HIGHLIGHT_HOVEROVER_DESC"] = "Effet de surlignage lorsque la souris est sur la plaque de nom."
L["Hold Shift to change the sound of all casts with the audio %s to %s"] = "Maintenez Maj pour changer le son de tous les lancements avec l’audio %s en %s"
L["IMPORT"] = "Importer"
L["IMPORT_CAST_COLORS"] = "Importer des couleurs"
L["IMPORT_CAST_SOUNDS"] = "Importer des sons"
L["OPTIONS_ALPHA"] = "Alpha"
L["OPTIONS_ALPHABYFRAME_ALPHAMULTIPLIER"] = "Multiplicateur de transparence."
L["OPTIONS_ALPHABYFRAME_DEFAULT"] = "Transparence par défaut"
L["OPTIONS_ALPHABYFRAME_DEFAULT_DESC"] = "Montant de transparence appliqué à tous les composants d'une seule plaque de nom."
L["OPTIONS_ALPHABYFRAME_ENABLE_ENEMIES"] = "Activer pour les ennemis"
L["OPTIONS_ALPHABYFRAME_ENABLE_ENEMIES_DESC"] = "Applique les paramètres de transparence aux unités ennemies."
L["OPTIONS_ALPHABYFRAME_ENABLE_FRIENDLY"] = "Activer pour les amis"
L["OPTIONS_ALPHABYFRAME_ENABLE_FRIENDLY_DESC"] = "Applique les paramètres de transparence aux unités alliées."
L["OPTIONS_ALPHABYFRAME_TARGET_INRANGE"] = "Alpha de la cible / à portée"
L["OPTIONS_ALPHABYFRAME_TARGET_INRANGE_DESC"] = "Transparence pour les cibles ou les unités à portée."
L["OPTIONS_ALPHABYFRAME_TITLE_ENEMIES"] = "Montant de transparence par image (ennemis)"
L["OPTIONS_ALPHABYFRAME_TITLE_FRIENDLY"] = "Montant de transparence par image (alliés)"
L["OPTIONS_AMOUNT"] = "Montant"
L["OPTIONS_ANCHOR"] = "Ancre"
L["OPTIONS_ANCHOR_BOTTOM"] = "Bas"
L["OPTIONS_ANCHOR_BOTTOMLEFT"] = "En bas à gauche"
L["OPTIONS_ANCHOR_BOTTOMRIGHT"] = "En bas à droite"
L["OPTIONS_ANCHOR_CENTER"] = "Centre"
L["OPTIONS_ANCHOR_INNERBOTTOM"] = "Bas intérieur"
L["OPTIONS_ANCHOR_INNERLEFT"] = "Intérieur gauche"
L["OPTIONS_ANCHOR_INNERRIGHT"] = "Intérieur droit"
L["OPTIONS_ANCHOR_INNERTOP"] = "Haut intérieur"
L["OPTIONS_ANCHOR_LEFT"] = "A gauche"
L["OPTIONS_ANCHOR_RIGHT"] = "A droite"
L["OPTIONS_ANCHOR_TARGET_SIDE"] = "De quel côté ce widget est-il attaché"
L["OPTIONS_ANCHOR_TOP"] = "Haut"
L["OPTIONS_ANCHOR_TOPLEFT"] = "En haut à gauche"
L["OPTIONS_ANCHOR_TOPRIGHT"] = "En haut à droite"
L["OPTIONS_AUDIOCUE_COOLDOWN"] = "Temps de recharge audio"
L["OPTIONS_AUDIOCUE_COOLDOWN_DESC"] = "Durée en millisecondes à attendre avant de rejouer le MÊME audio. Cela empêche les sons forts de se produire lorsque deux ou plusieurs actions sont en cours simultanément. Réglez sur 0 pour désactiver cette fonctionnalité."
L["OPTIONS_AURA_DEBUFF_HEIGHT"] = "Hauteur de l'icône de l'affaiblissement"
L["OPTIONS_AURA_DEBUFF_WITH"] = "Largeur de l'icône de l'affaiblissement."
L["OPTIONS_AURA_HEIGHT"] = "Hauteur de l'icône de l'affaiblissement"
L["OPTIONS_AURA_SHOW_BUFFS"] = "Afficher les buffs"
L["OPTIONS_AURA_SHOW_BUFFS_DESC"] = "Affiche les buffs sur vous dans la barre personnelle."
L["OPTIONS_AURA_SHOW_DEBUFFS"] = "Afficher les affaiblissements"
L["OPTIONS_AURA_SHOW_DEBUFFS_DESC"] = "Affiche les affaiblissements sur vous dans la barre personnelle."
L["OPTIONS_AURA_WIDTH"] = "Largeur de l'icône de l'affaiblissement"
L["OPTIONS_AURAS_ENABLETEST"] = "Activez cette option pour cacher les auras de test affichées lors de la configuration."
L["OPTIONS_AURAS_SORT"] = "Trier les auras"
L["OPTIONS_AURAS_SORT_DESC"] = "Les auras sont triées par temps restant (par défaut)."
L["OPTIONS_BACKGROUND_ALWAYSSHOW"] = "Toujours afficher l'arrière-plan"
L["OPTIONS_BACKGROUND_ALWAYSSHOW_DESC"] = "Activez un arrière-plan affichant la zone cliquable."
L["OPTIONS_BORDER_COLOR"] = "Couleur de la bordure"
L["OPTIONS_BORDER_THICKNESS"] = "Épaisseur de la bordure"
L["OPTIONS_BUFFFRAMES"] = "Cadres de buff"
L["OPTIONS_CANCEL"] = "Annuler"
L["OPTIONS_CAST_COLOR_CHANNELING"] = "Canalisé"
L["OPTIONS_CAST_COLOR_INTERRUPTED"] = "Interrompu"
L["OPTIONS_CAST_COLOR_REGULAR"] = "Normal"
L["OPTIONS_CAST_COLOR_SUCCESS"] = "Succès"
L["OPTIONS_CAST_COLOR_UNINTERRUPTIBLE"] = "Ininterrompu"
L["OPTIONS_CAST_SHOW_TARGETNAME"] = "Afficher le nom de la cible"
L["OPTIONS_CAST_SHOW_TARGETNAME_DESC"] = "Affiche qui est la cible de l'incantation actuelle (si la cible existe)"
L["OPTIONS_CAST_SHOW_TARGETNAME_TANK"] = "[Tank] Ne montrez pas votre nom"
L["OPTIONS_CAST_SHOW_TARGETNAME_TANK_DESC"] = "Si vous êtes un tank, ne montrez pas le nom de la cible si l'incantation est sur vous."
L["OPTIONS_CASTBAR_APPEARANCE"] = "Apparence de la barre d'incantation"
L["OPTIONS_CASTBAR_BLIZZCASTBAR"] = "Barre d'incantation de Blizzard"
L["OPTIONS_CASTBAR_COLORS"] = "Couleurs de la barre d'incantation"
L["OPTIONS_CASTBAR_FADE_ANIM_ENABLED"] = "Activer les animations de fondu"
L["OPTIONS_CASTBAR_FADE_ANIM_ENABLED_DESC"] = "Activez les animations de fondu lorsque l'incantation commence et s'arrête."
L["OPTIONS_CASTBAR_FADE_ANIM_TIME_END"] = "À l'arrêt"
L["OPTIONS_CASTBAR_FADE_ANIM_TIME_END_DESC"] = "Lorsque l'incantation se termine, c'est la durée que met la barre d'incantation pour passer de 100 % de transparence à une invisibilité totale."
L["OPTIONS_CASTBAR_FADE_ANIM_TIME_START"] = "Au démarrage"
L["OPTIONS_CASTBAR_FADE_ANIM_TIME_START_DESC"] = "Lorsque l'incantation commence, c'est le temps que la barre d'incantation met pour passer de la transparence totale à l'opacité complète."
L["OPTIONS_CASTBAR_HEIGHT"] = "Hauteur de la barre d'incantation."
L["OPTIONS_CASTBAR_HIDE_ENEMY"] = "Cacher la barre d'incantation ennemie"
L["OPTIONS_CASTBAR_HIDE_FRIENDLY"] = "Cacher la barre d'incantation amie"
L["OPTIONS_CASTBAR_HIDEBLIZZARD"] = "Cacher la barre d'incantation du joueur Blizzard"
L["OPTIONS_CASTBAR_ICON_CUSTOM_ENABLE"] = "Activer la personnalisation des icônes"
L["OPTIONS_CASTBAR_ICON_CUSTOM_ENABLE_DESC"] = "Si cette option est désactivée, Plater ne modifiera pas l'icône du sort, laissant cela aux scripts."
L["OPTIONS_CASTBAR_NO_SPELLNAME_LIMIT"] = "Pas de limitation de longueur pour le nom du sort"
L["OPTIONS_CASTBAR_NO_SPELLNAME_LIMIT_DESC"] = "Le texte du nom du sort ne sera pas coupé pour s'adapter à la largeur de la barre d'incantation."
L["OPTIONS_CASTBAR_QUICKHIDE"] = "Cacher rapidement la barre d'incantation"
L["OPTIONS_CASTBAR_QUICKHIDE_DESC"] = "Après que l'incantation soit terminée, cacher immédiatement la barre d'incantation."
L["OPTIONS_CASTBAR_SPARK_HALF"] = "Demi-étincelle"
L["OPTIONS_CASTBAR_SPARK_HALF_DESC"] = "Affiche seulement la moitié de la texture de l'étincelle."
L["OPTIONS_CASTBAR_SPARK_HIDE_INTERRUPT"] = "Cacher l'étincelle lors d'une interruption."
L["OPTIONS_CASTBAR_SPARK_SETTINGS"] = "Paramètres de l'étincelle"
L["OPTIONS_CASTBAR_SPELLICON"] = "Icône de sort"
L["OPTIONS_CASTBAR_TOGGLE_TEST"] = "Activer/désactiver le test de la barre d'incantation"
L["OPTIONS_CASTBAR_TOGGLE_TEST_DESC"] = "Commencez le test de la barre d'incantation, appuyez à nouveau pour arrêter."
L["OPTIONS_CASTBAR_WIDTH"] = "Largeur de la barre d'incantation."
L["OPTIONS_CASTCOLORS_DISABLE_SOUNDS"] = "Supprimer tous les sons"
L["OPTIONS_CASTCOLORS_DISABLE_SOUNDS_CONFIRM"] = "Êtes-vous sûr de vouloir supprimer tous les sons de lancement configurés ?"
L["OPTIONS_CASTCOLORS_DISABLECOLORS"] = "Désactiver toutes les couleurs"
L["OPTIONS_CASTCOLORS_DISABLECOLORS_CONFIRM"] = "Confirmer la désactivation de toutes les couleurs de lancement ?"
L["OPTIONS_CLICK_SPACE_HEIGHT"] = "La hauteur de la zone qui accepte les clics de souris pour sélectionner la cible"
L["OPTIONS_CLICK_SPACE_WIDTH"] = "La largeur de la zone qui accepte les clics de souris pour sélectionner la cible"
L["OPTIONS_COLOR"] = "Couleur"
L["OPTIONS_COLOR_BACKGROUND"] = "Couleur de fond"
L["OPTIONS_CVAR_ENABLE_PERSONAL_BAR"] = "Barres de vie et de mana personnelles|cFFFF7700*|r"
L["OPTIONS_CVAR_ENABLE_PERSONAL_BAR_DESC"] = "Affiche de mini barres de vie et de mana sous votre personnage. |cFFFF7700[*]|r |cFFa0a0a0CVar, enregistré dans le profil Plater et restauré lors du chargement du profil.|r"
L["OPTIONS_CVAR_NAMEPLATES_ALWAYSSHOW"] = "Toujours afficher les plaques de nom|cFFFF7700*|r"
L["OPTIONS_CVAR_NAMEPLATES_ALWAYSSHOW_DESC"] = "Affiche les plaques de nom pour toutes les unités près de vous. Si désactivé, n'afficher que les unités pertinentes lorsque vous êtes en combat. |cFFFF7700[*]|r |cFFa0a0a0CVar, enregistré dans le profil Plater et restauré lors du chargement du profil.|r"
L["OPTIONS_ENABLED"] = "Activée"
L["OPTIONS_ERROR_CVARMODIFY"] = "les Cvars ne peuvent pas être changés en combat."
L["OPTIONS_ERROR_EXPORTSTRINGERROR"] = "erreur des chaines exportées"
L["OPTIONS_EXECUTERANGE"] = "Portée d'exécution"
L["OPTIONS_EXECUTERANGE_DESC"] = "Affiche un indicateur lorsque l'unité cible est dans la portée d'exécution. Si la détection ne fonctionne pas après un patch, communiquez sur Discord."
L["OPTIONS_EXECUTERANGE_HIGH_HEALTH"] = "Portée d'exécution (soin élevé)"
L["OPTIONS_EXECUTERANGE_HIGH_HEALTH_DESC"] = "Affiche l'indicateur d'exécution pour la partie élevée de la vie. Si la détection ne fonctionne pas après un correctif, communiquez sur Discord."
L["OPTIONS_FONT"] = "Police de caractère"
L["OPTIONS_FORMAT_NUMBER"] = "Format de nombre"
L["OPTIONS_FRIENDLY"] = "Amical"
L["OPTIONS_GENERALSETTINGS_HEALTHBAR_ANCHOR_TITLE"] = "Apparence de la barre de santé"
L["OPTIONS_GENERALSETTINGS_HEALTHBAR_BGCOLOR"] = "Barre de Santé Couleur de Fond et Alpha"
L["OPTIONS_GENERALSETTINGS_HEALTHBAR_BGTEXTURE"] = "Texture de fond de la barre de santé"
L["OPTIONS_GENERALSETTINGS_HEALTHBAR_TEXTURE"] = "Texture de barre de santé"
L["OPTIONS_GENERALSETTINGS_TRANSPARENCY_ANCHOR_TITLE"] = "La transparence est utilisée pour"
L["OPTIONS_GENERALSETTINGS_TRANSPARENCY_RANGECHECK"] = "Vérification de la portée."
L["OPTIONS_GENERALSETTINGS_TRANSPARENCY_RANGECHECK_ALPHA"] = "Gamme de Transparence"
L["OPTIONS_GENERALSETTINGS_TRANSPARENCY_RANGECHECK_SPEC_DESC"] = "Sort vérifiant la distance avec cette spécialisation."
L["OPTIONS_HEALTHBAR"] = "Barre de vie"
L["OPTIONS_HEALTHBAR_HEIGHT"] = "Hauteur de la barre de vie"
L["OPTIONS_HEALTHBAR_SIZE_GLOBAL_DESC"] = "Changez la taille des plaques de nom des ennemis et des alliés pour les joueurs et les PNJs en combat et hors combat. Chacune de ces options peut être modifiée individuellement dans les onglets PNJ ennemi et joueur ennemi."
L["OPTIONS_HEALTHBAR_WIDTH"] = "Largeur de la barre de vie"
L["OPTIONS_HEIGHT"] = "Hauteur"
L["OPTIONS_HOSTILE"] = "Hostile"
L["OPTIONS_ICON_ELITE"] = "Icône d'élite"
L["OPTIONS_ICON_ENEMYCLASS"] = "Icône de classe ennemie"
L["OPTIONS_ICON_ENEMYFACTION"] = "Icône de faction ennemie"
L["OPTIONS_ICON_ENEMYSPEC"] = "Icône de spécialisation ennemie"
L["OPTIONS_ICON_FRIENDLY_SPEC"] = "Icône de spécialisation alliée"
L["OPTIONS_ICON_FRIENDLYCLASS"] = "Classe alliée"
L["OPTIONS_ICON_FRIENDLYFACTION"] = "Icône de faction alliée"
L["OPTIONS_ICON_PET"] = "Icône de mascotte"
L["OPTIONS_ICON_QUEST"] = "Icône de quête"
L["OPTIONS_ICON_RARE"] = "Icône rare"
L["OPTIONS_ICON_SHOW"] = "Afficher l'icône"
L["OPTIONS_ICON_SIDE"] = "Afficher le côté"
L["OPTIONS_ICON_SIZE"] = "Afficher la taille"
L["OPTIONS_ICON_WORLDBOSS"] = "Icône de Boss du monde"
L["OPTIONS_ICONROWSPACING"] = "Espacement des icônes en ligne"
L["OPTIONS_ICONSPACING"] = "Espacement des icônes"
L["OPTIONS_INDICATORS"] = "Indicateurs"
L["OPTIONS_INTERACT_OBJECT_NAME_COLOR"] = "Couleur du nom de l’objet du jeu"
L["OPTIONS_INTERACT_OBJECT_NAME_COLOR_DESC"] = "Les noms des objets auront cette couleur."
L["OPTIONS_INTERRUPT_FILLBAR"] = "Remplir la barre d'incantation lors d'une interruption"
L["OPTIONS_INTERRUPT_SHOW_ANIM"] = "Jouer l'animation d'interruption"
L["OPTIONS_INTERRUPT_SHOW_AUTHOR"] = "Afficher l'auteur de l'interruption"
L["OPTIONS_MINOR_SCALE_DESC"] = [=[Ajuste légèrement la taille des plaques de nom lors de l'affichage d'une unité mineure (ces unités ont une plaque de nom plus petite par défaut).
]=]
L["OPTIONS_MINOR_SCALE_HEIGHT"] = "Échelle de hauteur des unités mineures"
L["OPTIONS_MINOR_SCALE_WIDTH"] = "Échelle de largeur des unités mineures"
L["OPTIONS_MOVE_HORIZONTAL"] = "Déplacer horizontalement"
L["OPTIONS_MOVE_VERTICAL"] = "Déplacer verticalement"
L["OPTIONS_NAMEPLATE_HIDE_FRIENDLY_HEALTH"] = "Cacher les barres de vie de Blizzard|cFFFF7700*|r"
L["OPTIONS_NAMEPLATE_HIDE_FRIENDLY_HEALTH_DESC"] = "Lors des donjons ou des raids, si les plaques de nom alliées sont activées, seules les plaques de nom des joueurs seront affichées. Si un module Plater est désactivé, cela affectera également ces plaques de nom.  |cFFFF7700[*]|r |cFFa0a0a0CVar, enregistré dans le profil Plater et restauré lors du chargement du profil.|r |cFFFF2200[*]|r |cFFa0a0a0A /reload peut être nécessaire pour prendre effet.|r"
L["OPTIONS_NAMEPLATE_OFFSET"] = "Ajuster légèrement l'ensemble de la plaque de nom."
L["OPTIONS_NAMEPLATE_SHOW_ENEMY"] = "Afficher les plaques de nom ennemies|cFFFF7700*|r"
L["OPTIONS_NAMEPLATE_SHOW_ENEMY_DESC"] = "Affiche la plaque de nom pour les unités ennemies et neutres. |cFFFF7700[*]|r |cFFa0a0a0CVar, enregistré dans le profil Plater et restauré lors du chargement du profil.|r"
L["OPTIONS_NAMEPLATE_SHOW_FRIENDLY"] = "Afficher les plaques de nom alliées|cFFFF7700*|r"
L["OPTIONS_NAMEPLATE_SHOW_FRIENDLY_DESC"] = [=[Affiche la plaque de nom pour les joueurs alliés. |cFFFF7700[*]|r |cFFa0a0a0CVar, enregistré dans le profil Plater et restauré lors du chargement du profil.|r
]=]
L["OPTIONS_NAMEPLATES_OVERLAP"] = "Chevauchement des plaques de nom (V) |cFFFF7700*|r"
L["OPTIONS_NAMEPLATES_OVERLAP_DESC"] = "L'espace entre chaque plaque de nom verticalement lorsque l'empilement est activé. |cFFFFFFFFPar défaut : 1.10|r |cFFFF7700[*]|r |cFFa0a0a0CVar, enregistré dans le profil Plater et restauré lors du chargement du profil.|r |cFFFFFF00Important |r : si vous rencontrez des problèmes avec ce paramètre, utilisez : |cFFFFFFFF/run SetCVar ('nameplateOverlapV', '1.6')|r"
L["OPTIONS_NAMEPLATES_STACKING"] = "Plaques de nom empilées|cFFFF7700*|r"
L["OPTIONS_NAMEPLATES_STACKING_DESC"] = "Si activé, les plaques de nom ne se chevaucheront pas. |cFFFF7700[*]|r |cFFa0a0a0CVar, enregistré dans le profil Plater et restauré lors du chargement du profil.|r |cFFFFFF00Important |r : pour définir la quantité d'espace entre chaque plaque de nom, consultez l'option '|cFFFFFFFFEspacement vertical des plaques de nom|r' ci-dessous. Veuillez vérifier les paramètres de l'onglet Auto pour configurer le basculement automatique de cette option."
L["OPTIONS_NEUTRAL"] = "Neutre"
L["OPTIONS_NOCOMBATALPHA_AMOUNT_DESC"] = "Montant de transparence pour l'« Alpha hors combat »."
L["OPTIONS_NOCOMBATALPHA_ENABLED"] = "Utiliser l'alpha en dehors du combat"
L["OPTIONS_NOCOMBATALPHA_ENABLED_DESC"] = "Modifie l'alpha de la plaque de nom lorsque vous êtes en combat et que l'unité ne l'est pas. |cFFFFFF00 Important |r : Si l'unité n'est pas en combat, cela remplace l'alpha de la vérification de portée."
L["OPTIONS_NOESSENTIAL_DESC"] = "Lors de la mise à jour de Plater, il est courant que la nouvelle version mette également à jour les scripts de l'onglet des scripts. Cela peut parfois écraser les modifications apportées par le créateur du profil. L'option ci-dessous empêche Plater de modifier les scripts lorsque l'addon reçoit une mise à jour. Remarque : lors de mises à jour majeures et de corrections de bogues, Plater peut tout de même mettre à jour les scripts."
L["OPTIONS_NOESSENTIAL_NAME"] = "Désactiver les mises à jour de scripts non essentielles lors des mises à jour de version de Plater."
L["OPTIONS_NOESSENTIAL_SKIP_ALERT"] = "Mise à jour non essentielle ignorée :"
L["OPTIONS_NOESSENTIAL_TITLE"] = "Ignorer les mises à jour de scripts non essentielles"
L["OPTIONS_NOTHING_TO_EXPORT"] = "Il n'y a rien à exporter."
L["OPTIONS_OKAY"] = "OK"
L["OPTIONS_OUTLINE"] = "Contour"
L["OPTIONS_PERSONAL_HEALTHBAR_HEIGHT"] = "Hauteur de la barre de vie."
L["OPTIONS_PERSONAL_HEALTHBAR_WIDTH"] = "Largeur de la barre de vie."
L["OPTIONS_PERSONAL_SHOW_HEALTHBAR"] = "Afficher la barre de vie"
L["OPTIONS_PET_SCALE_DESC"] = "Ajuste légèrement la taille des plaques de nom lors de l'affichage d'une mascotte."
L["OPTIONS_PET_SCALE_HEIGHT"] = "Échelle de hauteur de la mascotte"
L["OPTIONS_PET_SCALE_WIDTH"] = "Échelle de largeur de la mascotte"
L["OPTIONS_PLEASEWAIT"] = "Cela peut ne prendra que quelques secondes"
L["OPTIONS_POWERBAR"] = "Barre de puissance"
L["OPTIONS_POWERBAR_HEIGHT"] = "Hauteur de la barre de puissance."
L["OPTIONS_POWERBAR_WIDTH"] = "Largeur de la barre de puissance."
L["OPTIONS_PROFILE_CONFIG_EXPORTINGTASK"] = "Plater exporte le profil actuel"
L["OPTIONS_PROFILE_CONFIG_EXPORTPROFILE"] = "Exporter le profil"
L["OPTIONS_PROFILE_CONFIG_IMPORTPROFILE"] = "Importer le profil"
L["OPTIONS_PROFILE_CONFIG_MOREPROFILES"] = "Obtenez plus de profils sur Wago.io"
L["OPTIONS_PROFILE_CONFIG_OPENSETTINGS"] = "Ouvrir les paramètres du profil"
L["OPTIONS_PROFILE_CONFIG_PROFILENAME"] = "Nouveau nom de profil"
L["OPTIONS_PROFILE_CONFIG_PROFILENAME_DESC"] = "Un nouveau profil est créé avec la chaîne importée. L'insertion du nom d'un profil déjà existant le remplacera."
L["OPTIONS_PROFILE_ERROR_PROFILENAME"] = "Nom de profil invalide"
L["OPTIONS_PROFILE_ERROR_STRINGINVALID"] = "Fichier de profil non valide."
L["OPTIONS_PROFILE_ERROR_WRONGTAB"] = "Fichier de profil non valide. Importez des scripts ou des mods dans l’onglet Script."
L["OPTIONS_PROFILE_IMPORT_OVERWRITE"] = "Le profil  '%s' existe déjà, l'écraser ?"
L["OPTIONS_RANGECHECK_NONE"] = "Rien"
L["OPTIONS_RANGECHECK_NONE_DESC"] = "Aucune modification d'alpha n'est appliquée."
L["OPTIONS_RANGECHECK_NOTMYTARGET"] = "Unités qui ne sont pas votre cible"
L["OPTIONS_RANGECHECK_NOTMYTARGET_DESC"] = "Lorsque la plaque de nom n'est pas votre cible actuelle, l'alpha est réduit."
L["OPTIONS_RANGECHECK_NOTMYTARGETOUTOFRANGE"] = "Hors de portée + n'est pas votre cible"
L["OPTIONS_RANGECHECK_NOTMYTARGETOUTOFRANGE_DESC"] = "Réduit l'alpha des unités qui ne sont pas votre cible. Réduit encore plus si l'unité est hors de portée."
L["OPTIONS_RANGECHECK_OUTOFRANGE"] = "Unités hors de votre portée"
L["OPTIONS_RANGECHECK_OUTOFRANGE_DESC"] = "Lorsque la plaque de nom est hors de portée, l'alpha est réduit."
L["OPTIONS_RESOURCES_TARGET"] = "Afficher les ressources sur la cible"
L["OPTIONS_RESOURCES_TARGET_DESC"] = "Affiche vos ressources, telles que les points de combo, au-dessus de votre cible actuelle. Utilise les ressources par défaut de Blizzard et désactive les propres ressources de Plater. Paramètre spécifique au personnage !"
L["OPTIONS_SCALE"] = "Échelle"
L["OPTIONS_SCRIPTING_ADDOPTION"] = "Sélectionnez l'option à ajouter"
L["OPTIONS_SCRIPTING_REAPPLY"] = "Réappliquer les valeurs par défaut"
L["OPTIONS_SETTINGS_COPIED"] = "réglages copiés."
L["OPTIONS_SETTINGS_FAIL_COPIED"] = "n'a pas réussi à obtenir les paramètres de l'onglet actuellement sélectionné."
L["OPTIONS_SHADOWCOLOR"] = "Couleur de l'ombre"
L["OPTIONS_SHIELD_BAR"] = "Barre de bouclier."
L["OPTIONS_SHOW_CASTBAR"] = "Afficher la barre d'incantation"
L["OPTIONS_SHOW_POWERBAR"] = "Afficher la barre de puissance"
L["OPTIONS_SHOWOPTIONS"] = "Afficher les options"
L["OPTIONS_SHOWSCRIPTS"] = "Afficher les scripts"
L["OPTIONS_SHOWTOOLTIP"] = "Afficher l'infobulle"
L["OPTIONS_SHOWTOOLTIP_DESC"] = "Affiche l'infobulle en survolant l'icône de l'aura."
L["OPTIONS_SIZE"] = "Taille"
L["OPTIONS_STACK_AURATIME"] = "Afficher le temps le plus court des auras empilées"
L["OPTIONS_STACK_AURATIME_DESC"] = [=[Affiche le temps le plus court des auras empilées ou le temps le plus long lorsque cette option est désactivée.
]=]
L["OPTIONS_STACK_SIMILAR_AURAS"] = "Empiler des auras similaires"
L["OPTIONS_STACK_SIMILAR_AURAS_DESC"] = "Les auras ayant le même nom (par exemple, le debuff d'affliction instable du démoniste) sont empilées ensemble."
L["OPTIONS_STATUSBAR_TEXT"] = "Vous pouvez désormais importer des profils, des mods, des scripts, des animations et des tables de couleurs à partir de |cFFFFAA00http://wago.io|r"
L["OPTIONS_TABNAME_ADVANCED"] = "Avancé"
L["OPTIONS_TABNAME_ANIMATIONS"] = "Animations"
L["OPTIONS_TABNAME_AUTO"] = "Auto"
L["OPTIONS_TABNAME_BUFF_LIST"] = "Liste des sorts"
L["OPTIONS_TABNAME_BUFF_SETTINGS"] = "Paramètres des buffs"
L["OPTIONS_TABNAME_BUFF_SPECIAL"] = "Buff spécial"
L["OPTIONS_TABNAME_BUFF_TRACKING"] = "Suivi des buffs"
L["OPTIONS_TABNAME_CASTBAR"] = "Barre d'incantation"
L["OPTIONS_TABNAME_CASTCOLORS"] = "Couleurs et noms d'incantations"
L["OPTIONS_TABNAME_COMBOPOINTS"] = "Points de combo"
L["OPTIONS_TABNAME_GENERALSETTINGS"] = "Réglages généraux"
L["OPTIONS_TABNAME_MODDING"] = "Modding"
L["OPTIONS_TABNAME_NPC_COLORNAME"] = "Couleurs et noms des PNJ"
L["OPTIONS_TABNAME_NPCENEMY"] = "Ennemi Npc"
L["OPTIONS_TABNAME_NPCFRIENDLY"] = "Pnj Amical"
L["OPTIONS_TABNAME_PERSONAL"] = "Barre personnelle"
L["OPTIONS_TABNAME_PLAYERENEMY"] = "Joueur ennemi"
L["OPTIONS_TABNAME_PLAYERFRIENDLY"] = "Joueur amical"
L["OPTIONS_TABNAME_PROFILES"] = [=[Profils
]=]
L["OPTIONS_TABNAME_SCRIPTING"] = "Scripting"
L["OPTIONS_TABNAME_SEARCH"] = "Recherche"
L["OPTIONS_TABNAME_STRATA"] = "Niveau & strate"
L["OPTIONS_TABNAME_TARGET"] = "Cible"
L["OPTIONS_TABNAME_THREAT"] = "Couleurs / Menace"
L["OPTIONS_TEXT_COLOR"] = "La couleur du texte."
L["OPTIONS_TEXT_FONT"] = "Police du texte"
L["OPTIONS_TEXT_SIZE"] = "Taille du texte"
L["OPTIONS_TEXTURE"] = "Texture"
L["OPTIONS_TEXTURE_BACKGROUND"] = "Texture d'arrière-plan"
L["OPTIONS_THREAT_AGGROSTATE_ANOTHERTANK"] = "Aggro sur un autre Tank"
L["OPTIONS_THREAT_AGGROSTATE_HIGHTHREAT"] = "Menace élevée"
L["OPTIONS_THREAT_AGGROSTATE_NOAGGRO"] = "Pas d'aggro"
L["OPTIONS_THREAT_AGGROSTATE_NOTANK"] = "Pas d'Aggro du Tank"
L["OPTIONS_THREAT_AGGROSTATE_NOTINCOMBAT"] = "Unité pas en combat"
L["OPTIONS_THREAT_AGGROSTATE_ONYOU_LOWAGGRO"] = "L'Aggro est sur vous mais il est faible"
L["OPTIONS_THREAT_AGGROSTATE_ONYOU_LOWAGGRO_DESC"] = "L'unité vous attaque mais d'autres sont sur le point de prendre l'aggro."
L["OPTIONS_THREAT_AGGROSTATE_ONYOU_SOLID"] = "L'Aggro est sur vous"
L["OPTIONS_THREAT_AGGROSTATE_TAPPED"] = "Unité engagée"
L["OPTIONS_THREAT_CLASSIC_USE_TANK_COLORS"] = "Utiliser les couleurs de menace du tank"
L["OPTIONS_THREAT_COLOR_DPS_ANCHOR_TITLE"] = "Couleur quand vous jouez en tant que DPS ou HEALER"
L["OPTIONS_THREAT_COLOR_DPS_HIGHTHREAT_DESC"] = "L'unité est sur le point de commencer à vous attaquer."
L["OPTIONS_THREAT_COLOR_DPS_NOAGGRO_DESC"] = "L'unité ne vous attaque pas."
L["OPTIONS_THREAT_COLOR_DPS_NOTANK_DESC"] = "L'unité ne vous attaque pas, vous ou un tank, et probablement un autre guérisseur ou dps de votre groupe."
L["OPTIONS_THREAT_COLOR_DPS_ONYOU_SOLID_DESC"] = "L'unité vous attaque."
L["OPTIONS_THREAT_COLOR_OVERRIDE_ANCHOR_TITLE"] = "Remplacer les couleurs par défaut."
L["OPTIONS_THREAT_COLOR_OVERRIDE_DESC"] = "Modifiez les couleurs par défaut définies par le jeu pour les unités neutres, hostiles et amicales. Pendant le combat, ces couleurs seront également remplacées si les couleurs de la menace sont autorisées à changer la couleur de la barre de vie."
L["OPTIONS_THREAT_COLOR_TANK_ANCHOR_TITLE"] = "Couleur lors de la lecture en tant que tank."
L["OPTIONS_THREAT_COLOR_TANK_ANOTHERTANK_DESC"] = "L'unité est en train d'être tankée par un autre tank de votre groupe"
L["OPTIONS_THREAT_COLOR_TANK_NOAGGRO_DESC"] = "L'unité n'a pas d'aggro sur vous."
L["OPTIONS_THREAT_COLOR_TANK_NOTINCOMBAT_DESC"] = "L'unité n'est pas en combat."
L["OPTIONS_THREAT_COLOR_TANK_ONYOU_SOLID_DESC"] = "L'unité vous attaque et vous avez un aggro solide."
L["OPTIONS_THREAT_COLOR_TAPPED_DESC"] = "Quand quelqu'un d'autre a revendiqué l'unité (lorsque vous ne recevez pas d'expérience ou de butin pour l'avoir tuée)."
L["OPTIONS_THREAT_DPS_CANCHECKNOTANK"] = "Vérifier si il n'y à pas d'Aggro du tank"
L["OPTIONS_THREAT_DPS_CANCHECKNOTANK_DESC"] = "Lorsque vous n'avez pas d'aggro comme soigneur ou dps, vérifiez si l'ennemi attaque une autre unité qui n'est pas un tank."
L["OPTIONS_THREAT_MODIFIERS_ANCHOR_TITLE"] = "La menace se modifie"
L["OPTIONS_THREAT_MODIFIERS_BORDERCOLOR"] = "Couleur de la bordure."
L["OPTIONS_THREAT_MODIFIERS_HEALTHBARCOLOR"] = "Couleur de la Barre de santé."
L["OPTIONS_THREAT_MODIFIERS_NAMECOLOR"] = "Nom de la couleur"
L["OPTIONS_THREAT_PULL_FROM_ANOTHER_TANK"] = "Attirer l'aggro d'un autre tank"
L["OPTIONS_THREAT_PULL_FROM_ANOTHER_TANK_TANK"] = "L'unité a l'aggro sur un autre tank et vous êtes sur le point de l'attirer."
L["OPTIONS_THREAT_USE_AGGRO_FLASH"] = "Activer le clignotement d'aggro"
L["OPTIONS_THREAT_USE_AGGRO_FLASH_DESC"] = "Active l'animation de clignotement -AGGRO- sur les plaques de nom lorsque vous obtenez l'aggro en tant que DPS."
L["OPTIONS_THREAT_USE_AGGRO_GLOW"] = "Activer l'illumination d'aggro"
L["OPTIONS_THREAT_USE_AGGRO_GLOW_DESC"] = "Active l'illumination de la barre de vie sur les plaques de nom lorsque vous obtenez l'aggro en tant que DPS ou que vous perdez l'aggro en tant que tank."
L["OPTIONS_THREAT_USE_SOLO_COLOR"] = "Couleur solo"
L["OPTIONS_THREAT_USE_SOLO_COLOR_DESC"] = "Utilisez la couleur 'Solo' lorsqu'il n'y a pas de groupe."
L["OPTIONS_THREAT_USE_SOLO_COLOR_ENABLE"] = "Utiliser la couleur 'Solo'"
L["OPTIONS_TOGGLE_TO_CHANGE"] = "|cFFFFFF00 Important |r : cachez et affichez les plaques de nom pour voir les changements."
L["OPTIONS_WIDTH"] = "Largeur"
L["OPTIONS_XOFFSET"] = "Décalage X"
L["OPTIONS_XOFFSET_DESC"] = "Ajuste la position sur l'axe X. *Cliquez avec le bouton droit pour saisir la valeur."
L["OPTIONS_YOFFSET"] = "Décalage Y"
L["OPTIONS_YOFFSET_DESC"] = "Ajuster la position sur l'axe Y. *Cliquez avec le bouton droit pour saisir la valeur."
L[ [=[Show nameplate for friendly npcs.

|cFFFFFF00 Important |r: This option is dependent on the client`s nameplate state (on/off).

|cFFFFFF00 Important |r: when disabled but enabled on the client through (%s), the healthbar isn't visible but the nameplate is still clickable.]=] ] = "Afficher la plaque de nom pour les PNJ amicaux. |cFFFFFF00 Important |r : Cette option dépend de l’état des plaques de nom du client (activé/désactivé). |cFFFFFF00 Important |r : lorsqu’elle est désactivée mais activée dans le client via (%s), la barre de vie n’est pas visible mais la plaque de nom reste cliquable."
L["TARGET_CVAR_ALWAYSONSCREEN"] = "Cible toujours à l'écran |cFFFF7700*|r"
L["TARGET_CVAR_ALWAYSONSCREEN_DESC"] = "Lorsqu'il est activé, la plaque de nom de votre cible est toujours affichée, même lorsque l'ennemi n'est pas à l'écran. |cFFFF7700[*]|r |cFFa0a0a0CVar, enregistré dans le profil Plater et restauré lors du chargement du profil.|r"
L["TARGET_CVAR_LOCKTOSCREEN"] = "Verrouiller à l'écran (côté supérieur)|cFFFF7700*|r"
L["TARGET_CVAR_LOCKTOSCREEN_DESC"] = "Espace minimum entre la plaque de nom et le haut de l'écran. Augmentez cela si une partie de la plaque de nom sort de l'écran. |cFFFFFFFFPar défaut : 0.065|r |cFFFFFF00 Important |r : si vous rencontrez des problèmes, définissez manuellement à l'aide de ces macros : /run SetCVar ('nameplateOtherTopInset', '0.065') /run SetCVar ('nameplateLargeTopInset', '0.065') |cFFFFFF00 Important |r : définir à 0 désactive cette fonctionnalité. |cFFFF7700[*]|r |cFFa0a0a0CVar, enregistré dans le profil Plater et restauré lors du chargement du profil.|r"
L["TARGET_HIGHLIGHT"] = "Surlignage de la cible"
L["TARGET_HIGHLIGHT_ALPHA"] = "Alpha du surlignage de la cible"
L["TARGET_HIGHLIGHT_COLOR"] = "Couleur du surlignage de la cible"
L["TARGET_HIGHLIGHT_DESC"] = "Effet de surlignage sur la plaque de nom de votre cible actuelle."
L["TARGET_HIGHLIGHT_SIZE"] = "Taille du surlignage de la cible"
L["TARGET_HIGHLIGHT_TEXTURE"] = "Texture de surlignage de la cible"
L["TARGET_OVERLAY_ALPHA"] = "Alpha de la superposition de la cible"
L["TARGET_OVERLAY_TEXTURE"] = "Texture de la superposition de la cible"
L["TARGET_OVERLAY_TEXTURE_DESC"] = "Utilisé au-dessus de la barre de vie lorsqu'il s'agit de la cible actuelle."

end