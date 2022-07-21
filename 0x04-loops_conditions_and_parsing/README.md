# Loops, conditions and parsing

## Description
Shellcheck is a tool that will help you write proper Bash scripts. It will make recommendations on your syntax and semantics and provide advice on edge cases that you might not have thought about. Shellcheck

## Table of contents

Files | Description
----------- | -----------
[0-RSA_public_key.pub](./0-RSA_public_key.pub) | RSA public key
[1-for_best_school](./1-for_best_school) | Bash script that displays ```Best School``` 10 times. Req: Using ```for``` loop (```while``` and ```until``` are forbidden)
[2-while_best_school](./2-while_best_school) | Bash script that displays ```Best School``` 10 times. Req: Using the ```while``` loop (```for``` and ```until``` are forbidden)
[3-until_best_school](./3-until_best_school) | Bash script that displays ```Best School``` 10 times. Req: Using the ```until``` loop (```for``` and ```while``` are forbidden)
[4-if_9_say_hi](./4-if_9_say_hi) | Bash script that displays ```Best School``` 10 times, but for the 9th iteration, displays ```Best School``` and then ```Hi``` on a new line. Req: Using the ```while``` loop (```for``` and ```until``` are forbidden) and Using the ```if``` statement
[5-4_bad_luck_8_is_your_chance](./5-4_bad_luck_8_is_your_chance) | Bash script that loops from 1 to 10 and: displays ```bad luck``` for the 4th loop iteration, displays ```good luck``` for the 8th loop iteration, displays ```Best School``` for the other iterations. Req: Using the ```while``` loop (```for``` and ```until``` are forbidden) and Using the ```if```, ```elif``` and ```else``` statements
[6-superstitious_numbers](./6-superstitious_numbers) | Bash script that displays numbers from 1 to 20 and: displays ```4``` and then ```bad luck from China``` for the 4th loop iteration, displays ```9``` and then ```bad luck from Japan``` for the 9th loop iteration, displays ```17``` and then ```bad luck from Italy``` for the 17th loop iteration.
[7-clock](./7-clock) | Bash script that displays the time for 12 hours and 59 minutes: display hours from 0 to 12, display minutes from 1 to 59.
[8-for_ls](./8-for_ls) | Bash script that displays: The content of the current directory, In a list format, Where only the part of the name after the first dash is displayed (refer to the example)
[9-to_file_or_not_to_file](./9-to_file_or_not_to_file) | Bash script that gives you information about the ```school``` file.
[10-fizzbuzz](./10-fizzbuzz) | Bash script that displays numbers from 1 to 100. Re: Displays ```FizzBuzz``` when the number is a multiple of 3 and 5, Displays ```Fizz``` when the number is multiple of 3, Displays ```Buzz``` when the number is a multiple of 5, Otherwise, displays the number, In a list format.
[100-read_and_cut](./100-read_and_cut) | Bash script that displays the content of the ```file /etc/passwd```. Script should only display: username, user id, Home directory path for the user.
[101-tell_the_story_of_passwd](./101-tell_the_story_of_passwd) | Bash script that displays the content of the file ```/etc/passwd```, using the ```while``` loop + IFS. Format: ```The user USERNAME is part of the GROUP_ID gang, lives in HOME_DIRECTORY and rides COMMAND/SHELL. USER ID's place is protected by the passcode PASSWORD, more info about the user here: USER ID INFO```
[102-lets_parse_apache_logs](./102-lets_parse_apache_logs) | Bash script that displays the visitor IP along with the ```HTTP status code``` from the Apache log file. Format: IP HTTP_CODE
[103-dig_the-data](./103-dig_the-data) | Bash script that groups visitors by IP and HTTP status code, and displays this data. The exact format must be: OCCURENCE_NUMBER IP HTTP_CODE, In list format.


## Resources
- [Loops sample](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_01.html)
- [Variable assignment and arithmetic](https://tldp.org/LDP/abs/html/ops.html)
- [Comparison operators](https://tldp.org/LDP/abs/html/comparison-ops.html)
- [File test operators](https://tldp.org/LDP/abs/html/fto.html)
- [Make your scripts portable](https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html)

## Author

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
<!-- <img src="https://avatars.githubusercontent.com/u/99494922?v=4" width="75px;"/><br /><sub><b>Ayomide Johnaon Salami</b></sub>[💻](https://github.com/Royalboe/alx-system_engineering-devops/commits?author=Royalboe "Code") [📖](https://github.com/Royalboe/alx-system_engineering-devops/commits?author=Royalboe "Documentation") [🤔] -->
<!-- ALL-CONTRIBUTORS-LIST:END -->
