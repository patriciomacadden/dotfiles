install:
	for dir in `find . -mindepth 1 -maxdepth 1 -type d \( ! -name .git \) | cut -d / -f 2`; do stow -t $$HOME -R $$dir; done

uninstall:
	for dir in `find . -mindepth 1 -maxdepth 1 -type d \( ! -name .git \) | cut -d / -f 2`; do stow -t $$HOME -D $$dir; done
