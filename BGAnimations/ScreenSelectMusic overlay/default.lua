local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "_frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-67;y,SCREEN_TOP+71)
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "_info" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-214;y,SCREEN_TOP+36)
	}
};

-- t[#t+1] = Def.ActorFrame {
-- 	LoadActor( "_meter" )..{
-- 		OnCommand=cmd(x,SCREEN_CENTER_X+35;y,SCREEN_TOP+93)
-- 	}
-- };

t[#t+1] = Def.ActorFrame {
	LoadActor( "_bpm" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+35;y,SCREEN_TOP+93)
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "_coverbg" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+158;y,SCREEN_TOP+69)
	}
};

--Song Info
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) c = self:GetChildren(); end;
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP);
	OffCommand=cmd(diffusealpha,0);
	--Title
	LoadFont("_arial black 20px")..{
		Name="Title";
		InitCommand=cmd(horizalign,left;diffusecolor,color("#000000");addy,54;addx,-225);
	};
	--Artist
	LoadFont("_arial black 20px")..{
		Name="Artist";
		InitCommand=cmd(horizalign,left;addy,68;addx,-225);
	};

	--Jacket
	Def.Sprite{
		Name="SJacket";
		InitCommand=cmd(addy,69;addx,158);
	};

	SetCommand=function(self)
		local song = GAMESTATE:GetCurrentSong();
		if song then
			--Song
			local title;
			if song:GetDisplaySubTitle() == "" then
				title = song:GetDisplayMainTitle();
			else
				title = song:GetDisplayFullTitle();
			end;
			c.Title:maxwidth(300);
			c.Title:settext(title);

			local artist;
			artist = song:GetDisplayArtist();
			c.Artist:maxwidth(300);
			c.Artist:settext(artist);

			if song:HasJacket() then
				c.SJacket:LoadBackground(song:GetJacketPath());
				c.SJacket:setsize(100,100);
			elseif song:HasBackground() then
				c.SJacket:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
				c.SJacket:setsize(100,100);
			else
				c.SJacket:Load(THEME:GetPathG("", "Common fallback jacket"));
				c.SJacket:setsize(100,100);
			end;
			c.Title:diffusealpha(1);
			c.Artist:diffusealpha(1);
			c.SJacket:diffusealpha(1);
		else
			--Not Song
			c.Title:diffusealpha(0);
			c.Artist:diffusealpha(0);
			c.SJacket:diffusealpha(0);
		end;
	end;

	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
};

return t