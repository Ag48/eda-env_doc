.PHONY: all compile clean

top := eda_env_doc
top_src := $(top).tex
texs := $(wildcard tex/*.tex)

all: compile

compile: $(top_src) $(texs)
	lualatex $(top_src)
	lualatex $(top_src)

clean:
	rm -f *.aux *.log *.pdf
