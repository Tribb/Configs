-- Chicken Run [PAL] (SLES-03188) (SLES-03285)
-- emu used=Oddworld Abe's Oddysee v2

local patcher = function()
local pad_bits = EM_PadRead()

local UP = pad_bits & 0x0010
local DOWN = pad_bits & 0x0040
local LEFT = pad_bits & 0x0080
local RIGHT = pad_bits & 0x0020
local Triangle = pad_bits & 0x1000
local Cross = pad_bits & 0x4000
local Square = pad_bits & 0x8000
local Circle = pad_bits & 0x2000
local L1 = pad_bits & 0x0400
local L2 = pad_bits & 0x0100
local L3 = pad_bits & 0x0002
local R1 = pad_bits & 0x0800
local R2 = pad_bits & 0x0200
local R3 = pad_bits & 0x0004
local Select = pad_bits & 0x0001
local Start = pad_bits & 0x0008

if (UP ~= 0 and R1 ~= 0) then --arbitrarily assigned keys

-- Widescreen 16:9 (EN)
R3K_WriteMem16(0x800B316C,0x0C00)
end
if (DOWN ~= 0 and R1 ~= 0) then

-- Unlimited Sprouts
R3K_WriteMem16(0x800AA10A,0x0002)
end
if (UP ~= 0 and R1 ~= 0) then

-- Widescreen 16:9 (Multi)
R3K_WriteMem16(0x800B6D0C,0x0C00)
end
end
EM_AddVsyncHook(patcher)
