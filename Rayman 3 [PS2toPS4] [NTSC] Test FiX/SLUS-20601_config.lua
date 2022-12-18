-- Rayman 3 Hoodlum Havoc (NTSC)
-- emu used=KOF 2000

apiRequest(1.0)   

local gpr = require("ee-gpr-alias")

local eeObj = getEEObject()
local emuObj = getEmuObject()

-- Fix for thin vertical lines that separate screen picture, misallignment/tearing of screen during upscaling
-- psm= SCE_GS_PSMCT32 (0)
emuObj.SetGsTitleFix( "forceSimpleFetch",  "reserved", {psm=0} )
emuObj.SetGsTitleFix( "fetchFromCurrBuff", "reserved", {psm=0} )

local patcher = function()

--Max Score/Unlock Bonuses
eeObj.WriteMem32(0x211E7744,0x000F423F)

end

emuObj.AddVsyncHook(patcher)