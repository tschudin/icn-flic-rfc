
draft-tschudin-icnrg-flic-00.xml: draft-tschudin-icnrg-flic.xml
	sed -e '$(join $(addprefix s/,$(addsuffix -latest/,$(drafts))), $(addsuffix /g;,$(drafts_next)))' $< > $@
diff-draft-tschudin-icnrg-flic-.txt.html: draft-tschudin-icnrg-flic-.txt draft-tschudin-icnrg-flic.txt
	-$(rfcdiff) --html --stdout $^ > $@
