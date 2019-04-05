if [[ "$OSTYPE" == "linux-gnu" ]]; then
	wget https://github.com/JackGeass/tool/releases/download/0/linux.tar.gz
elif [[ "$OSTYPE" == "darwin"* ]]; then
	wget https://github.com/JackGeass/tool/releases/download/0/darwin.tar.gz
elif [[ "$OSTYPE" == "cygwin" ]]; then
	wget https://github.com/JackGeass/tool/releases/download/0/windows.tar.gz
elif [[ "$OSTYPE" == "msys" ]]; then
	wget https://github.com/JackGeass/tool/releases/download/0/windows.tar.gz
#elif [[ "$OSTYPE" == "win32" ]]; then
#	cp mail_win_x64 mail
#	# I'm not sure this can happen.
#elif [[ "$OSTYPE" == "freebsd"* ]]; then
#	# ...
#else
#	# Unknown.
fi
