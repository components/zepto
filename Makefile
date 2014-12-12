VERSION=1.1.6

default: zepto
	@cd $< && git fetch origin --quiet && git checkout --force --quiet v$(VERSION) && npm install && npm run-script dist
	@cp -f $</dist/zepto.js .
	@echo ";" >> zepto.js
	@cp -f $</dist/zepto.min.js .
	@du -bh zepto.* 2>/dev/null || du -h zepto.*
	@sed -i.bak 's/\("version": \{1,\}\)".\{1,\}"/\1"$(VERSION)"/' bower.json component.json && rm -f *.bak

zepto:
	@git clone https://github.com/madrobby/zepto.git $@

.PHONY: default
