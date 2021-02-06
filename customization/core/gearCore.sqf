#define random(MIN, MAX) \
([MIN, MAX] call FNC_RandomRange)

private _temp = "";

#define SET_GROUP(groupName) _temp = #groupName + package;\
call compile format ['%1 = {

#define END_GROUP };', _temp]

#define ADD_GROUP(groupName) call call compile format ["%1", #groupName + package]

params ["_unit", "_type", ["_groupId", "", [""]]];

if !(_groupId isEqualTo "") then {
	(group _unit) setGroupId [_groupId];
};

if !(local _unit) exitWith {};

_unit setVariable ["BIS_enableRandomization", false];
_unit setVariable ["FW_Loadout", _type, true];

FNC_AddItem = {([_unit, _type] + _this) call FNC_AddItemOrg;};
FNC_AddItemRandom = {([[_unit, _type]] + [_this]) call FNC_AddItemRandomOrg;};