SELECT * FROM Koulutuksen_kouluttaja ko 
JOIN Koulutus k 
ON ko.koulutus_id = k.koulutus_id 
JOIN Kouluttaja kou 
ON ko.kouluttaja_id = kou.kouluttaja_id
JOIN Opettaja op 
ON k.opettaja_id = op.opettaja_id