# ==============================================================================
# Generated by qmake (2.01a) (Qt 4.7.1) on: Wed Feb 16 23:27:42 2011
# This file is generated by qmake and should not be modified by the
# user.
#  Name        : Makefile_DiceRollMobile_exe.mk
#  Part of     : DiceRollMobile
#  Description : This file is used to call necessary targets on wrapper makefile
#                during normal Symbian build process.
#  Version     : 
#
# ==============================================================================



MAKE = make

VISUAL_CFG = RELEASE
ifeq "$(CFG)" "UDEB"
VISUAL_CFG = DEBUG
endif

do_nothing :
	@rem do_nothing

MAKMAKE: create_temps pre_targetdeps store_build

LIB: create_temps pre_targetdeps store_build

BLD: create_temps pre_targetdeps store_build

ifeq "$(PLATFORM)" "WINSCW"
CLEAN: extension_clean winscw_deployment_clean deployment_clean
else
CLEAN: extension_clean deployment_clean
endif

CLEANLIB: do_nothing

RESOURCE: do_nothing

FREEZE: do_nothing

SAVESPACE: do_nothing

RELEASABLES: do_nothing

ifeq "$(PLATFORM)" "WINSCW"
FINAL: finalize winscw_deployment deployment
else
FINAL: finalize deployment
endif

pre_targetdeps : c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile
	-$(MAKE) -f "c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile" pre_targetdeps QT_SIS_TARGET=$(VISUAL_CFG)-$(PLATFORM)

create_temps : c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile
	-$(MAKE) -f "c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile" create_temps QT_SIS_TARGET=$(VISUAL_CFG)-$(PLATFORM)

extension_clean : c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile
	-$(MAKE) -f "c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile" extension_clean QT_SIS_TARGET=$(VISUAL_CFG)-$(PLATFORM)

finalize : c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile
	-$(MAKE) -f "c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile" finalize QT_SIS_TARGET=$(VISUAL_CFG)-$(PLATFORM)

winscw_deployment_clean : c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile
	-$(MAKE) -f "c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile" winscw_deployment_clean QT_SIS_TARGET=$(VISUAL_CFG)-$(PLATFORM)

winscw_deployment : c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile
	-$(MAKE) -f "c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile" winscw_deployment QT_SIS_TARGET=$(VISUAL_CFG)-$(PLATFORM)

deployment_clean : c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile
	-$(MAKE) -f "c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile" deployment_clean QT_SIS_TARGET=$(VISUAL_CFG)-$(PLATFORM)

deployment : c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile
	-$(MAKE) -f "c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile" deployment QT_SIS_TARGET=$(VISUAL_CFG)-$(PLATFORM)

store_build : c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile
	-$(MAKE) -f "c:\Users\Chad Swenson\Qt Projects\DiceRollMobile\Makefile" store_build QT_SIS_TARGET=$(VISUAL_CFG)-$(PLATFORM)


