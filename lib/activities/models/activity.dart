import 'package:flutter/material.dart';

class Activity {
  final Image image;
  final String title;
  final String description;
  final String? note;
  final String? location;
  final String date;
  final String? routeName;

  Activity.withNetworkImage({
    required String imageUrl,
    required this.title,
    required this.description,
    this.note,
    this.location,
    required this.date,
    this.routeName,
  }) : image = Image.network(
          imageUrl,
          fit: BoxFit.cover,
          height: 150,
          alignment: Alignment.center,
          errorBuilder: (context, error, stackTrace) => Image.asset(
            'images/macbook.png',
            fit: BoxFit.cover,
            height: 150,
          ),
        );

  Activity.withAssetImage({
    required String imageName,
    required this.title,
    required this.description,
    this.note,
    this.location,
    required this.date,
    this.routeName,
  }) : image = Image.asset(
          'images/$imageName',
          fit: BoxFit.cover,
          height: 150,
          alignment: Alignment.center,
        );
}

List<Activity> seminars = [
  Activity.withNetworkImage(
    imageUrl:
        'https://uynguyen.github.io/Post-Resources/CleanCode/CleanCode.jpg',
    title: 'Intracto  – Clean Coding',
    description:
        'Nadat Intracto  duidelijk heeft gemaakt waarom clean code belangrijk is, hebben ze ons enkele best practices aangeleerd om zelf clean code toe te passen.',
    date: '1 maart 2022, 13:30 - 17:00',
    location: 'Hogeschool PXL, G-blok',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'https://cdn-images-1.medium.com/max/1200/1*kyf1xX0FB032JbrWdUsZDg.png',
    title: 'Craftworkz – From idea to solution and basics UI/UX',
    description:
        'Een goede applicatie is altijd gebouwd rond een sterk idee. Tijdens dit seminarie werd er geleerd hoe je een sterk idee kunt uitwerken tot een goede userinterface en userexperience.',
    date: '29 maart 2022, 13:30 - 17:00',
    location: 'Hogeschool PXL, G-blok',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'https://positivethinking.tech/wp-content/uploads/2021/01/Logo-Vuejs.png',
    title: 'EASI – API-first web development using Laravel and Vue.JS',
    description:
        'Na een het aanleren van enkele best practices voor het maken van web apps heeft EASI ons zelf laten werken aan een klein projectje om onze kennis om te zetten in een echte website gemaakt met Vue.JS en Laravel. Deze website maakte gebruik van een open-source web-API.',
    date: '19 april 2022, 13:30 - 17:00',
    location: 'Hogeschool PXL, G-blok',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'data:image/png;base64,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',
    title: 'Wisemen – Interactive web apps with Vue',
    description:
        'Wisemen heeft ons laten zien hoe zij dagdagelijks interactive web apps ontwikkelen met het frontend framework VUE. Na deze intro werd er een gewerkt aan een interactieve opdracht waarbij er zelf enkele best practices dienden toegepast te worden op een demo-projectje in VUE.',
    date: '17 mei 2022, 13:30 - 17:00',
    location: 'Hogeschool PXL, G-blok',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'https://pbs.twimg.com/profile_images/1334863542353326082/BbfexsKP_400x400.jpg',
    title: 'Dataroots – Data/AI strategy',
    description:
        'Er werd een interessante uitleg gegeven over hoe de datamanagement en AI vandaag de dag gecombineerd worden door bekende bedrijven. Hierna werden er groepen gemaakt en kreeg elke groep de opdracht om zelf een use case uit te werken voor AI en datamanagementstrategieën in het dagelijks leven.',
    date: '26 oktober 2022, 13:30 - 16:00',
    location: 'Hogeschool PXL, B-blok',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'data:image/png;base64,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',
    title: 'Xplore Group – Flutter',
    description:
        'Tijdens dit interactieve seminarie werd er samen een simpele mobiele applicatie uitgewerkt met het frontend framework flutter. De nadruk lag op het aantonen dat dit framework in combinatie met de programmeertaal dart een zeer aangename developer experience biedt.',
    date: '9 november 2022, 13:30 - 16:30',
    location: 'Hogeschool PXL, B-blok',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'data:image/png;base64,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',
    title: 'ACA Group – Accessibility & UX: Building Mobile Apps for All',
    description:
        'ACA Group heeft uitgelegd hoe de user experience een van de belangrijkste aspecten is van een mobiele applicatie en waarom dit een groot verschil maakt. Er werden enkele belangrijke guidelines overlopen en best practices aangehaald om de user experience zo hoog mogelijk te houden.',
    date: '16 november 2022, 13:30 - 16:00',
    location: 'Hogeschool PXL, B-blok',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'https://uploads-ssl.webflow.com/60826a6444f402bae0fa94a8/608c17b5fa1945a892a2471f_konsolidate.png',
    title: 'Konsolidate – Solid',
    description:
        'Tijdens dit seminarie werd wat meer uitgelegd over de nieuwe technologie Solid en hoe deze technologie het beheer van persoonlijke data in de handen van de gebruiker wil leggen. Dit wordt verwezenlijkt door deze data op te slaan in persoonlijke datakluizen.',
    date: '7 december 2022, 13:30 - 17:30',
    location: 'Hogeschool PXL, B-blok',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'data:image/png;base64,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',
    title: 'Brainjar – ChatGPT and the future of IT',
    description:
        'Tijdens een presentatie over de nieuwe opkomende AI ChatGPT  werd er wat meer info gegeven over hoe deze AI werkt en wat zijn invloed zal zijn de IT-wereld in de toekomst.',
    date: '11 januari 2023, 13:30 - 17:00',
    location: 'Hogeschool PXL, B-blok',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'https://www2.deloitte.com/content/dam/Deloitte/global/Images/promo_images/gx-deloitte-logo-global.jpg',
    title: 'Webinar Deloitte – The Future of Gaming',
    description:
        'Een breed Webinar over de gaming sector in Europa en België zal evolueren en wat de impact ervan is.  Ook werden er opbrengsten besproken, trends bekeken en hoe de Metaverse deze sector zal beïnvloeden.',
    date: '24 november 2022, 19u30-20u30',
    note: 'Zelf aangebracht',
    location: 'Online, Microsoft Teams',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'https://www2.deloitte.com/content/dam/Deloitte/global/Images/promo_images/gx-deloitte-logo-global.jpg',
    title: 'Webinar Deloitte – The Future of Financial Health',
    description:
        'In dit Webinar werd er besproken hoe gezinnen financieel onder druk staan door de hoge prijzen en de inflatie en welke digitale initiatieven er vandaag de dag al bestaan binnen de financiële sector.',
    date: '1 december 2022, 19u30-20u30',
    note: 'Zelf aangebracht',
    location: 'Online, Microsoft Teams',
  ),
];

List<Activity> popSessions = [
  Activity.withAssetImage(
    imageName: 'pxl-logo.png',
    title: 'PXL – Projectweek',
    description:
        'Een week vol activiteiten om het researchproject succesvol te kunnen starten. Er waren groep sessies met het nieuwe projectteam, een bezoek aan de PXL-jobbeurs en meer.',
    date: '14 februari - 18 februari 2022',
    location: 'Hogeschool PXL, B-blok en G-blok',
  ),
  Activity.withAssetImage(
    imageName: 'pxl-logo.png',
    title: 'POP-sessie – Brein aan het werk',
    description:
        'Tijdens deze sessie werd er nagedacht over hoe we onze tijd spenderen, hoeveel tijd we online of op digitale platformen spenderen en hoe we onze tijd beter kunnen invullen.',
    date: '22 februari 2022, 10:30 – 12:30',
    location: 'Hogeschool PXL, B-blok',
  ),
  Activity.withAssetImage(
    imageName: 'pxl-logo.png',
    title: 'POP-sessie – POPping',
    description:
        'Deze sessie ging over feedback krijgen en geven. We leerden hoe belangrijk het is dat feedback gegeven wordt en hoe we dit moeten doen op een correcte en respectvolle manier.',
    date: '22 februari 2022, 13:30 – 15:30',
    location: 'Hogeschool PXL, G-blok',
  ),
  Activity.withAssetImage(
    imageName: 'pxl-logo.png',
    title: 'POP-sessie – My team and I',
    description:
        'Dit was een sessie in het kader van het IT -project, een projectvak in het derde opleidingsjaar. Er werd op een interactieve manier gewerkt om de teamgeest te verhogen en het team dichter bij elkaar te brengen.',
    date: '19 oktober 2022, 13:30 – 17:00',
    location: 'Corda Campus, I-Space',
  ),
  Activity.withAssetImage(
    imageName: 'pxl-logo.png',
    title: 'I-Talent – Portfolio',
    description:
        'Het verzamelen van bewijsmateriaal en uitschrijven van activiteiten voor het vak I-Talent dat tijdens tweede en derde opleidingsjaar plaatsvindt.',
    date: '2021 - 2023',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'data:image/png;base64,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',
    title: 'I-Talent – Portfolio Website',
    description:
        'Het maken van een creatieve versie van dit portfolio. Mijn creatieve versie van dit portfolio omvat deze website gemaakt met het Flutter framework. De website is geoptimaliseerd voor Pc’s, tablets en smartphones.',
    date: 'Februari 2023 – april 2023',
    note: 'Zelf aangebracht',
  ),
];

List<Activity> innovationRoutes = [
  Activity.withNetworkImage(
    imageUrl: 'https://cdn-icons-png.flaticon.com/512/6214/6214224.png',
    title: 'Innovatieroute – Low Code',
    description:
        'Tijdens 3 sessies werd er door 3 verschillende bedrijven besproken hoe zij omgaan met Low Code, hoe het werkt, wat de voor- en nadelen ervan zijn en wat zij denken over de toekomst van programmeurs.',
    date: '26 september - 21 oktober 2022',
    location: 'Hogeschool PXL, G-blok',
  ),
  Activity.withAssetImage(
    imageName: 'pxl-logo.png',
    title: 'Hackathon – PXL Ergotherapie',
    description:
        'Tijdens deze hackathon hebben we in een groep van 5 personen een creatieve applicatie mogen bedenken en uitwerken. De applicatie was bedoeld om kinderen met een fysieke beperking op een alternatieve manier meetkundeoefeningen en rekensommen te laten oplossen.',
    date: '22 februari 2023 - 23 februari 2023',
    location: 'Corda Campus, I-Space',
  ),
  Activity.withAssetImage(
    imageName: 'game-jam.png',
    title: 'The Pixelated Toast Game Jam 2',
    description:
        'Voor deze game jam moest er binnen 24 uur een game gemaakt worden binnen het thema ‘Every Ending is a New Beginning’. De game moest met Pixel Art gemaakt worden en binnen de tijd geüpload worden.',
    date: '22 oktober 2022, 6:00 – 23 oktober 2022, 6:00',
    note: 'Zelf aangebracht',
    location: 'Online',
    routeName: 'game-jam',
  ),
  Activity.withNetworkImage(
    imageUrl:
        'https://media.licdn.com/dms/image/C5112AQH7RfOgmNV_CQ/article-cover_image-shrink_600_2000/0/1582309049644?e=2147483647&v=beta&t=HE0kaoAuNc9k7lCp5KJqiOxlcBXl2Jjn3-xgvQXxMOM',
    title: 'Google Code Jam: Farewell Round',
    description:
        'De laatste editie van Google’s bekende codeerwedstrijd. Tijdens deze wedstrijd van 4 uur dienen er zo snel mogelijk 5 codeervraagstukken opgelost te worden in een programmeertaal naar keuze.',
    date: '15 april 2023, 16:00 – 20:00',
    note: 'Zelf aangebracht',
    location: 'Online',
  ),
];

List<Activity> engagements = [
  Activity.withNetworkImage(
    imageUrl:
        'https://image.winudf.com/v2/image1/Y29tLkRlbm5pRGVWLkNvbG9ySGV4YWdvbl9zY3JlZW5fMV8xNjI2ODk2ODk5XzA2MA/screen-1.webp?fakeurl=1&type=.webp',
    title: 'Game Development',
    description:
        'Game development is al enkele jaren een mijn grootste hobby en passie. Color Hexagon is een game die ik ontwikkeld heb met Unity en C#. De game is uitgebracht op de Google Play Store. Verder werk ik nog aan toekomstige games en prototypes.',
    date: 'Sinds juni 2020',
    note: 'Zelf aangebracht',
  ),
];
