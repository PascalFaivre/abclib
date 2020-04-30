//
//--------------------------------------------------------------------------------------//
//MULTI CHANNEL GAINS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETER: GAIN IN DB
//--------------------------------------------------------------------------------------//
gain = hslider("gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;

//--------------------------------------------------------------------------------------//
// GAIN LINES IN PARALLEL
//--------------------------------------------------------------------------------------//
gainLine(n) = par(i, n, *(gain));
//