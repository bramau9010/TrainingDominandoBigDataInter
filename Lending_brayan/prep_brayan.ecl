IMPORT $;

Lendings := $.File_landing_Brayan.Dataset_Lendings;
ML_Prop  := $.File_landing_Brayan.Layout_Lendings_1;
EXPORT Prep_brayan := MODULE
  MLPropExt := RECORD(ML_Prop)
   UNSIGNED4 rnd; // A random number
  END;
 // Clean the data and assign a random number to each record
	// CleanFilter := Lendings.last_fico_range_high <> 0 AND Lendings.last_fico_range_low <> 0;
	CleanFilter := Lendings.loan_amnt <> 0 AND Lendings.fico_range_low <> 0;

  EXPORT myDataE := PROJECT(Lendings(CleanFilter), TRANSFORM(MLPropExt, 
                                                             SELF.rnd := RANDOM(),
                                                             SELF := LEFT));
																							               
  // Shuffle your data by sorting on the random field
  SHARED myDataES := SORT(myDataE, rnd);
  // Now cut the deck and you have random samples within each set
  // While you're at it, project back to your original format -- we dont need the rnd field anymore
  // Treat first 5000 as training data.  Transform back to the original format.
  EXPORT myTrainData := PROJECT(myDataES[1..5000], ML_Prop);
                                  
  // Treat next 2000 as test data
  EXPORT myTestData  := PROJECT(myDataES[5001..7000], ML_Prop);
                                 
END;
