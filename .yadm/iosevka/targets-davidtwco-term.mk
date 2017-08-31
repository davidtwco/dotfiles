
$(DIST)/iosevka-davidtwco-term/ : | $(DIST)/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco-term/ttf/ : | $(DIST)/iosevka-davidtwco-term/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco-term/woff/ : | $(DIST)/iosevka-davidtwco-term/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco-term/woff2/ : | $(DIST)/iosevka-davidtwco-term/
	-@mkdir -p $@


$(BUILD)/iosevka-davidtwco-term-thin.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-thin with iosevka nothing w-thin s-upright normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-upright normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thin.ttf : $(BUILD)/iosevka-davidtwco-term-thin.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-thin.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-thin.0.otd -o $(BUILD)/iosevka-davidtwco-term-thin.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-thin.1.ttf $(BUILD)/iosevka-davidtwco-term-thin.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-thin.2.ttf -o $(BUILD)/iosevka-davidtwco-term-thin.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-thin.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-thin.1.ttf $(BUILD)/iosevka-davidtwco-term-thin.2.ttf $(BUILD)/iosevka-davidtwco-term-thin.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-thin.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thin.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-thin.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thin.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-thinitalic.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-thinitalic with iosevka nothing w-thin s-italic normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-italic normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thinitalic.ttf : $(BUILD)/iosevka-davidtwco-term-thinitalic.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-thinitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-thinitalic.0.otd -o $(BUILD)/iosevka-davidtwco-term-thinitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-thinitalic.1.ttf $(BUILD)/iosevka-davidtwco-term-thinitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-thinitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-term-thinitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-thinitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-thinitalic.1.ttf $(BUILD)/iosevka-davidtwco-term-thinitalic.2.ttf $(BUILD)/iosevka-davidtwco-term-thinitalic.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-thinitalic.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thinitalic.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-thinitalic.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thinitalic.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-thinoblique.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-thinoblique with iosevka nothing w-thin s-oblique normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-oblique normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thinoblique.ttf : $(BUILD)/iosevka-davidtwco-term-thinoblique.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-thinoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-thinoblique.0.otd -o $(BUILD)/iosevka-davidtwco-term-thinoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-thinoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-thinoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-thinoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-term-thinoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-thinoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-thinoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-thinoblique.2.ttf $(BUILD)/iosevka-davidtwco-term-thinoblique.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-thinoblique.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thinoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-thinoblique.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thinoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-extralight.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-extralight with iosevka nothing w-extralight s-upright normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-upright normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralight.ttf : $(BUILD)/iosevka-davidtwco-term-extralight.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-extralight.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-extralight.0.otd -o $(BUILD)/iosevka-davidtwco-term-extralight.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-extralight.1.ttf $(BUILD)/iosevka-davidtwco-term-extralight.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-extralight.2.ttf -o $(BUILD)/iosevka-davidtwco-term-extralight.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-extralight.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-extralight.1.ttf $(BUILD)/iosevka-davidtwco-term-extralight.2.ttf $(BUILD)/iosevka-davidtwco-term-extralight.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-extralight.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralight.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-extralight.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralight.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-extralightitalic.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-extralightitalic with iosevka nothing w-extralight s-italic normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-italic normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralightitalic.ttf : $(BUILD)/iosevka-davidtwco-term-extralightitalic.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-extralightitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-extralightitalic.0.otd -o $(BUILD)/iosevka-davidtwco-term-extralightitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-extralightitalic.1.ttf $(BUILD)/iosevka-davidtwco-term-extralightitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-extralightitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-term-extralightitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-extralightitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-extralightitalic.1.ttf $(BUILD)/iosevka-davidtwco-term-extralightitalic.2.ttf $(BUILD)/iosevka-davidtwco-term-extralightitalic.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-extralightitalic.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralightitalic.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-extralightitalic.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralightitalic.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-extralightoblique.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-extralightoblique with iosevka nothing w-extralight s-oblique normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-oblique normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralightoblique.ttf : $(BUILD)/iosevka-davidtwco-term-extralightoblique.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-extralightoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-extralightoblique.0.otd -o $(BUILD)/iosevka-davidtwco-term-extralightoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-extralightoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-extralightoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-extralightoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-term-extralightoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-extralightoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-extralightoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-extralightoblique.2.ttf $(BUILD)/iosevka-davidtwco-term-extralightoblique.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-extralightoblique.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralightoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-extralightoblique.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralightoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-light.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-light with iosevka nothing w-light s-upright normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-upright normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-light.ttf : $(BUILD)/iosevka-davidtwco-term-light.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-light.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-light.0.otd -o $(BUILD)/iosevka-davidtwco-term-light.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-light.1.ttf $(BUILD)/iosevka-davidtwco-term-light.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-light.2.ttf -o $(BUILD)/iosevka-davidtwco-term-light.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-light.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-light.1.ttf $(BUILD)/iosevka-davidtwco-term-light.2.ttf $(BUILD)/iosevka-davidtwco-term-light.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-light.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-light.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-light.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-light.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-lightitalic.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-lightitalic with iosevka nothing w-light s-italic normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-italic normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-lightitalic.ttf : $(BUILD)/iosevka-davidtwco-term-lightitalic.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-lightitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-lightitalic.0.otd -o $(BUILD)/iosevka-davidtwco-term-lightitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-lightitalic.1.ttf $(BUILD)/iosevka-davidtwco-term-lightitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-lightitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-term-lightitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-lightitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-lightitalic.1.ttf $(BUILD)/iosevka-davidtwco-term-lightitalic.2.ttf $(BUILD)/iosevka-davidtwco-term-lightitalic.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-lightitalic.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-lightitalic.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-lightitalic.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-lightitalic.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-lightoblique.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-lightoblique with iosevka nothing w-light s-oblique normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-oblique normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-lightoblique.ttf : $(BUILD)/iosevka-davidtwco-term-lightoblique.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-lightoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-lightoblique.0.otd -o $(BUILD)/iosevka-davidtwco-term-lightoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-lightoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-lightoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-lightoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-term-lightoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-lightoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-lightoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-lightoblique.2.ttf $(BUILD)/iosevka-davidtwco-term-lightoblique.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-lightoblique.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-lightoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-lightoblique.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-lightoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-regular.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-regular with iosevka nothing w-book s-upright normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-upright normal sans term ss04 ligset-coq -o $@ --charmap $(BUILD)/iosevka-davidtwco-term-regular.charmap
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-regular.ttf : $(BUILD)/iosevka-davidtwco-term-regular.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-regular.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-regular.0.otd -o $(BUILD)/iosevka-davidtwco-term-regular.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-regular.1.ttf $(BUILD)/iosevka-davidtwco-term-regular.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-regular.2.ttf -o $(BUILD)/iosevka-davidtwco-term-regular.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-regular.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-regular.1.ttf $(BUILD)/iosevka-davidtwco-term-regular.2.ttf $(BUILD)/iosevka-davidtwco-term-regular.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-regular.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-regular.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-regular.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-regular.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-italic.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-italic with iosevka nothing w-book s-italic normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-italic normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-italic.ttf : $(BUILD)/iosevka-davidtwco-term-italic.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-italic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-italic.0.otd -o $(BUILD)/iosevka-davidtwco-term-italic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-italic.1.ttf $(BUILD)/iosevka-davidtwco-term-italic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-italic.2.ttf -o $(BUILD)/iosevka-davidtwco-term-italic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-italic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-italic.1.ttf $(BUILD)/iosevka-davidtwco-term-italic.2.ttf $(BUILD)/iosevka-davidtwco-term-italic.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-italic.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-italic.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-italic.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-italic.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-oblique.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-oblique with iosevka nothing w-book s-oblique normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-oblique normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-oblique.ttf : $(BUILD)/iosevka-davidtwco-term-oblique.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-oblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-oblique.0.otd -o $(BUILD)/iosevka-davidtwco-term-oblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-oblique.1.ttf $(BUILD)/iosevka-davidtwco-term-oblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-oblique.2.ttf -o $(BUILD)/iosevka-davidtwco-term-oblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-oblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-oblique.1.ttf $(BUILD)/iosevka-davidtwco-term-oblique.2.ttf $(BUILD)/iosevka-davidtwco-term-oblique.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-oblique.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-oblique.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-oblique.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-oblique.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-medium.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-medium with iosevka nothing w-medium s-upright normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-upright normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-medium.ttf : $(BUILD)/iosevka-davidtwco-term-medium.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-medium.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-medium.0.otd -o $(BUILD)/iosevka-davidtwco-term-medium.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-medium.1.ttf $(BUILD)/iosevka-davidtwco-term-medium.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-medium.2.ttf -o $(BUILD)/iosevka-davidtwco-term-medium.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-medium.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-medium.1.ttf $(BUILD)/iosevka-davidtwco-term-medium.2.ttf $(BUILD)/iosevka-davidtwco-term-medium.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-medium.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-medium.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-medium.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-medium.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-mediumitalic.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-mediumitalic with iosevka nothing w-medium s-italic normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-italic normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-mediumitalic.ttf : $(BUILD)/iosevka-davidtwco-term-mediumitalic.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-mediumitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-mediumitalic.0.otd -o $(BUILD)/iosevka-davidtwco-term-mediumitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-mediumitalic.1.ttf $(BUILD)/iosevka-davidtwco-term-mediumitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-mediumitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-term-mediumitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-mediumitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-mediumitalic.1.ttf $(BUILD)/iosevka-davidtwco-term-mediumitalic.2.ttf $(BUILD)/iosevka-davidtwco-term-mediumitalic.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-mediumitalic.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-mediumitalic.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-mediumitalic.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-mediumitalic.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-mediumoblique.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-mediumoblique with iosevka nothing w-medium s-oblique normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-oblique normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-mediumoblique.ttf : $(BUILD)/iosevka-davidtwco-term-mediumoblique.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-mediumoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-mediumoblique.0.otd -o $(BUILD)/iosevka-davidtwco-term-mediumoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-mediumoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-mediumoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-mediumoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-term-mediumoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-mediumoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-mediumoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-mediumoblique.2.ttf $(BUILD)/iosevka-davidtwco-term-mediumoblique.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-mediumoblique.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-mediumoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-mediumoblique.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-mediumoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-bold.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-bold with iosevka nothing w-bold s-upright normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-upright normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-bold.ttf : $(BUILD)/iosevka-davidtwco-term-bold.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-bold.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-bold.0.otd -o $(BUILD)/iosevka-davidtwco-term-bold.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-bold.1.ttf $(BUILD)/iosevka-davidtwco-term-bold.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-bold.2.ttf -o $(BUILD)/iosevka-davidtwco-term-bold.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-bold.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-bold.1.ttf $(BUILD)/iosevka-davidtwco-term-bold.2.ttf $(BUILD)/iosevka-davidtwco-term-bold.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-bold.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-bold.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-bold.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-bold.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-bolditalic.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-bolditalic with iosevka nothing w-bold s-italic normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-italic normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-bolditalic.ttf : $(BUILD)/iosevka-davidtwco-term-bolditalic.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-bolditalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-bolditalic.0.otd -o $(BUILD)/iosevka-davidtwco-term-bolditalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-bolditalic.1.ttf $(BUILD)/iosevka-davidtwco-term-bolditalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-bolditalic.2.ttf -o $(BUILD)/iosevka-davidtwco-term-bolditalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-bolditalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-bolditalic.1.ttf $(BUILD)/iosevka-davidtwco-term-bolditalic.2.ttf $(BUILD)/iosevka-davidtwco-term-bolditalic.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-bolditalic.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-bolditalic.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-bolditalic.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-bolditalic.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-boldoblique.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-boldoblique with iosevka nothing w-bold s-oblique normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-oblique normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-boldoblique.ttf : $(BUILD)/iosevka-davidtwco-term-boldoblique.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-boldoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-boldoblique.0.otd -o $(BUILD)/iosevka-davidtwco-term-boldoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-boldoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-boldoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-boldoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-term-boldoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-boldoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-boldoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-boldoblique.2.ttf $(BUILD)/iosevka-davidtwco-term-boldoblique.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-boldoblique.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-boldoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-boldoblique.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-boldoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-heavy.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-heavy with iosevka nothing w-heavy s-upright normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-upright normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavy.ttf : $(BUILD)/iosevka-davidtwco-term-heavy.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-heavy.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-heavy.0.otd -o $(BUILD)/iosevka-davidtwco-term-heavy.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-heavy.1.ttf $(BUILD)/iosevka-davidtwco-term-heavy.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-heavy.2.ttf -o $(BUILD)/iosevka-davidtwco-term-heavy.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-heavy.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-heavy.1.ttf $(BUILD)/iosevka-davidtwco-term-heavy.2.ttf $(BUILD)/iosevka-davidtwco-term-heavy.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-heavy.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavy.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-heavy.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavy.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-heavyitalic.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-heavyitalic with iosevka nothing w-heavy s-italic normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-italic normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavyitalic.ttf : $(BUILD)/iosevka-davidtwco-term-heavyitalic.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-heavyitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-heavyitalic.0.otd -o $(BUILD)/iosevka-davidtwco-term-heavyitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-heavyitalic.1.ttf $(BUILD)/iosevka-davidtwco-term-heavyitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-heavyitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-term-heavyitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-heavyitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-heavyitalic.1.ttf $(BUILD)/iosevka-davidtwco-term-heavyitalic.2.ttf $(BUILD)/iosevka-davidtwco-term-heavyitalic.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-heavyitalic.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavyitalic.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-heavyitalic.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavyitalic.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-term-heavyoblique.0.otd : $(BUILD)/targets-davidtwco-term.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco-term/
	@echo Building iosevka-davidtwco-term-heavyoblique with iosevka nothing w-heavy s-oblique normal sans term ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-oblique normal sans term ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavyoblique.ttf : $(BUILD)/iosevka-davidtwco-term-heavyoblique.0.otd | $(DIST)/iosevka-davidtwco-term/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-term-heavyoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-heavyoblique.0.otd -o $(BUILD)/iosevka-davidtwco-term-heavyoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-term-heavyoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-heavyoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-term-heavyoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-term-heavyoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-term-heavyoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-term-heavyoblique.1.ttf $(BUILD)/iosevka-davidtwco-term-heavyoblique.2.ttf $(BUILD)/iosevka-davidtwco-term-heavyoblique.2.otd
$(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-heavyoblique.woff : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavyoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-heavyoblique.woff2 : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavyoblique.ttf | $(DIST)/iosevka-davidtwco-term/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@

fonts-customized-davidtwco-term : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thin.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thinitalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thinoblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralight.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralightitalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralightoblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-light.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-lightitalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-lightoblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-regular.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-italic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-oblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-medium.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-mediumitalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-mediumoblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-bold.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-bolditalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-boldoblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavy.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavyitalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavyoblique.ttf

fonts-customized-davidtwco-term-upright : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thin.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralight.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-light.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-regular.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-medium.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-bold.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavy.ttf

fonts-customized-davidtwco-term-italic  : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thinitalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralightitalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-lightitalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-italic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-mediumitalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-bolditalic.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavyitalic.ttf

fonts-customized-davidtwco-term-oblique : $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-thinoblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-extralightoblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-lightoblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-oblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-mediumoblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-boldoblique.ttf $(DIST)/iosevka-davidtwco-term/ttf/iosevka-davidtwco-term-heavyoblique.ttf

web-customized-davidtwco-term : $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-thin.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-thinitalic.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-thinoblique.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-extralight.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-extralightitalic.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-extralightoblique.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-light.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-lightitalic.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-lightoblique.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-regular.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-italic.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-oblique.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-medium.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-mediumitalic.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-mediumoblique.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-bold.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-bolditalic.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-boldoblique.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-heavy.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-heavyitalic.woff $(DIST)/iosevka-davidtwco-term/woff/iosevka-davidtwco-term-heavyoblique.woff $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-thin.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-thinitalic.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-thinoblique.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-extralight.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-extralightitalic.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-extralightoblique.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-light.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-lightitalic.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-lightoblique.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-regular.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-italic.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-oblique.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-medium.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-mediumitalic.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-mediumoblique.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-bold.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-bolditalic.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-boldoblique.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-heavy.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-heavyitalic.woff2 $(DIST)/iosevka-davidtwco-term/woff2/iosevka-davidtwco-term-heavyoblique.woff2

$(ARCHIVEDIR)/iosevka-davidtwco-term-$(VERSION).zip : fonts-customized-davidtwco-term web-customized-davidtwco-term | $(ARCHIVEDIR)/
	cd $(DIST)/iosevka-davidtwco-term/ && 7z a -tzip -r -mx=9 ../../$@ ./

archive-customized-davidtwco-term : $(ARCHIVEDIR)/iosevka-davidtwco-term-$(VERSION).zip
