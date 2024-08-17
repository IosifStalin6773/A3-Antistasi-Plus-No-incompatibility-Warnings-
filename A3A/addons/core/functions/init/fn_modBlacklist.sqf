#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
_bad = false;

{
	if (isServer) then
	{
		["modUnautorized",false,1,false,false] remoteExec ["BIS_fnc_endMission"];
        Error("Blacklisted mod detected on SP or MP Server. Ending Mission");
	}
	else
	{
		["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
        Error("Blacklisted mod detected on client. Ending Mission");

	};
};

_bad;
