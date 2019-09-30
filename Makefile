BUILD        = $(CURDIR)/.build
export PATH := node_modules/bin:$(PATH)

.PHONY: all
all: ${BUILD}/animated-svg-cgol.html ${BUILD}/bathroom-floss.html

${BUILD}/animated-svg-cgol.html: animated-svg-cgol/*.elm
	cd animated-svg-cgol && elm make Main.elm --optimize --output $@

${BUILD}/bathroom-floss.html: bathroom-floss/*.elm
	cd bathroom-floss && elm make Main.elm --optimize --output $@
