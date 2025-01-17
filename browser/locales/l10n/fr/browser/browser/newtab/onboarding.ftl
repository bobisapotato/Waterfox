# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


### UI strings for the simplified onboarding modal / about:welcome
### Various strings use a non-breaking space to avoid a single dangling /
### widowed word, so test on various window sizes if you also want this.


## These button action text can be split onto multiple lines, so use explicit
## newlines in translations to control where the line break appears (e.g., to
## avoid breaking quoted text).

onboarding-button-label-learn-more = En savoir plus
onboarding-button-label-get-started = Pour commencer

## Welcome modal dialog strings

onboarding-welcome-header = Bienvenue dans { -brand-short-name }
onboarding-welcome-body = Vous avez le navigateur.<br/>Découvrez les autres ressources de { -brand-product-name }.
onboarding-welcome-learn-more = Découvrir tous les avantages.
onboarding-welcome-modal-get-body = Vous avez le navigateur. <br/>Profitez maintenant au maximum de { -brand-product-name }.
onboarding-welcome-modal-supercharge-body = Boostez votre protection de la vie privée.
onboarding-welcome-modal-privacy-body = Vous avez le navigateur. Ajoutons davantage de protection de la vie privée.
onboarding-welcome-modal-family-learn-more = En savoir plus sur la famille de produits { -brand-product-name }.
onboarding-welcome-form-header = Commencez ici
onboarding-join-form-body = Saisissez votre adresse électronique pour vous lancer.
onboarding-join-form-email =
    .placeholder = Adresse électronique
onboarding-join-form-email-error = Adresse électronique valide requise
onboarding-join-form-legal = En continuant, vous acceptez nos <a data-l10n-name="terms">Conditions d’utilisation</a> et notre <a data-l10n-name="privacy">Politique de confidentialité</a>.
onboarding-join-form-continue = Continuer
# This message is followed by a link using onboarding-join-form-signin ("Sign In") as text.
onboarding-join-form-signin-label = Vous possédez déjà un compte ?
# Text for link to submit the sign in form
onboarding-join-form-signin = Connectez-vous
onboarding-start-browsing-button-label = Commencer la navigation
onboarding-cards-dismiss =
    .title = Retirer
    .aria-label = Retirer

## Multistage 3-screen onboarding flow strings (about:welcome pages)

# The <span data-l10n-name="zap"></span> in this string allows a "zap" underline style to be
# automatically added to the text inside it. { -brand-short-name } should stay inside the span.
onboarding-multistage-welcome-header = Bienvenue dans <span data-l10n-name="zap">{ -brand-short-name }</span>
onboarding-multistage-welcome-subtitle = Le navigateur rapide, sûr et privé soutenu par une organisation à but non lucratif.
onboarding-multistage-welcome-primary-button-label = Commencer la configuration
onboarding-multistage-welcome-secondary-button-label = Se connecter
onboarding-multistage-welcome-secondary-button-text = Vous avez déjà un compte ?
# The <span data-l10n-name="zap"></span> in this string allows a "zap" underline style to be
# automatically added to the text inside it. "more" should stay inside the span.
onboarding-multistage-import-header = Importez vos mots de passe, <br/>marque-pages et <span data-l10n-name="zap">bien plus</span>
onboarding-multistage-import-subtitle = Vous utilisiez un autre navigateur ? Vous pouvez facilement tout importer dans { -brand-short-name }.
onboarding-multistage-import-primary-button-label = Lancer l’importation
onboarding-multistage-import-secondary-button-label = Plus tard
# Info displayed in the footer of import settings screen during onboarding flow.
# This supports welcome screen showing top sites imported from the user's default browser.
onboarding-import-sites-disclaimer = Les sites listés ici ont été trouvés sur cet appareil. { -brand-short-name } n’enregistre ni ne synchronise les données d’autres navigateurs, sauf si vous choisissez de les importer.
# Aria-label to make the "steps" of multistage onboarding visible to screen readers.
# Variables:
#   $current (Int) - Number of the current page
#   $total (Int) - Total number of pages
onboarding-welcome-steps-indicator =
    .aria-label = Premiers pas : écran { $current } sur { $total }
# The <span data-l10n-name="zap"></span> in this string allows a "zap" underline style to be
# automatically added to the text inside it. "look" should stay inside the span.
onboarding-multistage-theme-header = Choisissez une <span data-l10n-name="zap">apparence</span>
onboarding-multistage-theme-subtitle = Personnalisez { -brand-short-name } avec un thème.
onboarding-multistage-theme-primary-button-label = Enregistrer le thème
onboarding-multistage-theme-secondary-button-label = Plus tard
# Automatic theme uses operating system color settings
onboarding-multistage-theme-label-automatic = Automatique
# System refers to the operating system
onboarding-multistage-theme-description-automatic = Utiliser le thème du système
onboarding-multistage-theme-label-light = Clair
onboarding-multistage-theme-label-dark = Sombre
# "Firefox Alpenglow" here is the name of the theme, and should be kept in English.
onboarding-multistage-theme-label-alpenglow = Waterfox Alpenglow

## Please make sure to split the content of the title attribute into lines whose
## width corresponds to about 40 Latin characters, to ensure that the tooltip
## doesn't become too long. Line breaks will be preserved when displaying the
## tooltip.

# Tooltip displayed on hover of automatic theme
onboarding-multistage-theme-tooltip-automatic =
    .title =
        Suivre l’apparence de votre système
        d’exploitation pour les boutons,
        les menus et les fenêtres.
    .aria-label = { onboarding-multistage-theme-tooltip-automatic.title }
# Tooltip displayed on hover of light theme
onboarding-multistage-theme-tooltip-light =
    .title =
        Utiliser un thème clair pour les boutons,
        les menus et les fenêtres.
    .aria-label = { onboarding-multistage-theme-tooltip-light.title }
# Tooltip displayed on hover of dark theme
onboarding-multistage-theme-tooltip-dark =
    .title =
        Utiliser un thème sombre pour les boutons,
        les menus et les fenêtres.
    .aria-label = { onboarding-multistage-theme-tooltip-dark.title }
# Tooltip displayed on hover of Alpenglow theme
onboarding-multistage-theme-tooltip-alpenglow =
    .title =
        Utiliser un thème coloré pour les boutons,
        les menus et les fenêtres.
    .aria-label = { onboarding-multistage-theme-tooltip-alpenglow.title }
# Tooltip displayed on hover of automatic theme
onboarding-multistage-theme-tooltip-automatic-2 =
    .title =
        Suivre l’apparence de votre système
        d’exploitation pour les boutons,
        les menus et les fenêtres.
# Input description for automatic theme
onboarding-multistage-theme-description-automatic-2 =
    .aria-description =
        Suivre l’apparence de votre système
        d’exploitation pour les boutons,
        les menus et les fenêtres.
# Tooltip displayed on hover of light theme
onboarding-multistage-theme-tooltip-light-2 =
    .title =
        Utiliser un thème clair pour les boutons,
        les menus et les fenêtres.
# Input description for light theme
onboarding-multistage-theme-description-light =
    .aria-description =
        Utiliser un thème clair pour les boutons,
        les menus et les fenêtres.
# Tooltip displayed on hover of dark theme
onboarding-multistage-theme-tooltip-dark-2 =
    .title =
        Utiliser un thème sombre pour les boutons,
        les menus et les fenêtres.
# Input description for dark theme
onboarding-multistage-theme-description-dark =
    .aria-description =
        Utiliser un thème sombre pour les boutons,
        les menus et les fenêtres.
# Tooltip displayed on hover of Alpenglow theme
onboarding-multistage-theme-tooltip-alpenglow-2 =
    .title =
        Utiliser un thème coloré pour les boutons,
        les menus et les fenêtres.
# Input description for Alpenglow theme
onboarding-multistage-theme-description-alpenglow =
    .aria-description =
        Utiliser un thème coloré pour les boutons,
        les menus et les fenêtres.

## Welcome full page string

onboarding-fullpage-welcome-subheader = Découvrons tout ce que vous pouvez faire.
onboarding-fullpage-form-email =
    .placeholder = Votre adresse électronique…

## Waterfox Sync modal dialog strings.

onboarding-sync-welcome-header = Emportez { -brand-product-name } avec vous
onboarding-sync-welcome-content = Accédez à vos marque-pages, votre historique, vos mots de passe et d’autres paramètres sur l’ensemble de vos appareils.
onboarding-sync-welcome-learn-more-link = En savoir plus sur les comptes Waterfox
onboarding-sync-form-input =
    .placeholder = Adresse électronique
onboarding-sync-form-continue-button = Continuer
onboarding-sync-form-skip-login-button = Ignorer cette étape

## This is part of the line "Enter your email to continue to Waterfox Sync"

onboarding-sync-form-header = Saisissez votre adresse électronique
onboarding-sync-form-sub-header = pour continuer avec { -sync-brand-name }.

## These are individual benefit messages shown with an image, title and
## description.

onboarding-benefit-products-text = Améliorez votre productivité grâce à un ensemble d’outils qui respectent votre vie privée sur tous vos appareils.
# "Personal Data Promise" is a concept that should be translated consistently
# across the product. It refers to a concept shown elsewhere to the user: "The
# Waterfox Personal Data Promise is the way we honor your data in everything we
# make and do. We take less data. We keep it safe. And we make sure that we are
# transparent about how we use it."
onboarding-benefit-privacy-text = Tout ce que nous faisons respecte notre « Garantie en matière de données personnelles » : collecter moins de données, les protéger, ne rien cacher.
onboarding-benefit-sync-title = { -sync-brand-short-name }
onboarding-benefit-sync-text = Emportez avec vous vos marque-pages, mots de passe, historique et bien d’autres éléments partout où vous utilisez { -brand-product-name }.
onboarding-benefit-monitor-title = { -monitor-brand-short-name }
onboarding-benefit-monitor-text = Recevez une alerte lorsque vos informations personnelles figurent dans une fuite de données connue.
onboarding-benefit-lockwise-title = { -lockwise-brand-short-name }
onboarding-benefit-lockwise-text = Gérez des mots de passe protégés et portables.

## These strings belong to the individual onboarding messages.


## Each message has a title and a description of what the browser feature is.
## Each message also has an associated button for the user to try the feature.
## The string for the button is found above, in the UI strings section

onboarding-tracking-protection-title2 = Protection contre le pistage
onboarding-tracking-protection-text2 = { -brand-short-name } empêche les sites web de vous pister pendant votre navigation, ce qui complique la tâche des publicités qui tentent de vous suivre sur le Web.
onboarding-tracking-protection-button2 = Principes de fonctionnement
onboarding-data-sync-title = Emportez vos paramètres avec vous
# "Sync" is short for synchronize.
onboarding-data-sync-text2 = Synchronisez marque-pages, mots de passe, etc., partout où vous utilisez { -brand-product-name }.
onboarding-data-sync-button2 = Se connecter à { -sync-brand-short-name }
onboarding-firefox-monitor-title = Suivez de près les fuites de données
onboarding-firefox-monitor-text2 = { -monitor-brand-name } vérifie si votre adresse électronique fait partie d’une fuite de données connue et vous alerte si elle apparaît dans une nouvelle fuite de données.
onboarding-firefox-monitor-button = S’abonner aux alertes
onboarding-browse-privately-title = Naviguez en toute confidentialité
onboarding-browse-privately-text = La navigation privée efface vos historiques de navigation et de recherches pour que les autres utilisateurs de votre ordinateur n’en sachent rien.
onboarding-browse-privately-button =
    Ouvrir une fenêtre de
    navigation privée
onboarding-firefox-send-title = Protégez les fichiers que vous partagez
onboarding-firefox-send-text2 = Envoyez vos fichiers sur { -send-brand-name } pour les partager avec un chiffrement de bout en bout et un lien qui expire automatiquement.
onboarding-firefox-send-button = Essayer { -send-brand-name }
onboarding-mobile-phone-title = Installez { -brand-product-name } sur votre téléphone
onboarding-mobile-phone-text = Téléchargez { -brand-product-name } pour iOS ou Android et synchronisez vos données entre vos appareils.
# "Mobile" is short for mobile/cellular phone, "Browser" is short for web
# browser.
onboarding-mobile-phone-button = Télécharger le navigateur mobile
onboarding-send-tabs-title = Envoyez-vous des onglets
# "Send Tabs" refers to "Send Tab to Device" feature that appears when opening a
# tab's context menu.
onboarding-send-tabs-text2 = Partagez facilement des pages entre vos divers appareils sans copier de liens ni quitter le navigateur.
onboarding-send-tabs-button =
    Commencer à utiliser
    « Envoyer l’onglet »
onboarding-pocket-anywhere-title = Lisez et écoutez, où que vous soyez
onboarding-pocket-anywhere-text2 = Enregistrez vos contenus préférés hors connexion avec l’application { -pocket-brand-name } pour les lire, regarder ou écouter quand bon vous semble.
onboarding-pocket-anywhere-button = Essayer { -pocket-brand-name }
onboarding-lockwise-strong-passwords-title = Créez et stockez des mots de passe robustes
onboarding-lockwise-strong-passwords-text = { -lockwise-brand-name } crée à la volée des mots de passe robustes et les enregistre tous en un seul endroit.
onboarding-lockwise-strong-passwords-button = Gérer vos identifiants
onboarding-facebook-container-title = Fixez les limites avec Facebook
onboarding-facebook-container-text2 = { -facebook-container-brand-name } conserve votre profil séparé de tout le reste. Il est ainsi plus difficile pour Facebook de vous cibler avec des publicités.
onboarding-facebook-container-button = Installer l’extension
onboarding-import-browser-settings-title = Importez vos marque-pages, mots de passe et plus encore
onboarding-import-browser-settings-text = Récupérez facilement vos sites et vos paramètres à partir de Chrome et commencez à naviguer immédiatement.
onboarding-import-browser-settings-button = Importer des données de Chrome
onboarding-personal-data-promise-title = Conçu pour protéger votre vie privé
onboarding-personal-data-promise-text = { -brand-product-name } traite vos données avec respect en en collectant moins, en les protégeant et en précisant clairement comment nous les utilisons.
onboarding-personal-data-promise-button = Lire notre engagement

## Message strings belonging to the Return to AMO flow

return-to-amo-sub-header = Parfait, vous disposez de { -brand-short-name }
# <icon></icon> will be replaced with the icon belonging to the extension
#
# Variables:
#   $addon-name (String) - Name of the add-on
return-to-amo-addon-header = À présent, installons <icon></icon><b>{ $addon-name }.</b>
return-to-amo-extension-button = Ajouter l’extension
return-to-amo-get-started-button = Démarrer avec { -brand-short-name }
