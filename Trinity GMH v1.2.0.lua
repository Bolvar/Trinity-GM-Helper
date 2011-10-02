chanvar = "GUILD";

function OpenMain()
    if( view == 1 ) then
        FullForm:Show();
    elseif( view == 2 ) then
        MinipForm:Show();
    elseif( view == 3 ) then
        MiniForm:Show();
    else
        FullForm:Show();
    end
end

function AddonToggled()
    if( addonopen == 1 ) then
        FullForm:Hide();
        CommForm:Hide();
        ItemForm:Hide();
        MiscForm:Hide();
        ObjectForm:Hide();
        TicketForm:Hide();
        TeleForm:Hide();
        ProfessionsForm:Hide();
        SkillForm:Hide();
        SpellForm:Hide();
        BanForm:Hide();
        NPCForm:Hide();
        PlayerForm:Hide();
        WepskForm:Hide();
        OverridesForm:Hide();
        ModifyForm:Hide();
        QuickItemForm:Hide();
        LokenView:Hide();
        PetForm:Hide();
        MailForm:Hide();
        PlaySound("INTERFACESOUND_CHARWINDOWCLOSE");
        addonopen = 0;
        else
        OpenMain();
        PlaySound("INTERFACESOUND_CHARWINDOWOPEN");
        addonopen = 1;
    end
end

function outSAY(text)
    SendChatMessage(""..text, chanvar, nil, nil);
end

function GMHelperOnLoad(self)
    GameTooltip:SetOwner(this, "ANCHOR_LEFT");
    GameTooltip:AddLine( "|cFF00FF00Trinity GM Helper|r" );
    GameTooltip:AddLine( "|cFF00FFCCLeft click to show/hide|r" );
    GameTooltip:AddLine( "|cFFFF0000Right click to drag this|r" );
    GameTooltip:Show();
    this:RegisterForDrag("RightButton");
end

function GMHelperOnInit()
    UIErrorsFrame:AddMessage("Trinty GM Helper v1.2.0 loaded!", 0.0, 1.0, 0.0, 53, 2);
    --PSoundF("Interface\\Addons\\GMH\\Sounds\\Omega.wav"); To help me remember this function later down the road.
    OpenMain();
    addonopen = 1;
end

function Exit()
    FullForm:Hide();
    CommForm:Hide();
    ItemForm:Hide();
    MiscForm:Hide();
    ObjectForm:Hide();
    TicketForm:Hide();
    TeleForm:Hide();
    ProfessionsForm:Hide();
    SkillForm:Hide();
    SpellForm:Hide();
    BanForm:Hide();
    NPCForm:Hide();
    PlayerForm:Hide();
    WepskForm:Hide();
    OverridesForm:Hide();
    ModifyForm:Hide();
    QuickItemForm:Hide();
    LokenView:Hide();
    PetForm:Hide();
    MailForm:Hide();
    PlaySound("INTERFACESOUND_CHARWINDOWCLOSE");
    addonopen = false;
end

function PSoundF(file)
    PlaySoundFile(file);
end

-- Binding Variables
BINDING_HEADER_GMHelper = "GM Helper";
BINDING_NAME_AddonToggled = "Toggles GM Helper";
-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- AnnounceScript
function SetAnnouncementChecked()
    if (AnnounceCheck:GetChecked() or ScreenCheck:GetChecked() or GMAnnounceCheck:GetChecked() ) then
        Announce();
    else
        UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
    end
end

function FirstAnnounce()
if (AnnounceSetCheck:GetChecked() or ScreenAnnounceSetCheck:GetChecked() or GMAnnounceSetCheck:GetChecked() ) then
if AnnounceSetCheck:GetChecked() then
firstannounce=".announce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("1st Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);
end
if ScreenAnnounceSetCheck:GetChecked() then
firstannounce=".nameannounce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("1st Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if GMAnnounceSetCheck:GetChecked() then
firstannounce=".gmnameannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("1st Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end
end

function SecondAnnounce()
if (AnnounceSetCheck:GetChecked() or ScreenAnnounceSetCheck:GetChecked() or GMAnnounceSetCheck:GetChecked() ) then
if AnnounceSetCheck:GetChecked() then
secondannounce=".announce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("2nd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if ScreenAnnounceSetCheck:GetChecked() then
secondannounce=".nameannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("2nd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
if GMAnnounceSetCheck:GetChecked() then
secondannounce=".gmnameannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("2nd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end  
end

function ThirdAnnounce()
if (AnnounceSetCheck:GetChecked() or ScreenAnnounceSetCheck:GetChecked() or GMAnnounceSetCheck:GetChecked() ) then
if AnnounceSetCheck:GetChecked() then
thirdannounce=".announce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("3rd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if ScreenAnnounceSetCheck:GetChecked() then
thirdannounce=".nameannounce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("3rd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if GMAnnounceSetCheck:GetChecked() then
thirdannounce=".gmnameannounce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("3rd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end     
end

function FourthAnnounce()
if (AnnounceSetCheck:GetChecked() or ScreenAnnounceSetCheck:GetChecked() or GMAnnounceSetCheck:GetChecked() ) then
if AnnounceSetCheck:GetChecked() then
fourthannounce=".announce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("4th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if ScreenAnnounceSetCheck:GetChecked() then
fourthannounce=".nameannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("4th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
if GMAnnounceSetCheck:GetChecked() then
fourthannounce=".gmnameannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("4th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end     
end

function FifthAnnounce()
if (AnnounceSetCheck:GetChecked() or ScreenAnnounceSetCheck:GetChecked() or GMAnnounceSetCheck:GetChecked() ) then
if AnnounceSetCheck:GetChecked() then
fifthannounce=".announce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("5th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if ScreenAnnounceSetCheck:GetChecked() then
fifthannounce=".nameannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("5th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
if GMAnnounceSetCheck:GetChecked() then
fifthannounce=".gmnameannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("5th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end     
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Ban Script

function BanPlayer()
result=".ban character "..CharName:GetText().." "..BanLength:GetText().." "..BanReason:GetText();   
outSAY(result);
end

function UnBanPlayer()
result=".unban character "..CharName:GetText();    
outSAY(result);
end

function AddIPBan()
result=".ban ip "..IPAddress1:GetText().." "..Duration1:GetText();    
outSAY(result);
end

function DelIPBan()
result=".unban ip "..IPAddress1:GetText();
outSAY(result);
end

function KickPlayer()
result=".kick "..CharName:GetText().." "..BanReason:GetText();    
outSAY(result);
end

function ParPlayer()
result=".freeze";    
outSAY(result);
end

function UnParPlayer()
result=".unfreeze";    
outSAY(result);
end

function PInfo()
result=".pinfo "..CharName:GetText();    
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BattlegroundScript

function BGStart()
    result=".debug bg";
    outSAY(result);
end

function BGForceStart()
    result=".battleground forcestart";
    outSAY(result);
end

function BGInfo()
    result=".battleground bginfo";
    outSAY(result);
end

function BGLeave()
    result=".battleground leave"
    outSAY(result);
end

function BGGetQueue()
    result=".battleground getqueue"
    outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CommScript

function AnnounceChecked()
if (AnnounceCheck:GetChecked() or ScreenCheck:GetChecked() or GMAnnounceCheck:GetChecked() ) then
Announce();
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end
end


function Announce()
if ( AnnounceCheck:GetChecked() ) then--Announce
	result=".announce "..AnnounceText:GetText();
	outSAY(result);
else
    result="";
	outSAY(result);
end
if ( ScreenCheck:GetChecked() ) then--Announce
	result=".nameannounce "..AnnounceText:GetText();
	outSAY(result);
else
    result="";
	outSAY(result);
end
if ( GMAnnounceCheck:GetChecked() ) then--Announce
	result=".gmnameannounce "..AnnounceText:GetText();
	outSAY(result);
else
    result="";
	outSAY(result);
end
end

function WhisperOn()
result=".whispers on;"
outSAY(result);
end

function WhisperOff()
result=".whispers off";
outSAY(result);
end

function SayFirstAnnounce()
if firstannounce == nil then
UIErrorsFrame:AddMessage("Annoucement not set! Please set it in the AnnounceForm", 1.0, 0.0, 0.0, 53, 2);
else
outSAY(firstannounce);
end
end

function SaySecondAnnounce()
if secondannounce == nil then
UIErrorsFrame:AddMessage("Annoucement not set! Please set it in the AnnounceForm", 1.0, 0.0, 0.0, 53, 2);
else
outSAY(secondannounce);
end
end

function SayThirdAnnounce()
if thirdannounce == nil then
UIErrorsFrame:AddMessage("Annoucement not set! Please set it in the AnnounceForm", 1.0, 0.0, 0.0, 53, 2);
else
outSAY(thirdannounce);
end
end

function SayFourthAnnounce()
if fourthannounce == nil then
UIErrorsFrame:AddMessage("Annoucement not set! Please set it in the AnnounceForm", 1.0, 0.0, 0.0, 53, 2);
else
outSAY(fourthannounce);
end
end

function SayFifthAnnounce()
if fifthannounce == nil then
UIErrorsFrame:AddMessage("Annoucement not set! Please set it in the AnnounceForm", 1.0, 0.0, 0.0, 53, 2);
else
outSAY(fifthannounce);
end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ItemScript

function RepairItem()
result=".repairitems"    
outSAY(result);
end

function AddItem()
if ItemNumber:GetText() == "" then
UIErrorsFrame:AddMessage("Specify an Item Number or Name!", 1.0, 0.0, 0.0, 53, 2);
else
result=".additem "..ItemNumber:GetText().." "..ItemQuantity1:GetText();    
outSAY(result);
end
end

function AddItemSet()
result=".additemset "..ItemSetNumber:GetText();    
outSAY(result);
end

function SearchItem()
result=".lookup item "..ItemNumber:GetText();    
outSAY(result);
end

function AddMoney()
IntGold = Gold:GetNumber();
IntSilver = Silver:GetNumber();
IntCopper = Copper:GetNumber();
-- 214748g 35s 47c
result = ".modify money " ..IntGold*10000+IntSilver*100+IntCopper;
outSAY(result);
end

---------------------------------------------
--          End of Advance Command         --
---------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ItemSearchScript

---------------------------------------------
-- Everything below was done by Gondrup and added by Mukele. Thank you Mukele! - Maven --
---------------------------------------------

-- Below vars are used throughout the item search
item_search_results = {}
itemName = {}
ISFItem = {}
itemNameReal = {}
itemLink = {}
itemRarity = {}
itemLevel = {}
itemMinLevel = {}
itemType = {}
itemSubType = {}
itemStackCount = {}
itemEquipLoc = {}
itemTexture = {}

i = 1;

-- Item colour based on rarity
function SetQuality(quality)
    if (quality == 0) then
        return "|c00A9A9A9";
    elseif (quality == 1) then
        return "|c00FFFFFF";
    elseif (quality == 2) then
        return "|c007CFC00";
    elseif (quality == 3) then
        return "|c004169E1";
    elseif (quality == 4) then
        return "|c009932CC";
    elseif (quality == 5) then
        return "|c00FF8C00";
    else
        return "|c00FFFFFF";
    end
end

-- Fired when a server message is sent to the client
function Chat_OnEvent(event, text)
	--Detects if you tried to advance a skill but didnt get it 
	if latestSkillID=="" and text=="Does not have skill line, adding." then
	elseif text=="Does not have skill line, adding." then
		outSAY(".setskill "..latestSkillID.." "..latestSkillLevel);
		latestSkillID="";
    elseif string.find(text, "Item") then
		-- If the detected string is an item result
        idlength, _, _, _ = string.find(text, ":");
        item_search_results[i] = string.sub(text, 6, idlength-1);  
        itemName[i] = text;
        ProcessItemSearch(item_search_results[i]);
        i = i + 1;
    -- Reset if its a new search
    elseif string.find(text, "Starting search of item ") then
        for i=1, 25 do
            getglobal("ItemFormSearchTexture"..i.."Texture"):SetTexture("Interface\\Icons\\INV_Misc_QuestionMark");
            getglobal("ItemFormSearchTexture"..i):Hide();
            getglobal("ItemFormSearchLabelItemID"..i):Hide();
            getglobal("ItemFormSearchButton"..i):Hide();
        end
        i = 1;
    end
end

-- Function to update each button when a result is recieved by the client
function ProcessItemSearch(itemid)
    getglobal("ItemFormSearchTexture"..i):Show();
    getglobal("ItemFormSearchLabelItemID"..i):Show();
    getglobal("ItemFormSearchButton"..i):Show();
    -- Update "number of results" text
    text = "Results Found: "..i;
    ItemFormSearchLabel2Label:SetText(text);
    if GetItemInfo(itemid) then
        itemNameReal[i], itemLink[i], itemRarity[i], itemLevel[i], itemMinLevel[i], itemType[i], itemSubType[i], itemStackCount[i], itemEquipLoc[i], itemTexture[i] = GetItemInfo(itemid);
        getglobal("ItemFormSearchLabelItemID"..i.."Label"):SetText(SetQuality(itemRarity[i])..itemNameReal[i]);
        getglobal("ItemFormSearchTexture"..i.."Texture"):SetTexture(itemTexture[i]);
    else
        getglobal("ItemFormSearchLabelItemID"..i.."Label"):SetText(itemName[i]);
        getglobal("ItemFormSearchTexture"..i.."Texture"):SetTexture("Interface\\Icons\\INV_Misc_QuestionMark");
    end
end

-- When a button is rolled over, show tooltip and update vars based on user cache
function ResultButton_OnEnter(button_number)
    GameTooltip:ClearLines();
    GameTooltip:SetOwner(this, "ANCHOR_RIGHT", -(this:GetWidth() / 2), 24)
    GameTooltip:SetHyperlink("item:"..item_search_results[button_number]..":0:0:0:0:0:0:0");
    if GetItemInfo(item_search_results[button_number]) then
        itemNameReal[button_number], itemLink[button_number], itemRarity[button_number], itemLevel[button_number], itemMinLevel[button_number], itemType[button_number], itemSubType[button_number], itemStackCount[button_number], itemEquipLoc[button_number], itemTexture[button_number] = GetItemInfo(item_search_results[button_number]);
        getglobal("ItemFormSearchLabelItemID"..button_number.."Label"):SetText(SetQuality(itemRarity[button_number])..itemNameReal[button_number]);
        getglobal("ItemFormSearchTexture"..button_number.."Texture"):SetTexture(itemTexture[button_number]);
	GameTooltip:AddLine("Item ID: "..item_search_results[button_number]);
	GameTooltip:AddLine("Click to add to inventory");
	--GameTooltip:AddLine("Ctrl+Click to preview on character");
    else
	GameTooltip:ClearLines();
	GameTooltip:AddLine("|c00B0E0E6"..itemName[button_number]);
	GameTooltip:AddLine("Click to add to inventory");
	--GameTooltip:AddLine("Ctrl+Click to preview on character");
    end
    GameTooltip:Show();
end

-- Hide the tooltip when mouse leaves a button
function ResultButton_OnLeave()
    GameTooltip:Hide();
end

-- When a button is clicked dress-up, else hold control to add to inventory
function ResultButton_OnClick(button_number)
	--local itemid = item_search_results[button_number]
	--if IsControlKeyDown() == false then
	result = ".additem "..item_search_results[button_number];
	outSAY(result);
	--outSAY(ISFItem);
	--[[else
	DressUpFrame:Show();
	DressUpModel:SetUnit("player");
	DressUpItemLink(itemid);]]
end

function DressUpShow()
 local itemid = item_search_results[button_number]
 DressupFrame:Show();
 DressUpModel:SetUnit("player");
 DressUpItemLink(itemid);
end

---------------------------------------------
--            End of Item search           --
---------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MiscScript

function SInfo()
    result=".server info";
    outSAY(result);
end

-- Changed this command here also on MainForm to "save All Playrs"
-- by Fitz.

function SavePlyr()
    result=".save ";
    outSAY(result);
end

function Invince()
    result=".ticket list";
    outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--ModifyScript

 function ModSpeed()
	result=".modify aspeed "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModHP()
	result=".modify hp "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModMana()
	result=".modify mana "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModEnergy()
	result=".modify energy "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModRage()
	result=".modify rage "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModResistance()
	result=".modify holy "..ModifyEditBox:GetText();
	outSAY(result);
    result=".modify fire "..ModifyEditBox:GetText();
	outSAY(result);
    result=".modify nature "..ModifyEditBox:GetText();
	outSAY(result);
    result=".modify frost "..ModifyEditBox:GetText();
	outSAY(result);
    result=".modify shadow "..ModifyEditBox:GetText();
	outSAY(result);
    result=".modify arcane "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModArmor()
	result=".modify armor "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModDamage()
	result=".modify damage "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModDisplay()
	result=".modify morph "..ModifyEditBox:GetText();
	outSAY(result);
end

function Demorph()
	result=".demorph"
	outSAY(result);
end

function ModSpeed()
	result=".modify aspeed "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModScale()
	result=".modify scale "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModSpirit()
	result=".modify spirit "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModTP()
	result=".modify tp "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModFaction()
result=".modify faction "..ModifyEditBox:GetText();
outSAY(result);
end

function ModRunicPower()
result=".modify runicpower "..ModifyEditBox:GetText();
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- NPCScript

function AddItemVendor()
result=".npc additem "..NPCItemNumber:GetText();    
outSAY(result);
end

function RemoveItemVendor()
result=".npc delitem "..NPCItemNumber:GetText();    
outSAY(result);
end

function SpawnNPC()
result=".npc add "..NPCNumber:GetText();    
outSAY(result);
end

function DeleteNPCbyNumber()
result=".npc delete "..NPCNumber:GetText();    
outSAY(result);
end

function DeleteNPC()
result=".npc delete";    
outSAY(result);
end

function NPCCome()
    result=".cometome 1";
    outSAY(result);
end

function NPCPos()
    result=".possess";
    outSAY(result);
end

function NPCUnPos()
    result=".unpossess";
    outSAY(result);
end

function NPCInfo()
result=".npc info";
outSAY(result);
end

function NPCLookup()
result=".lookup creature "..NPCNumber:GetText();
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ObjectScript

function TargetObject()
result=".gobject target ";    
outSAY(result);
end

function ObjectInfo()
result=".go info "; 
outSAY(result);
end

function DeleteObject()
result=".gobject delete ";    
outSAY(result);
end

function PlaceObject()
if ObjectNumber:GetText() == "" then
UIErrorsFrame:AddMessage("Specify an Object Number!", 1.0, 0.0, 0.0, 53, 2);
else
PlaceObjectTrue();
end
end

function PlaceObjectTrue()
if NoSaveCheck:GetChecked() then
        result=".gobject add "..ObjectNumber:GetText();
        outSAY(result)
    else
        result=".gobject add "..ObjectNumber:GetText();
        outSAY(result)
end
end

function LookupObject()
result=".lookup object "..ObjectNumber:GetText();
outSAY(result)
end

function ObjectInfo()
result=".go info"
outSAY(result)
end

function ActivateObject()
result=".gobject activate"
outSAY(result)
end

function EnableObject()
result=".go enable"
outSAY(result)
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OverridesScript

function CheatStatus()
	result=".cheat status"; ---not avialable
	outSAY(result);
end

function CheatUpdate()
if ( FlyCheck:GetChecked() ) then--fly
	result=".gm fly on";
	outSAY(result);
else
	result=".gm fly off";
	outSAY(result);
end
if ( NCDCheck:GetChecked() ) then--CoolDown
	result=".cooldown";
	outSAY(result);
else
	result=".cooldown";
	outSAY(result);
end
end

function FlySpeed()
result=".modify aspeed "..FlyEntry:GetText();
outSAY(result);
end

function FlightPath()
if ( TaxiCheck:GetChecked() ) then --Taxi
    result=".taxicheat on";
    outSAY(result);
else
    result=".taxicheat off";
    outSAY(result);
end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PlayerScript
 function CreateGuild()
result=".guild create "..PlayerFormBox:GetText();  
outSAY(result);
end

function LevelPlayer()
result=".level "..PlayerFormBox:GetText();    
outSAY(result);
end

function RevivePlayer2()
result=".revive "..PlayerFormBox:GetText();
outSAY(result);
end

function LookupFaction()
result=".lookup faction "..PlayerFormBox:GetText();
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ProfessionsForm

function LearnRiding()
result=".learn 33388";   --Apprentice Riding 
outSAY(result);
result=".learn 33391";    --Journeyman Riding
outSAY(result);
result=".learn 34090";    --Expert Riding
outSAY(result);
result=".learn 34091";    --Artisan Riding
outSAY(result);
result=".learn 54197";    --Cold Weather Flying
outSAY(result);
end

function LearnJewel()
result=".setskill 755 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnBlackSmithing()
result=".setskill 164 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnTailoring()
result=".setskill 197 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnLeatherworking()
result=".setskill 165 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnEngineering()
result=".setskill 202 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnPoisons()
result=".setskill 40 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnEnchanting()
result=".setskill 333 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnFishing()
result=".setskill 356 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnMining()
result=".setskill 186 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnSkinning()
result=".setskill 393 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnAlchemy()
result=".setskill 171 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnHerbalism()
result=".setskill 182 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnFirstAid()
result=".setskill 129 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnCooking()
result=".setskill 185 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnInscription()
result=".setskill 773 "..SkillLevel:GetText();    
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--QuestScript
function LookupQuest()
result=".lookup quest "..QuestFormBox:GetText();
outSAY(result)
end

function QuestComplete()
result=".quest complete "..QuestFormBox:GetText();
outSAY(result)
end

function QuestStart()
result=".quest add "..QuestFormBox:GetText();
outSAY(result)
end

function QuestRemove()
result=".quest remove "..QuestFormBox:GetText();
outSAY(result)
end

function QuestStatus()
result=".quest status "..QuestFormBox:GetText();
outSAY(result)
end

function QuestReward()
result=".quest complete "..QuestFormBox:GetText();
outSAY(result)
end

function QuestSpawn()
result=".quest spawn "..QuestFormBox:GetText();
outSAY(result)
end

function QuestAddBoth()
result=".quest addboth "..QuestFormBox:GetText();
outSAY(result)
end

function QuestAddStart()
result=".quest addstart "..QuestFormBox:GetText();
outSAY(result)
end

function QuestAddFinish()
result=".quest addfinish "..QuestFormBox:GetText();
outSAY(result)
end

function QuestDelBoth()
result=".quest delboth "..QuestFormBox:GetText();
outSAY(result)
end

function QuestDelStart()
result=".quest delstart "..QuestFormBox:GetText();
outSAY(result)
end

function QuestDelFinish()
result=".quest delfinish "..QuestFormBox:GetText();
outSAY(result)
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--QuickItemScript

function GmOutfit()
result=".additem 2586"--Gamemaster's Robe
outSAY(result);
result=".additem 11508"--Gamemaster's Slippers
outSAY(result);
result=".additem 12064"--Gamemaster's Hood
outSAY(result);
result=".additem 12947"--Alex's Ring of Audacity
outSAY(result);
result=".additem 12947"--Alex's Ring of Audacity
outSAY(result);
result=".additem 192"--Martin Thunder
outSAY(result);
result=".additem 19879"--Alex's Test Beatdown Staff
outSAY(result);
result=".additem 19160"--Contest Winner's Tabbard
outSAY(result);
result=".additem 23162 4"--Foror's Crate of Endless Resist Gear Storage
outSAY(result);
end
--Gamemaster's Robe, Gamemaster's Slippers, Gamemaster's Hood, Alex's Ring of Audacity X2, Martin Thunder, Alex's Test Beatdown Staff, Contest Winner's Tabbard, Foror's Crate of Endless Resist Gear Storage X4

-- All item codes and itemsets upadted to latest WotLK 3.3.5a (12340) build for T-10 & T-9. From here to EOF. by Fitz

function MageT9()
result=".additemset 843"
outSAY(result);
end

function HunterT9()
result=".additemset 859"
outSAY(result);
end

function RogueT9()
result=".additemset 858"
outSAY(result);
end

function WarlockT9()
result=".additemset 845"
outSAY(result);
end

function WarriorT9()
result=".additemset 868"
outSAY(result);
end

function ShamanT9()
result=".additemset 865"
outSAY(result);
end

function PriestT9()
result=".additemset 849"
outSAY(result);
end

function DruidT9()
result=".additemset 855"
outSAY(result);
end

function PaladinT9()
result=".additemset 878"
outSAY(result);
end

function MageT10()
addItem(51281);-- T10h
addItem(51284);-- T10h
addItem(51283);-- T10h
addItem(51280);-- T10h
addItem(51282);-- T10h
addItem(51862);
addItem(51918);
addItem(51899);
addItem(50609);
addItem(40719);
addItem(39193);
addItem(54588);
addItem(50726);
addItem(54556);
addItem(51838);
addItem(50731);
end

function HunterT10()
addItem(51286);-- T10h
addItem(51288);-- T10h
addItem(51289);-- T10h
addItem(51285);-- T10h
addItem(51287);-- T10h
addItem(51853);
addItem(51914);
addItem(54577);
addItem(50647);
addItem(51913);
addItem(50604);
addItem(50349);
addItem(50363);
addItem(51888);
addItem(51834);
addItem(50737);
result=".additem 52020 4000"   -- Bullets for gun
outSAY(result);
end

function RogueT10()
addItem(51252);-- T10h
addItem(51254);-- T10h
addItem(51250);-- T10h
addItem(51251);-- T10h
addItem(51253);-- T10h
addItem(50707);
addItem(54584);
addItem(50607);
addItem(54557);
addItem(50604);
addItem(51913);
addItem(50349);
addItem(50364);
addItem(51888);
addItem(51846);
addItem(51846);
addItem(51880);
end

function WarlockT10()
addItem(51231);-- T10h
addItem(51234);-- T10h
addItem(51233);-- T10h
addItem(51230);-- T10h
addItem(51232);-- T10h
addItem(51862);
addItem(51918);
addItem(51899);
addItem(50658);
addItem(51849);
addItem(50614);
addItem(50366);
addItem(50365);
addItem(54556);
addItem(50684);
addItem(50672);
end

function WarriorT10f()
addItem(51225);--chest t10h
addItem(51226);--hands t10h
addItem(51227);--head t10h
addItem(51228);--legs t10h
addItem(51229);--shoulder t10h
end

function WarriorT10p()
addItem(51220);--chest t10h
addItem(51221);--head t10h
addItem(51222);--hands t10h
addItem(51223);--legs t10h
addItem(51224);--shoulder t10h
end
function ShamanT10e()
addItem(51237);-- T10h
addItem(51235);-- T10h
addItem(51239);-- T10h
addItem(51238);-- T10h
addItem(51236);-- T10h
end
function ShamanT10m()
addItem(51242);-- T10h
addItem(51240);-- T10h
addItem(51244);-- T10h
addItem(51243);-- T10h
addItem(51241);-- T10h
end
function ShamanT10r()
addItem(51247);-- T10h
addItem(51245);-- T10h
addItem(51249);-- T10h
addItem(51248);-- T10h
addItem(51246);-- T10h
end
function PriestT10h()
addItem(51261);-- T10h
addItem(51264);-- T10h
addItem(51263);-- T10h
addItem(51260);-- T10h
addItem(51262);-- T10h
end
function PriestT10s()
addItem(51255);-- T10h
addItem(51257);-- T10h
addItem(51259);-- T10h
addItem(51256);-- T10h
addItem(51258);-- T10h
end
function DruidT10b()
addItem(51290);-- T10h
addItem(51292);-- T10h
addItem(51294);-- T10h
addItem(51291);-- T10h
addItem(51293);-- T10h
function DruidT10f()
end
addItem(51296);-- T10h
addItem(51299);-- T10h
addItem(51298);-- T10h
addItem(51295);-- T10h
addItem(51297);-- T10h
end
function DruidT10h()
addItem(51302);-- T10h
addItem(51304);-- T10h
addItem(51300);-- T10h
addItem(51301);-- T10h
addItem(51303);-- T10h
end
function PaladinT10h()
addItem(51272);-- T10h
addItem(51273);-- T10h
addItem(51274);-- T10h
addItem(51270);-- T10h
addItem(51271);-- T10h
end
function PaladinT10t()
addItem(51266);-- T10h
addItem(51269);-- T10h
addItem(51265);-- T10h
addItem(51267);-- T10h
addItem(51268);-- T10h
end
function PaladinT10d()
addItem(51277);-- T10h
addItem(51279);-- T10h
addItem(51275);-- T10h
addItem(51276);-- T10h
addItem(51278);-- T10h
end
function DeathKnightT10d()
addItem(51312);-- T10h
addItem(51314);-- T10h
addItem(51310);-- T10h
addItem(51311);-- T10h
addItem(51313);-- T10h
end
function DeathKnightT10t()
addItem(51306);-- T10h
addItem(51309);-- T10h
addItem(51305);-- T10h
addItem(51307);-- T10h
addItem(51308);-- T10h
end

function DeathKnightT9()
result=".additemset 872"
outSAY(result);
end
function addItem(itemID)
result=".additem "..itemID;
outSAY(result);
end

-- Item codes and itemsets updates by Fitz -  EOF
-- Items updated by Deser and implemented by Flako
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LokenView

function PinkGM()
result=".modify morph 26472"
outSAY(result);
end

function GreenGM()
result=".modify morph 26473"
outSAY(result);
end

function YellowGM()
result=".modify morph 26474"
outSAY(result);
end

function GMOutfitDeMorph()
result=".demorph"
outSAY(result);
end

function GMListAllandOn()
result=".gm list"
outSAY(result);
result=".gm ingame"
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Tickets

function TicketListC()
result=".ticket list"
outSAY(result);
end

function OnlineTicketsC()
result=".ticket onlinelist"
outSAY(result);
end

function ViewTicketC()
result=".ticket viewid "..TicketNumber:GetText();
outSAY(result);
end

function GotoTicketC()
result=".go ticket "..TicketNumber:GetText();
outSAY(result);
end

function DeleteTicketC()
result=".ticket delete "..TicketNumber:GetText();
outSAY(result);
end

function CloseTicketC()
result=".ticket close "..TicketNumber:GetText();
outSAY(result);
end

function AssignC()
result=".ticket assign "..TicketNumber:GetText().." "..Assign:GetText();
outSAY(result);
end

function UnAssignC()
result=".ticket unassign "..TicketNumber:GetText();
outSAY(result);
end

function ViewNameC()
result=".ticket viewname "..Assign:GetText();
outSAY(result);
end

function ClosedList()
result=".ticket closedlist "
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Misc Addons

function RestartC()
result=".server restart "..AdminEditBox:GetText();
outSAY(result);
end

function ShutDownC()
result=".server shutdown "..AdminEditBox:GetText();
outSAY(result);
end

function CancelSRC()
result=".server shutdown cancel "
outSAY(result);
result=".server restart cancel "
outSAY(result);
end

function SaveAllC()
result=".saveall "
outSAY(result);
end

function PlayAllC()
result=".playall "..AdminEditBox:GetText();
outSAY(result);
end

function ReloadAllC()
result=".reload all ";
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Objects Revamped

function ObjectTurnC()
result=".gobject turn "..ObjectNumber:GetText();
outSAY(result);
end

function AddObjectC()
result=".gobject add "..ObjectNumber:GetText();
outSAY(result);
end

function TargetObjectC()
result=".gobject target "..ObjectNumber:GetText();
outSAY(result);
end

function ActivateObjectC()
result=".gobject activate "..ObjectNumber:GetText();
outSAY(result);
end

function TempAddC()
result=".gobject tempadd "..ObjectNumber:GetText();
outSAY(result);
end

function DeleteObjectC()
result=".gobject delete "..ObjectNumber:GetText();    
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Players Revamped

function RevivePlayerC()
result=".revive "..PlayerFormBox:GetText();
outSAY(result);
end

function DeMorphC()
result=".demorph "
outSAY(result);
end

function HonorAddC()
result=".honor add "..PlayerFormBox:GetText();
outSAY(result);
end

function PlayerInfoCC()
result=".pinfo "..PlayerFormBox:GetText();
outSAY(result);
end

function RepairCC()
result=".repairitems "
outSAY(result);
end

function KillPlayerC()
result=".die "
outSAY(result);
end

function GuildUninviteC()
result=".guild uninvite "..PlayerFormBox:GetText();
outSAY(result);
end

function CustomizeC()
result=".character customize "..PlayerFormBox:GetText();
outSAY(result);
end

function ReNameC()
result=".character rename "..PlayerFormBox:GetText();
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Spells Revamped

-- Updated Codes for Trinty Command set's, all work now as they should. by Fitz

function LearnAllLangC()
result=".learn all lang"
outSAY(result);
end

function LearnAllDefC()
result=".learn all default "
outSAY(result);
end

function LearnAllCraftC()
result=".learn all crafts "
outSAY(result);
end

function LearnAllClassC()
result=".learn all my class "
outSAY(result);
end

function LearnAllRecipesC()
result=".learn all recipes "..SpellNumber:GetText();
outSAY(result);
end

function LearnAllTalentsC()
result=".learn all my talents "
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Ports Revamped

-- TODO--Need to add QuickPortals for the QuickPortalsForm that is no longer being used. Fitz

function SummonGroupC()
result=".groupgo "..ToPlayerName:GetText();
outSAY(result);
end

function TeleGroupC()
result=".tele group "..ZoneName:GetText();
outSAY(result);
end

function PortPlayerC()
result=".tele name "..ToPlayerName:GetText().." "..ZoneName:GetText();
outSAY(result);
end

function AddTeleC()
result=".tele add "..ZoneName:GetText();
outSAY(result);
end

function DelTeleC()
result=".tele del "..ZoneName:GetText();
outSAY(result);
end

function TeleLookupC()
result=".lookup tele "..ZoneName:GetText();
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Fitz's Quick Portals

function QPStormwind()
    result=".gobject add 183325";
    outSAY(result);
end

function QPIronforge()
    result=".gobject add 183322";
    outSAY(result);
end

function QPDarnassus()
    result=".gobject add 183317";
    outSAY(result);
end

function QPExodar()
    result=".gobject add 183321";
    outSAY(result);
end

function QPOrgrimmar()
    result=".gobject add 183323";
    outSAY(result);
end

function QPUndercity()
    result=".gobject add 183327";
    outSAY(result);
end

function QPThunderbluff()
    result=".gobject add 183326";
    outSAY(result);
end

function QPSilvermoon()
    result=".gobject add 183324";
    outSAY(result);
end

function QPShattrath()
    result=".gobject add 184594";
    outSAY(result);
end

function QPDalaran()
    result=".gobject add 194012"; --Violet Citadel/Dalaran
    outSAY(result);
end

function QPWintergrasp()
    result=".gobject add 193772"; --Wintergrasp
    outSAY(result);
end

function QPHordeEnc()
    result=".gobject add 182060"; --PvP Arena
    outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Modify Revamped

function ModHonorC()
result=".modify honor "..ModifyEditBox:GetText();
outSAY(result);
end

function ModGenderC()
result=".modify gender "..ModifyEditBox:GetText();
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Communication Revamped

function GMBadgeOnC()
result=".gm chat on"
outSAY(result);
end

function GMBadgeOffC()
result=".gm chat off"
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's BanForm Revamped

function ListFreezeC()
result=".listfreeze ";
outSAY(result);
end

function BannAcctC()
result=".ban account "..AcctName:GetText().." "..BanLength:GetText().." "..BanReason:GetText();
outSAY(result);
end

function UnBanAccount()
result=".unban account "..AcctName:GetText();
outSAY(result);
end

function BannAllC()
result=".ban account "..AcctName:GetText().." "..BanLength:GetText().." "..BanReason:GetText();
outSAY(result);
result=".ban character "..CharName:GetText().." "..BanLength:GetText().." "..BanReason:GetText();
outSAY(result);
result=".ban ip "..IPAddress1:GetText().." "..BanLength:GetText().." "..BanReason:GetText();
outSAY(result);
end

function BannIPC()
result=".ban ip "..IPAddress1:GetText().." "..BanLength:GetText().." "..BanReason:GetText();
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Items Revamped

function SearchItemSetC()
result=".lookup itemset "..ItemSetNumber:GetText();
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's OverRides Revamped

function CooldownCC()
result=".cooldown "
outSAY(result);
end

function RainCC()
result=".wchange 1 1";
outSAY(result);
end

function SnowCC()
result=".wchange 2 2";
outSAY(result);
end

function SandCC()
result=".wchange 3 3";
outSAY(result);
end

function StopCC()
result=".wchange 0 0";
outSAY(result);
end

function Visible()
result=".gm visible on";
outSAY(result);
end

function VisibleOff()
result=".gm visible off";
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Send Mail Form

function MailMessageToC()
result=".send mail "..ToPlayerNameC:GetText().." "..SubjectName:GetText().." "..MessageBoxMulti:GetText();
outSAY(result);
end

function MailItemsToC()
result=".send items "..ToPlayerNameC:GetText().." "..SubjectName:GetText().." "..MessageBoxMulti:GetText().." "..Item1:GetText().." "..Item2:GetText().." "..Item3:GetText().." "..Item4:GetText().." "..Item5:GetText();
outSAY(result);
end

function MailMoneyToC()
-- IntGold = GoldC:GetNumber();
-- IntSilver = SilverC:GetNumber();
-- IntCopper = CopperC:GetNumber();
result=".send money "..ToPlayerNameC:GetText().." "..SubjectName:GetText().." "..MessageBoxMulti:GetText().." "..GoldC:GetNumber()*10000+SilverC:GetNumber()*100+CopperC:GetNumber();
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Chillu's Pet Form Addition

function PetCreateC()
result=".pet create ";
outSAY(result);
end

function PetLearnC()
result=".pet learn "..PetBoxC:GetText();
outSAY(result);
end

function PetUnLearnC()
result=".pet unlearn "..PetBoxC:GetText();
outSAY(result);
end

function PetTalentsC()
result=".pet tp "..PetBoxC:GetText();
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SkillScript

function SearchSkill()
result=".lookup skill "..SkillName:GetText();
outSAY(result);
end

function LearnSkill()
result=".setskill "..SkillNumber:GetText().." "..SkillLvl:GetText().." "..SkillMax:GetText();        
outSAY(result);
end

function UnLearnSkill()
result=".unlearn skill "..SkillNumber:GetText();    
outSAY(result);
end

function LookupSkill()
result=".lookup skill "..SkillNumber:GetText();    
outSAY(result);
end

function AdvanceAll()
result=".maxskill";   
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SpellScript

function LearnSpell()
result=".learn "..SpellNumber:GetText();    
outSAY(result);
end

function UnlearnSpell()
result=".unlearn "..SpellNumber:GetText();    
outSAY(result);
end

function LearnAll()
result=".learn all ";
outSAY(result);
end

function LookupSpell()
result=".lookup spell "..SpellNumber:GetText();    
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TeleScript

function GoName()
result=".appear "..ToPlayerName:GetText();    
outSAY(result);
end

function NameGo()
result=".summon "..ToPlayerName:GetText();    
outSAY(result);
end

function SearchTele()
result=".recall list "   
outSAY(result);
end

function Tele()
result=".tele "..ZoneName:GetText(); 
outSAY(result);
end

function AddPort()
result=".tele add "..ZoneName:GetText(); 
outSAY(result);
end

function DelPort()
result=".tele del "..ZoneName:GetText(); 
outSAY(result);
end

function PortPlayer()
result=".tele name "..ToPlayerName:GetText().." " ..ZoneName:GetText(); 
outSAY(result);
end

function WorldPort()
result=".go xyz "..XCord:GetText().." "..YCord:GetText().." "..ZCord:GetText().." "..MapID:GetText();
outSAY(result);
end


function GPS()
result=".gps ";
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- WaypointScript
function WaypointsAdd()
    result=".wp add";
    outSAY(result);
end

function WaypointsDel()
    result=".waypoint delete";
    outSAY(result);
end

function WaypointsShow()
    result=".wp show";
    outSAY(result);
end

function WaypointsHide()
    result=".waypoint hide";
    outSAY(result);
end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- WepskScript

function LearnDualWield()
result=".setskill 118 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnStaves()
result=".setskill 136 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnUnarmed()
result=".setskill 136 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnTwoHandedAxes()
result=".setskill 172 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnDaggers()
result=".setskill 173 "..WeaponSkillLvl:GetText();    
outSAY(result);
end


function LearnCrossbows()
result=".setskill 226 "..WeaponSkillLvl:GetText();    
outSAY(result);
end


function LearnWands()
result=".setskill 228 "..WeaponSkillLvl:GetText();    
outSAY(result);
end


function LearnPolearms()
result=".setskill 229 "..WeaponSkillLvl:GetText();    
outSAY(result);
end


function LearnGuns()
result=".setskill 46 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnSwords()
result=".setskill 43 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnTwoHandedSwords()
result=".setskill 55 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnFistWeapons()
result=".setskill 473 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnTwoHandedMaces()
result=".setskill 160 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnBows()
result=".setskill 45 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnThrown()
result=".setskill 176 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnAxes()
result=".setskill 44 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnMaces()
result=".setskill 54 "..WeaponSkillLvl:GetText();    
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function GMH_Main()
DEFAULT_CHAT_FRAME:AddMessage("GMH Version 1.2.0",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/gmh - displays this menu",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/reload - reloads UI - useful for developers",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/revive - revives yourself",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/recallport or /recall or /port - Ports yourself to location",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/npcspawn - spawns NPC - e.g. /npcspawn 1",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/npcdelete - deleted targeted NPC",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/additem - adds item to you or target - e.g. /additem 1",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/announce or /an - broadcasts message to server in chatbox",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/wannounce or /wan - broadcasts message to server on the screen",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/gmannounce or /gman - broadcasts message to other GMs in chatbox",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/savedannounce or /sa - broadcasts saved message",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/advanceall or /advanceallskills - Advances all of your or your target's skills by X.",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/revive - revives yourself",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/reviveplr - revives plr x",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/learn - learns spells to you or targeted player - e.g. /learn 1 - /learn all learns all spells for your class",0.0, 1.0, 0.0, 53, 0);
DEFAULT_CHAT_FRAME:AddMessage("/unlearn - unlearns spell id on you or targeted player - e.g. /unlearn 1",0.0, 1.0, 0.0, 53, 0);
end
SlashCmdList["GMH"] = GMH_Main;
SLASH_GMH1="/gmh";
SLASH_GMH2="/gm";

function GMH_Reload()
ReloadUI()
end
SlashCmdList["GMHRELOAD"] = GMH_Reload;
SLASH_GMHRELOAD1="/reload";

function GMH_Revive()
result=".revive "   
outSAY(result);
end
SlashCmdList["REVIVE"] = GMH_Revive;
SLASH_REVIVE1="/revive";

function GMH_NPCSpawn(msg)
local NPCID=msg;
result=".npc add "..NPCID; 
outSAY(result);
end
SlashCmdList["GMHSPAWN"] = GMH_NPCSpawn;
SLASH_GMHSPAWN1="/npcspawn";

function GMH_NPCDelete()
result=".npc delete " 
outSAY(result);
end
SlashCmdList["GMHDELETE"] = GMH_NPCDelete;
SLASH_GMHDELETE1="/npcdelete";

function GMH_AddItem(msg)
local ItemID=msg;
result=".additem "..ItemID; 
outSAY(result);
end
SlashCmdList["GMHADDITEM"] = GMH_AddItem;
SLASH_GMHADDITEM1="/additem";

function GMH_Announce(msg)
local Announce=msg;
result=".announce "..Announce;
outSAY(result);
end
SlashCmdList["GMHANNOUNCE"] = GMH_Announce;
SLASH_GMHANNOUNCE1="/announce";
SLASH_GMHANNOUNCE2="/an";

function GMH_WAnnounce(msg)
local WAnnounce=msg;
result=".nameannounce "..WAnnounce; 
outSAY(result);
end
SlashCmdList["GMHWANNOUNCE"] = GMH_Announce;
SLASH_GMHWANNOUNCE1="/wannounce";
SLASH_GMHWANNOUNCE2="/wan";

function GMH_GMAnnounce(msg)
local GMAnnounce=msg;
result=".gmnameannounce "..GMAnnounce; 
outSAY(result);
end
SlashCmdList["GMHGMANNOUNCE"] = GMH_GMAnnounce;
SLASH_GMHGMANNOUNCE1="/gmannounce";
SLASH_GMHGMANNOUNCE2="/gman";

function GMH_RecallPort(msg)
local location=msg;
result=".tele "..location; 
outSAY(result);
end
SlashCmdList["GMHRECALLPORT"] = GMH_RecallPort;
SLASH_GMHRECALLPORT1="/recallport";
SLASH_GMHRECALLPORT2="/recall";
SLASH_GMHRECALLPORT3="/port";

function GMH_SavedAnnounce(msg)
local SavedAnnounce=msg;
if (SavedAnnounce == "1") and (firstannounce ~= nil) then
result=firstannounce;
outSAY(result);
elseif (SavedAnnounce == "2") and (secondannounce ~= nil) then
result=secondannounce;
outSAY(result);
elseif (SavedAnnounce == "3") and (thirdannounce ~= nil) then
result=thirdannounce;
outSAY(result);
elseif (SavedAnnounce == "4") and (fourthannounce ~= nil) then
result=fourthannounce;
outSAY(result);
elseif (SavedAnnounce == "5") and (fifthannounce ~= nil) then
result=fifthannounce;
outSAY(result);
else
UIErrorsFrame:AddMessage("That saved announcement has not been set! Please set it!", 1.0, 0.0, 0.0, 53, 2);
end
end
SlashCmdList["GMHSAVEDANNOUNCE"] = GMH_SavedAnnounce;
SLASH_GMHSAVEDANNOUNCE1="/savedannounce";
SLASH_GMHSAVEDANNOUNCE2="/sa";

function GMH_Learn(msg)
local Learn=msg;
result=".learn "..Learn; 
outSAY(result);
end
SlashCmdList["GMHLEARN"] = GMH_Learn;
SLASH_GMHLEARN1="/learn";

function GMH_UnLearn(msg)
local UnLearn=msg;
result=".unlearn "..UnLearn; 
outSAY(result);
end
SlashCmdList["GMHUNLEARN"] = GMH_UnLearn;
SLASH_GMHUNLEARN1="/unlearn";

function GMH_Revive(msg)
result=".revive"; 
outSAY(result);
end
SlashCmdList["GMHREVIVE"] = GMH_Revive;
SLASH_GMHREVIVE1="/revive";

function GMH_RevivePlr(msg)
local PlayerName=msg;
result=".reviveplr "..PlayerName; 
outSAY(result);
end
SlashCmdList["GMHREVIVEPLR"] = GMH_RevivePlr;
SLASH_GMHREVIVEPLR1="/reviveplr";

function GMH_AdvanceAllSkills(msg)
local Skillnumber=msg;
result=".maxskill"; 
outSAY(result);
end
SlashCmdList["GMHADVANCEALL"] = GMH_AdvanceAllSkills;
SLASH_GMHADVANCEALL1="/advanceall";
SLASH_GMHADVANCEALL2="/advanceallskills";

--Plays sound files named in the DBC
function TSR_Sounds(msg)
local Sound=msg
local line='/script PlaySound("'..Sound..'")';
ChatFrameEditBox:SetText("");
ChatFrameEditBox:Insert(line);
ChatEdit_SendText(ChatFrameEditBox);
end
SlashCmdList["TSRSOUND"] = TSR_Sounds;
SLASH_TSRSOUND1="/ps";

function TSR_TableReload(msg)
local Table=msg
result=".reload "..Table;
outSAY(result);
end
SlashCmdList["TSRTR"] = TSR_TableReload;
SLASH_TSRTR1="/tr";
SLASH_TSRTR2="/table";

--[[function GMH_Kick(msg)  
local Cmd, SubCmd = GMH_GetCmd(msg);
Player=msg;
result=".kickplayer "..cmd.." "..SubCmd; 
outSAY(result);
end
SlashCmdList["GMHKICK"] = GMH_Kick;
SLASH_GMHDELETE1="/kick";

 function GMH_GetCmd(msg)
 	if msg then
 		local a,b,c=strfind(msg, "(%S+)"); --contiguous string of non-space characters
 		if a then
 			return c, strsub(msg, b+2);
 		else	
 			return "";
 		end
 	end
 end
 function MyAddon_GetArgument(msg)
 	if msg then
 		local a,b=strfind(msg, "=");
 		if a then
 			return strsub(msg,1,a-1), strsub(msg, b+1);
 		else	
 			return "";
 		end
 	end
 end]]
