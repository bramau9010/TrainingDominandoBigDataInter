IMPORT $;

//Dataset bruto
FileRaw := $.File_raw_b.Dataset_raw;
//FileRaw := $.layaout_optimized.Dataset_optimized1;
OUTPUT(FileRaw);
COUNT(FileRaw);
