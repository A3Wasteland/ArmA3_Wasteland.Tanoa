// Filename: ETG_LoginRewardScript.sqf
// Author: Kellojo
// Release : 26.11.2015
// Script: ETG Login Reward Script v1.1
// Modded for A3Wasteland by Santa @ gfsgaming.com


//Give script time to start
uiSleep 60;

//How often should the player advance a rank
_loginRanks = 5;

//Check if client has logged in before
_LoginCount = profileNamespace getVariable "var_ETG_Logins";
if (isNil "_LoginCount") then {
	profileNamespace setVariable ["var_ETG_Logins",0];
	saveProfileNamespace;
	_LoginCount = profileNamespace getVariable "var_ETG_Logins";
};


//Reward calculation
_Logins = profileNamespace getVariable "var_ETG_Logins";
_reward = 1000 * floor(_LoginCount / _loginRanks);
if(_reward < 1000) then {
	_reward = 1000;
};

//Notiy Player
systemChat format ["Welcome back %1!",(name player)];
systemChat format ["Thank you for logging in for the %1th time!",_Logins];
systemChat format ["You will receive your reward of %1$ in 3 minutes on your bank account!",_reward];
sleep 180;
_NewLoginCount = _LoginCount + 1;
profileNamespace setVariable ["var_ETG_Logins",_NewLoginCount];
saveProfileNamespace;
systemChat format ["%1$ has been transfered to your bank as a loyalty reward for playing here!",_reward];
systemChat "Have fun!";

//Add money to the players bank
player setVariable ["bmoney", (player getVariable ["bmoney", 0]) + (_reward), false];