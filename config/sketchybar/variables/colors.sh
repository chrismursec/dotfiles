CURRENT_SCHEME="catppuccin"

if [ -z "$CURRENT_SCHEME" ]; then
	echo "No color scheme selected"
	exit 1
fi

if [ "$CURRENT_SCHEME" = "everforest" ]; then
	# Everforest
	SBC_GREEN="0xffa7c080"
	SBC_BLUE="0xff7FBBB3"
	SBC_AQUA="0xff83C092"
	SBC_YELLOW="0xffDBBC7F"
	SBC_ORANGE="0xffE69875"
	SBC_RED="0xffE67E80"
	SBC_BROWN="0xff4D4C43"
	SBC_WHITE="0xffd3c6aa"
	SBC_PURPLE="0xffD699B6"
	SBC_PINK="0xffD699B6"
	SBC_GRAY="0xff859289"

	SBC_DARK_GREY="0xff1E2326"
	SBC_LIGHT_GRAY="0xff9da9ao"
	SBC_DARK_BLUE="0xff384b55"

	SBC_BACKGROUND="0xff2e383c"
	SBC_BORDERS="0xff7FBBB3"
	SBC_TEXT="0xffd3c6aa"
fi

if [ "$CURRENT_SCHEME" = "catppuccin" ]; then
	#Catppuccin
	SBC_GREEN="0xffa6e3a1"
	SBC_BLUE="0xff89dceb"
	SBC_AQUA="0xff94e2d5"
	SBC_YELLOW="0xfff9e2af"
	SBC_ORANGE="0xfffab387"
	SBC_RED="0xfff38ba8"
	SBC_BROWN="0xff4D4C43"
	SBC_WHITE="0xfff5e0dc"
	SBC_PURPLE="0xffcba6f7"
	SBC_GRAY="0xffa6adc8"
	SBC_PINK="0xfff5c2e7"

	SBC_DARK_GREY="0xff7f849c"
	SBC_LIGHT_GRAY="0xffbac2de"
	SBC_DARK_BLUE="0xff89b4fa"

	SBC_BACKGROUND="0xff11111b"
	SBC_BORDERS="0xfff5c2e7"
	SBC_TEXT="0xffcdd6f4"
	SBC_POPUP_BACKGROUND="0xff1e1e2e"
fi
