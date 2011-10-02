--[[
 TrinityGMHelper+
 Copyright (C) 2011 Fitz

 This file is part of TrinityGMHelper.

 TrinityGMHelper is free software: you can redistribute it
 and/or modify it under the terms of the GNU General Public License as
 published by the Free Software Foundation, version 3.

 TrinityGMHelper is distributed in the hope that it will
 be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with TrinityGMHelper (gpl.txt). If not, see <http://www.gnu.org/licenses/>.

 This code is also released under the Attribution-Noncommercial-Share Alike 3.0 United States License its terms overwrite the GNU licence where applicable.
 http://creativecommons.org/licenses/by-nc-sa/3.0/us/
]]

local _G = getfenv(0);
local GameMaster = _G.GameMaster;

function ShowGMHMinimap()
    GameTooltip:SetOwner(this, "ANCHOR_LEFT");
    GameTooltip:AddLine( "|cFF00FF00Trinity GM Helper|r" );
    GameTooltip:AddLine( "|cFF00FFCCLeft click to show/hide|r" );
    GameTooltip:AddLine( "|cFFFF0000Right click to drag this|r" );
    GameTooltip:Show();
	local session = GameMaster.currentSession;
	if ( not session.id ) then
		local GRAY_FONT_COLOR = _G.GRAY_FONT_COLOR;
		GameTooltip:AddLine(_G.GMMINIMAPTOOLTIP_NOT_IN_SESSION, GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
	else
		local HIGHLIGHT_FONT_COLOR = _G.HIGHLIGHT_FONT_COLOR;
		GameTooltip:AddLine(format(_G.GMMINIMAPTOOLTIP_IN_SESSION, session.name), HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	end
	GameTooltip:AddLine( "|cFF00FFCCLeft click to show/hide|r" );
	GameTooltip:AddLine( "|cFFFF0000Right click to drag|r" );
	GameTooltip:Show();
end

function GMHMinimap_OnUpdate(self, elapsed)
	if ( self.alertFlashTimer ) then
		self.alertFlashTimer = self.alertFlashTimer - elapsed;
		if ( self.alertFlashTimer <= 0 ) then
			if ( GMHMinimapAlert:IsShown() ) then
				GMHMinimapAlert:Hide();
			else
				GMHMinimapAlert:Show();
			end
			self.alertFlashTimer = 0.5;
		end
	end
end

function GMHelper_Init()
	if not GMHMinimapPosition then
		GMHMinimapPosition = -25;
	end
end

function GMHMinimap_BeingDragged()
	local xpos,ypos = GetCursorPosition();
	local xmin,ymin = Minimap:GetLeft(), Minimap:GetBottom();
	xpos = xmin-xpos/UIParent:GetScale()+70;
	ypos = ypos/UIParent:GetScale()-ymin-70;
	GMHMinimap_SetPosition(math.deg(math.atan2(ypos,xpos)));
end

function GMHMinimap_SetPosition(v)
	if(v < 0) then
	v = v + 360;
end
  GMHMinimapPosition = v;
  GMHMinimap_UpdatePosition();
end

function GMHMinimap_UpdatePosition()
	GMHMinimapButton:SetPoint(
	"TOPLEFT",
	"Minimap",
	"TOPLEFT",
	54 - (78 * cos(GMHMinimapPosition)),
	(78 * sin(GMHMinimapPosition)) - 55
	);
end

---------------------------------------------
-- This is called on addon init
GMHelperOnInit();
