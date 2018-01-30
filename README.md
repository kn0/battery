A *battery* of Metasplot Resource Scripts
=========================================
This repository is a collection of Metasploit resource scripts that perform a *battery* of tests for "low hanging fruit". 
Installation
-------------
First, you need to get [Metasploit][msf on github] up and running. Make sure you have the [database configured][msf database setup] (e.g. `service postgresql start && msfdb init`).


To 'install' battery, simply run the install script:
  * `./install.sh`

Alternatively, just copy the *battery* folder, along with *battery.rc* to the resource folder in your Metasploit user's scripts directory (it is usually something like */home/yourname/.msf4/scripts/resouce*). You should have something like:
  * ~/.msf4/scripts/resource/battery/
  * ~/.msf4/scripts/resource/battery.rc

Usage
------
Battery selects targets based off of services included in the Metasploit database. You can use nmap within Metasploit to find hosts and services and add them to the database: `db_nmap -A -v some_host_or_range` Note: Battery scripts reqire service and OS data, so it is recommended that you run nmap with at least the `-S` and `-O` flags.

Just call the battery.rc resource script within msfconsole to start: `resource battery.rc`

Battery will change your spool to the local user's log directory (~/.msf4/logs). It will then run all of the .rc scipts in the battery folder and add some helpful output formatting. When it is done, it will return to the module you were working on before you started. Note that any options that were set in the datastore will be cleared when battery runs (`unset all`).

You may also run any of the battery scripts one at a time: `resource battery/script_name.rc`

A few warnings
--------------
  * Although most tests included in battery are relatively "safe", make sure you understand what you are doing before you use battery. Read through the comments (and/or the code) in the resource scripts before running them
  * Battery is not a ninja.
  * Make sure that the battery folder is restricted. If it is not, any user could dump a resource script into the folder (which can execute Ruby). It would then run, when battery is called.
  * Please only use battery against systems you own or have permission to test.

Final Notes
-------------
Please feel free to fork the repo and add your own resource scripts. If you decide to take this in a different direction, let me know and I will add a link on this README. If you find and [report any issues][battery issues], I will do my best to fix them as soon as I can. If you have any questions or comments, feel free to say hi via GitHub, or Twitter ([@trentonivey][kn0 twitter])

[kn0 twitter]: https://twitter.com/trentonivey
[battery issues]: https://github.com/kn0/battery/issues "Report an issue"
[msf database setup]: http://www.offensive-security.com/metasploit-unleashed/Using_the_Database "Using the Metasploit Database"
[msf on github]: https://github.com/rapid7/metasploit-framework "Metasploit's GitHub page"
