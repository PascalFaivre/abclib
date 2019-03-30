//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2019 -----------------------------//
//--------------------------------------------------------------------------------------//

declare name "abcgain2";
declare author "Alain Bonardi";
declare licence "GPLv3";

import("stdfaust.lib");
import ("../abccommon/abcgain.dsp");

//--------------------------------------------------------------------------------------//
//MULTICHANNEL GAIN
//--------------------------------------------------------------------------------------//
nl = 2;

//--------------------------------------------------------------------------------------//
//DECODING
//--------------------------------------------------------------------------------------//
process = gainLine;