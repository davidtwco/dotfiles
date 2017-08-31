
$(DIST)/iosevka-davidtwco-slab/ : | $(DIST)/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco-slab/ttf/ : | $(DIST)/iosevka-davidtwco-slab/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco-slab/woff/ : | $(DIST)/iosevka-davidtwco-slab/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco-slab/woff2/ : | $(DIST)/iosevka-davidtwco-slab/
	-@mkdir -p $@


$(BUILD)/iosevka-davidtwco-slab-thin.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-thin with iosevka nothing w-thin s-upright normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-upright normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thin.ttf : $(BUILD)/iosevka-davidtwco-slab-thin.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-thin.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-thin.0.otd -o $(BUILD)/iosevka-davidtwco-slab-thin.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-thin.1.ttf $(BUILD)/iosevka-davidtwco-slab-thin.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-thin.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-thin.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-thin.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-thin.1.ttf $(BUILD)/iosevka-davidtwco-slab-thin.2.ttf $(BUILD)/iosevka-davidtwco-slab-thin.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-thin.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thin.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-thin.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thin.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-thinitalic.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-thinitalic with iosevka nothing w-thin s-italic normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-italic normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thinitalic.ttf : $(BUILD)/iosevka-davidtwco-slab-thinitalic.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-thinitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-thinitalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-thinitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-thinitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-thinitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-thinitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-thinitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-thinitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-thinitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-thinitalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-thinitalic.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-thinitalic.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thinitalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-thinitalic.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thinitalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-thinoblique.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-thinoblique with iosevka nothing w-thin s-oblique normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-oblique normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thinoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-thinoblique.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-thinoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-thinoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-thinoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-thinoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-thinoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-thinoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-thinoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-thinoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-thinoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-thinoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-thinoblique.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-thinoblique.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thinoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-thinoblique.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thinoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-extralight.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-extralight with iosevka nothing w-extralight s-upright normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-upright normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralight.ttf : $(BUILD)/iosevka-davidtwco-slab-extralight.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-extralight.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-extralight.0.otd -o $(BUILD)/iosevka-davidtwco-slab-extralight.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-extralight.1.ttf $(BUILD)/iosevka-davidtwco-slab-extralight.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-extralight.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-extralight.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-extralight.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-extralight.1.ttf $(BUILD)/iosevka-davidtwco-slab-extralight.2.ttf $(BUILD)/iosevka-davidtwco-slab-extralight.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-extralight.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralight.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-extralight.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralight.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-extralightitalic.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-extralightitalic with iosevka nothing w-extralight s-italic normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-italic normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralightitalic.ttf : $(BUILD)/iosevka-davidtwco-slab-extralightitalic.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-extralightitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-extralightitalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-extralightitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-extralightitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-extralightitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-extralightitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-extralightitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-extralightitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-extralightitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-extralightitalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-extralightitalic.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-extralightitalic.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralightitalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-extralightitalic.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralightitalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-extralightoblique.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-extralightoblique with iosevka nothing w-extralight s-oblique normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-oblique normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralightoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-extralightoblique.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-extralightoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-extralightoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-extralightoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-extralightoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-extralightoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-extralightoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-extralightoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-extralightoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-extralightoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-extralightoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-extralightoblique.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-extralightoblique.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralightoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-extralightoblique.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralightoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-light.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-light with iosevka nothing w-light s-upright normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-upright normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-light.ttf : $(BUILD)/iosevka-davidtwco-slab-light.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-light.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-light.0.otd -o $(BUILD)/iosevka-davidtwco-slab-light.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-light.1.ttf $(BUILD)/iosevka-davidtwco-slab-light.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-light.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-light.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-light.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-light.1.ttf $(BUILD)/iosevka-davidtwco-slab-light.2.ttf $(BUILD)/iosevka-davidtwco-slab-light.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-light.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-light.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-light.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-light.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-lightitalic.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-lightitalic with iosevka nothing w-light s-italic normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-italic normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-lightitalic.ttf : $(BUILD)/iosevka-davidtwco-slab-lightitalic.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-lightitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-lightitalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-lightitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-lightitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-lightitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-lightitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-lightitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-lightitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-lightitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-lightitalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-lightitalic.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-lightitalic.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-lightitalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-lightitalic.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-lightitalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-lightoblique.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-lightoblique with iosevka nothing w-light s-oblique normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-oblique normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-lightoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-lightoblique.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-lightoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-lightoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-lightoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-lightoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-lightoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-lightoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-lightoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-lightoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-lightoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-lightoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-lightoblique.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-lightoblique.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-lightoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-lightoblique.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-lightoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-regular.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-regular with iosevka nothing w-book s-upright normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-upright normal slab type ss04 ligset-coq -o $@ --charmap $(BUILD)/iosevka-davidtwco-slab-regular.charmap
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-regular.ttf : $(BUILD)/iosevka-davidtwco-slab-regular.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-regular.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-regular.0.otd -o $(BUILD)/iosevka-davidtwco-slab-regular.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-regular.1.ttf $(BUILD)/iosevka-davidtwco-slab-regular.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-regular.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-regular.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-regular.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-regular.1.ttf $(BUILD)/iosevka-davidtwco-slab-regular.2.ttf $(BUILD)/iosevka-davidtwco-slab-regular.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-regular.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-regular.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-regular.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-regular.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-italic.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-italic with iosevka nothing w-book s-italic normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-italic normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-italic.ttf : $(BUILD)/iosevka-davidtwco-slab-italic.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-italic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-italic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-italic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-italic.1.ttf $(BUILD)/iosevka-davidtwco-slab-italic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-italic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-italic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-italic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-italic.1.ttf $(BUILD)/iosevka-davidtwco-slab-italic.2.ttf $(BUILD)/iosevka-davidtwco-slab-italic.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-italic.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-italic.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-italic.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-italic.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-oblique.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-oblique with iosevka nothing w-book s-oblique normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-oblique normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-oblique.ttf : $(BUILD)/iosevka-davidtwco-slab-oblique.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-oblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-oblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-oblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-oblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-oblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-oblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-oblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-oblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-oblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-oblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-oblique.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-oblique.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-oblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-oblique.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-oblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-medium.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-medium with iosevka nothing w-medium s-upright normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-upright normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-medium.ttf : $(BUILD)/iosevka-davidtwco-slab-medium.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-medium.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-medium.0.otd -o $(BUILD)/iosevka-davidtwco-slab-medium.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-medium.1.ttf $(BUILD)/iosevka-davidtwco-slab-medium.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-medium.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-medium.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-medium.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-medium.1.ttf $(BUILD)/iosevka-davidtwco-slab-medium.2.ttf $(BUILD)/iosevka-davidtwco-slab-medium.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-medium.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-medium.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-medium.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-medium.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-mediumitalic.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-mediumitalic with iosevka nothing w-medium s-italic normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-italic normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-mediumitalic.ttf : $(BUILD)/iosevka-davidtwco-slab-mediumitalic.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-mediumitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-mediumitalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-mediumitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-mediumitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-mediumitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-mediumitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-mediumitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-mediumitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-mediumitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-mediumitalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-mediumitalic.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-mediumitalic.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-mediumitalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-mediumitalic.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-mediumitalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-mediumoblique.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-mediumoblique with iosevka nothing w-medium s-oblique normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-oblique normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-mediumoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-mediumoblique.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-mediumoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-mediumoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-mediumoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-mediumoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-mediumoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-mediumoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-mediumoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-mediumoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-mediumoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-mediumoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-mediumoblique.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-mediumoblique.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-mediumoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-mediumoblique.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-mediumoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-bold.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-bold with iosevka nothing w-bold s-upright normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-upright normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-bold.ttf : $(BUILD)/iosevka-davidtwco-slab-bold.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-bold.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-bold.0.otd -o $(BUILD)/iosevka-davidtwco-slab-bold.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-bold.1.ttf $(BUILD)/iosevka-davidtwco-slab-bold.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-bold.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-bold.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-bold.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-bold.1.ttf $(BUILD)/iosevka-davidtwco-slab-bold.2.ttf $(BUILD)/iosevka-davidtwco-slab-bold.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-bold.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-bold.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-bold.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-bold.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-bolditalic.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-bolditalic with iosevka nothing w-bold s-italic normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-italic normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-bolditalic.ttf : $(BUILD)/iosevka-davidtwco-slab-bolditalic.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-bolditalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-bolditalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-bolditalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-bolditalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-bolditalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-bolditalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-bolditalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-bolditalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-bolditalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-bolditalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-bolditalic.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-bolditalic.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-bolditalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-bolditalic.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-bolditalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-boldoblique.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-boldoblique with iosevka nothing w-bold s-oblique normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-oblique normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-boldoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-boldoblique.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-boldoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-boldoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-boldoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-boldoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-boldoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-boldoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-boldoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-boldoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-boldoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-boldoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-boldoblique.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-boldoblique.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-boldoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-boldoblique.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-boldoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-heavy.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-heavy with iosevka nothing w-heavy s-upright normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-upright normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavy.ttf : $(BUILD)/iosevka-davidtwco-slab-heavy.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-heavy.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-heavy.0.otd -o $(BUILD)/iosevka-davidtwco-slab-heavy.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-heavy.1.ttf $(BUILD)/iosevka-davidtwco-slab-heavy.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-heavy.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-heavy.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-heavy.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-heavy.1.ttf $(BUILD)/iosevka-davidtwco-slab-heavy.2.ttf $(BUILD)/iosevka-davidtwco-slab-heavy.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-heavy.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavy.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-heavy.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavy.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-heavyitalic.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-heavyitalic with iosevka nothing w-heavy s-italic normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-italic normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavyitalic.ttf : $(BUILD)/iosevka-davidtwco-slab-heavyitalic.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-heavyitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-heavyitalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-heavyitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-heavyitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-heavyitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-heavyitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-heavyitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-heavyitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-heavyitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-heavyitalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-heavyitalic.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-heavyitalic.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavyitalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-heavyitalic.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavyitalic.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-heavyoblique.0.otd : $(BUILD)/targets-davidtwco-slab.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab/
	@echo Building iosevka-davidtwco-slab-heavyoblique with iosevka nothing w-heavy s-oblique normal slab type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-oblique normal slab type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavyoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-heavyoblique.0.otd | $(DIST)/iosevka-davidtwco-slab/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-heavyoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-heavyoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-heavyoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-heavyoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-heavyoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-heavyoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-heavyoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-heavyoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-heavyoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-heavyoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-heavyoblique.2.otd
$(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-heavyoblique.woff : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavyoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-heavyoblique.woff2 : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavyoblique.ttf | $(DIST)/iosevka-davidtwco-slab/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@

fonts-customized-davidtwco-slab : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thin.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thinitalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thinoblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralight.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralightitalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralightoblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-light.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-lightitalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-lightoblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-regular.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-italic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-oblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-medium.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-mediumitalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-mediumoblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-bold.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-bolditalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-boldoblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavy.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavyitalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavyoblique.ttf

fonts-customized-davidtwco-slab-upright : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thin.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralight.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-light.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-regular.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-medium.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-bold.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavy.ttf

fonts-customized-davidtwco-slab-italic  : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thinitalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralightitalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-lightitalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-italic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-mediumitalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-bolditalic.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavyitalic.ttf

fonts-customized-davidtwco-slab-oblique : $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-thinoblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-extralightoblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-lightoblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-oblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-mediumoblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-boldoblique.ttf $(DIST)/iosevka-davidtwco-slab/ttf/iosevka-davidtwco-slab-heavyoblique.ttf

web-customized-davidtwco-slab : $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-thin.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-thinitalic.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-thinoblique.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-extralight.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-extralightitalic.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-extralightoblique.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-light.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-lightitalic.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-lightoblique.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-regular.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-italic.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-oblique.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-medium.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-mediumitalic.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-mediumoblique.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-bold.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-bolditalic.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-boldoblique.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-heavy.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-heavyitalic.woff $(DIST)/iosevka-davidtwco-slab/woff/iosevka-davidtwco-slab-heavyoblique.woff $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-thin.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-thinitalic.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-thinoblique.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-extralight.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-extralightitalic.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-extralightoblique.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-light.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-lightitalic.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-lightoblique.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-regular.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-italic.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-oblique.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-medium.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-mediumitalic.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-mediumoblique.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-bold.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-bolditalic.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-boldoblique.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-heavy.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-heavyitalic.woff2 $(DIST)/iosevka-davidtwco-slab/woff2/iosevka-davidtwco-slab-heavyoblique.woff2

$(ARCHIVEDIR)/iosevka-davidtwco-slab-$(VERSION).zip : fonts-customized-davidtwco-slab web-customized-davidtwco-slab | $(ARCHIVEDIR)/
	cd $(DIST)/iosevka-davidtwco-slab/ && 7z a -tzip -r -mx=9 ../../$@ ./

archive-customized-davidtwco-slab : $(ARCHIVEDIR)/iosevka-davidtwco-slab-$(VERSION).zip
