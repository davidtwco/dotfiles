
$(DIST)/iosevka-davidtwco-slab-term/ : | $(DIST)/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco-slab-term/ttf/ : | $(DIST)/iosevka-davidtwco-slab-term/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco-slab-term/woff/ : | $(DIST)/iosevka-davidtwco-slab-term/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco-slab-term/woff2/ : | $(DIST)/iosevka-davidtwco-slab-term/
	-@mkdir -p $@


$(BUILD)/iosevka-davidtwco-slab-term-thin.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-thin with iosevka nothing w-thin s-upright normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-upright normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thin.ttf : $(BUILD)/iosevka-davidtwco-slab-term-thin.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-thin.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-thin.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-thin.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-thin.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-thin.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-thin.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-thin.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-thin.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-thin.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-thin.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-thin.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-thin.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thin.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-thin.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thin.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-thinitalic.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-thinitalic with iosevka nothing w-thin s-italic normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-italic normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thinitalic.ttf : $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-thinitalic.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-thinitalic.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thinitalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-thinitalic.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thinitalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-thinoblique.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-thinoblique with iosevka nothing w-thin s-oblique normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-oblique normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thinoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-thinoblique.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-thinoblique.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thinoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-thinoblique.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thinoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-extralight.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-extralight with iosevka nothing w-extralight s-upright normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-upright normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralight.ttf : $(BUILD)/iosevka-davidtwco-slab-term-extralight.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-extralight.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-extralight.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-extralight.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-extralight.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-extralight.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-extralight.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-extralight.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-extralight.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-extralight.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-extralight.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-extralight.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-extralight.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralight.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-extralight.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralight.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-extralightitalic with iosevka nothing w-extralight s-italic normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-italic normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralightitalic.ttf : $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-extralightitalic.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-extralightitalic.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralightitalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-extralightitalic.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralightitalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-extralightoblique with iosevka nothing w-extralight s-oblique normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-oblique normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralightoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-extralightoblique.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-extralightoblique.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralightoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-extralightoblique.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralightoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-light.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-light with iosevka nothing w-light s-upright normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-upright normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-light.ttf : $(BUILD)/iosevka-davidtwco-slab-term-light.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-light.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-light.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-light.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-light.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-light.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-light.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-light.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-light.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-light.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-light.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-light.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-light.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-light.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-light.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-light.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-lightitalic.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-lightitalic with iosevka nothing w-light s-italic normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-italic normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-lightitalic.ttf : $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-lightitalic.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-lightitalic.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-lightitalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-lightitalic.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-lightitalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-lightoblique.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-lightoblique with iosevka nothing w-light s-oblique normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-oblique normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-lightoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-lightoblique.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-lightoblique.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-lightoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-lightoblique.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-lightoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-regular.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-regular with iosevka nothing w-book s-upright normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-upright normal slab term ss04 ligset-coq -o $@ --charmap $(BUILD)/iosevka-davidtwco-slab-term-regular.charmap
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-regular.ttf : $(BUILD)/iosevka-davidtwco-slab-term-regular.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-regular.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-regular.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-regular.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-regular.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-regular.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-regular.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-regular.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-regular.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-regular.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-regular.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-regular.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-regular.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-regular.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-regular.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-regular.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-italic.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-italic with iosevka nothing w-book s-italic normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-italic normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-italic.ttf : $(BUILD)/iosevka-davidtwco-slab-term-italic.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-italic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-italic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-italic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-italic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-italic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-italic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-italic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-italic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-italic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-italic.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-italic.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-italic.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-italic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-italic.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-italic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-oblique.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-oblique with iosevka nothing w-book s-oblique normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-oblique normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-oblique.ttf : $(BUILD)/iosevka-davidtwco-slab-term-oblique.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-oblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-oblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-oblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-oblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-oblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-oblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-oblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-oblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-oblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-oblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-oblique.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-oblique.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-oblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-oblique.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-oblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-medium.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-medium with iosevka nothing w-medium s-upright normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-upright normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-medium.ttf : $(BUILD)/iosevka-davidtwco-slab-term-medium.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-medium.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-medium.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-medium.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-medium.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-medium.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-medium.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-medium.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-medium.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-medium.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-medium.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-medium.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-medium.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-medium.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-medium.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-medium.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-mediumitalic with iosevka nothing w-medium s-italic normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-italic normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-mediumitalic.ttf : $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-mediumitalic.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-mediumitalic.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-mediumitalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-mediumitalic.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-mediumitalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-mediumoblique with iosevka nothing w-medium s-oblique normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-oblique normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-mediumoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-mediumoblique.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-mediumoblique.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-mediumoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-mediumoblique.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-mediumoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-bold.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-bold with iosevka nothing w-bold s-upright normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-upright normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-bold.ttf : $(BUILD)/iosevka-davidtwco-slab-term-bold.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-bold.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-bold.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-bold.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-bold.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-bold.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-bold.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-bold.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-bold.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-bold.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-bold.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-bold.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-bold.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-bold.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-bold.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-bold.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-bolditalic.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-bolditalic with iosevka nothing w-bold s-italic normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-italic normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-bolditalic.ttf : $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-bolditalic.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-bolditalic.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-bolditalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-bolditalic.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-bolditalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-boldoblique.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-boldoblique with iosevka nothing w-bold s-oblique normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-oblique normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-boldoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-boldoblique.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-boldoblique.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-boldoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-boldoblique.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-boldoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-heavy.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-heavy with iosevka nothing w-heavy s-upright normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-upright normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavy.ttf : $(BUILD)/iosevka-davidtwco-slab-term-heavy.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-heavy.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-heavy.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-heavy.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-heavy.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-heavy.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-heavy.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-heavy.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-heavy.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-heavy.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-heavy.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-heavy.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-heavy.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavy.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-heavy.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavy.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-heavyitalic with iosevka nothing w-heavy s-italic normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-italic normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavyitalic.ttf : $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-heavyitalic.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-heavyitalic.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavyitalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-heavyitalic.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavyitalic.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.0.otd : $(BUILD)/targets-davidtwco-slab-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-slab-term/
	@echo Building iosevka-davidtwco-slab-term-heavyoblique with iosevka nothing w-heavy s-oblique normal slab term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-oblique normal slab term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavyoblique.ttf : $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.0.otd | $(DIST)/iosevka-davidtwco-slab-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.0.otd -o $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.1.ttf $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.2.ttf $(BUILD)/iosevka-davidtwco-slab-term-heavyoblique.2.otd
$(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-heavyoblique.woff : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavyoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-heavyoblique.woff2 : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavyoblique.ttf | $(DIST)/iosevka-davidtwco-slab-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@

fonts-customized-davidtwco-slab-term : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thin.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thinitalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thinoblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralight.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralightitalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralightoblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-light.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-lightitalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-lightoblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-regular.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-italic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-oblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-medium.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-mediumitalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-mediumoblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-bold.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-bolditalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-boldoblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavy.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavyitalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavyoblique.ttf

fonts-customized-davidtwco-slab-term-upright : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thin.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralight.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-light.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-regular.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-medium.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-bold.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavy.ttf

fonts-customized-davidtwco-slab-term-italic  : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thinitalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralightitalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-lightitalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-italic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-mediumitalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-bolditalic.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavyitalic.ttf

fonts-customized-davidtwco-slab-term-oblique : $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-thinoblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-extralightoblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-lightoblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-oblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-mediumoblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-boldoblique.ttf $(DIST)/iosevka-davidtwco-slab-term/ttf/iosevka-davidtwco-slab-term-heavyoblique.ttf

web-customized-davidtwco-slab-term : $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-thin.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-thinitalic.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-thinoblique.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-extralight.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-extralightitalic.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-extralightoblique.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-light.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-lightitalic.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-lightoblique.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-regular.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-italic.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-oblique.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-medium.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-mediumitalic.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-mediumoblique.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-bold.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-bolditalic.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-boldoblique.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-heavy.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-heavyitalic.woff $(DIST)/iosevka-davidtwco-slab-term/woff/iosevka-davidtwco-slab-term-heavyoblique.woff $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-thin.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-thinitalic.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-thinoblique.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-extralight.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-extralightitalic.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-extralightoblique.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-light.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-lightitalic.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-lightoblique.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-regular.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-italic.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-oblique.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-medium.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-mediumitalic.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-mediumoblique.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-bold.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-bolditalic.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-boldoblique.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-heavy.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-heavyitalic.woff2 $(DIST)/iosevka-davidtwco-slab-term/woff2/iosevka-davidtwco-slab-term-heavyoblique.woff2

$(ARCHIVEDIR)/iosevka-davidtwco-slab-term-$(VERSION).zip : fonts-customized-davidtwco-slab-term web-customized-davidtwco-slab-term | $(ARCHIVEDIR)/
	cd $(DIST)/iosevka-davidtwco-slab-term/ && 7z a -tzip -r -mx=9 ../../$@ ./

archive-customized-davidtwco-slab-term : $(ARCHIVEDIR)/iosevka-davidtwco-slab-term-$(VERSION).zip
