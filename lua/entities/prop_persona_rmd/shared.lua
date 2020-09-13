ENT.Base 			= "prop_persona"
ENT.Type 			= "anim"
ENT.PrintName 		= ""
ENT.Author 			= "Cpt. Hazama"
ENT.Contact 		= ""
ENT.Purpose 		= ""
ENT.Instructions 	= ""
ENT.Category		= ""

ENT.Spawnable = false
ENT.AdminOnly = false
ENT.AutomaticFrameAdvance = true

ENT.IsPersona = true
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:PlaySet(skill,name,rate,cycle)
	local seq = self.Animations[name]
	if seq then
		return self:PlayAnimation(seq,rate,cycle,name,skill)
	else
		self:HandleEvents(skill or "BLANK",tbName or "N/A",nil,0)
		if IsValid(self.User) && self.User:IsNPC() && self.User.OnPersonaAnimation then
			self.User:OnPersonaAnimation(self,skill or "BLANK",tbName or "N/A",nil,0)
		end
		return 0
	end
end