local t = Def.ActorFrame{}

if not GAMESTATE:IsDemonstration() then

	--Jacket
	t[#t+1] = Def.ActorFrame {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;draworder,1);
		Def.Sprite {
			OnCommand=function (self)
				local course = GAMESTATE:GetCurrentCourse();
				if GAMESTATE:IsCourseMode() then
					if course:GetBackgroundPath() then
						self:Load(course:GetBackgroundPath())
						self:setsize(300,300);
					else
						self:Load(THEME:GetPathG("", "Common fallback jacket"));
						self:setsize(300,300);
					end;
				else
				local song = GAMESTATE:GetCurrentSong();
					if song then
						if song:HasJacket() then
							self:diffusealpha(1);
							self:LoadBackground(song:GetJacketPath());
							self:setsize(300,300);
						elseif song:HasBackground() then
							self:diffusealpha(1);
							self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
							self:setsize(300,300);
						else
							self:Load(THEME:GetPathG("","Common fallback jacket"));
							self:setsize(300,300);
						end;
					else
						self:diffusealpha(0);
				end;
				self:sleep(3);
				self:diffusealpha(0);
			end;
			end;
		};
	};

end

t[#t+1] = StandardDecorationFromFileOptional("StageFrame","StageFrame");

t[#t+1] = LoadActor("../ScreenGameplay Danger");

t[#t+1] = StandardDecorationFromFile("SongInformation","SongInformation");

for player in ivalues(GAMESTATE:GetHumanPlayers()) do

	t[#t+1] = LoadActor( "OptionIcons/OptionIcons.lua", player )..{
		InitCommand=function(self)
			self:x(player == PLAYER_1 and SCREEN_LEFT+108 or SCREEN_RIGHT-84)
				:y(_screen.cy+165)
				:draworder(1)
		end
	}
end

t[#t+1] = StandardDecorationFromFile("StageDisplay","StageDisplay");
t[#t+1] = StandardDecorationFromFile("ScoreFrame","ScoreFrame")

return t