--[[

	Holograms / Floating text Script by Meh
	
	Just put in the coordinates you get when standing on the ground, it's above the ground then
	By default, you only see the hologram when you are within 10m of it, to change that, edit the 10.0 infront of the "then"
	The Default holograms are at the Observatory.
	
	If you want to add a line to the hologram, just make a new Draw3DText line with the same coordinates, and edit the vertical offset.
	
	Formatting:
			Draw3DText( x, y, z  vertical offset, "text", font, text size, text size)
			
			
	To add a new hologram, copy paste this example under the existing ones, and put coordinates and text into it.
	
		if GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end


]]--

Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
		if GetDistanceBetweenCoords( -408.50, 1163.00, 326.00, GetEntityCoords(GetPlayerPed(-1))) < 100.0 then
			Draw3DText( -408.50, 1160.00, 326.00  -1.400, "Your text", 4, 0.1, 0.1)
			Draw3DText( -408.50, 1160.00, 326.00  -1.600, "goes", 4, 0.1, 0.1)
			Draw3DText( -408.50, 1160.00, 326.00  -1.800, "here", 4, 0.1, 0.1)		
		end			
				-- Hologram No. 1
		if GetDistanceBetweenCoords( 194.05, -934.66, 31.69, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 194.05, -934.66, 31.69  -1.400, "~g~Welcome to the PixelworldRP Car Development Server", 1, 0.1, 0.3)
			Draw3DText( 194.05, -934.66, 31.69  -1.900, "~y~Admin granted upon SteamID verification", 1, 0.1, 0.3)
			Draw3DText( 194.05, -934.66, 31.69  -2.500, "~g~Feel free to do what ever you like", 1, 0.1, 0.3)		
		end	
				--Hologram No. 2
		if GetDistanceBetweenCoords( 202.01, -941.09, 30.69, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 202.01, -941.09, 30.69  -1.400, "Discord: https://discord.gg/qqWpvUu", 1, 0.1, 0.3)
			Draw3DText( 202.01, -941.09, 30.69  -1.900, "~g~Website: ~y~www.pixelworldrp.com", 1, 0.1, 0.3)
			Draw3DText( 202.01, -941.09, 30.69  -2.500, "Twitter: @PixelWorldRP", 1, 0.1, 0.3)		
		end	
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
