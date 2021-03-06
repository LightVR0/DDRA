local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	-- LoadActor( "bg" )..{
	-- 	OnCommand=cmd(FullScreen);
	-- };
	-- --Black 100%
	-- Def.Quad{
	-- 	OnCommand=cmd(FullScreen;diffusecolor,Color.Black;);
	-- };
	--Black filter
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,Color.Black;diffusealpha,0;linear,0.566;diffusealpha,0.9;sleep,3.017;linear,0.267;diffusealpha,0);
	};
};

--Overlay
t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(diffusealpha,0;sleep,1.683;diffusealpha,.1;linear,0.267;diffusealpha,.75);
	--Center Hex
	LoadActor( "ex/hex_l" )..{
		OnCommand=cmd(Center;sleep,2.65;linear,.183;zoom,1.5;diffusealpha,.75;linear,.15;rotationz,-45;zoomx,0;diffusealpha,0;);
	};
	--Left
	--R1
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-74;addx,-420;sleep,4.183;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-74;addx,-296;sleep,3.9;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-74;addx,-172;sleep,3.617;diffusealpha,0);
	};
	--R2
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-37;addx,-358;sleep,4.116;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-37;addx,-234;sleep,3.833;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-37;addx,-110;sleep,3.55;diffusealpha,0);
	};
	--R3
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addx,-420;sleep,4.25;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addx,-296;sleep,3.967;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addx,-172;sleep,3.683;diffusealpha,0);
	};
	--R4
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,37;addx,-358;sleep,4.05;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,37;addx,-234;sleep,3.766;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,37;addx,-110;sleep,3.483;diffusealpha,0);
	};
	--R5
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,74;addx,-420;sleep,4.317;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,74;addx,-296;sleep,4.033;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,74;addx,-172;sleep,3.75;diffusealpha,0);
	};

	--Right
	--R1
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-74;addx,420;sleep,4.317;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-74;addx,296;sleep,4.033;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-74;addx,172;sleep,3.75;diffusealpha,0);
	};
	--R2
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-37;addx,358;sleep,4.05;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-37;addx,234;sleep,3.766;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,-37;addx,110;sleep,3.483;diffusealpha,0);
	};
	--R3
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addx,420;sleep,4.25;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addx,296;sleep,3.967;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addx,172;sleep,3.683;diffusealpha,0);
	};
	--R4
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,37;addx,358;sleep,4.116;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,37;addx,234;sleep,3.833;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,37;addx,110;sleep,3.55;diffusealpha,0);
	};
	--R5
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,74;addx,420;sleep,4.183;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,74;addx,296;sleep,3.9;diffusealpha,0);
	};
	LoadActor( "ex/hex_s" )..{
		OnCommand=cmd(Center;addy,74;addx,172;sleep,3.617;diffusealpha,0);
	};
};

t[#t+1] = Def.ActorFrame {
	--Left
	LoadActor( "ex/extra_exclusive" )..{
		OnCommand=cmd(diffusealpha,0;sleep,1.733;zoomx,2.5;x,SCREEN_LEFT-380;y,SCREEN_CENTER_Y;diffusealpha,.10;linear,1.75;Center;diffusealpha,1;zoom,1;linear,0.901;diffusealpha,0;);
	};
	--Center
	LoadActor( "ex/extra_exclusive" )..{
		OnCommand=cmd(diffusealpha,0;Center;zoomx,2.5;sleep,1.733;diffusealpha,.10;linear,0.05;zoom,1;diffusealpha,1;sleep,3.4;linear,0.4;diffusealpha,0;);
	};
	--Right
	LoadActor( "ex/extra_exclusive" )..{
		OnCommand=cmd(diffusealpha,0;sleep,1.733;zoomx,2.5;x,SCREEN_RIGHT+380;y,SCREEN_CENTER_Y;diffusealpha,.10;linear,1.75;Center;diffusealpha,1;zoom,1;linear,0.901;diffusealpha,0;);
	};
};

return t;