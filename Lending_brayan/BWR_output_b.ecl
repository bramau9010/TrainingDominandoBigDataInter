IMPORT DataPatterns, $;

//Dataset bruto
//FileRaw := $.File_raw_b.Dataset_raw;
//FileRaw := $.layaout_optimized.Dataset_optimized1;
//OUTPUT(FileRaw);
//COUNT(FileRaw);


//Perfilamento dos dados
// DataPatterns.Profile(FileRaw);
// DataPatterns.BestRecordStructure(FileRaw,,,TRUE);
// DataPatterns.Profile($.File_Optimized.Dataset_Optimized);

//Dataset filtrado com loan_status (0/1)
//OUTPUT($.Dicotomy_Loan_b);
//OUTPUT(DataPatterns.Profile($.Dicotomy_Loan_b.Dataset_binomial),ALL);

//Dataset filtrado com campos de interesse
//$.File_landing_Brayan.Dataset_Lendings;

//Dataset limpo e com campo aleatório
OUTPUT($.Prep_brayan.myDataE,NAMED('CleanLendings'));
COUNT($.Prep_brayan.myDataE);

//Amostras de treinamento e teste
// OUTPUT($.Prep01.myTrainData,NAMED('TrainData'));
// COUNT($.Prep01.myTrainData);
// OUTPUT($.Prep01.myTestData,NAMED('TestData'));
// COUNT($.Prep01.myTestData);

//Variáveis dependentes e independentes para treinamento e teste em formato data frame
//OUTPUT($.Convert02.myIndTrainDataNF,NAMED('IndTrain'));
//OUTPUT($.Convert02.myDepTrainDataNF,NAMED('DepTrain'));
//OUTPUT($.Convert02.myIndTestDataNF,NAMED('IndTest'));
//OUTPUT($.Convert02.myDepTestDataNF,NAMED('DepTest'));
