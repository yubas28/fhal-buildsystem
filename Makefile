###
# scripts contains sources for various helper programs used throughout
# the kernel for the build process.
# ---------------------------------------------------------------------------
# kallsyms:      Find all symbols in vmlinux
# pnmttologo:    Convert pnm files to logo files
# conmakehash:   Create chartable
# conmakehash:	 Create arrays for initializing the kernel console tables
# docproc:       Used in Documentation/DocBook

#hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
#hostprogs-$(CONFIG_LOGO)         += pnmtologo
#hostprogs-$(CONFIG_VT)           += conmakehash
#hostprogs-$(CONFIG_IKCONFIG)     += bin2c
#hostprogs-$(BUILD_C_RECORDMCOUNT) += recordmcount

#always		:= $(hostprogs-y) $(hostprogs-m)

# The following hostprogs-y programs are only build on demand
#hostprogs-y += unifdef docproc

# These targets are used internally to avoid "is up to date" messages
#PHONY += build_unifdef
#build_unifdef: scripts/unifdef FORCE
#	@:
#build_docproc: scripts/docproc FORCE
#	@:

#subdir-$(CONFIG_MODVERSIONS) += genksyms
#subdir-y                     += mod
#subdir-$(CONFIG_SECURITY_SELINUX) += selinux
#subdir-$(CONFIG_DTC)         += dtc

# Let clean descend into subdirs
#subdir-	+= basic kconfig package selinux
subdir-	+= basic kconfig