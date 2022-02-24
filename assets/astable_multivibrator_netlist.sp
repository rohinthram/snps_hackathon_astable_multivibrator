*Custom Compiler Version S-2021.09
*Thu Feb 24 11:49:51 2022

*.SCALE METER
*.LDD
.GLOBAL gnd!
********************************************************************************
* Library          : astable_multivibrator
* Cell             : opamp
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt opamp in1 in2 out vdd vss
*.PININFO in1:I in2:I out:O vdd:I vss:I
RR17 vdd net75 10k $[RP]
MM21 net79 net53 vdd vdd p105 w=0.5u l=45n nf=1 m=1
MM22 out net79 vdd vdd p105 w=3.5u l=45n nf=1 m=1
MM10 net53 net53 vdd vdd p105 w=0.5u l=45n nf=1 m=1
MM7 net29 net75 vss vss n105 w=0.2u l=45n nf=1 m=1
MM6 net79 in2 net29 net29 n105 w=0.1u l=45n nf=1 m=1
MM5 net53 in1 net29 net29 n105 w=0.1u l=45n nf=1 m=1
MM9 out net75 vss vss n105 w=0.311u l=45n nf=1 m=1
MM8 net75 net75 vss vss n105 w=0.1u l=45n nf=1 m=1
CC23 out gnd! 5p $[CP]
CC24 out net79 10p $[CP]
.ends opamp

********************************************************************************
* Library          : astable_multivibrator
* Cell             : astable_multivibrator_ckt
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt astable_multivibrator_ckt final_out vdd vss
*.PININFO final_out:O vdd:I vss:I
XI0 net13 net11 final_out vdd vss opamp
CC31 final_out gnd! 5p $[CP]
CC1 net13 gnd! 0.01u $[CP]
RR4 net13 final_out 50k $[RP]
RR3 net11 gnd! 30k $[RP]
RR2 final_out net11 30k $[RP]
.ends astable_multivibrator_ckt

********************************************************************************
* Library          : astable_multivibrator
* Cell             : astable_multivibrator_ckt_sim
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt astable_multivibrator_ckt_sim
XI0 net1 net4 net8 astable_multivibrator_ckt
.ends astable_multivibrator_ckt_sim


