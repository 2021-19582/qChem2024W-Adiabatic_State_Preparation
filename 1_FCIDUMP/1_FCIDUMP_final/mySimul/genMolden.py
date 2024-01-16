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
myMOLDENfile = './output/FeSdi_OX_DFT_NOSPIN_00005.molden'
mychkfile = './output/hs_bp86_MCSCF_FeSdi_OX_20o_30e_NOSPIN_00005.chk'
#==================================================================
# Make .molden file
#==================================================================
from pyscf import tools

tools.molden.from_chkfile( myMOLDENfile, mychkfile)
