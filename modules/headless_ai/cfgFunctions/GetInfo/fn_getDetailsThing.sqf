#include "..\..\script_macros.hpp"


params ["_obj", ["_pos",[],[[]]]];
private _objectInit = (GETVAR(_obj,Init,""));
if (typename _objectInit isEqualTo "STRING") then {_objectInit = compile _objectInit;};
if (_pos isEqualTo []) then {
    _pos = (getposATL _obj) apply {parseNumber (_x toFixed 2)};
};
private _vectorDir = (vectorDir _obj) apply {parseNumber (_x toFixed 2)};
private _vectorUp = (vectorUp _obj) apply {parseNumber (_x toFixed 2)};
private _damage = parseNumber (damage _obj toFixed 2);
private _name = GETVAR(_obj,varName,"");
[typeOf _obj,
_pos,
_vectorDir,
_vectorUp,
_damage,
surfaceIsWater (getposATL _obj),
_obj getVariable [QGVAR(Name),""],
_obj getVariable [QGVAR(Persistent),true],
_objectInit,
(GETVAR(_obj,StoredVars,[])),
_name]
