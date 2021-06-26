## CMD commands
```
yacc -d prog.y
lex prog.l
gcc prog.tab.c lex.yy.c
./a <input.txt> output.txt
```

## Using Makefile
Create a makefile with name Makefile, and type these commands.
```
input = input.txt
output = output.txt

main: prog.l prog.y
    yacc -d prog4.y
	lex prog4.l
	gcc prog4.tab.c lex.yy.c
	a <$(input)> $(output)
```

Now type <code>mingw32-make main</code> in powershell or cmd everytime you want to execute.

</br>

## Issues
#### 🔴 File reading issues
 If you are facing problem while taking the input using this command <code>a <input.txt> output.txt</code> in your vsCode terminal (powershell). And terminal shows these errors.
 ```
 + .\a <input.txt> output.txt
+     ~
The < operator is reserved for future use.
    + FullyQualifiedErrorId : RedirectionNotSupported
 ```
 **SOLUTIONS:** Take CMD instead of Powershell.

#### 🔴 Makefile issues
1. First make sure you have MinGW installed.
2. From MinGW installation manager check if you have the <code>mingw32-make</code> package installed.
3. Check if you have added the MinGW bin folder to your PATH. type <code>PATH</code> in your command line and look for the folder. Or on windows 10 go to <code>Control Panel\System and Security\System --> Advanced system settings --> Environment Variables --> System Variables</code> find <code>Path</code> variable, select, <code>Edit</code> and check if it is there. If not just add it!
4. Create a new file in any of your PATH folders. For example create <code>mingwstartup.bat</code> in the MinGW bin folder. write the line <code>doskey make=mingw32-make.exe</code> inside, save and close it.
5. Now you can use make command using <code>mingw32-make main</code>
