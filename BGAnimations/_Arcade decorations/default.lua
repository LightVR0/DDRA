local t = Def.ActorFrame {};

--Paseli
	t[#t+1] = Def.ActorFrame {
		LoadActor( "paseli" )..{
			OnCommand=cmd(x,SCREEN_RIGHT-29;y,SCREEN_TOP+114);
		};
	};

--Free Play
if GAMESTATE:GetCoinMode() == "CoinMode_Free" or GAMESTATE:IsEventMode() then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "free" )..{
			OnCommand=cmd(x,SCREEN_RIGHT-29;y,SCREEN_TOP+158);
		};
	};
end

--Joint Premium
if GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit" then

	t[#t+1] = Def.ActorFrame {
		LoadActor( "jp" )..{
			OnCommand=cmd(x,SCREEN_RIGHT-29;y,SCREEN_TOP+250);
		};
	};

end

--Doubles Premium
if GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit" or GAMESTATE:GetPremium() == "Premium_DoubleFor1Credit" then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "dp" )..{
			OnCommand=cmd(x,SCREEN_RIGHT-29;y,SCREEN_TOP+204);
		};
	};
end

--Frame BG
	t[#t+1] = Def.ActorFrame {
		LoadActor( "bg" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-59);
		};
	};

--Messages
t[#t+1] = Def.ActorFrame {
	LoadFont("_arial black 20px") .. {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-59);
	Text="...";
	OnCommand=cmd(playcommand,"Refresh");
	CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
	CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local bCanPlay = GAMESTATE:EnoughCreditsToJoin();
		local bReady = GAMESTATE:GetNumSidesJoined() > 0;
		if bCanPlay or bReady then
			--self:settext(THEME:GetString("ScreenTitleJoin","HelpTextJoin"));
			self:settext("Push start button");
			self:diffuseshift();
			self:effectcolor1(1,1,1,0);
			self:effectcolor2(1,1,1,1);
			self:effectperiod(0.666);
		else
			--self:settext(THEME:GetString("ScreenTitleJoin","HelpTextWait"));
			self:settext("Insert coins");
		end
	end;
	};
};

return t