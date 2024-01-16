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
# MAKE MOLDEN FILE
#==================================================================
from pyscf import tools

tools.molden.from_chkfile('./output/FeSdi_RED_DFT.molden', './output/hs_bp86_MCSCF_FeSdi_RED_20o_31e_00004.chk')
sys.exit()
