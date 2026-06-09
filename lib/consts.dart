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
    "dec": foundingBaldursGate,
    "page": 158,
  },
  {
    "title": "ORDER IN BALDUR'S GATE",
    "dec": orderInBaldursGate,
    "page": 158,
  },
  {
    "title": "BHAALSPAWN",
    "dec": bhaalspawn,
    "page": 159,
  },
  {
    "title": "BALDUR'S GATE TODAY",
    "dec": baldursGateToday,
    "page": 159,
  },
  {
    "title": "NEIGHBORS, RIVALS, AND ALLIES",
    "dec": neighborsRivalsAndAllies,
    "page": 160,
  },
  {
    "title": "CANDLEKEEP",
    "dec": candlekeep,
    "page": 161,
  },
  {
    "title": "ELTUREL",
    "dec": elturel,
    "page": 161,
  },
  {
    "title": "PORT NYANZARU",
    "dec": portNyanzaru,
    "page": 161,
  },

  {
    "title": "GOVERNMENT",
    "dec": government,
    "page": 161,
  },
  {
    "title": "COUNCIL OF FOUR",
    "dec": councilOfFour,
    "page": 161,
  },
  {
    "title": "GRAND DUKE ULDER RAVENGARD",
    "dec": grandDukeUlderRavengard,
    "page": 161,
  },
  {
    "title": "DUKE BELYNNE STELMANE",
    "dec": dukeBelynneStelmane,
    "page": 162,
  },
  {
    "title": "DUKE DILLARD PORTYR",
    "dec": dukeDillardPortyr,
    "page": 162,
  },
  {
    "title": "DUKE THALAMRA VANTHAMPUR",
    "dec": dukeThalamraVanthampur,
    "page": 162,
  },
  {
    "title": "MILITARY",
    "dec": military,
    "page": 162,
  },
  {
    "title": "THE FLAMING FIST",
    "dec": flamingFist,
    "page": 162,
  },
  {
    "title": "THE WATCH",
    "dec": watch,
    "page": 162,
  },
  {
    "title": "LAW AND ORDER",
    "dec": lawAndOrder,
    "page": 163,
  },
  {
    "title": "CITIZENRY",
    "dec": citizenry,
    "page": 164,
  },
  {
    "title": "COMMONERS AND CREWS",
    "dec": commonersAndCrews,
    "page": 164,
  },
  {
    "title": "NOTEWORTHY LAWS",
    "dec": noteworthyLaws,
    "page": 165,
  },
  {
    "title": "PATRIARS",
    "dec": patriars,
    "page": 165,
  },
  {
    "title": "PROMINENT PATRIAR FAMILIES",
    "dec": prominentPatriarFamilies,
    "page": 165,
  },
  {
    "title": "ECONOMY AND TRADE",
    "dec": economyAndTrade,
    "page": 166,
  },
  {
    "title": "PROFESSIONAL GUILDS",
    "dec": professionalGuilds,
    "page": 166,
  },
   {
    "title": "RELIGION",
    "dec": religion,
    "page": 167,
  },
  {
    "title": "GOND",
    "dec": gond,
    "page": 167,
  },
  {
    "title": "HELM",
    "dec": helm,
    "page": 167,
  },
  {
    "title": "ILMATER",
    "dec": ilmater,
    "page": 167,
  },
  {
    "title": "OGHMA",
    "dec": oghma,
    "page": 168,
  },
  {
    "title": "SIAMORPHE",
    "dec": siamorphe,
    "page": 168,
  },
  {
    "title": "TYMORA",
    "dec": tymora,
    "page": 168,
  },
  {
    "title": "UMBERLEE",
    "dec": umberlee,
    "page": 168,
  },
  {
    "title": "DANGERS IN BALDUR'S GATE",
    "dec": dangersInBaldursGate,
    "page": 169,
  },
  {
    "title": "THE GUILD",
    "dec": theGuild,
    "page": 169,
  },
  {
    "title": "NINE-FINGERS KEENE",
    "dec": nineFingersKeene,
    "page": 169,
  },
  {
    "title": "DEAD THREE CULTS",
    "dec": deadThreeCults,
    "page": 170,
  },
  {
    "title": "MURDER IN BALDUR'S GATE",
    "dec": murderInBaldursGate,
    "page": 170,
  },
  {
    "title": "CITY LANDMARKS",
    "dec": cityLandmarks,
    "page": 171,
  },
  {
    "title": "CITY GATES",
    "dec": cityGates,
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



List chcolors = [
  Colors.amber,
  Colors.red,
  Colors.blue,
  Colors.deepOrange,
  Colors.black,
];
