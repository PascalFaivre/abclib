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
direct = 2 * checkbox("h:decoder/v:global/directangles") - 1; 
offset = hslider("h:decoder/v:global/angularoffset [unit:deg]", 0, -180, 180, 1) * ma.PI / 180;
gain = hslider("h:decoder/v:global/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
a(ind, nls) = (hslider("h:decoder/v:angles/a%2ind [unit:deg]", ind * 360 / nls, -360, 360, 1) * ma.PI / 180. - direct * offset) : *(direct) : si.smoo;
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