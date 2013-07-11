# This Makefile will build everythong to a paper 

KHMER_DIR= /home/meznah/khmer #This is where your khmer install is located
SEQ_FILE= $(KHMER_DIR)/data/...

make_tags: $(SEQ_FILE)
	$(KHMER_DIR)/scripts/load-graph.py -x ... $(SEQ_FILE)

make_index: make_tags
	$(KHMER_DIR)/lib/indexClassify ...
