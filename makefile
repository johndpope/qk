# © 2014 George King.
# Permission to use this file is granted in license-qk.txt.

# $@: The file name of the target of the rule.
# $<: The name of the first prerequisite.
# $^: The names of all the prerequisites, with spaces between them. 

default: all

src/core/mat-generated.swift: tools/gen-mat.py
	$^ > $@

src/core/vec-generated.swift: tools/gen-vec.py
	$^ > $@

src/cr/CGPoint-generated.swift: tools/gen-vec.py
	$^ CGPoint 2 Flt Flt CoreGraphics > $@

src/cr/CGVector-generated.swift: tools/gen-vec.py
	$^ CGVector 2 Flt Flt CoreGraphics > $@

src/scn/V3-generated.swift: tools/gen-vec.py
	$^ V3 3 Flt Flt SceneKit > $@

src/scn/V4-generated.swift: tools/gen-vec.py
	$^ V4 4 Flt Flt SceneKit > $@


_build/gen-cd-entities: src/core/*.swift src/cd/*.swift src/foundation/*.swift src/std/*.swift tools/gen-cd-entities.swift tools/main.swift
	mkdir -p _build
	xcrun -sdk macosx swiftc $^ -o $@

.PHONY: default clean gen all cd core cr foundation geom gl img ios scn std parse

clean:
	rm -rf _build
	rm -f \
	src/core/mat-generated.swift \
	src/core/vec-generated.swift \
	src/cr/CGPoint-generated.swift \
	src/cr/CGVector-generated.swift

# all generated source targets.
gen: \
	src/core/mat-generated.swift \
	src/core/vec-generated.swift \
	src/cr/CGPoint-generated.swift \
	src/cr/CGVector-generated.swift \
	src/scn/V3-generated.swift \
	src/scn/V4-generated.swift

# all real targets.
all: _build/gen-cd-entities gen

# parse targets ordered by dependency.

std:
	tools/swift-parse-both.sh \
	src/std

core:
	tools/swift-parse-both.sh \
	src/std \
	src/core

foundation:
	tools/swift-parse-both.sh \
	src/std \
	src/core \
	src/foundation

cd:
	tools/swift-parse-both.sh \
	src/std \
	src/core \
	src/foundation \
	src/cd

cr:
	tools/swift-parse-both.sh \
	src/std \
	src/core \
	src/foundation \
	src/cr

mac:
	echo tools/swift-parse-mac.sh \
	src/std \
	src/core \
	src/foundation \
	src/mac

ios:
	echo tools/swift-parse-ios.sh \
	src/std \
	src/core \
	src/foundation \
	src/ios

img:
	tools/swift-parse-both.sh \
	src/std \
	src/core \
	src/foundation \
	src/img

gl:
	tools/swift-parse-both.sh \
	src/std \
	src/core \
	src/foundation \
	src/cr \
	src/img \
	src/gl

scn:
	tools/swift-parse-both.sh \
	src/std \
	src/core \
	src/foundation \
	src/cr \
	src/img \
	src/gl \
	src/scn

geom:
	tools/swift-parse-both.sh \
	src/std \
	src/core \
	src/foundation \
	src/cr \
	src/img \
	src/gl \
	src/scn \
	src/geom

parse: std core foundation cd cr mac ios img geom gl scn
