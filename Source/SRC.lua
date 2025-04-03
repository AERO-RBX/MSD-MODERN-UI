
local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" -- The Char Library
local rint = math.random(3, #chars) -- 1 out of length of chars
local rchar = chars:sub(rint, rint) -- Pick it

local _New_ = Instance.new;

local Lib = _New_("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
Lib.Name = rint ;

local lib = {TabCount = 0}


local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"));





local function Simple_Drag(ClickObject, Object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	ClickObject.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = Input.Position
			StartPosition = Object.Position

			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)

	ClickObject.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
			DragInput = Input
		end
	end)

	UserInputService.InputChanged:Connect(function(Input)
		if Input == DragInput and Dragging then
			local Delta = Input.Position - DragStart
			Object.Position = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		end
	end)
end


function lib:Init(e)
	e = e or {}
	
	local Theme = e.ThemeColor
	
	local Main = _New_("Frame", Lib);
	Main.BackgroundColor3 = Color3.fromRGB(18.000000827014446, 18.000000827014446, 18.000000827014446);
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Main.BorderSizePixel = 0;
	Main.Name = "Main";
	Main.Position = UDim2.new(0.24708817899227142, 0, 0.2810945212841034, 0);
	Main.Size = UDim2.new(0, 607, 0, 352);
	--Enable_Drag(Main,Main)
	 Simple_Drag(Main,Main)
	local UICorner = _New_("UICorner", Main);

	local Sidebar = _New_("Frame", Main);
	Sidebar.BackgroundColor3 = Color3.fromRGB(25.000000409781933, 25.000000409781933, 25.000000409781933);
	Sidebar.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Sidebar.BorderSizePixel = 0;
	Sidebar.Name = "Sidebar";
	Sidebar.Size = UDim2.new(0.0396551713347435, 120, 1, 0);

	local TabList = _New_("Frame", Sidebar);
	TabList.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	TabList.BackgroundTransparency = 1;
	TabList.BorderColor3 = Color3.fromRGB(0, 0, 0);
	TabList.BorderSizePixel = 0;
	TabList.Name = "TabList";
	TabList.Size = UDim2.new(1, 0, 1, -60);

	local UIListLayout = _New_("UIListLayout", TabList);
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;

	local UIPadding = _New_("UIPadding", TabList);
	UIPadding.PaddingTop = UDim.new(0, 14);

	local UICorner_0 = _New_("UICorner", Sidebar);

	local UIStroke = _New_("UIStroke", Sidebar);
	UIStroke.Color = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709);

	local div = _New_("Frame", Sidebar);
	div.BackgroundColor3 = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709);
	div.BorderColor3 = Color3.fromRGB(0, 0, 0);
	div.BorderSizePixel = 0;
	div.Name = "div";
	div.Size = UDim2.new(1, 0, 0, 1);
	div.ZIndex = 3;

	local UIListLayout_0 = _New_("UIListLayout", Sidebar);
	UIListLayout_0.SortOrder = Enum.SortOrder.LayoutOrder;

	local Info = _New_("Frame", Sidebar);
	Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Info.BackgroundTransparency = 1;
	Info.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Info.BorderSizePixel = 0;
	Info.Name = "Info";
	Info.Size = UDim2.new(1, 0, 0, 55);

	local ImageLabel = _New_("ImageLabel", Info);
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	ImageLabel.BackgroundTransparency = 1;
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0);
	ImageLabel.BorderSizePixel = 0;
	ImageLabel.Position = UDim2.new(0.055528294295072556, 0, 0.16363635659217834, 0);
	ImageLabel.Size = UDim2.new(0, 36, 0, 36);

	local UICorner_1 = _New_("UICorner", ImageLabel);
	UICorner_1.CornerRadius = UDim.new(1, 0);

	local LocalScript = _New_("LocalScript", ImageLabel);

	local UIStroke_0 = _New_("UIStroke", ImageLabel);
	UIStroke_0.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	UIStroke_0.Color = Color3.fromRGB(255, 255, 255);

	local UIGradient = _New_("UIGradient", UIStroke_0);
	
	
	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, e.ThemeColor or 255,255,255), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))};
	UIGradient.Rotation = 90;
	
	
	
	
	local Username = _New_("TextLabel", Info);
	Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Username.BackgroundTransparency = 1;
	Username.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Username.BorderSizePixel = 0;
	Username.Name = "Username";
	Username.Position = UDim2.new(0.3262287378311157, 0, 0.16363635659217834, 0);
	Username.Size = UDim2.new(0, 83, 0, 20);
	Username.Font = Enum.Font.SourceSansBold;
	Username.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	Username.TextColor3 = Color3.fromRGB(144.00000661611557, 144.00000661611557, 144.00000661611557);
	Username.TextSize = 14;
	Username.TextXAlignment = Enum.TextXAlignment.Left;

	local LocalScript_0 = _New_("LocalScript", Username);

	local script_Context = _New_("TextLabel", Info);
	script_Context.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	script_Context.BackgroundTransparency = 1;
	script_Context.BorderColor3 = Color3.fromRGB(0, 0, 0);
	script_Context.BorderSizePixel = 0;
	script_Context.Name = "script Context";
	script_Context.Position = UDim2.new(0.3262287378311157, 0, 0.41818180680274963, 0);
	script_Context.Size = UDim2.new(0, 83, 0, 20);
	script_Context.Font = Enum.Font.SourceSansBold;
	script_Context.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	script_Context.Text = e.Description or "No Context N/A";
	script_Context.TextColor3 = Color3.fromRGB(80.00000283122063, 80.00000283122063, 80.00000283122063);
	script_Context.TextSize = 14;
	script_Context.TextXAlignment = Enum.TextXAlignment.Left;

	local PageToggle = _New_("TextButton", Info);
	PageToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	PageToggle.BackgroundTransparency = 1;
	PageToggle.BorderColor3 = Color3.fromRGB(0, 0, 0);
	PageToggle.BorderSizePixel = 0;
	PageToggle.Name = "PageToggle";
	PageToggle.Position = UDim2.new(0.06941036880016327, 0, 0.16363635659217834, 0);
	PageToggle.Size = UDim2.new(0, 37, 0, 43);
	PageToggle.Font = Enum.Font.SourceSans;
	PageToggle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	PageToggle.Text = "";
	PageToggle.TextColor3 = Color3.fromRGB(0, 0, 0);
	PageToggle.TextSize = 14;



	local ToolTip = _New_("TextLabel", PageToggle);
	ToolTip.BackgroundColor3 = Color3.fromRGB(18.000000827014446, 18.000000827014446, 18.000000827014446);
	ToolTip.BorderColor3 = Color3.fromRGB(0, 0, 0);
	ToolTip.BorderSizePixel = 0;
	ToolTip.Name = "ToolTip";
	ToolTip.Position = UDim2.new(-3.324324369430542, 0, -0.23255814611911774, 0);
	ToolTip.Size = UDim2.new(0, 139, 0, 22);
	ToolTip.Visible = false;
	ToolTip.Font = Enum.Font.SourceSansBold;
	ToolTip.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	ToolTip.Text = "Click Here to Open Extras";
	ToolTip.TextColor3 = Color3.fromRGB(150.0000062584877, 150.0000062584877, 150.0000062584877);
	ToolTip.TextSize = 14;

	local UIStroke_1 = _New_("UIStroke", Main);
	UIStroke_1.Color = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709);

	local sidebarFade = _New_("Frame", Main);
	sidebarFade.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	sidebarFade.BorderColor3 = Color3.fromRGB(0, 0, 0);
	sidebarFade.BorderSizePixel = 0;
	sidebarFade.Name = "sidebarFade";
	sidebarFade.Position = UDim2.new(0.22405271232128143, 0, 0, 0);
	sidebarFade.Size = UDim2.new(-0.13838550448417664, 100, 1, 0);

	local UIGradient_0 = _New_("UIGradient", sidebarFade);
	UIGradient_0.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(25.000000409781933, 25.000000409781933, 25.000000409781933)), ColorSequenceKeypoint.new(1, Color3.fromRGB(18.000000827014446, 18.000000827014446, 18.000000827014446))};

	local Tabs = _New_("Frame", Main);
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Tabs.BackgroundTransparency = 1;
	Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Tabs.BorderSizePixel = 0;
	Tabs.Name = "Tabs";
	Tabs.Position = UDim2.new(0.2635914385318756, 0, 0, 0);
	Tabs.Size = UDim2.new(1, -160, 1, 0);

	local ExtraPage = _New_("Frame", Tabs);
	ExtraPage.BackgroundColor3 = Color3.fromRGB(18.000000827014446, 18.000000827014446, 18.000000827014446);
	ExtraPage.BorderColor3 = Color3.fromRGB(0, 0, 0);
	ExtraPage.BorderSizePixel = 0;
	ExtraPage.Name = "ExtraPage";
	ExtraPage.Size = UDim2.new(1, 0, 1, 0);
	ExtraPage.Visible = false;
	ExtraPage.ZIndex = 45;

	local Slop = _New_("TextLabel", ExtraPage);
	Slop.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Slop.BackgroundTransparency = 1;
	Slop.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Slop.BorderSizePixel = 0;
	Slop.Name = "Slop";
	Slop.Position = UDim2.new(0.2751677930355072, 0, 0, 0);
	Slop.Size = UDim2.new(0, 200, 0, 50);
	Slop.ZIndex = 45;
	Slop.Font = Enum.Font.SourceSansBold;
	Slop.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	Slop.Text = "Extras";
	Slop.TextColor3 = Color3.fromRGB(144.00000661611557, 144.00000661611557, 144.00000661611557);
	Slop.TextSize = 36;

	local ScriptBind = _New_("TextButton", ExtraPage);
	ScriptBind.AutoButtonColor = false;
	ScriptBind.BackgroundColor3 = Color3.fromRGB(31.000000052154064, 31.000000052154064, 31.000000052154064);
	ScriptBind.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
	ScriptBind.Name = "ScriptBind";
	ScriptBind.Position = UDim2.new(0.41609618067741394, 0, 0.18868185579776764, 6);
	ScriptBind.Size = UDim2.new(0, 73, 0, 21);
	ScriptBind.ZIndex = 45;
	ScriptBind.Font = Enum.Font.Ubuntu;
	ScriptBind.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	ScriptBind.Text = "["..e.Toggle_Bind.Name.."]";
	ScriptBind.TextColor3 = Color3.fromRGB(255, 255, 255);
	ScriptBind.TextSize = 14;

	local TogKeyText = _New_("TextLabel", ExtraPage);
	TogKeyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	TogKeyText.BackgroundTransparency = 1;
	TogKeyText.BorderColor3 = Color3.fromRGB(0, 0, 0);
	TogKeyText.BorderSizePixel = 0;
	TogKeyText.Name = "TogKeyText";
	TogKeyText.Position = UDim2.new(0.38926175236701965, 0, 0.09943182021379471, 0);
	TogKeyText.Size = UDim2.new(0, 98, 0, 50);
	TogKeyText.ZIndex = 45;
	TogKeyText.Font = Enum.Font.SourceSansBold;
	TogKeyText.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	TogKeyText.Text = "Gui Toggle Key";
	TogKeyText.TextColor3 = Color3.fromRGB(255, 255, 255);
	TogKeyText.TextSize = 14;

	local Color_Pickers = _New_("Frame", Main);
	Color_Pickers.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	Color_Pickers.BackgroundTransparency = 1;
	Color_Pickers.BorderColor3 = Color3.fromRGB(0, 0, 0);
	Color_Pickers.BorderSizePixel = 0;
	Color_Pickers.Name = "Color Pickers";
	Color_Pickers.Position = UDim2.new(1.013071894645691, 0, 0.018315019086003304, 0);
	Color_Pickers.Size = UDim2.new(0, 184, 0, 280);

	--Scripts
	task.spawn(function()--[[LocalScript]] 
		local script = LocalScript;


		local Players = game:GetService("Players")

		local player = Players.LocalPlayer

		local PLACEHOLDER_IMAGE = "rbxassetid://0" -- replace with placeholder image id

		-- fetch the thumbnail

		local userId = player.UserId

		local thumbType = Enum.ThumbnailType.HeadShot

		local thumbSize = Enum.ThumbnailSize.Size420x420

		local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize) -- content is image and is Ready can have true or false to make code know if image loaded

		-- set the ImageLabel's content to the user thumbnail

		local imageLabel = script.Parent

		imageLabel.Image = (isReady and content) or PLACEHOLDER_IMAGE

	end);


	Username.Text = game.Players.LocalPlayer.Name
	-- this is a preBuild function for a SWIFT ui library DO NOT EDIT THESE FUNCTIONS
	_G.QQQ = false
	_G.Btn = PageToggle
	_G.MoClk1 =	_G.Btn.MouseButton1Down
	_G.MoEnter = _G.Btn.MouseEnter
	_G.MoLeave = _G.Btn.MouseLeave
	_G.ExPage = ExtraPage
	_G.MoClk1:Connect(function()
		-- Toggle Script L U N R | Functions
		if _G.QQQ == false then
			_G.QQQ = true 
			ExtraPage.Visible = true
		else
			_G.QQQ = false 
			ExtraPage.Visible = false
		end
	end)

	_G.MoEnter:Connect(function()
		-- ToolTip Script L U N R | Functions
		ToolTip.Visible = true
	end)
	_G.MoLeave:Connect(function()
		-- ToolTip Script L U N R | Functions
		ToolTip.Visible = false
	end)

	local oldKey = e.Toggle_Bind.Name


	local blacklist = {
		"W","A","S","D","Slash","Tab","Backspace","Escape","Space","Delete","Unknown","Backquote"
	}

	ScriptBind.MouseButton1Click:connect(function(e) 
		ScriptBind.Text = "..."
		local a, b = game:GetService('UserInputService').InputBegan:wait();


		if not table.find(blacklist, a.KeyCode.Name) then
			ScriptBind.Text = "[".. a.KeyCode.Name.."]"
			oldKey = a.KeyCode.Name;
		else
			ScriptBind.Text =	 "[NONE]"
			oldKey = Enum.KeyCode.World55
		end



	end)

	_G.UIVisiblity = true
	game:GetService("UserInputService").InputBegan:connect(function(current, ok) 
		if not ok then 
			if current.KeyCode.Name == oldKey then 
				if _G.UIVisiblity == true then
					_G.UIVisiblity = false
					Main.Visible = false	
				else

					_G.UIVisiblity = true
					Main.Visible = true	
				end
			end
		end
	end)
	
	local tabcontrol = {}
	
	function tabcontrol:Tab(e)
		e = e or {}
		lib.TabCount = lib.TabCount +1
		local TabBtn = _New_("TextButton", TabList);
		TabBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		TabBtn.BackgroundTransparency = 1;
		TabBtn.BorderColor3 = Color3.fromRGB(0, 0, 0);
		TabBtn.BorderSizePixel = 0;
		TabBtn.Name = "TabBtn";
		TabBtn.Size = UDim2.new(0.9999998807907104, 0, -0.05821917951107025, 50);
		TabBtn.Font = Enum.Font.SourceSansBold;
		TabBtn.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		TabBtn.Text = e.Text or "N/A";
		TabBtn.TextColor3 = Color3.fromRGB(144.00000661611557, 144.00000661611557, 144.00000661611557);
		TabBtn.TextSize = 14;

		local Tab = _New_("ScrollingFrame", Tabs);
		Tab.Active = true;
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Tab.BackgroundTransparency = 1;
		Tab.BorderColor3 = Color3.fromRGB(0, 0, 0);
		Tab.BorderSizePixel = 0;
		Tab.Name = "Tab";
		Tab.Size = UDim2.new(1, 0, 1, 0);
		Tab.Visible = false;
		Tab.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Tab.CanvasSize = UDim2.new(0, 0, 1, 0);
		Tab.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0);
		Tab.ScrollBarThickness = 2;
		Tab.MouseEnter:Connect(function()
			local mouse = Players.LocalPlayer:GetMouse()
			mouse.Icon = "rbxasset://SystemCursors/Arrow"
		end)
		local UIListLayout = _New_("UIListLayout", Tab);
		UIListLayout.Padding = UDim.new(0, 7);
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;

		local UIPadding = _New_("UIPadding", Tab);
		UIPadding.PaddingTop = UDim.new(0, 7);
		
		
		local tweenInfo = TweenInfo.new(0.3) -- just time
		local Active_color = {TextColor3 = Color3.fromRGB(193, 193, 193);}
		local active_Tween = TweenService:Create(TabBtn, tweenInfo, Active_color)
		local Disabled_color = {TextColor3 = Color3.fromRGB(116, 116, 116);}
		
		
		TabBtn.MouseButton1Click:Connect(function()
			for _,v in ipairs(Tabs:GetChildren()) do --// panels
				v.Visible = false
			end
			Tab.Visible = true 


			for _,v in ipairs(TabList:GetChildren()) do
				if v.Name == "TabBtn" then
					local disabled_Tween = TweenService:Create(v, tweenInfo, Disabled_color)
					disabled_Tween:Play()
				end

			end


			active_Tween:Play()


		end)
		
		if lib.TabCount == 1 then
			TabBtn.TextColor3 = Color3.fromRGB(193, 193, 193)
			Tab.Visible = true
		end
		
		-- end of Tab stuff
		local e = {} -- elements
		function e:Button(e)
			e = e or {}
			e.callback = e.callback or function()end
			
			local Button = _New_("Frame", Tab);
			Button.BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985);
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Button.BorderSizePixel = 0;
			Button.Name = "Button";
			Button.Position = UDim2.new(0.050000011920928955, 0, 0.10724637657403946, 0);
			Button.Size = UDim2.new(0.8999999761581421, 0, 0, 40);

			local Title = _New_("TextLabel", Button);
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Title.BackgroundTransparency = 1;
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Title.BorderSizePixel = 0;
			Title.Name = "Title";
			Title.Position = UDim2.new(0.027342703193426132, 0, 0.13429412245750427, 0);
			Title.Size = UDim2.new(0, 162, 0, 30);
			Title.Font = Enum.Font.SourceSansBold;
			Title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Title.Text = e.Text or "N/A";
			Title.TextColor3 = Color3.fromRGB(193.00000369548798, 193.00000369548798, 193.00000369548798);
			Title.TextSize = 14;
			Title.TextXAlignment = Enum.TextXAlignment.Left;

			local UICorner = _New_("UICorner", Button);

			local UIStroke = _New_("UIStroke", Button);
			UIStroke.Color = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709);

			local action = _New_("TextButton", Button);
			action.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			action.BackgroundTransparency = 1;
			action.BorderColor3 = Color3.fromRGB(0, 0, 0);
			action.BorderSizePixel = 0;
			action.Name = "action";
			action.Size = UDim2.new(1, 0, 1, 0);
			action.Font = Enum.Font.SourceSans;
			action.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			action.Text = "";
			action.TextColor3 = Color3.fromRGB(0, 0, 0);
			action.TextSize = 14;

			local ImageLabel = _New_("ImageLabel", Button);
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			ImageLabel.BackgroundTransparency = 1;
			ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0);
			ImageLabel.BorderSizePixel = 0;
			ImageLabel.Position = UDim2.new(0.904797375202179, 0, 0.17499999701976776, 0);
			ImageLabel.Size = UDim2.new(0, 25, 0, 25);
			ImageLabel.Image = "rbxassetid://97644658902945";
			ImageLabel.ImageColor3 = Color3.fromRGB(197.00001865625381, 197.00001865625381, 197.00001865625381);
			action.MouseButton1Down:Connect(function()
				e.callback()
			end)
		end
		
		function e:Toggle(e)
			e = e or {}
			e.callback = e.callback or function()end

			local Toggle = _New_("Frame", Tab);
			Toggle.BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985);
			Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Toggle.BorderSizePixel = 0;
			Toggle.Name = "Toggle";
			Toggle.Position = UDim2.new(0.050000011920928955, 0, 0.10724637657403946, 0);
			Toggle.Size = UDim2.new(0.8999999761581421, 0, 0, 40);

			local Title = _New_("TextLabel", Toggle);
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Title.BackgroundTransparency = 1;
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Title.BorderSizePixel = 0;
			Title.Name = "Title";
			Title.Position = UDim2.new(0.027342703193426132, 0, 0.13429412245750427, 0);
			Title.Size = UDim2.new(0, 162, 0, 30);
			Title.Font = Enum.Font.SourceSansBold;
			Title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Title.Text = e.Text or "N/A";
			Title.TextColor3 = Color3.fromRGB(193.00000369548798, 193.00000369548798, 193.00000369548798);
			Title.TextSize = 14;
			Title.TextXAlignment = Enum.TextXAlignment.Left;

			local UICorner = _New_("UICorner", Toggle);

			local UIStroke = _New_("UIStroke", Toggle);
			UIStroke.Color = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709);

			local action = _New_("TextButton", Toggle);
			action.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			action.BackgroundTransparency = 1;
			action.BorderColor3 = Color3.fromRGB(0, 0, 0);
			action.BorderSizePixel = 0;
			action.Name = "action";
			action.Size = UDim2.new(1, 0, 1, 0);
			action.Font = Enum.Font.SourceSans;
			action.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			action.Text = "";
			action.TextColor3 = Color3.fromRGB(0, 0, 0);
			action.TextSize = 14;

			local Back = _New_("Frame", Toggle);
			Back.BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354);
			Back.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Back.BorderSizePixel = 0;
			Back.Name = "Back";
			Back.Position = UDim2.new(0.8973402380943298, 0, 0.15000000596046448, 0);
			Back.Size = UDim2.new(0, 28, 0, 28);

			local UICorner_0 = _New_("UICorner", Back);

			local InnerColor = _New_("Frame", Back);
			InnerColor.AnchorPoint = Vector2.new(0.5, 0.5);
			InnerColor.BackgroundColor3 = Color3.fromRGB(48.00000473856926, 48.00000473856926, 48.00000473856926);
			InnerColor.BackgroundTransparency = 1;
			InnerColor.BorderColor3 = Color3.fromRGB(0, 0, 0);
			InnerColor.BorderSizePixel = 0;
			InnerColor.Name = "InnerColor";
			InnerColor.Position = UDim2.new(0.5, 0, 0.5, 0);
			InnerColor.Size = UDim2.new(0, 22, 0, 22);

			local UICorner_1 = _New_("UICorner", InnerColor);
			
			local TweenService = game:GetService("TweenService")
			local TweenSpeed = 0.2
			local inFunc = TweenInfo.new(TweenSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0)

			local x = false
			action.MouseButton1Down:Connect(function()
				if x == false then
					x = true
					TweenService:Create(InnerColor, inFunc,{Transparency = 0}):Play()
					pcall(e.callback,true)
				else
					x = false
					TweenService:Create(InnerColor, inFunc,{Transparency = 1 }):Play()
					pcall(e.callback,false)
				end
			end)
			
		end
		
		function e:Slider(e)
			e = e or {}
			

			local Slider = _New_("Frame", Tab);
			Slider.BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985);
			Slider.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Slider.BorderSizePixel = 0;
			Slider.Name = "Slider";
			Slider.Position = UDim2.new(0.050000011920928955, 0, 0.10724637657403946, 0);
			Slider.Size = UDim2.new(0.8999999761581421, 0, 0, 40);

			local Title = _New_("TextLabel", Slider);
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Title.BackgroundTransparency = 1;
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Title.BorderSizePixel = 0;
			Title.Name = "Title";
			Title.Position = UDim2.new(0.027342703193426132, 0, 0.13429412245750427, 0);
			Title.Size = UDim2.new(0, 162, 0, 30);
			Title.Font = Enum.Font.SourceSansBold;
			Title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Title.Text = e.Text or "N/A";
			Title.TextColor3 = Color3.fromRGB(193.00000369548798, 193.00000369548798, 193.00000369548798);
			Title.TextSize = 14;
			Title.TextXAlignment = Enum.TextXAlignment.Left;

			local UICorner = _New_("UICorner", Slider);

			local UIStroke = _New_("UIStroke", Slider);
			UIStroke.Color = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709);

			local SliderBack = _New_("TextButton", Slider);
			SliderBack.AutoButtonColor = false;
			SliderBack.BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354);
			SliderBack.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
			SliderBack.Name = "SliderBack";
			SliderBack.Position = UDim2.new(0.18435370922088623, 0, -0.07500000298023224, 15);
			SliderBack.Size = UDim2.new(0, 315, 0, 16);
			SliderBack.Font = Enum.Font.SourceSans;
			SliderBack.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			SliderBack.Text = "";
			SliderBack.TextColor3 = Color3.fromRGB(0, 0, 0);
			SliderBack.TextSize = 14;

			local SliderFill = _New_("Frame", SliderBack);
			SliderFill.BackgroundColor3 = Color3.fromRGB(48.000000938773155, 48.000000938773155, 48.000000938773155);
			SliderFill.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
			SliderFill.Name = "SliderFill";
			SliderFill.Position = UDim2.new(-0.00389113649725914, 0, 0, 0);
			SliderFill.Size = UDim2.new(0.003891135100275278, 0, 1, 0);

			local UICorner_0 = _New_("UICorner", SliderFill);

			local UICorner_1 = _New_("UICorner", SliderBack);

			local SliderValue = _New_("TextLabel", Slider);
			SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			SliderValue.BackgroundTransparency = 1;
			SliderValue.Name = "SliderValue";
			SliderValue.Position = UDim2.new(0.8575689196586609, 8, 0.05000000074505806, 8);
			SliderValue.Size = UDim2.new(0.0653742253780365, 0, 0.5, 0);
			SliderValue.Font = Enum.Font.SourceSansBold;
			SliderValue.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			SliderValue.Text = e.Value or "0";
			SliderValue.TextColor3 = Color3.fromRGB(193.00000369548798, 193.00000369548798, 193.00000369548798);
			SliderValue.TextSize = 14;
			SliderValue.TextXAlignment = Enum.TextXAlignment.Right;

			local UIPadding = _New_("UIPadding", SliderValue);
			UIPadding.PaddingLeft = UDim.new(0, 9);
			
			-----Values-----
			e.min = e.min or 0
			e.max = e.max or 100


			-----Callback-----
			e.callback = e.callback or function() end


			-----Variables-----
			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")
			local Value;
			local length = SliderBack.Size.X.Offset
			local height = SliderBack.Size.Y.Offset
			




			SliderBack.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(e.max) - tonumber(e.min)) / length) * SliderFill.AbsoluteSize.X) + tonumber(e.min)) or 0
				-- Value = e.Value

				pcall(function()
					e.callback(Value)
				end)
				SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, length), 0, height)
				moveconnection = mouse.Move:Connect(function()
					SliderValue.Text = Value
					Value = math.floor((((tonumber(e.max) - tonumber(e.min)) / length) * SliderFill.AbsoluteSize.X) + tonumber(e.min))
					pcall(function()
						e.callback(Value)
					end)

					SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, length), 0, height)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(e.max) - tonumber(e.min)) / length) * SliderFill.AbsoluteSize.X) + tonumber(e.min))
						pcall(function()
							e.callback(Value)
						end)
						SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, length), 0, height)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
			-- touch fix

			SliderBack.MouseButton1Down:Connect(function()
				 SliderValue.Text = Value
				Value = math.floor((((tonumber(e.max) - tonumber(e.min)) / length) * SliderFill.AbsoluteSize.X) + tonumber(e.min))
				pcall(function()
					e.callback(Value)
				end)

				SliderFill.Size = UDim2.new(0, math.clamp(mouse.X - SliderFill.AbsolutePosition.X, 0, length), 0, height)
			end)
		end
		
		function e:ColorPicker(e)
			e= e or {}

			local ColorPicker = _New_("Frame", Tab);
			ColorPicker.BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985);
			ColorPicker.BorderColor3 = Color3.fromRGB(0, 0, 0);
			ColorPicker.BorderSizePixel = 0;
			ColorPicker.Name = "ColorPicker";
			ColorPicker.Position = UDim2.new(0.050000011920928955, 0, 0.10724637657403946, 0);
			ColorPicker.Size = UDim2.new(0.8999999761581421, 0, 0, 40);

			local Title = _New_("TextLabel", ColorPicker);
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Title.BackgroundTransparency = 1;
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Title.BorderSizePixel = 0;
			Title.Name = "Title";
			Title.Position = UDim2.new(0.027342703193426132, 0, 0.13429412245750427, 0);
			Title.Size = UDim2.new(0, 162, 0, 30);
			Title.Font = Enum.Font.SourceSansBold;
			Title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Title.Text =	e.Text or "N/A";
			Title.TextColor3 = Color3.fromRGB(193.00000369548798, 193.00000369548798, 193.00000369548798);
			Title.TextSize = 14;
			Title.TextXAlignment = Enum.TextXAlignment.Left;

			local UICorner = _New_("UICorner", ColorPicker);

			local UIStroke = _New_("UIStroke", ColorPicker);
			UIStroke.Color = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709);

			local action = _New_("TextButton", ColorPicker);
			action.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			action.BackgroundTransparency = 1;
			action.BorderColor3 = Color3.fromRGB(0, 0, 0);
			action.BorderSizePixel = 0;
			action.Name = "action";
			action.Size = UDim2.new(1, 0, 1, 0);
			action.Font = Enum.Font.SourceSans;
			action.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			action.Text = "";
			action.TextColor3 = Color3.fromRGB(0, 0, 0);
			action.TextSize = 14;

			local Back = _New_("Frame", ColorPicker);
			Back.BackgroundColor3 = e.Defult or Color3.fromRGB(255, 0, 0);
			Back.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Back.BorderSizePixel = 0;
			Back.Name = "Back";
			Back.Position = UDim2.new(0.8774545788764954, 0, 0.30000001192092896, 0);
			Back.Size = UDim2.new(0, 35, 0, 19);

			local UICorner_0 = _New_("UICorner", Back);

			local UIGradient = _New_("UIGradient", Back);
			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(171.00000500679016, 171.00000500679016, 171.00000500679016)), ColorSequenceKeypoint.new(1, Color3.fromRGB(91.00000217556953, 91.00000217556953, 91.00000217556953))};
			UIGradient.Rotation = 47;

			local Pallete = _New_("Frame", Color_Pickers);
			Pallete.BackgroundColor3 = Color3.fromRGB(18.000000827014446, 18.000000827014446, 18.000000827014446);
			Pallete.BorderColor3 = Color3.fromRGB(31.000000052154064, 31.000000052154064, 31.000000052154064);
			Pallete.Name = "Pallete";
			Pallete.Position = UDim2.new(0.0003552644047886133, 0, 0.0014136178651824594, 0);
			Pallete.Size = UDim2.new(0.8878436088562012, 0, 0.5469903349876404, 0);
			Pallete.Visible = false;
			Pallete.ZIndex = 4;

			local Gradient = _New_("UIGradient", Pallete);
			Gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(110.00000104308128, 118.00000056624413, 250.00000029802322))};
			Gradient.Rotation = -137;
			Gradient.Name = "Gradient";

			local ColorSlider = _New_("TextButton", Pallete);
			ColorSlider.AnchorPoint = Vector2.new(0.5, 0.5);
			ColorSlider.AutoButtonColor = false;
			ColorSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			ColorSlider.BorderColor3 = Color3.fromRGB(0, 0, 0);
			ColorSlider.BorderSizePixel = 0;
			ColorSlider.Name = "ColorSlider";
			ColorSlider.Position = UDim2.new(0.49896353483200073, 0, 0.4903528094291687, 45);
			ColorSlider.Size = UDim2.new(0.10246527940034866, 140, 0, 7);
			ColorSlider.ZIndex = 4;
			ColorSlider.Font = Enum.Font.SourceSans;
			ColorSlider.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			ColorSlider.Text = "";
			ColorSlider.TextColor3 = Color3.fromRGB(0, 0, 0);
			ColorSlider.TextSize = 14;

			local Gradient_0 = _New_("UIGradient", ColorSlider);
			Gradient_0.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4.000000236555934)), ColorSequenceKeypoint.new(0.20000000298023224, Color3.fromRGB(255, 0, 251.00000023841858)), ColorSequenceKeypoint.new(0.4000000059604645, Color3.fromRGB(0, 17.00000088661909, 255)), ColorSequenceKeypoint.new(0.6000000238418579, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.800000011920929, Color3.fromRGB(21.000000648200512, 255, 0)), ColorSequenceKeypoint.new(0.8999999761581421, Color3.fromRGB(234.00000125169754, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4.000000236555934))};
			Gradient_0.Name = "Gradient";

			local UICorner = _New_("UICorner", ColorSlider);
			UICorner.CornerRadius = UDim.new(0, 4);

			local GradientPallete = _New_("ImageButton", Pallete);
			GradientPallete.AutoButtonColor = false;
			GradientPallete.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
			GradientPallete.BorderColor3 = Color3.fromRGB(0, 0, 0);
			GradientPallete.BorderSizePixel = 0;
			GradientPallete.Name = "GradientPallete";
			GradientPallete.Position = UDim2.new(0.026821911334991455, 0, 0.11076347529888153, 0);
			GradientPallete.Size = UDim2.new(0, 155, 0, 89);
			GradientPallete.ZIndex = 4;
			GradientPallete.Image = "rbxassetid://4155801252";

			local Dot = _New_("Frame", GradientPallete);
			Dot.AnchorPoint = Vector2.new(0.5, 0.5);
			Dot.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Dot.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Dot.BorderSizePixel = 2;
			Dot.Name = "Dot";
			Dot.Position = UDim2.new(1, 0, 0, 0);
			Dot.Rotation = 45;
			Dot.Size = UDim2.new(0, 3, 0, 3);
			Dot.ZIndex = 5;

			local UICorner_0 = _New_("UICorner", GradientPallete);
			UICorner_0.CornerRadius = UDim.new(0, 4);

			local Done = _New_("TextButton", Pallete);
			Done.BackgroundColor3 = Color3.fromRGB(48.00000473856926, 48.00000473856926, 48.00000473856926);
			Done.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Done.BorderSizePixel = 0;
			Done.Name = "Done";
			Done.Position = UDim2.new(0.08191387355327606, 0, 0.8744511008262634, 0);
			Done.Size = UDim2.new(0, 136, 0, 12);
			Done.ZIndex = 4;
			Done.Font = Enum.Font.SourceSans;
			Done.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Done.Text = "Done";
			Done.TextColor3 = Color3.fromRGB(193.0000188946724, 193.0000188946724, 193.0000188946724);
			Done.TextSize = 14;

			local UICorner_1 = _New_("UICorner", Done);
			UICorner_1.CornerRadius = UDim.new(0, 4);

			local UICorner_2 = _New_("UICorner", Pallete);
			UICorner_2.CornerRadius = UDim.new(0, 4);

			local UIStroke = _New_("UIStroke", Pallete);
			UIStroke.Color = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709);

			local TextLabel = _New_("TextLabel", Pallete);
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			TextLabel.BackgroundTransparency = 1;
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0);
			TextLabel.BorderSizePixel = 0;
			TextLabel.Position = UDim2.new(0.018363986164331436, 0, 0.03264617919921875, 0);
			TextLabel.Size = UDim2.new(0, 157, 0, 9);
			TextLabel.ZIndex = 4;
			TextLabel.Font = Enum.Font.SourceSansBold;
			TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			TextLabel.Text = "ColorPicker";
			TextLabel.TextColor3 = Color3.fromRGB(194.00000363588333, 194.00000363588333, 194.00000363588333);
			TextLabel.TextSize = 14;
			
			local ColorpickerInit = {}
			local o = false
			Done.MouseButton1Down:Connect(function()
				o = false
				Pallete.Visible = false
			end)
			action.MouseButton1Down:Connect(function()
				if o == false then
					o = true
					Pallete.Visible = o
				else
					o = false
					Pallete.Visible = o
				end
			end)



			local ColorTable = {
				Hue = 1,
				Saturation = 0,
				Value = 0
			}
			local ColorRender = nil
			local HueRender = nil
			local ColorpickerToggle = false

			local function UpdateColor()
				Back.BackgroundColor3 = Color3.fromHSV(ColorTable.Hue,ColorTable.Saturation,ColorTable.Value)
				Pallete.GradientPallete.BackgroundColor3 = Color3.fromHSV(ColorTable.Hue,1,1)
			--	Pallete.Input.InputBox.PlaceholderText = "RGB: " .. math.round(Back.BackgroundColor3.R* 255) .. "," .. math.round(Back.BackgroundColor3.G * 255) .. "," .. math.round(Back.BackgroundColor3.B * 255)
				e.callback(Back.BackgroundColor3)
			end


			Pallete.GradientPallete.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if ColorRender then
						ColorRender:Disconnect()
					end
					ColorRender = RunService.RenderStepped:Connect(function()
						local Mouse = UserInputService:GetMouseLocation()
						local ColorX = math.clamp(Mouse.X - Pallete.GradientPallete.AbsolutePosition.X, 0, Pallete.GradientPallete.AbsoluteSize.X) / Pallete.GradientPallete.AbsoluteSize.X
						local ColorY = math.clamp((Mouse.Y - 37) - Pallete.GradientPallete.AbsolutePosition.Y, 0, Pallete.GradientPallete.AbsoluteSize.Y) / Pallete.GradientPallete.AbsoluteSize.Y
						Pallete.GradientPallete.Dot.Position = UDim2.new(ColorX,0,ColorY,0)
						ColorTable.Saturation = ColorX
						ColorTable.Value = 1 - ColorY
						UpdateColor()
					end)
				end
			end)

			Pallete.GradientPallete.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if ColorRender then
						ColorRender:Disconnect()
					end
				end
			end)

			Pallete.ColorSlider.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if HueRender then
						HueRender:Disconnect()
					end
					HueRender = RunService.RenderStepped:Connect(function()
						local Mouse = UserInputService:GetMouseLocation()
						local HueX = math.clamp(Mouse.X - Pallete.ColorSlider.AbsolutePosition.X, 0, Pallete.ColorSlider.AbsoluteSize.X) / Pallete.ColorSlider.AbsoluteSize.X
						ColorTable.Hue = 1 - HueX
						UpdateColor()
					end)
				end
			end)

			Pallete.ColorSlider.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if HueRender then
						HueRender:Disconnect()
					end
				end
			end)

			function ColorpickerInit:UpdateColor(Color)
				local Hue, Saturation, Value = Color:ToHSV()
				Color.BackgroundColor3 = Color3.fromHSV(Hue,Saturation,Value)
				Pallete.GradientPallete.BackgroundColor3 = Color3.fromHSV(Hue,1,1)
				--Pallete.Input.InputBox.PlaceholderText = "RGB: " .. math.round(Color.BackgroundColor3.R* 255) .. "," .. math.round(Color.BackgroundColor3.G * 255) .. "," .. math.round(Color.BackgroundColor3.B * 255)
				ColorTable = {
					Hue = Hue,
					Saturation = Saturation,
					Value = Value
				}
				e.callback(Color)
			end

			--Pallete.Input.InputBox.FocusLost:Connect(function(Enter)
			--	if Enter then
			--		local ColorString = string.split(string.gsub(Pallete.Input.InputBox.Text," ", ""), ",")
			--		ColorpickerInit:UpdateColor(Color3.fromRGB(ColorString[1],ColorString[2],ColorString[3]))
			--		Pallete.Input.InputBox.Text = ""
			--	end
			--end)

			return ColorpickerInit
		end
		
		
		function e:Header(e)

			local Header = _New_("Frame",Tab);
			Header.BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985);
			Header.BackgroundTransparency = 0.4000000059604645;
			Header.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Header.BorderSizePixel = 0;
			Header.Name = "Header";
			Header.Position = UDim2.new(0.050000011920928955, 0, 0.6811594367027283, 0);
			Header.Size = UDim2.new(0.8999999761581421, 0, -0.048687197268009186, 40);

			local Title = _New_("TextLabel", Header);
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Title.BackgroundTransparency = 1;
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Title.BorderSizePixel = 0;
			Title.Name = "Title";
			Title.Position = UDim2.new(0, 0, 0.13122150301933289, 0);
			Title.Size = UDim2.new(1, 0, 0.6921687126159668, 0);
			Title.Font = Enum.Font.SourceSansBold;
			Title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Title.Text = e.Text or "Blank N/A";
			Title.TextColor3 = Color3.fromRGB(193.00000369548798, 193.00000369548798, 193.00000369548798);
			Title.TextSize = 14;

			local UICorner = _New_("UICorner", Header);

			local Line_Divider = _New_("Frame", Header);
			Line_Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Line_Divider.BorderColor3 = Color3.fromRGB(0, 0, 0);
			Line_Divider.BorderSizePixel = 0;
			Line_Divider.Name = "Line Divider";
			Line_Divider.Position = UDim2.new(-7.585776273799638e-08, 0, 0.9514012932777405, 0);
			Line_Divider.Size = UDim2.new(0, 402, 0, 1);

			local UIGradient = _New_("UIGradient", Line_Divider);
			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Theme or Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1,Theme or Color3.fromRGB(255, 255, 255))};
			UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.10099750757217407, 1, 0), NumberSequenceKeypoint.new(0.5773067474365234, 0, 0), NumberSequenceKeypoint.new(0.8990025520324707, 1, 0), NumberSequenceKeypoint.new(1, 1, 0)};
		end
		
		return e;
	end
	return tabcontrol;
end

return lib;
