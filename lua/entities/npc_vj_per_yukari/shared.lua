ENT.Base 			= "npc_vj_creature_base"
ENT.Type 			= "ai"
ENT.PrintName 		= ""
ENT.Author 			= "Cpt. Hazama"
ENT.Contact 		= ""
ENT.Purpose 		= ""
ENT.Instructions 	= ""
ENT.Category		= "NPC"

if CLIENT then
	local lerp_hp = 0

	net.Receive("vj_persona_hud_yukari",function(len,pl)
		local delete = net.ReadBool()
		local ent = net.ReadEntity()
		hook.Add("HUDPaint","VJ_Persona_HUD_Yukari",function()
			if !IsValid(ent) then return end
			local persona = ent:GetPersona()
			local card = (IsValid(persona) && persona:GetNW2String("SpecialAttack")) or "BLANK"
			local name = ent:GetPersonaName()
			draw.RoundedBox(1,ScrW() /1.79,ScrH() -120,220,80,Color(0,0,0,150))
			draw.SimpleText("Persona: " .. string.SetChar(name,1,string.upper(string.sub(name,1,1))),"VJFont_Trebuchet24_SmallMedium",ScrW() /1.75,ScrH() -115,Color(255,255,255,255),0,0)

			if persona then
				draw.SimpleText("Skill Card: " .. card,"VJFont_Trebuchet24_SmallMedium",ScrW() /1.75,ScrH() -68,Color(255,255,255,255),0,0)
			end

			local hp = ent:GetSP()
			local maxhp = ent:GetMaxSP()
			local hp_r = 200
			local hp_g = 0
			local hp_b = 255
			lerp_hp = Lerp(5 *FrameTime(),lerp_hp,hp)
			draw.RoundedBox(0,ScrW() /1.75,ScrH() -95,180,20,Color(hp_r,hp_g,hp_b,40))
			draw.RoundedBox(0,ScrW() /1.75,ScrH() -95,(190 *math.Clamp(lerp_hp,0,maxhp)) /maxhp,20,Color(hp_r,hp_g,hp_b,255))
			surface.SetDrawColor(hp_r,hp_g,hp_b,255)
			surface.DrawOutlinedRect(ScrW() /1.75,ScrH() -95,180,20)

			local finalhp = tostring(string.format("%.0f", lerp_hp).."/"..maxhp)
			local distlen = string.len(finalhp)
			local move = 0
			if distlen > 1 then
				move = move -(0.009 *(distlen -1))
			end
			draw.SimpleText(finalhp,"VJFont_Trebuchet24_SmallMedium", ScrW() /(1.6 -move),ScrH() -94,Color(255,255,255,255),0,0)
		end)
		if delete == true then hook.Remove("HUDPaint","VJ_Persona_HUD_Yukari") end
	end)
end