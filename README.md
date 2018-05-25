# Notepad-UDL2---User-defined-Language-for-SAS
The merge of many  Notepad++ User Define Language color syntax for SAS

This User defined (---.xml) is ready for import into Notepad++. To use, download the XML file, then select Language->Define your language... in Notepad++. Use the Import button to import the SAS language definition.

It's based on the commonly shared file from the Notepad++ Wiki, but with the addition of many more keywords, functions, and PROC names that are part of the SAS language.

Keyword style is regrouped by type of keyword in SAS

Special attention was put on single line comment and multi lines comments.

if you use the star  *  comments at the end of a line containing statement, it is strongly recommended to put the last semi column «;» before the star  *  with nothing in between. Like this  ;* , in order to help Notepad++ to do the distinction betwwen the star *  used in mathematical expression from the star *  used for comments.

I've not find yet any other method to tell Notepad++ to deal with the « * » comments.
