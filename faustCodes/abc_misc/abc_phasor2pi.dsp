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
declare name "abc_phasor2pi";
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
// CONTROL PARAMETER
//--------------------------------------------------------------------------------------//
//
freq = hslider("v:phasor2pi/freq [unit:s-1]", 0.1, 0, 20000, 0.00001);
//
//--------------------------------------------------------------------------------------//
// 2PI phasor (variation between 0 and 2*PI)
//--------------------------------------------------------------------------------------//
phasor2pi(f) = os.phasor((2. * ma.PI), f);
//
process = phasor2pi(freq);
