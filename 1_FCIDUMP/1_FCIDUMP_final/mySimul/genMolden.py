"""
Generating MOLDEN file from chkfile using pyscf.

Author: Seunghoon Lee, Jan 17, 2022
Edited: Inyoung  Choi, Jan 14, 2024

"""
import sys # for exit
import numpy as np
from tools_io import dumpERIs
from pyscf import gto, scf, dft, ao2mo
# FCI: Full Config Integral
# ASP: adiabatic state preparation

#==================================================================
# TODO
#==================================================================
myMOLDENfile = './output/00006_FeScu_S6o_54e_DFT.molden'
mychkfile = './output/00006_hs_bp86_MCSCF_FeScu_36o_54e.chk'
#==================================================================
# Make .molden file
#==================================================================
from pyscf import tools

tools.molden.from_chkfile( myMOLDENfile, mychkfile)
