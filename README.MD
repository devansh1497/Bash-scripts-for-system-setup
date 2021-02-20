=========================================
Author : Devansh Singh

The setup.sh script is the entry point. It is responsible to create the symlinks
and run the brew.sh file.

Currently, this repo only contains modifications to the zsh shell(the default
shell for MacOS). If you use any other shell like bash, just create a new
.bashrc file in this folder, add all your configurations and add it to the
"files" string in the setup.sh file separated by a space.
    Example :-
      files = "zshrc bashrc"
You can add as many files as you want like bash_profile, aliases etc.
The for loop will take care of creating the appropraite symlinks.

Just make sure that you are adding the correct name to the above string which
is picked up on start up by the conerned shell on.
For example, if you want to specify settings for bash, then create a .bashrc
file as this file is picked up by bash on startup by default. Make sure to use
the same name in this folder for the new file as well or else you will need to
modify the for loop to get create the correct symlink.
Feel free to play around with it ;)

-Devansh Singh.
