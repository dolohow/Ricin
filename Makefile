style:
	astyle \
		--style=attach \
		--indent=spaces=2 \
		--indent-namespaces \
		--indent-switches \
		--add-brackets \
		src/*.vala

debug: ./build/
	type ninja-build 2>/dev/null && ninja-build -C build || ninja -C build
	G_MESSAGES_DEBUG=all GOBJECT_DEBUG=instance-count gdb -ex run ./build/Ricin
