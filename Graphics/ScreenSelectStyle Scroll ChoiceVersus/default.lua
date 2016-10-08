local t = Def.ActorFrame {};
t[#t+1] = Def.ActorFrame {
  LoadActor("Character") .. {
		InitCommand=cmd(diffusealpha,0;x,-42;y,320;zoom,1.8;rotationz,180;rotationy,180;fadetop,0.5;croptop,0.5);
		OnCommand=cmd(zoomy,0;sleep,0.6;linear,0.1;diffusealpha,0.1;zoomy,1.8;linear,0.1;zoomy,1.8;zoomx,1.7;linear,0.1;zoomx,1.8);
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
	};
};
t[#t+1] = Def.ActorFrame {
  LoadActor("Pad") .. {
	  InitCommand=cmd(diffusealpha,0;x,-5;y,165);
		OnCommand=cmd(sleep,0.5;linear,0.1;diffusealpha,1;zoom,1.8;linear,0.1;zoom,1.3;linear,0.2;zoom,1.8);
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
	};
	--Glow Effect
	LoadActor("Pad")..{
		InitCommand=cmd(diffusealpha,0;x,-5;y,165;blend,'BlendMode_Add');
		OnCommand=function(self)
			if GAMESTATE:GetNumPlayersEnabled() == 2 then
				self:sleep(0.5):linear(0.1):
				diffusealpha(0):zoom(1.8):linear(0.1):
				zoom(1.3):linear(0.2):zoom(1.8):queuecommand("Animate")
			else
				self:diffusealpha(0)
			end;
		end;
		GainFocusCommand=cmd(stoptweening;zoom,1.8;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.5;diffusealpha,0.5;linear,0.5;diffusealpha,0;queuecommand,"Animate");
		LoseFocusCommand=cmd(stoptweening;zoom,0);
		OffCommand=cmd(stoptweening;smooth,0.1;zoom,0;diffusealpha,0);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor("Character") .. {
	  InitCommand=cmd(diffusealpha,1;x,-44;y,-96;zoom,1.8);
		OnCommand=cmd(zoomy,0;sleep,0.6;linear,0.1;diffusealpha,1;zoomy,1.8;linear,0.1;zoomy,1.8;zoomx,1.7;linear,0.1;zoomx,1.8);
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
	};
};
t[#t+1] = Def.ActorFrame {
	LoadActor("Title")..{
		InitCommand=cmd(x,205;y,-220;zoom,1.8);
		OnCommand=function(self)
			if GAMESTATE:GetNumPlayersEnabled() == 1 then
				self:diffusealpha(0):linear(0.2):
				zoomy(1.8):diffusealpha(1):playcommand("Animate")
			else
				self:diffusealpha(0)
			end;
		end;
		GainFocusCommand=cmd(stoptweening;linear,0.1;zoomy,0);
		LoseFocusCommand=cmd(stoptweening;linear,0.1;zoomy,1.8;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,0;sleep,1;queuecommand,"Animate");
		OffCommand=cmd(stoptweening;smooth,0.3;zoom,0;diffusealpha,0;);
	};
};



return t;
