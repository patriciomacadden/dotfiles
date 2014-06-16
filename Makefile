CURDIR?=$(.CURDIR)
LN_FLAGS=-nfs
RM_FLAGS=-rf
SYMLINKS=.bash .bash_profile .gemrc .gitconfig .gitignore .irbrc .vim .vimrc

.PHONY: $(SYMLINKS)

all: install

install: $(SYMLINKS)

$(SYMLINKS):
	test -e $(CURDIR)/$@ && ln $(LN_FLAGS) $(CURDIR)/$@ ~/$@

clean: clean-dead
	rm $(RM_FLAGS) $(addprefix ~/, $(SYMLINKS))

# maintenance

check-dead:
	find ~ -maxdepth 1 -name '.*' -type l -exec test ! -e {} \; -print

clean-dead:
	find ~ -maxdepth 1 -name '.*' -type l -exec test ! -e {} \; -delete
