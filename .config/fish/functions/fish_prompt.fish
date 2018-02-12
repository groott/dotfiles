function fish_prompt
	test $SSH_TTY; and printf (set_color red)(whoami)(set_color white)'@'(set_color yellow)(hostname)' '

    test $USER = 'root'; and echo (set_color red)"#"

    # Main
	echo -n (set_color cyan)(prompt_pwd) (set_color red)\uf460(set_color yellow)\uf460(set_color green)\uf460' '
end
