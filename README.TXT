Notepad++ UDL2 User defined Language color syntax for SAS

Based on many Notepad++ UDL and UDL2 find on the web. Add many more keywords, functions and PROC names.

The .xml files is ready for import into Notepad++.
   1) Download .XML file, then select Language->Define your language...
   2) Use the Import button to import the SAS language definition.

- Very good handling of single and multiple lines comments.
- Keyword style is regrouped by type to ease customization.
- Very good support of almost all SAS format, no garbage color.

For all dark background color syntax, set Notepad++ theme to "Deep Black", "Global Styles", "Global Override".
Not perfect but it help to better see the mouse and text cursor.

You can find an Excel document with all SAS Keywords and Operators by category and by Syntax coloring group number.
Note that keywords like this "!!Bla Bla Bla!!" is used as comments only inside keywords lists to help you find
what category of keywords you are looking at.

SAS offer many type of single line and multi-lines comments.
This UDL2 work very well with all type of SAS comments.

It's difficult to teach UDL2 to correctly distinct a multi-lines comment 
that can open only at the start of a line like «*», «%*» and «comment», unlike «/*» that can open anywhere.
 - Workaround part 1 :
   The «*», «%*» and «comment» are define as single line comment closing at «;»
   If there is no «;» before end of line, Notepad++ will not recognize next lines as a comment, so Workaround part 2.

 - Workaround part 2 :
   I've defined «;*», «;%*» and «;comment» as the opening of a multi-lines comment.
   The «;» is the SAS empty statement and will not interfere with your code.
   If you wish Notepad++ recognize all lines for a multi-lines comment, 
   you must add yourself a «;» to have these «;*», «;%*» and «;comment».

 - The multi-lines «/* */» comment work as expected.
 
 - The Workaround part 1 had a side effect (bug ?) caused by single-line comment named «comment» :)
   It cause hex number constant containing the letter «C» to not have a bad color style.
 
- A solution for this comment problem can be reprogramming Notepadd++ to accept as "Continue character"
  the character End of line ((EOF)) for single line comment.
  
If you find SAS code not well syntax colored, missing keywords or want help to customize your own SAS UDL2 :

Please let me know or Open a Source Forge ticket :
	1) Send a copy of the SAS code causing troubles (Remember to remove passwords/sensitive informations).
	2) Describe where or how the problem show up.
	3) Tell me what you expect it to be.

Thanks for using my Notepad++ User defined Language color syntax for SAS.

Bruno Dionne