/*--------------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
AddCSLuaFile()
if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end

ENT.PrintName = "Evil Smile"
ENT.SkillData = {Name = "Evil Smile", Cost = 12, UsesHP = false, Icon = "sleep"}
ENT.Spawnable = true
ENT.AdminOnly = false

ENT.Base 			= "item_persona_skill"
ENT.Author 			= "Cpt. Hazama"
ENT.Category		= "Persona - Skills"
/*--------------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/