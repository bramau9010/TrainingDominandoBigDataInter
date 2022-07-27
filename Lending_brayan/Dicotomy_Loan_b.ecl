IMPORT $;

EXPORT Dicotomy_Loan_b := MODULE
  EXPORT File_Binomial_fd := $.layaout_optimized.Dataset_optimized1(loan_status IN ['Current','Fully Paid','Charged Off']);
  
	EXPORT Layout_Bi := RECORD
	  RECORDOF(File_Binomial_fd) AND NOT loan_status;
	  UNSIGNED1 loan_status;
	END;
 
  EXPORT Dataset_binomial := PROJECT(File_Binomial_fd,TRANSFORM(Layout_Bi,
	                                                              SELF.loan_status:=IF(LEFT.Loan_Status='Charged Off',1,0),
																																SELF := LEFT)
																		 );
END;



