# Builds the .vlt skin packages for VLC.
# A .vlt file is nothing more than a gzipped tar archive with theme.xml at its root.
#
# Requirements: GNU Make and tar.
#   - Linux/macOS: both preinstalled (or in your package manager).
#   - Windows 10 and later: tar is preinstalled; install make with
#     `winget install GnuWin32.Make` (or via Chocolatey/MSYS2).
#
# Usage:
#   make            build both skins
#   make win10      build only the Windows 10 skin
#   make win7       build only the Windows 7 skin
#   make clean      remove built .vlt files
#   make VERSION=x.y.z    override the version stamped into the file names

VERSION := 1.4.2
NAME    := VLCWMP12-4rft5

WIN10_VLT := $(NAME)-Win10-v$(VERSION).vlt
WIN7_VLT  := $(NAME)-Win7-v$(VERSION).vlt

all: win10 win7

# Note: VLC expects theme.xml at the archive root with plain entry names,
# so the recipes cd into the folder and glob instead of using `tar -C dir .`
# (which prefixes every entry with "./" and breaks VLC's theme lookup).
#
# Entry order matters for load time: VLC's skins2 loader re-opens the
# archive for every file it extracts, and a gzipped tar cannot seek, so
# reading entry N decompresses everything before it. With the 21 MB
# Microsoft Yahei.ttf in the middle (alphabetical order), every file
# after it pays that cost again (~480 MB of total decompression, several
# seconds). Listing theme.xml first and the fonts last keeps it fast.
SKIN_FILES := theme.xml skin.dtd *.png *.PNG *.ttf

win10:
	cd Windows10 && tar --exclude=Thumbs.db -czf ../$(WIN10_VLT) $(SKIN_FILES)

win7:
	cd Windows7 && tar --exclude=Thumbs.db -czf ../$(WIN7_VLT) $(SKIN_FILES)

clean:
ifeq ($(OS),Windows_NT)
	-del /q $(NAME)-*.vlt
else
	rm -f $(NAME)-*.vlt
endif

.PHONY: all win10 win7 clean
