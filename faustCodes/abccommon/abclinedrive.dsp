//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
// CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
outputmax = hslider("v:linedrive/outputmax", 1, 0, 100000, 0.01);
expcurve = hslider("v:linedrive/expcurve", 1.06, 0.00001, 2., 0.00001);
//