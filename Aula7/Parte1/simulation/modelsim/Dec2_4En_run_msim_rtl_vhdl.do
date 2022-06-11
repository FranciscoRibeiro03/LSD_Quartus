transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/mnt/Data/004_Escola/UA/Disciplinas/LSD/Quartus/Aula7/Parte1/Dec2_4En.vhd}

