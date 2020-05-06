//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//----------------------------- BY ALAIN BONARDI - 2019-2020 ---------------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi";
declare licence "GPLv3";
declare name "abc_decoder1";
//
//--------------------------------------------------------------------------------------//
//AMBISONIC DECODERS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
direct = 2 * checkbox("v:decoder/directangles") - 1; 
offset = hslider("v:decoder/angularoffset [unit:deg]", 0, -180, 180, 1) * ma.PI / 180;
gain = hslider("v:decoder/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
a(ind, nls) = (hslider("v:decoder/a%2ind [unit:deg]", ind * 360 / nls, -360, 360, 1) * ma.PI / 180. - direct * offset) : *(direct) : si.smoo;
//--------------------------------------------------------------------------------------//
// GAIN LINES IN PARALLEL
//--------------------------------------------------------------------------------------//
gainLine(n) = par(i, n, *(gain));
//--------------------------------------------------------------------------------------//
//AMBISONIC DECODING WITH IRREGULAR ORDER
//-------------------------------------------------------------------
mydecoder(n, p)	= par(i, 2*n+1, _) <: par(i, p, speaker(n, a(i,p))) : gainLine(p)
with 
{
   speaker(n,alpha)	= /(2), par(i, 2*n, _), ho.encoder(n,2/(2*n+1),alpha) : si.dot(2*n+1);
};
//
//--------------------------------------------------------------------------------------//
// CONVERSION DB=>LINEAR
//--------------------------------------------------------------------------------------//
dbcontrol = _ <: ((_ > -127.0), ba.db2linear) : *;
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETER: GAIN IN DB
//--------------------------------------------------------------------------------------//
dbtogain = si.smoo : dbcontrol;
//
//
process = mydecoder(1, 4);
