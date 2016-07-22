// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2015 TOParma.com *
// ******************************************************************************************
//	@file Name: TOParmaInfo_dialog.hpp
//	@file Author: Lodac

#include "TOParmaInfo_defines.hpp"
#define X_safezone 
#define RscHTML_sizeEx_H1 (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)
#define RscHTML_sizeEx_H2 (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)
#define RscHTML_sizeEx_P (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)
class TOParmaInfoD
{
	idd = TOParmaInfo_dialog; 
	movingEnable = 1; 
	enableSimulation = 1;
	enableDisplay = 1; 
	
	onLoad = ""; 

	class controls 
	{	
		//Big Main Box
		class TAInfoBackground: RscText
		{
			idc = 10089;
			x = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "30 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "20 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0,0,0,0.4};
		};
		//Big main title
		class TAInfoTitle: RscText
		{
			idc = 10032;
			text = "GFS Gaming";
			colorBackground[] = {0,0,0,1};
			x = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "30 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		
		//Top Bar in big box
		class TAServerInfo: RscText
		{
			idc = TOParmaInfo_Server_Info;
			type = CT_STRUCTURED_TEXT;
			size = 0.040;
			text = "GFS Wasteland";
			x = "18 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "12 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.4};
			
		};
		
		//General info box
		class TAGeneralInfoBackground: RscText
		{
			idc = TOParmaInfo_General_Info_BG;
			type = CT_STRUCTURED_TEXT;
			size = 0.030;
			text = "Website: www.gfsgaming.com TeamSpeak: ts.gfsgaming.com";
			x = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "1.1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "30 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0,0,0,0.4};
			colorText[] = {1,1,1,1};
			colorLink[] = {0.69,0.75,0.5,1};
			colorLinkActive[] = {0.69,0.75,0.5,1};
		};
		//General Box Title
		class TAGeneralTiTleBackground: RscText
		{
			idc = TOParmaInfo_News_Title_BG;
			text = "General Info";
			x = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "9.7 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "15 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
		};
		class TARulesTiTleBackground: RscText
		{
			idc = TOParmaInfo_Rules_Title_BG;
			text = "Rules and Terms";
			x = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "2.2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "15 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
		};
		class TACommandTiTleBackground: RscText
		{
			idc = TOParmaInfo_Help_Title_BG;
			text = "Command Info";
			x = "15.1 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "2.2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "14.9 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
		};
		class TARulesBackground: RscText
		{
			idc = TOParmaInfo_Rules_BG;
			x = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "2.2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "15 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "7.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0,0,0,0.4};
		};
		class TAA3WBackground: RscText
		{
			idc = TOParmaInfo_Rules_BG;
			x = "15.1 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "2.2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "14.9 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "7.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0,0,0,0.4};
		};
		/*
		class TAA3WBackground: RscText
		{
			idc = TOParmaInfo_Content_Commands;
			type = CT_STRUCTURED_TEXT;
			size = 0.028;
			x = "15.1 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "2.2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "14.9 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "7.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.4};
		};
		*/
		class TAStatsTiTleBackground: RscText
		{
			idc = TOParmaInfo_Stats_Title_BG;
			text = "GFS Gaming Servers";
			x = "15.1 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "9.7 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "14.9 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0,0,0,1};
		};
		class TANewsBackground: RscText
		{
			idc = TOParmaInfo_News_BG;
			x = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "9.7 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "15 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "10.3 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0,0,0,0.4};
		};
		class TAServersBackground: RscText
		{
			idc = TOParmaInfo_News_BG;
			x = "15.1 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "9.7 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "14.9 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "10.3 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0,0,0,0.4};
		};
		class TARulesText: RscHTML
		{	
			idc = TOParmaInfo_Content_Rules;
			type = 9;
			shadow = 0;
			class H1
			{
				font = "PuristaMedium";
				fontBold = "PuristaLight";
				sizeEx = RscHTML_sizeEx_H1;
			};
			class H2: H1
			{
				sizeEx = RscHTML_sizeEx_H2;
				font = "PuristaLight";
			};
			class P: H1
			{
				sizeEx = RscHTML_sizeEx_P;
				fontBold = "PuristaLight";
			};
			colorBold[] = {0.6,0.6,0.6,1};
			colorLink[] = {0.69,0.75,0.5,1};
			colorLinkActive[] = {0.69,0.75,0.5,1};
			x = "0.5 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "3.3 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "14 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "7.4 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class TANewsText: RscHTML
		{	
			idc = TOParmaInfo_Content_News;
			type = 9;
			shadow = 0;
			class H1
			{
				font = "PuristaMedium";
				fontBold = "PuristaLight";
				sizeEx = RscHTML_sizeEx_H1;
			};
			class H2: H1
			{
				sizeEx = RscHTML_sizeEx_H2;
				font = "PuristaLight";
			};
			class P: H1
			{
				sizeEx = RscHTML_sizeEx_P;
				fontBold = "PuristaLight";
			};
			colorBold[] = {0.6,0.6,0.6,1};
			colorLink[] = {0.69,0.75,0.5,1};
			colorLinkActive[] = {0.69,0.75,0.5,1};
			x = "0.5 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "9.7 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "14 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "10.2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class TAStatsText: RscHTML
		{	
			idc = TOParmaInfo_Content_Stats;
			type = 9;
			shadow = 0;
			class H1
			{
					font = "PuristaMedium";
					fontBold = "PuristaLight";
					sizeEx = RscHTML_sizeEx_H1;
				};
			class H2: H1
			{
					sizeEx = RscHTML_sizeEx_H2;
					font = "PuristaLight";
				};
			class P: H1
			{
					sizeEx = RscHTML_sizeEx_P;
					fontBold = "PuristaLight";
				};
			colorBold[] = {0.6,0.6,0.6,1};
			colorLink[] = {0.69,0.75,0.5,1};
			colorLinkActive[] = {0.69,0.75,0.5,1};
			x = "15.2 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "10.7 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "14.9 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "9.3 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class TACommandsText: RscHTML
		{	
			idc = TOParmaInfo_Content_Commands;
			type = 9;
			shadow = 0;
			class H1
			{
					font = "PuristaMedium";
					fontBold = "PuristaLight";
					sizeEx = RscHTML_sizeEx_H1;
				};
			class H2: H1
			{
					sizeEx = RscHTML_sizeEx_H2;
					font = "PuristaLight";
				};
			class P: H1
			{
					sizeEx = RscHTML_sizeEx_P;
					fontBold = "PuristaLight";
				};
			colorBold[] = {0.6,0.6,0.6,1};
			colorLink[] = {0.69,0.75,0.5,1};
			colorLinkActive[] = {0.69,0.75,0.5,1};
			x = "15.2 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "3.3 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "14.9 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "9.3 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class TAInfoCloseButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0";
			text = "Close and Agree to rules and terms";
			sizeEx = 0.04;
			x = "8 * (((safezoneW / safezoneH) min 1.2) / 40)";
			y = "21 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "15.5 * (((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};

	};
};