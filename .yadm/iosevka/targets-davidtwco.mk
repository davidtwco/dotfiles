
$(DIST)/iosevka-davidtwco/ : | $(DIST)/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco/ttf/ : | $(DIST)/iosevka-davidtwco/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco/woff/ : | $(DIST)/iosevka-davidtwco/
	-@mkdir -p $@


$(DIST)/iosevka-davidtwco/woff2/ : | $(DIST)/iosevka-davidtwco/
	-@mkdir -p $@


$(BUILD)/iosevka-davidtwco-thin.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-thin with iosevka nothing w-thin s-upright normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-upright normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thin.ttf : $(BUILD)/iosevka-davidtwco-thin.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-thin.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-thin.0.otd -o $(BUILD)/iosevka-davidtwco-thin.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-thin.1.ttf $(BUILD)/iosevka-davidtwco-thin.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-thin.2.ttf -o $(BUILD)/iosevka-davidtwco-thin.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-thin.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-thin.1.ttf $(BUILD)/iosevka-davidtwco-thin.2.ttf $(BUILD)/iosevka-davidtwco-thin.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-thin.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thin.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-thin.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thin.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-thinitalic.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-thinitalic with iosevka nothing w-thin s-italic normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-italic normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thinitalic.ttf : $(BUILD)/iosevka-davidtwco-thinitalic.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-thinitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-thinitalic.0.otd -o $(BUILD)/iosevka-davidtwco-thinitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-thinitalic.1.ttf $(BUILD)/iosevka-davidtwco-thinitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-thinitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-thinitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-thinitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-thinitalic.1.ttf $(BUILD)/iosevka-davidtwco-thinitalic.2.ttf $(BUILD)/iosevka-davidtwco-thinitalic.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-thinitalic.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thinitalic.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-thinitalic.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thinitalic.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-thinoblique.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-thinoblique with iosevka nothing w-thin s-oblique normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-thin s-oblique normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thinoblique.ttf : $(BUILD)/iosevka-davidtwco-thinoblique.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-thinoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-thinoblique.0.otd -o $(BUILD)/iosevka-davidtwco-thinoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-thinoblique.1.ttf $(BUILD)/iosevka-davidtwco-thinoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-thinoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-thinoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-thinoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-thinoblique.1.ttf $(BUILD)/iosevka-davidtwco-thinoblique.2.ttf $(BUILD)/iosevka-davidtwco-thinoblique.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-thinoblique.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thinoblique.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-thinoblique.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thinoblique.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-extralight.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-extralight with iosevka nothing w-extralight s-upright normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-upright normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralight.ttf : $(BUILD)/iosevka-davidtwco-extralight.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-extralight.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-extralight.0.otd -o $(BUILD)/iosevka-davidtwco-extralight.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-extralight.1.ttf $(BUILD)/iosevka-davidtwco-extralight.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-extralight.2.ttf -o $(BUILD)/iosevka-davidtwco-extralight.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-extralight.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-extralight.1.ttf $(BUILD)/iosevka-davidtwco-extralight.2.ttf $(BUILD)/iosevka-davidtwco-extralight.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-extralight.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralight.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-extralight.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralight.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-extralightitalic.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-extralightitalic with iosevka nothing w-extralight s-italic normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-italic normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralightitalic.ttf : $(BUILD)/iosevka-davidtwco-extralightitalic.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-extralightitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-extralightitalic.0.otd -o $(BUILD)/iosevka-davidtwco-extralightitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-extralightitalic.1.ttf $(BUILD)/iosevka-davidtwco-extralightitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-extralightitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-extralightitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-extralightitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-extralightitalic.1.ttf $(BUILD)/iosevka-davidtwco-extralightitalic.2.ttf $(BUILD)/iosevka-davidtwco-extralightitalic.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-extralightitalic.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralightitalic.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-extralightitalic.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralightitalic.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-extralightoblique.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-extralightoblique with iosevka nothing w-extralight s-oblique normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-extralight s-oblique normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralightoblique.ttf : $(BUILD)/iosevka-davidtwco-extralightoblique.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-extralightoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-extralightoblique.0.otd -o $(BUILD)/iosevka-davidtwco-extralightoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-extralightoblique.1.ttf $(BUILD)/iosevka-davidtwco-extralightoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-extralightoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-extralightoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-extralightoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-extralightoblique.1.ttf $(BUILD)/iosevka-davidtwco-extralightoblique.2.ttf $(BUILD)/iosevka-davidtwco-extralightoblique.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-extralightoblique.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralightoblique.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-extralightoblique.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralightoblique.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-light.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-light with iosevka nothing w-light s-upright normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-upright normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-light.ttf : $(BUILD)/iosevka-davidtwco-light.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-light.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-light.0.otd -o $(BUILD)/iosevka-davidtwco-light.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-light.1.ttf $(BUILD)/iosevka-davidtwco-light.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-light.2.ttf -o $(BUILD)/iosevka-davidtwco-light.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-light.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-light.1.ttf $(BUILD)/iosevka-davidtwco-light.2.ttf $(BUILD)/iosevka-davidtwco-light.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-light.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-light.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-light.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-light.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-lightitalic.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-lightitalic with iosevka nothing w-light s-italic normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-italic normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-lightitalic.ttf : $(BUILD)/iosevka-davidtwco-lightitalic.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-lightitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-lightitalic.0.otd -o $(BUILD)/iosevka-davidtwco-lightitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-lightitalic.1.ttf $(BUILD)/iosevka-davidtwco-lightitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-lightitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-lightitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-lightitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-lightitalic.1.ttf $(BUILD)/iosevka-davidtwco-lightitalic.2.ttf $(BUILD)/iosevka-davidtwco-lightitalic.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-lightitalic.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-lightitalic.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-lightitalic.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-lightitalic.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-lightoblique.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-lightoblique with iosevka nothing w-light s-oblique normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-light s-oblique normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-lightoblique.ttf : $(BUILD)/iosevka-davidtwco-lightoblique.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-lightoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-lightoblique.0.otd -o $(BUILD)/iosevka-davidtwco-lightoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-lightoblique.1.ttf $(BUILD)/iosevka-davidtwco-lightoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-lightoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-lightoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-lightoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-lightoblique.1.ttf $(BUILD)/iosevka-davidtwco-lightoblique.2.ttf $(BUILD)/iosevka-davidtwco-lightoblique.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-lightoblique.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-lightoblique.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-lightoblique.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-lightoblique.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-regular.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-regular with iosevka nothing w-book s-upright normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-upright normal sans type ss04 ligset-coq -o $@ --charmap $(BUILD)/iosevka-davidtwco-regular.charmap
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-regular.ttf : $(BUILD)/iosevka-davidtwco-regular.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-regular.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-regular.0.otd -o $(BUILD)/iosevka-davidtwco-regular.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-regular.1.ttf $(BUILD)/iosevka-davidtwco-regular.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-regular.2.ttf -o $(BUILD)/iosevka-davidtwco-regular.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-regular.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-regular.1.ttf $(BUILD)/iosevka-davidtwco-regular.2.ttf $(BUILD)/iosevka-davidtwco-regular.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-regular.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-regular.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-regular.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-regular.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-italic.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-italic with iosevka nothing w-book s-italic normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-italic normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-italic.ttf : $(BUILD)/iosevka-davidtwco-italic.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-italic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-italic.0.otd -o $(BUILD)/iosevka-davidtwco-italic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-italic.1.ttf $(BUILD)/iosevka-davidtwco-italic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-italic.2.ttf -o $(BUILD)/iosevka-davidtwco-italic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-italic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-italic.1.ttf $(BUILD)/iosevka-davidtwco-italic.2.ttf $(BUILD)/iosevka-davidtwco-italic.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-italic.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-italic.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-italic.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-italic.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-oblique.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-oblique with iosevka nothing w-book s-oblique normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-book s-oblique normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-oblique.ttf : $(BUILD)/iosevka-davidtwco-oblique.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-oblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-oblique.0.otd -o $(BUILD)/iosevka-davidtwco-oblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-oblique.1.ttf $(BUILD)/iosevka-davidtwco-oblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-oblique.2.ttf -o $(BUILD)/iosevka-davidtwco-oblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-oblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-oblique.1.ttf $(BUILD)/iosevka-davidtwco-oblique.2.ttf $(BUILD)/iosevka-davidtwco-oblique.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-oblique.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-oblique.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-oblique.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-oblique.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-medium.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-medium with iosevka nothing w-medium s-upright normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-upright normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-medium.ttf : $(BUILD)/iosevka-davidtwco-medium.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-medium.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-medium.0.otd -o $(BUILD)/iosevka-davidtwco-medium.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-medium.1.ttf $(BUILD)/iosevka-davidtwco-medium.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-medium.2.ttf -o $(BUILD)/iosevka-davidtwco-medium.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-medium.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-medium.1.ttf $(BUILD)/iosevka-davidtwco-medium.2.ttf $(BUILD)/iosevka-davidtwco-medium.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-medium.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-medium.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-medium.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-medium.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-mediumitalic.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-mediumitalic with iosevka nothing w-medium s-italic normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-italic normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-mediumitalic.ttf : $(BUILD)/iosevka-davidtwco-mediumitalic.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-mediumitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-mediumitalic.0.otd -o $(BUILD)/iosevka-davidtwco-mediumitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-mediumitalic.1.ttf $(BUILD)/iosevka-davidtwco-mediumitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-mediumitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-mediumitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-mediumitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-mediumitalic.1.ttf $(BUILD)/iosevka-davidtwco-mediumitalic.2.ttf $(BUILD)/iosevka-davidtwco-mediumitalic.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-mediumitalic.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-mediumitalic.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-mediumitalic.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-mediumitalic.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-mediumoblique.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-mediumoblique with iosevka nothing w-medium s-oblique normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-medium s-oblique normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-mediumoblique.ttf : $(BUILD)/iosevka-davidtwco-mediumoblique.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-mediumoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-mediumoblique.0.otd -o $(BUILD)/iosevka-davidtwco-mediumoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-mediumoblique.1.ttf $(BUILD)/iosevka-davidtwco-mediumoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-mediumoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-mediumoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-mediumoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-mediumoblique.1.ttf $(BUILD)/iosevka-davidtwco-mediumoblique.2.ttf $(BUILD)/iosevka-davidtwco-mediumoblique.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-mediumoblique.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-mediumoblique.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-mediumoblique.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-mediumoblique.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-bold.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-bold with iosevka nothing w-bold s-upright normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-upright normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-bold.ttf : $(BUILD)/iosevka-davidtwco-bold.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-bold.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-bold.0.otd -o $(BUILD)/iosevka-davidtwco-bold.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-bold.1.ttf $(BUILD)/iosevka-davidtwco-bold.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-bold.2.ttf -o $(BUILD)/iosevka-davidtwco-bold.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-bold.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-bold.1.ttf $(BUILD)/iosevka-davidtwco-bold.2.ttf $(BUILD)/iosevka-davidtwco-bold.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-bold.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-bold.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-bold.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-bold.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-bolditalic.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-bolditalic with iosevka nothing w-bold s-italic normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-italic normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-bolditalic.ttf : $(BUILD)/iosevka-davidtwco-bolditalic.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-bolditalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-bolditalic.0.otd -o $(BUILD)/iosevka-davidtwco-bolditalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-bolditalic.1.ttf $(BUILD)/iosevka-davidtwco-bolditalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-bolditalic.2.ttf -o $(BUILD)/iosevka-davidtwco-bolditalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-bolditalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-bolditalic.1.ttf $(BUILD)/iosevka-davidtwco-bolditalic.2.ttf $(BUILD)/iosevka-davidtwco-bolditalic.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-bolditalic.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-bolditalic.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-bolditalic.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-bolditalic.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-boldoblique.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-boldoblique with iosevka nothing w-bold s-oblique normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-bold s-oblique normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-boldoblique.ttf : $(BUILD)/iosevka-davidtwco-boldoblique.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-boldoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-boldoblique.0.otd -o $(BUILD)/iosevka-davidtwco-boldoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-boldoblique.1.ttf $(BUILD)/iosevka-davidtwco-boldoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-boldoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-boldoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-boldoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-boldoblique.1.ttf $(BUILD)/iosevka-davidtwco-boldoblique.2.ttf $(BUILD)/iosevka-davidtwco-boldoblique.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-boldoblique.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-boldoblique.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-boldoblique.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-boldoblique.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-heavy.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-heavy with iosevka nothing w-heavy s-upright normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-upright normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavy.ttf : $(BUILD)/iosevka-davidtwco-heavy.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-heavy.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-heavy.0.otd -o $(BUILD)/iosevka-davidtwco-heavy.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-heavy.1.ttf $(BUILD)/iosevka-davidtwco-heavy.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-heavy.2.ttf -o $(BUILD)/iosevka-davidtwco-heavy.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-heavy.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-heavy.1.ttf $(BUILD)/iosevka-davidtwco-heavy.2.ttf $(BUILD)/iosevka-davidtwco-heavy.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-heavy.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavy.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-heavy.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavy.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-heavyitalic.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-heavyitalic with iosevka nothing w-heavy s-italic normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-italic normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavyitalic.ttf : $(BUILD)/iosevka-davidtwco-heavyitalic.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-heavyitalic.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-heavyitalic.0.otd -o $(BUILD)/iosevka-davidtwco-heavyitalic.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-heavyitalic.1.ttf $(BUILD)/iosevka-davidtwco-heavyitalic.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-heavyitalic.2.ttf -o $(BUILD)/iosevka-davidtwco-heavyitalic.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-heavyitalic.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-heavyitalic.1.ttf $(BUILD)/iosevka-davidtwco-heavyitalic.2.ttf $(BUILD)/iosevka-davidtwco-heavyitalic.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-heavyitalic.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavyitalic.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-heavyitalic.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavyitalic.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@


$(BUILD)/iosevka-davidtwco-heavyoblique.0.otd : $(BUILD)/targets-davidtwco.mk $(SCRIPTS) | $(BUILD) $(DIST)/iosevka-davidtwco/
	@echo Building iosevka-davidtwco-heavyoblique with iosevka nothing w-heavy s-oblique normal sans type ss04 ligset-coq
	$(GENERATE) iosevka nothing w-heavy s-oblique normal sans type ss04 ligset-coq -o $@ 
$(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavyoblique.ttf : $(BUILD)/iosevka-davidtwco-heavyoblique.0.otd | $(DIST)/iosevka-davidtwco/ttf/
	@echo Hinting and optimizing $(BUILD)/iosevka-davidtwco-heavyoblique.0.otd '->' $@
	@otfccbuild $(BUILD)/iosevka-davidtwco-heavyoblique.0.otd -o $(BUILD)/iosevka-davidtwco-heavyoblique.1.ttf --keep-average-char-width
	@ttfautohint $(BUILD)/iosevka-davidtwco-heavyoblique.1.ttf $(BUILD)/iosevka-davidtwco-heavyoblique.2.ttf
	@otfccdump $(BUILD)/iosevka-davidtwco-heavyoblique.2.ttf -o $(BUILD)/iosevka-davidtwco-heavyoblique.2.otd --pretty
	@otfccbuild $(BUILD)/iosevka-davidtwco-heavyoblique.2.otd -o $@ -O3 -s --keep-average-char-width
	@rm $(BUILD)/iosevka-davidtwco-heavyoblique.1.ttf $(BUILD)/iosevka-davidtwco-heavyoblique.2.ttf $(BUILD)/iosevka-davidtwco-heavyoblique.2.otd
$(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-heavyoblique.woff : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavyoblique.ttf | $(DIST)/iosevka-davidtwco/woff/
	sfnt2woff $<
	mv $(subst .ttf,.woff,$<) $@
$(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-heavyoblique.woff2 : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavyoblique.ttf | $(DIST)/iosevka-davidtwco/woff2/
	woff2_compress $<
	mv $(subst .ttf,.woff2,$<) $@

fonts-customized-davidtwco : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thin.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thinitalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thinoblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralight.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralightitalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralightoblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-light.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-lightitalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-lightoblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-regular.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-italic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-oblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-medium.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-mediumitalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-mediumoblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-bold.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-bolditalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-boldoblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavy.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavyitalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavyoblique.ttf

fonts-customized-davidtwco-upright : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thin.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralight.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-light.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-regular.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-medium.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-bold.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavy.ttf

fonts-customized-davidtwco-italic  : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thinitalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralightitalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-lightitalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-italic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-mediumitalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-bolditalic.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavyitalic.ttf

fonts-customized-davidtwco-oblique : $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-thinoblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-extralightoblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-lightoblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-oblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-mediumoblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-boldoblique.ttf $(DIST)/iosevka-davidtwco/ttf/iosevka-davidtwco-heavyoblique.ttf

web-customized-davidtwco : $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-thin.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-thinitalic.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-thinoblique.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-extralight.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-extralightitalic.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-extralightoblique.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-light.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-lightitalic.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-lightoblique.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-regular.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-italic.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-oblique.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-medium.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-mediumitalic.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-mediumoblique.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-bold.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-bolditalic.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-boldoblique.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-heavy.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-heavyitalic.woff $(DIST)/iosevka-davidtwco/woff/iosevka-davidtwco-heavyoblique.woff $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-thin.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-thinitalic.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-thinoblique.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-extralight.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-extralightitalic.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-extralightoblique.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-light.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-lightitalic.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-lightoblique.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-regular.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-italic.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-oblique.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-medium.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-mediumitalic.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-mediumoblique.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-bold.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-bolditalic.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-boldoblique.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-heavy.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-heavyitalic.woff2 $(DIST)/iosevka-davidtwco/woff2/iosevka-davidtwco-heavyoblique.woff2

$(ARCHIVEDIR)/iosevka-davidtwco-$(VERSION).zip : fonts-customized-davidtwco web-customized-davidtwco | $(ARCHIVEDIR)/
	cd $(DIST)/iosevka-davidtwco/ && 7z a -tzip -r -mx=9 ../../$@ ./

archive-customized-davidtwco : $(ARCHIVEDIR)/iosevka-davidtwco-$(VERSION).zip
