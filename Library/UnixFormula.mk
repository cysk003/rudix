# UnixFormula.mk - Unix Formula
#
# Copyright (c) 2011-2012 Ruda Moura
# Authors: Ruda Moura, Leonardo Santagada
#

define build_inner_hook
cd $(BuildDir) ; $(make) $(MakeExtra) \
	CFLAGS="$(CFlags)" CXXFLAGS="$(CxxFlags)" LDFLAGS="$(LdFlags)"
endef

define install_inner_hook
cd $(BuildDir) ; $(make) \
	DESTDIR="$(PortDir)/$(InstallDir)" $(MakeInstallExtra) install
$(install_base_documentation)
endef

ifeq ($(RUDIX_RUN_ALL_TESTS),yes)
define test_build
cd $(BuildDir) ; $(make) test
endef
endif

buildclean:
	cd $(BuildDir) ; $(make) clean
	rm -f build
