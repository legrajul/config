function ll
	ls -l $argv
end

function l
	ls $argv
end

function la
	ls -a $argv
end

function lla
	ls -la $argv
end

function clr
	clear
end

function emacs
	emacs -nw $argv
end

function unpack -d "Unpack arbitrary archive files"
	for i in $argv
		switch $i

			case '**.tar'
				tar -xf $i

			case '**.tar.gz' '**.tgz'
				tar -zxf $i

			case '**.tar.bz' '**.tar.bz2' '**.tbz' '**.tbz2'
				 tar -jxf $i

			case '**.rar'
				 unrar e $i

			case '**.zip'
				 unzip $i

			case '**'
				echo File $i is of unknown type

		end
	end
end

function fish_prompt -d "Write out the prompt"
	printf '%s%s%s@%s%s%s%s%s $ ' (set_color normal) (whoami) (set_color red) (set_color normal) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end
