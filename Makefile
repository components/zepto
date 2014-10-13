VERSION=v1.1.4

default: zepto
	@cd $< && git checkout master && git pull && git checkout $(VERSION) && npm install && npm run-script dist
	@cp -f $</dist/zepto.js .
	@echo ";" >> zepto.js
	@cp -f $</dist/zepto.min.js .
	@du -bh zepto.* 2>/dev/null || du -h zepto.*

zepto:
	@git clone https://github.com/madrobby/zepto.git $@

.PHONY: default
