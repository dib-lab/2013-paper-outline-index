# outline index paper pipline
# raw data
# 	reads-nobias.fa
# 	more is coming 


# locate the khmer
KHMER_DIR= /mnt/home/almutai4/codes/khmer/myKhmer/bleedingEdge/khmer

#locate the data files 
DATA_PATH= ../data
STEM= reads-nobias
GAP=10

all: summary

make_tags: $(DATA_PATH)/$(STEM).tagset
make_index: $(STEM).fa.bin.readDist.$(GAP)
 
$(DATA_PATH)/$(STEM).tagset:$(DATA_PATH)/$(STEM).fa
	$(KHMER_DIR)/scripts/load-graph.py -x 1e9 -d $(GAP) $(DATA_PATH)/$(STEM)  $(DATA_PATH)/$(STEM).fa

$(STEM).fa.bin.readDist.$(GAP): make_tags $(DATA_PATH)/$(STEM).fa
	$(KHMER_DIR)/lib/outline_index_test  -tf $(DATA_PATH)/$(STEM).tagset -rf $(DATA_PATH)/$(STEM).fa; mv $(DATA_PATH)/$(STEM).fa.bin.readDist $(STEM).fa.bin.readDist.$(GAP)


summary: make_index
	python $(KHMER_DIR)/scripts/plot_two_column_histo.py $(STEM).fa.bin.readDist.$(GAP)   

