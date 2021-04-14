/******* Notepad++ ULD2 SAS test for single line and muti-lines comments version 2021-04-09 ********/

/* Comment  */
* Comment ;
%* Comment ;
comment comment ;


/******* Test comments in comments for one line ********/

/*	Comment		test	*  test ; test  	%* test ; test */
*	Comment		test	*  test   test  	%* test   test  /* test */ test  ;
%*	Comment		test	*  test   test  	%* test   test  /* test */ test  ;
comment			test	*  test   test  	%* test   test  /* test */ test  ;



/******* Test comments for many lines no empty lines ********/

/*	Comment
		test	*  test ; test  	%* test ; test */
		
*	Comment
		test	*  test   test  	%* test   test  /* test */ test  ;
		
%*	Comment
		test	*  test   test  	%* test   test  /* test */ test  ;
		
comment
			test	*  test   test  	%* test   test  /* test */ test  ;


/******* Test comments for many lines with empty lines but with the ;glued workaround ********/

/*	Comment
		test	*  test ; test  	%* test ; test 
		
		test */
		
;*	Comment
		test	*  test   test  	%* test   test   test

				test success with the semi-column workaround ;
		
;%*	Comment
		test	*  test   test  	%* test   test  /* test */ test

				test success with the semi-column workaround ;
		
;comment
			test	*  test   test  	%* test   test  /* test */ test

				test success with the semi-column workaround ;


/******* Test comments for many lines with at leat one character planned empty lines ********/
 

/*	Comment
		test	*  test ; test  	%* test ; test 
.		
		test */
		
*	Comment
		test	*  test   test  	%* test   test   test
.
				test success with the dot workaround ;
		
%*	Comment
		test	*  test   test  	%* test   test  /* test */ test
.
				test success with the dot workaround ;
		
comment
			test	*  test   test  	%* test   test  /* test */ test
.
				test success with the dot workaround ;


/******* Test comments for many lines with empty lines ********/
 

/*	Comment
		test	*  test ; test  	%* test ; test 
		
		test */
		
*	Comment
		test	*  test   test  	%* test   test   test

				test fail empty line above put at least one non whitespace above to workaround empty line problems;
		
%*	Comment
		test	*  test   test  	%* test   test  /* test */ test

				test fail empty line above put at least one non whitespace above to workaround empty line problems;
		
comment
			test	*  test   test  	%* test   test  /* test */ test

				test fail empty line above put at least one non whitespace above to workaround empty line problems;
				


/******* Test comments for many lines with "SPACE" and "TAB" characters at end of line ********/
 

/*	Comment
		test	*  test ; test  	%* test ; test 	 	 
		test */
		
*	Comment
		test	*  test   test  	%* test   test   test 
				test fail line above have "SPACE" or "TAB" at the end. Remove all the ending whitespaces to workaround this problem ;
		
%*	Comment
		test	*  test   test  	%* test   test  /* test */ test	 	  
				test fail line above have "SPACE" or "TAB" at the end. Remove all the ending whitespaces to workaround this problem ;
		
comment
			test	*  test   test  	%* test   test  /* test */ test	
				test fail line above have "SPACE" or "TAB" at the end. Remove all the ending whitespaces to workaround this problem ;


