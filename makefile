VOC = /opt/voc/bin/voc
BUILD=build
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir_path := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
current_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

all:
			mkdir -p $(BUILD)
			voc -s $(mkfile_dir_path)/src/diasporadb.Mod
			voc -s $(mkfile_dir_path)/src/diasporaPost.Mod
