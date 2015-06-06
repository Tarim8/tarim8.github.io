targets = index.html

all:	$(targets)

%.html: %.md
	pandoc \
	    --standalone \
	    --css=css/main.css \
	    --title-prefix="$*" \
	    -V pagetitle="Tarim" \
	    --base-header-level=2 \
	    -o $@ $<

clean:
	rm -rf $(targets) *.tmp

install: all

force:	clean
	make all
