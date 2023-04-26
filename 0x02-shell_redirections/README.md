# Shell Redirections\nContains redirection commands

## Description
Files in this repo contains redirection and filtering commands






## Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

### Shell, I/O Redirection

* What do the commands head, tail, find, wc, sort, uniq, grep, tr do
* How to redirect standard output to a file
* How to get standard input from a file instead of the keyboard
* How to send the output from one program to the input of another program
* How to combine commands and filters with redirections
* Special Characters
* What are special characters
* Understand what do the white spaces, single quotes, double quotes, backslash, comment, pipe, command separator, tilde and how and when to use them

### Other Man Pages

* How to display a line of text
* How to concatenate files and print on the standard output
* How to reverse a string
* How to remove sections from each line of files
* What is the /etc/passwd file and what is its format
* What is the /etc/shadow file and what is its format

## Files
# 0x02-shell_redirections README

[0-hello_world](./0-hello_world) --- A script that prints “Hello, World”, followed by a new line to the standard output.
[1-confused_smiley](./1-confused_smiley) --- A script that displays a confused smiley "(Ôo)'.
[2-hellofile](./2-hello_file) --- Displays the content of the /etc/passwd file.
[3-twofiles](./3-twofiles) --- Displays the content of /etc/passwd and /etc/hosts.
[4-lastlines](./4-lastlines) --- Displays the last 10 lines of /etc/passwd.
[5-firstlines](./5-firstlines) --- Displays the first 10 lines of /etc/passwd.
[6-third_line](6-third_line) --- A script that displays the third line of the file iacta. The file iacta will be in the working directory.
[7-file](7-file) --- A shell script that creates a file named exactly \*\\'"Best School"\'\\*$\?\*\*\*\*\*:) containing the text Best School ending by a new line.
[8-cwd_state](./8-cwd_state) --- A script that writes into the file ls_cwd_content the result of the command ls -la. If the file ls_cwd_content already exists, it should be overwritten. If the file ls_cwd_content does not exist, create it.
[9-duplicate_last_line](9-duplicate_last_line) --- A script that duplicates the last line of the file iacta.
[10-no_more_js](./10-no_more_js) --- A script that deletes all the regular files (not the directories) with a .js extension that are present in the current directory and all its subfolders.
[11-directories](./11-directories) --- A script that counts the number of directories and sub-directories in the current directory.
             ---- The current and parent directories should not be taken into account,
             ---- Hidden directories should be counted.
[12-newest_files](./12-newest_files) --- a script that displays the 10 newest files in the current directory.
[13-unique](./13-unique) --- A script that takes a list of words as input and prints only words that appear exactly once.
[14-findthatword](./14-findthatword) --- Displays lines containing the pattern “root” from the file /etc/passwd .
[15-countthatword](./15-countthatword) --- Displays the number of lines that contain the pattern “bin” in the file /etc/passwd .
[16-whatsnext](./16-whatsnext) --- Displays lines containing the pattern “root” and 3 lines after them in the file /etc/passwd
[17-hidethisword](./17-hidethisword) --- Displays all the lines in the file /etc/passwd that do not contain the pattern “bin”.
[18-letteronly](./18-letteronly) --- Display all lines of the file /etc/ssh/sshd_config starting with a letter.
[19-AZ](./19-AZ) --- Replaces all characters A and c from input to Z and e respectively.
[20-hiago](20-hiago) -- Creates a script that removes all letters c and C from input.
[21-reverse](21-reverse) --- Writes a script that reverse its input.
[22-users_and_homes](./22-users_and_homes) --- Writes a script that displays all users and their home directories, sorted by users.
[100-empty_casks](./100-empty_casks) --- Writes a command that finds all empty files and directories in the current directory and all sub-directories.
[101-gifs](./101-gifs) --- Writes a script that lists all the files with a .gif extension in the current directory and all its sub-directories.
[102-acrostic](./102-acrostic) --- a script that decodes acrostics that use the first letter of each line.
[103-the_biggest_fan](./103-the_biggest_fan) --- a script that parses web servers logs in TSV format as input and displays the 11 hosts or IP addresses which did the most requests. Ordered by number of requests, most active host or IP at the top
