set path=%path%;\sdcc\bin

sdcc -mz80 -c --std-c99 --opt-code-speed chateau_plet.c
sdcc -mz80 -c --std-c99 --opt-code-speed font_plet.c
sdcc -mz80 -c --std-c99 --opt-code-speed immeuble.c
sdcc -mz80 -c --std-c99 --opt-code-speed sphynx.c
sdcc -mz80 -c --std-c99 --opt-code-speed temple.c
sdcc -mz80 -c --std-c99 --opt-code-speed Title.c
sdcc -mz80 -c --std-c99 --opt-code-speed Title_Color.c
sdcc -mz80 -c --std-c99 --opt-code-speed villenuit.c

sdcc -mz80 -c --std-c99 --opt-code-speed tunes.c

sdcc -mz80 -c --std-c99 --opt-code-speed sprites.c
sdcc -mz80 -c --std-c99 --opt-code-speed main.c
sdcc -mz80 -c --std-c99 --opt-code-speed notes.c
sdcc -mz80 -c --std-c99 --opt-code-speed levels.c

sdasz80 -o musique.rel musique.s

sdcc -mz80 --code-loc 0x8048 --data-loc 0x7000 --no-std-crt0 ../crtcv.rel ../comp.lib ../cvlib.lib ../getput.lib chateau_plet.rel font_plet.rel immeuble.rel levels.rel main.rel notes.rel  sphynx.rel sprites.rel temple.rel Title.rel Title_color.rel villenuit.rel musique.rel tunes.rel

objcopy --input-target=ihex --output-target=binary crtcv.ihx result.rom

del *.rel
del *.sym
del *.lst

pause