
build:
	swift build -Xswiftc -DSemanticType

run:
	doppler run -- swift run -Xswiftc -DSemanticType

format:
	swift format -i -p -r --color-diagnostics --follow-symlinks .

lint:
	swift format lint -r -p -s --color-diagnostics --follow-symlinks .
