
##
# Copy the contents of vim/lang-doc to ~/.vim/doc and regen-tags
install:
	@echo "installing vim help docs (javadoc, etc)"
	cp -r vim/lang-doc ~/.vim/doc/
	make regen-tags

##
# Remove ~/.vim/doc/lang-doc
uninstall:
	@echo "removing ~/.vim/doc/lang-doc/"
	rm -rf ~/.vim/doc/lang-doc
	make regen-tags

##
# Regenerate the ~/.vim/doc/tags file
regen-tags:
	@echo "updating tags..."
	vim -c "Helptags" -c q
