import 'package:flutter/material.dart';
import 'package:web_portfolio/activities/activities_screen.dart';
import 'package:web_portfolio/activities/models/activity.dart';
import 'package:web_portfolio/overview/overview_screen.dart';
import 'package:web_portfolio/reflection/reflection_screen.dart';
import 'package:web_portfolio/selection/details/game_dev_screen.dart';
import 'package:web_portfolio/selection/details/game_jam_screen.dart';
import 'package:web_portfolio/selection/details/hackathon_screen.dart';
import 'package:web_portfolio/selection/selection_screen.dart';

class AppConstants {
  static const appTitle = 'Dennis Vermesen';
  static const footerText =
      'Copyright © 2023 Dennis Vermesen. All Rights Reserved';
  static Map<String, WidgetBuilder> routes = {
    'voorstelling': (BuildContext context) => const OverviewScreen(),
    'activiteiten': (BuildContext context) => const ActivitiesScreen(),
    'selectie': (BuildContext context) => const SelectionScreen(),
    'reflectie': (BuildContext context) => const ReflectionScreen(),
    'game-jam': (BuildContext context) => const GameJamScreen(),
    'game-dev': (BuildContext context) => const GameDevScreen(),
    'hackathon': (BuildContext context) => const HackathonScreen(),
  };

  static const gitHubProfileURL = 'https://github.com/DennisVermesenPXL';
  static const linkedInProfileURL = 'https://linkedin.com/in/dennisvermesen';
  static const eMail = 'mailto:dennisvermesen@gmail.com';
  static const googlePlayProfile =
      'https://play.google.com/store/apps/dev?id=6252932495764188003';
  static const flutterWebSiteURL = 'https://flutter.dev';

  static const overviewTitle = 'Voorstelling';
  static const overviewTextBlocks1 = [
    'Ik ben Dennis Vermesen, een laatstejaarsstudent toegepaste informatica. Ik ben 21 jaar en woon in Alken. Ik volg de richting toegepaste informatica op de hogeschool PXL in Hasselt en heb gekozen voor full stack applicatieontwikkeling als afstudeerrichting. Momenteel doe ik stage bij een klein bedrijf in Sint-Truiden genaamd IT Licious. Mijn stageopdracht bestaat uit 2 delen. Enerzijds werk ik aan de interne HR-applicatie van IT Licious en anderzijds krijg ik de kans om samen met een collega-stagiair een nieuwe mobiele applicatie te ontwikkelen voor Ondernemers voor een warm België.',
    'In mijn vrije tijd ben ik nog steeds een even grote IT-fanaticus als tijdens de schooluren. Ik hou me veel bezig met hardware, software en development en probeer hier ook veel over bij te leren. Mijn aanbevolen video’s op YouTube staan dan ook vol met video’s over pc-bouwers, devlogs en development tutorials. Een van mijn grootste hobby’s is game development. Ik hou ervan om zelf games te ontwikkelen en op een creatieve manier technieken en doelstellingen te bedenken om in mijn games toe te passen. Mijn games worden altijd ontwikkeld met de Unity game engine en de programmeertaal C#.',
    'In december 2021 heb ik de uitgebreide Thalento-test afgelegd om een beter beeld te geven van wat mijn profiel is. De resultaten van de test waren zeer realistisch en leunen zeer goed aan bij het beeld dat ik van mezelf heb. Volgens het resulterende rapport ben ik meewerkende teamspeler die zich sterk engageert binnen teamopdrachten zonder daarvoor zelf op de voorgrond te treden. Binnen het team zal ik nooit een overheersende rol opnemen maar in plaats daarvan vind ik onderlinge afstemmingen en overleg belangrijk om zo te zorgen dat het team goed is afgestemd en zo efficiënt mogelijk samenwerkt om een zo goed mogelijk resultaat te bekomen. Ook hou ik ervan om zelf de verantwoordelijkheid te nemen om zelfstandig deeltaken op te nemen en om actief tot de resultaten van het team bij te dragen.',
  ];
  static const overviewTextBlocks2 = [
    'Mijn grootste technische kwaliteiten liggen binnen mobile development, voornamelijk met het frontend framework Flutter, en game development met Unity en C#. Flutter is een vernieuwende hybride framework voor het ontwikkelen van mobile apps en zelfs web apps vanuit één codebase. Dit spreekt mij zeer hard aan en is een grote reden waarom ik me verder wil specialiseren in Flutter. Ik heb tijdens mijn stage al veel bijgeleerd over mobile development en Flutter en ben er ook achter gekomen dat ik dit heel graag doe. Ik zou dan ook graag werken als Flutter developer nadat ik ben afgestudeerd. Game development is voor mij eerder een hobby en ik heb niet de intentie om hier mijn dagelijkse job van te maken. Maar deze hobby heeft me wel al veel bijgeleerd dat zal het in de toekomst ongetwijfeld nog meer doen. Mijn games worden ontwikkeld met de programmeertaal C#. Hierdoor heb ik een aardige voorsprong met deze taal. Verder leer ik veel nieuwe strategieën en technieken bij tijdens het programmeren die overal toegepast kunnen worden en niet afhankelijk zijn van een bepaalde programmeertaal.',
    'Na het behalen van mijn diploma in juni 2023 ben ik van plan om te beginnen werken. Ik zou graag beginnen werken als Flutter developer of mobile developer in het algemeen. Ik zou hier graag mijn dagelijkse bezigheid van willen maken en mijn skills verder ontwikkelen in het werkveld. Aangezien ik al een goede band heb opgebouwd met mijn stagebedrijf IT Licious en zij sterk geloven in het Flutter framework is er wel een mogelijkheid dat ik hier aan de slag zou kunnen gaan. Anders zal ik zelf opzoek gaan naar een mooie job. Mijn eerste jaren als ontwikkelaar zou ik graag zoveel mogelijk willen bijleren om een ervaren ontwikkelaar te worden zodat ik later de verantwoordelijkheid krijg om zelf projecten te leiden of om als zelfstandige of freelancer te kunnen starten.',
  ];

  static const activitiesTitle = 'Alle activiteiten';
  static const activitiesIntro =
      'Dit is een overzicht van alle activiteiten uit mijn portfolio.';
  static const seminarsTitle = 'Seminaries';
  static const popTitle = 'Persoonlijke ontwikkeling';
  static const innovationTitle = 'Innovatie';
  static const engagementTitle = 'Student engagement';
  static const activityDetails = 'Bekijk details';

  static const selectionTitle = 'Selectie van activiteiten';
  static const selectionSubtitle =
      'Dit is een persoonlijke selectie van 3 activiteiten uit mijn portfolio. Dit zijn voor mezelf de meest belangrijke activiteiten uit mijn portfolio.';
  static List<Activity> selectedActivities = [
    innovationRoutes[2],
    engagements[0],
    innovationRoutes[1],
  ];

  static const reflectionTitle = 'Persoonlijke reflectie';
  static const reflectionTextBlocks = [
    'Na mijn middelbare school ben ik eerst de opleiding Industriële Ingenieurswetenschappen begonnen aan de Universiteit van Hasselt. Dit was een richting met veel verschillende vakken. Na het eerste semester ben ik erachter gekomen dat de meeste vakken me niet echt fascineerden, behalve de vakken Java en Python. Deze waren de enige vakken die ik echt boeiend vond dus heb ik na het eerste semester besloten om over te schakelen naar de richting Toegepaste Informatica aan de Hogeschool PXL in Hasselt. Ik voelde me onmiddellijk thuis in deze richting en ben heel dankbaar dat ik deze beslissing genomen heb.',
    'Na 3 jaar op de Hogeschool PXL gestudeerd te hebben, ben ik sterk gegroeid als persoon en heb ik mijn technische skills in de IT-wereld sterk ontwikkeld.  Ik ben de Hogeschool PXL dan ook enorm dankbaar dat ik mezelf heb kunnen ontwikkelen in deze 3 jaren boordevol interessante en leerrijke lessen, activiteiten en projecten. Dankzij PXL waren dit geen saaie jaren, maar heb ik me op een gevarieerde manier kunnen opwikkelen tot een volwaardig persoon die voldoet aan alle pijlers van de PXL X-factor. Ik heb mogen deelnemen aan toffe projecten zoals het IT-Project, leerrijke seminaries naar keuze en leuke evenementen zoals de PXL Hackathon. Vaak waren de projecten ook in (multidisciplinaire) groepen, waar de goede samenwerking tussen mede-juniorcollega’s een must was. Ik heb hier veel uit geleerd en weet nu meer dan ooit mijn weg te vinden binnen professionele teams.',
    'De hogeschool organiseerde ook jaarlijks het PXL-jobevent, waar ik met veel plezier gebruik van heb gemaakt om een netwerk te leggen binnen de IT-wereld. Dankzij dit jobevent ben ik in contact gekomen met IT Licious, het bedrijf waarbij ik in mijn laatste jaar stage heb gedaan en krijg al veel jobaanbiedingen, zelfs vóór ik afgestudeerd ben. Na deze beurs heb ik dan ook zelf het initiatief genomen om contact te op te nemen met IT Licious. Dit heeft er uiteindelijk ook voor gezorgd dat ik een stageplaats bij hen heb gekregen.',
    'Mijn hobby als game developer heeft het meeste meerwaarde voor de X-Factor pijlers. In de zomer van 2021 heb ik zelf het initiatief genomen om mijn kennis uit te breiden met een leuke maar ook leerrijke hobby. Ik ben gestart met het volgen van online YouTube-cursussen om me in deze nieuwe discipline te verdiepen. Deze hobby is later uitgegroeid tot een echte passie. Mijn vakantiedagen waren regelmatig volledig gevuld met het ontwikkelen van games. Wanneer ik een game aan het ontwikkelen ben, kan ik me volledig uitleven in mijn eigen creativiteit en wil ik steeds meer verwezenlijken en bijleren.',
    'Aangezien game development voornamelijk een hobby is die ik op mezelf uitvoer, is samenwerking tijdens mijn projecten hier niet rechtstreeks van toepassing. Toch is er wel enige vorm van internationale samenwerking aanwezig binnen de game development community. Deze is het sterkste aanwezig op Reddit waar ik samen met andere game developers vragen stel, beantwoordt en inspiratie kan opdoen door creaties te delen met elkaar. Op deze manier helpen game developers elkaar en motiveren en inspireren we elkaar. Samenwerking is ook naar boven gekomen tijdens de projecten in de opleiding, de stage en de hackathon. Tijdens de PXL Hackathon heb ik in een multidisciplinair team samengewerkt om op een korte tijd een werkend product af te leveren.',
    'Niet alleen mijn hobby als game developer heeft bijgedragen aan de PXL X-factor maar ook alle andere activiteiten in mijn portfolio. Alle seminaries, de hackathon, de game jam, … hebben allemaal bijgedragen tot de trotse IT-professional die ik me momenteel al voel. Het zijn allemaal bouwstenen die in mijn ontwikkeling hebben geholpen en daar ben ik zeer dankbaar voor.',
  ];
}
