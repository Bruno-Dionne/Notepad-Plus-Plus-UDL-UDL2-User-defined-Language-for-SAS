Notepad++ UDL2 User defined Language color syntax for SAS (version 2021-04-09)

Based on many Notepad++ UDL and UDL2 find on the web. Add many more keywords, functions and PROC names.

The .xml files is ready for import into Notepad++.
   1) Download .XML file, then select Language->Define your language...
   2) Use the Import button to import the SAS language definition.

- Very good handling of single and multiple lines comments.
- Keyword style is regrouped by type to ease customization.
- Very good support of almost all SAS format with accurate color syntax.

For all dark background color syntax, set Notepad++ theme to «Deep Black», «Global Styles», «Global Override».
Not perfect but it help to better see the mouse and text cursor.

You can find an Excel document with all SAS Keywords and Operators by category and by Syntax coloring group number.
Note that keywords like this «!!Bla Bla Bla!!» is used as comments only inside keywords lists to help you find
what category of keywords you are looking at.
New 1: Add SORT_ORDER column to help sort sheet in original order
New 2: Sheet «SAS Keyword Collection» is complete list of all valid parameters keyword name to use 
       with associated SAS «high level» Keyword or «Keyword Collection». Great help for all «PROC».
       Great help for all «PROC» etc..
       
SAS offer many type of single line and multi-lines comments. This UDL2 work very well with all type of SAS comments.

It's difficult to teach UDL2 to correctly distinct a SAS multi-lines comment 
that can open only at the start of a line like «*», «%*» and «comment», unlike «/*» that can open anywhere.

 1)Workaround part 1 :
   The «*», «%*» and «comment» are define in single line comment closing at «;» and with option «allow preceding whitespace»
   If there is no «;» before end of line, Notepad++ will not recognize next lines as a comment, so Workaround part 2.
   
 2) Workaround part 2 :
   I've defined «;*», «;%*» and «;comment» as the opening of a multi-lines comment.
   The «;» is the SAS empty statement and will not interfere with your code.
   If you wish Notepad++ recognize all lines for a multi-lines comment, 
   you must add yourself a «;» to have these «;*», «;%*» and «;comment».
 - The multi-lines «/* */» comment work as expected.
 - The Workaround part 1) had a side effect (bug ?) caused by single-line comment «comment»
   - It interfere with the syntax coloring of hexadecimal number constant containing the letter «C»
   - It interfere with the syntax coloring of user keyword containing letter «X» preceded with any
     letter «A» «B» «C» «D» «E» or «F» (hexadecimal valid letters).  Ex:  libname EXcelXYZ
   
- A proposed solution for Notepadd++ can be to accept ((EOL)) as a valid «continue character» for single line comment.
  This will bypass the «natural» behavior of ending a single line comment at end of line ((EOL)).
    
/**********************************************************************************************************/

What's NEW (2021-04-09)

- All color syntax now include a new delimiter to damage control coloring syntax inside and after Regular Expression 
  containing only one single quote or only one double quote, like this:
     «%sysfunc(prxchange(s/\|/%str(%»)/i,-1,%superq(m_currentvar)))»
	 
- Hexadecimal number definition now better follow suggested Notepad++ rules.

- Major enhancement for multi-lines comments «*», «%*» and «comment»
  As long as the last character of each line of a multi-lines comment :
    - IS NOT a «SPACE» or «TAB» characters
      AND
    - IS ASCII character between chr(33) and chr(255) exception of «;»,
  Glueing a semi-colomn before «*», «%*» and «comment» is no longer needed to help Notepad++
  manage this kind of comments. 
  
  The workaroundr is to use the new Notepad++ special operator «(( ))» in the continue character.
  «If two or more strings are defined inside of a special operator «(( ))», they are interchangeable.»
  Put all ASCII characters separated by space inside the special operator «(( ))» except «;» and
  any non whitespace ASCII character is now a continue character.
  
  Not only you longer have to change your source code 99% of the time, you can also add any UNICODE characters
  to hep you deal with special case.
  
  If you want some empty line on multi-lines comments, you have to put at least one character like «.» or the space chr(255) if you wish.
  
  It's the best workaround i've found so far to deal with SAS unique comments format.
  
  Note: i've made an error on version 2021-04-08, forgot to exlude «;» as a continue character
        for comments. it's now corrected in version (2021-04-09).
 
/**********************************************************************************************************/
  
If you find SAS code not well syntax colored, missing keywords or want help to customize your own SAS UDL2 :

Please let me know or Open a Source Forge ticket :
	1) Send a copy of the SAS code causing troubles (Remember to remove passwords/sensitive informations).
	2) Describe where or how the problem show up.
	3) Tell me what you expect it to be.

Thanks for using my Notepad++ User defined Language color syntax for SAS.

Bruno Dionne
