# locate the khmer
KHMER_DIR= /mnt/home/almutai4/codes/khmer/myKhmer/bleedingEdge/khmer

#locate the data files 
SEQ_FILE= $(KHMER_DIR)/data/...

make_tags: $(SEQ_FILE)
	$(KHMER_DIR)/scripts/load-graph.py -x ... $(SEQ_FILE)

make_index: make_tags
	$(KHMER_DIR)/lib/indexClassify ...
