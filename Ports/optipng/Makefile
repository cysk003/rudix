BuildRequires += $(LibDir)/libpng.la # libpng

include ../../Library/Configure.mk

Title=		OptiPNG
Name=		optipng
Version=	0.7.5
Site=		http://optipng.sourceforge.net/
Source=		http://downloads.sourceforge.net/optipng/$(Name)-$(Version).tar.gz
License=	zlib

ReadMeFile=	$(SourceDir)/README.txt
LicenseFile=	$(SourceDir)/LICENSE.txt

MakeInstallExtra += mandir=$(ManDir)
ConfigureExtra += --with-system-libpng

define test_hook
$(BinDir)/optipng --version | grep $(Version)
endef
