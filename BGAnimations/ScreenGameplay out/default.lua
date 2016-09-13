local song = GAMESTATE:GetCurrentSong();
local t = Def.ActorFrame{};

if not GAMESTATE:IsDemonstration() then

	t[#t+1] = Def.ActorFrame {
		--Black BG
		Def.Quad{
			OnCommand=cmd(Center;FullScreen;diffusecolor,Color.Black;diffusealpha,0;sleep,0.434;linear,0.033;diffusealpha,1;);
		};

		--Animated grid
		LoadActor("hextile2")..{
			InitCommand=cmd(FullScreen;);
			OnCommand=function(self)
				local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
				local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
				self:customtexturerect(0,0,w,h);
				self:texcoordvelocity(2.5,0);
				self:cropright(.5);
				self:diffusealpha(0);
				self:sleep(0.701);
				self:linear(0.2);
				self:diffusealpha(1);
				self:sleep(0.734);
				self:linear(0.067);
				self:diffusealpha(0);
			end;
		};

		LoadActor("hextile2")..{
			InitCommand=cmd(FullScreen;);
			OnCommand=function(self)
				local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
				local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
				self:customtexturerect(0,0,w,h);
				self:texcoordvelocity(-2.5,0);
				self:cropleft(.5);
				self:diffusealpha(0);
				self:sleep(0.701);
				self:linear(0.2);
				self:diffusealpha(1);
				self:sleep(0.734);
				self:linear(0.067);
				self:diffusealpha(0);
			end;
		};

		--White flash
		LoadActor( "../_door/whiteflash" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomx,0;sleep,0.3;linear,0.134;zoomx,1;linear,0.099;zoom,3);
		};

		--Up side
		--BG
		LoadActor( "../_door/bluebg" )..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-67;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_TOP+67;);
			OnCommand=cmd();
		};
		-- LoadActor( "../_door/blueshdw" )..{
		-- 	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-67;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_TOP+67;);
		-- 	OnCommand=cmd();
		-- };
		LoadActor( "../_door/lines" )..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-67;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_TOP+67;);
			OnCommand=cmd();
		};

		--Down Side
		--BG
		LoadActor( "../_door/bluebg" )..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;zoomy,-1;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;);
			OnCommand=cmd();
		};
		-- LoadActor( "../_door/blueshdw" )..{
		-- 	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;zoomy,-1;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;);
		-- 	OnCommand=cmd();
		-- };
		LoadActor( "../_door/lines" )..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;zoomy,-1;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;);
			OnCommand=cmd();
		};

	}

	if not GAMESTATE:IsCourseMode() and song:GetDisplayFullTitle() == "Tohoku EVOLVED" then
		t[#t+1] = Def.ActorFrame {
			--Left
			LoadActor( "tohoku" )..{
				OnCommand=cmd(x,SCREEN_LEFT-556;y,SCREEN_CENTER_Y;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,1.767;linear,0.083;diffusealpha,0;zoomy,0);
			};
			--Right
			LoadActor( "tohoku" )..{
				OnCommand=cmd(x,SCREEN_RIGHT+556;y,SCREEN_CENTER_Y;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,1.767;linear,0.083;diffusealpha,0;zoomy,0);
			};
			--Glow
			LoadActor( "tohoku" )..{
				OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.283;diffusealpha,0.5;zoom,1.5;linear,0.017;diffusealpha,1;linear,0.133;diffusealpha,0;zoom,2);
			};
		}
	else
		t[#t+1] = Def.ActorFrame {
			--Left
			LoadActor( "cleared" )..{
				OnCommand=cmd(x,SCREEN_LEFT-556;y,SCREEN_CENTER_Y;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,1.767;linear,0.083;diffusealpha,0;zoomy,0);
			};
			--Right
			LoadActor( "cleared" )..{
				OnCommand=cmd(x,SCREEN_RIGHT+556;y,SCREEN_CENTER_Y;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,1.767;linear,0.083;diffusealpha,0;zoomy,0);
			};
			--Glow
			LoadActor( "cleared" )..{
				OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.283;diffusealpha,0.5;zoom,1.5;linear,0.017;diffusealpha,1;linear,0.133;diffusealpha,0;zoom,2);
			};
		}
	end

end

return t;