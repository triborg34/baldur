import 'dart:math';

import 'package:baldur/decriptions.dart';
import 'package:flutter/material.dart';

List chapters = [
  {"title": "Chapter 1", "Dec": "This is Lores", "page": 11},
  {"title": "Chapter 2", "Dec": "This is Lores", "page": 53},
  {"title": "Chapter 3", "Dec": "This is Lores", "page": 75},
  {"title": "Chapter 4", "Dec": "This is Lores", "page": 135},
  {"title": "Chapter 5", "Dec": "This is Lores", "page": 147},
];

List gazetteer = [
 {
    "title": "FOUNDING BALDUR'S GATE",
    "desc": foundingBaldursGate,
    "page": 158,
  },
  {
    "title": "ORDER IN BALDUR'S GATE",
    "desc": orderInBaldursGate,
    "page": 158,
  },
  {
    "title": "BHAALSPAWN",
    "desc": bhaalspawn,
    "page": 159,
  },
  {
    "title": "BALDUR'S GATE TODAY",
    "desc": baldursGateToday,
    "page": 159,
  },
  {
    "title": "NEIGHBORS, RIVALS, AND ALLIES",
    "desc": neighborsRivalsAndAllies,
    "page": 160,
  },
  {
    "title": "CANDLEKEEP",
    "desc": candlekeep,
    "page": 161,
  },
  {
    "title": "ELTUREL",
    "desc": elturel,
    "page": 161,
  },
  {
    "title": "PORT NYANZARU",
    "desc": portNyanzaru,
    "page": 161,
  },

  {
    "title": "GOVERNMENT",
    "desc": government,
    "page": 161,
  },
  {
    "title": "COUNCIL OF FOUR",
    "desc": councilOfFour,
    "page": 161,
  },
  {
    "title": "GRAND DUKE ULDER RAVENGARD",
    "desc": grandDukeUlderRavengard,
    "page": 161,
  },
  {
    "title": "DUKE BELYNNE STELMANE",
    "desc": dukeBelynneStelmane,
    "page": 162,
  },
  {
    "title": "DUKE DILLARD PORTYR",
    "desc": dukeDillardPortyr,
    "page": 162,
  },
  {
    "title": "DUKE THALAMRA VANTHAMPUR",
    "desc": dukeThalamraVanthampur,
    "page": 162,
  },
  {
    "title": "MILITARY",
    "desc": military,
    "page": 162,
  },
  {
    "title": "THE FLAMING FIST",
    "desc": flamingFist,
    "page": 162,
  },
  {
    "title": "THE WATCH",
    "desc": watch,
    "page": 162,
  },
  {
    "title": "LAW AND ORDER",
    "desc": lawAndOrder,
    "page": 163,
  },
  {
    "title": "CITIZENRY",
    "desc": citizenry,
    "page": 164,
  },
  {
    "title": "COMMONERS AND CREWS",
    "desc": commonersAndCrews,
    "page": 164,
  },
  {
    "title": "NOTEWORTHY LAWS",
    "desc": noteworthyLaws,
    "page": 165,
  },
  {
    "title": "PATRIARS",
    "desc": patriars,
    "page": 165,
  },
  {
    "title": "PROMINENT PATRIAR FAMILIES",
    "desc": prominentPatriarFamilies,
    "page": 165,
  },
  {
    "title": "ECONOMY AND TRADE",
    "desc": economyAndTrade,
    "page": 166,
  },
  {
    "title": "PROFESSIONAL GUILDS",
    "desc": professionalGuilds,
    "page": 166,
  },
   {
    "title": "RELIGION",
    "desc": religion,
    "page": 167,
  },
  {
    "title": "GOND",
    "desc": gond,
    "page": 167,
  },
  {
    "title": "HELM",
    "desc": helm,
    "page": 167,
  },
  {
    "title": "ILMATER",
    "desc": ilmater,
    "page": 167,
  },
  {
    "title": "OGHMA",
    "desc": oghma,
    "page": 168,
  },
  {
    "title": "SIAMORPHE",
    "desc": siamorphe,
    "page": 168,
  },
  {
    "title": "TYMORA",
    "desc": tymora,
    "page": 168,
  },
  {
    "title": "UMBERLEE",
    "desc": umberlee,
    "page": 168,
  },
  {
    "title": "DANGERS IN BALDUR'S GATE",
    "desc": dangersInBaldursGate,
    "page": 169,
  },
  {
    "title": "THE GUILD",
    "desc": theGuild,
    "page": 169,
  },
  {
    "title": "NINE-FINGERS KEENE",
    "desc": nineFingersKeene,
    "page": 169,
  },
  {
    "title": "DEAD THREE CULTS",
    "desc": deadThreeCults,
    "page": 170,
  },
  {
    "title": "MURDER IN BALDUR'S GATE",
    "desc": murderInBaldursGate,
    "page": 170,
  },
  {
    "title": "CITY LANDMARKS",
    "desc": cityLandmarks,
    "page": 171,
  },
  {
    "title": "CITY GATES",
    "desc": cityGates,
    "page": 171,
  },
  ];

List upperCity = [
    {
    "title": "Gate of Upper city",
    "desc": gateofuppercity,
    "page": 176,
  },
      {
    "title": "Neighborhoods of Upper city",
    "desc": naiboursuppercity,
    "page": 177,
  },
        {
    "title": "The Old Wall",
    "desc": theoldwall,
    "page": 178,
  },
          {
    "title": "Patriar Manors",
    "desc": patriar,
    "page": 178,
  },
  {
    "title": "Bormul House",
    "desc": bormulHouseDesc,
    "page": 178,
  },
  {
    "title": "Distant Shores",
    "desc": distantShoresDesc,
    "page": 179,
  },
  {
    "title": "Eomane House",
    "desc": eomaneHouseDesc,
    "page": 179,
  },
  {
    "title": "Hall of Wonders",
    "desc": hallOfWondersDesc,
    "page": 179,
  },
  {
    "title": "Harbreeze Bakery",
    "desc": harbreezeBakeryDesc,
    "page": 179,
  },
  {
    "title": "Helm and Cloak",
    "desc": helmAndCloakDesc,
    "page": 179,
  },
  {
    "title": "High Hall",
    "desc": highHallDesc,
    "page": 180,
  },
  {
    "title": "High House of Wonders",
    "desc": highHouseOfWondersDesc,
    "page": 180,
  },
  {
    "title": "Hhune House",
    "desc": hhuneHouseDesc,
    "page": 180,
  },
  {
    "title": "Lady's Hall",
    "desc": ladysHallDesc,
    "page": 180,
  },
  {
    "title": "Ramazith's Tower",
    "desc": ramazithsTowerDesc,
    "page": 182,
  },
  {
    "title": "Rillyn House",
    "desc": rillynHouseDesc,
    "page": 182,
  },
  {
    "title": "Three Old Kegs",
    "desc": threeOldKegsDesc,
    "page": 182,
  },
  {
    "title": "The Undercellar",
    "desc": undorcellarDesc,
    "page": 182,
  },
  {
    "title": "Unrolling Scroll",
    "desc": unrollingScrollDesc,
    "page": 183,
  },
  {
    "title": "Vanthampur Villa",
    "desc": vanthampurVillaDesc,
    "page": 183,
  },
  {
    "title": "Watch Citadel",
    "desc": watchCitadelDesc,
    "page": 183,
  },
  {
    "title": "Watchful Shield",
    "desc": watchfulShieldDesc,
    "page": 183,
  },
  {
    "title": "The Wide",
    "desc": theWideDesc,
    "page": 184,
  },
];

List lowerCity = [
   {
    "title": "Lower City Gates",
    "desc": gatelowercity,
    "page": 184,
  },
  {
    "title":"Neighborhoods of Lower City",
        "desc": gatelowercity,
    "page": 184,
  },
    {
    "title":"Crew Territories",
        "desc": losercitycrew,
    "page": 185,
  },
  {
    "title": "Baldur's Mouth",
    "desc": baldursMouthDesc,
    "page": 186,
  },
  {
    "title": "Blade and Stars",
    "desc": bladeAndStarsDesc,
    "page": 187,
  },
  {
    "title": "Blushing Mermaid",
    "desc": blushingMermaidDesc,
    "page": 187,
  },
  {
    "title": "Candulhallow's Funeral Arrangements",
    "desc": candulhallowsDesc,
    "page": 187,
  },
  {
    "title": "Counting House",
    "desc": countingHouseDesc,
    "page": 188,
  },
  {
    "title": "Eastway Expeditions",
    "desc": eastwayExpeditionsDesc,
    "page": 188,
  },
  {
    "title": "Elfsong Tavern",
    "desc": elfsongTavernDesc,
    "page": 188,
  },
  {
    "title": "Felogyr's Fireworks",
    "desc": felogyrFireworksDesc,
    "page": 188,
  },
  {
    "title": "Garmult's House of Mastery",
    "desc": garmultsHouseDesc,
    "page": 189,
  },
  {
    "title": "Harborside Hospital",
    "desc": harborsideHospitalDesc,
    "page": 189,
  },
  {
    "title": "Hissing Stones",
    "desc": hissingStonesDesc,
    "page": 189,
  },
  {
    "title": "Insight Park",
    "desc": insightParkDesc,
    "page": 189,
  },
  {
    "title": "Jopalin's",
    "desc": jopalinsDesc,
    "page": 190,
  },
  {
    "title": "Low Lantern",
    "desc": lowLanternDesc,
    "page": 190,
  },
  {
    "title": "Mandorcai's Mansion",
    "desc": mandorcaisMansionDesc,
    "page": 190,
  },
  {
    "title": "Seatower of Balduran",
    "desc": seatowerOfBalduranDesc,
    "page": 190,
  },
  {
    "title": "Seskergates",
    "desc": seskerGatesDesc,
    "page": 192,
  },
  {
    "title": "Sewer Keep",
    "desc": sewerKeepDesc,
    "page": 192,
  },
  {
    "title": "Shrine of the Suffering",
    "desc": shrineOfTheSufferingDesc,
    "page": 192,
  },
  {
    "title": "Smilin' Boar",
    "desc": smilinBoarDesc,
    "page": 193,
  },
  {
    "title": "Sorcerous Sundries",
    "desc": sorcerousSundriesDesc,
    "page": 193,
  },
  {
    "title": "Water Queen's House",
    "desc": waterQueensHouseDesc,
    "page": 193,
  },
];

List outerCity = [
  {
    "title": "Neighborhoods Of Outter city",
    "desc": nybrsofouttercity,
    "page": 194,
  },
  {
    "title": "Balduran Looks Out to Sea",
    "desc": balduranLooksOutToSeaDesc,
    "page": 194,
  },
  {
    "title": "Cliffside Cemetery",
    "desc": cliffsideCemeteryDesc,
    "page": 196,
  },
  {
    "title": "Church of Last Hope",
    "desc": churchOfLastHopeDesc,
    "page": 196,
  },
  {
    "title": "Danthelon's Dancing Axe",
    "desc": danthelonsDancingAxeDesc,
    "page": 196,
  },
  {
    "title": "Garynmor Stables and Menagerie",
    "desc": garynmorStablesDesc,
    "page": 197,
  },
  {
    "title": "Hamhocks Slaughterhouse",
    "desc": hamhocksSlaughterhouseDesc,
    "page": 197,
  },
  {
    "title": "Little Calimshan",
    "desc": littleCalimShanDesc,
    "page": 197,
  },
  {
    "title": "Oasis Theater",
    "desc": oasisTheaterDesc,
    "page": 198,
  },
  {
    "title": "Riverveins",
    "desc": riverveinsDesc,
    "page": 199,
  },
  {
    "title": "Whitkeep Hostel",
    "desc": whitkeepHostelDesc,
    "page": 199,
  },
  {
    "title": "Wyrm's Crossing",
    "desc": wyrmsCrossingDesc,
    "page": 200,
  },
  {
    "title": "Wyrm's Rock",
    "desc": wyrmsRockDesc,
    "page": 200,
  },
];


List allsubject=gazetteer+upperCity+lowerCity+outerCity;

Color getRandomColorFromIndex(int index) {
  // Use index as seed for consistent random color
  final random = Random(index);
  return Color.fromRGBO(
    random.nextInt(255), // Red
    random.nextInt(255), // Green
    random.nextInt(255), // Blue
    1.0, // Opacity
  );
}


List chcolors = [
  Colors.amber,
  Colors.red,
  Colors.blue,
  Colors.deepOrange,
  Colors.black,
];
