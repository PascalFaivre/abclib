//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//-------BY ALAIN BONARDI, PAUL GOUTMANN, DAVID FIERRO & ADRIEN ZANNI - 2019-2023 ------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi, Paul Goutmann, David Fierro & Adrien Zanni";
declare licence "LGPLv3";
declare name "abc_busselect14";
//
process = library("abc.lib").abc_busselect_ui(14);
