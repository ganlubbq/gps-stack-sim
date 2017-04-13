clc
clear all

ROOTDIR = strcat(get_lib_path, '/..');

almFile = strcat(ROOTDIR,'/files/Almanac/W918.alm');
ephFile = strcat(ROOTDIR,'/files/RINEX/brdc0920.17n');

[r_eph, r_head] = read_rinex_nav(ephFile, 32);

[ satp, orbit_parameters ] = rinex2ecef(r_head, r_eph);

image_file = which('land_ocean_ice_2048.png');

plot_orbits(orbit_parameters, image_file)


