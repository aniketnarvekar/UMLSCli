
build:
	swift build

run:
	doppler run -- swift run

format:
	swift format -i -p -r --color-diagnostics --follow-symlinks .

lint:
	swift format lint -r -p -s --color-diagnostics --follow-symlinks .
