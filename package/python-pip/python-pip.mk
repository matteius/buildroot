################################################################################
#
# python-pip
#
################################################################################

PYTHON_PIP_VERSION = 23.3.1
PYTHON_PIP_SOURCE = pip-$(PYTHON_PIP_VERSION).tar.gz
PYTHON_PIP_SITE = https://files.pythonhosted.org/packages/1f/7f/4da15e07ccd11c84c1ccc8f6e24288d5e76c99441bf80e315b33542db951
PYTHON_PIP_SETUP_TYPE = setuptools
PYTHON_PIP_LICENSE = MIT
PYTHON_PIP_LICENSE_FILES = LICENSE.txt
PYTHON_PIP_CPE_ID_VENDOR = pypa
PYTHON_PIP_CPE_ID_PRODUCT = pip
# Disputed CVE: things work as designed, and only affects the
# --extra-index-url option. This CVE will never be fixed.
PYTHON_PIP_IGNORE_CVES += CVE-2018-20225

$(eval $(python-package))
$(eval $(host-python-package))
