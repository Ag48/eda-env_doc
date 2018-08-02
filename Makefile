.PHONY: all compile clean

# input files
top := eda_env_doc
top_src := $(top).tex
texs := $(wildcard tex/*.tex)

# latex options
out_dir := ./build
opts := "-output-directory=$(out_dir)"

all: compile

compile: $(top_src) $(texs)
	@mkdir -p $(out_dir)
	lualatex $(opts) $(top_src)
	lualatex $(opts) $(top_src)

clean:
	rm -rf $(out_dir)
