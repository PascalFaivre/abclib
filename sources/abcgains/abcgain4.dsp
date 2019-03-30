//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2019 -----------------------------//
//--------------------------------------------------------------------------------------//

declare name "abcgain4";
declare author "Alain Bonardi";
declare licence "GPLv3";

import("stdfaust.lib");
import ("../abccommon/abcgain.dsp");

//--------------------------------------------------------------------------------------//
//MULTICHANNEL GAIN
//--------------------------------------------------------------------------------------//
nl = 4;

//--------------------------------------------------------------------------------------//
//DECODING
//--------------------------------------------------------------------------------------//
process = gainLine;