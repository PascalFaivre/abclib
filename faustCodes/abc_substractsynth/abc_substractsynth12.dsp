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
declare name "abc_substractsynth12";
//
process = library("abc.lib").abc_substractSynth_ui(12);
