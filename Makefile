all: HappyHoliday.svg Untitled1977.svg Untitled5.svg

%.svg: dist/%
	./dist/$(basename $@) --output $@ -w 400 -h 400
	@echo generated HappyHoliday.svg

dist/%: src/%.hs
	stack install --local-bin-path dist

clean: .phony
	rm -rf dist *.svg

.phony:
