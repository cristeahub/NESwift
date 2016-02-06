.PHONY: all
all: compile run

.PHONY: compile
compile:
	swift build

.PHONY: run
run:
	.build/debug/NESwift
