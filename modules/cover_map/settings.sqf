//This module covers the area on the map outside of the AO Marker. The first AO marker in the array is the initial AO shown to all players. 
//Specific units can be given the ability to switch AOs with this setvariable ["HasAltMaps",true]; 
//You can script an AO change using [MARKERNAMEINQUOTES,ISCENTERED,ZOOMLEVEL,NAME VISIBLE IN SELF INTERACT, AO NUMBER] call FNC_AOCoverAndCenterMap;
//You could have different groups/teams with different AOs, or a briefing AO different from specific AOs in game if needed.

//_AOMarkers = [MARKERNAMEINQUOTES,ISCENTERED,ZOOMLEVEL,NAME VISIBLE IN SELF INTERACT, AO NUMBER];
//_AOMarkers = [["AOMarker_1",true,0.4,"Bahnhof",1]];

//Global Map Marker Array
private _AOMarkers = [
    ["AOMarker_1",true,0.6,"AO",1],
    ["AOMarker_2",true,0.8,"AO 2",2]
];

//Map Marker Arrays per side
//private ["_AOMarkers"];
//switch (side player) do {
//    case west: {
//        _AOMarkers = [
//            ["AOMarker_1",true,0.6,"AO",1],
//            ["AOMarker_2",true,0.8,"AO 2",2]
//        ];
//    };
//    case east: {
//        _AOMarkers = [
//            ["AOMarker_1",true,0.6,"AO",1],
//            ["AOMarker_2",true,0.8,"AO 2",2]
//        ];
//    };
//    case independent: {
//        _AOMarkers = [
//            ["AOMarker_1",true,0.6,"AO",1],
//            ["AOMarker_2",true,0.8,"AO 2",2]
//        ];
//    };
//    case civilian: {
//        _AOMarkers = [
//            ["AOMarker_1",true,0.6,"AO",1],
//            ["AOMarker_2",true,0.8,"AO 2",2]
//        ];
//    };
//    default {
//        _AOMarkers = [
//            ["AOMarker_1",true,0.6,"AO",1],
//            ["AOMarker_2",true,0.8,"AO 2",2]
//        ];
//    };
//};

