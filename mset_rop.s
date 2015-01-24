; OpenRegion - bypass region lock on 3DS firmware v4.x
; Copyright (C) 2015 Joseph LoManto
;
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.
; 
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
; 
; You should have received a copy of the GNU General Public License
; along with this program.  If not, see <http://www.gnu.org/licenses/>.
; 
; Joseph LoManto
; ynjdev@gmail.com

.nds
.create "Launcher.dat",0x0

BASE_ADDRESS equ 0x002B0000

_pop_r0_pc equ 0x00143D8C
_pop_r1_pc equ 0x001C4FC4
_call_nss_RebootSystem equ 0x0010C250
_svc_0a_bx_lr equ 0x001AEA50
cart_ProgramLaunchInfo_addr equ cart_ProgramLaunchInfo+BASE_ADDRESS

startRop:
	.word _pop_r1_pc
	.word cart_ProgramLaunchInfo_addr	;ProgramLauncherInfo pointer
	.word _call_nss_RebootSystem
	.word 0x00000001					;flag
	.word cart_ProgramLaunchInfo_addr	;ProgramLauncherInfo pointer (redundant)
	.word 0x00000000					;flag
	.word 0x44444444	;r4 (garbage)
	.word 0x55555555	;r5 (garbage)
	.word _pop_r0_pc
	.word 0xFFFFFFFF
	.word _pop_r1_pc
	.word 0x0FFFFFFF
	.word _svc_0a_bx_lr	;sleep forever

cart_ProgramLaunchInfo:
	.word 0x00000000	;programId low (0 for cart)
	.word 0x00000000	;programId high
	.word 0x00000002	;media type - game cart
	.word 0x00000000	;reserved

.Close
