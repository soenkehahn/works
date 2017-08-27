all: happy-holiday.svg

happy-holiday.svg: dist/HappyHoliday
	./dist/HappyHoliday --output HappyHoliday.svg -w 400 -h 400
	@echo generated HappyHoliday.svg

dist/HappyHoliday: src/HappyHoliday.hs
	stack install --local-bin-path dist

	# src/HappyHoliday.hs
