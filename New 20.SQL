		SELECT CCH.CVASTRINGVALUE --INTO W_VALUE,  
		         ,CCH.CVAPKEYVALUE
		         ,cre.*
		FROM CREVT CRE, CCHVALUE CCH, CUSTOMCHARACTERISTIC CC
		WHERE CRE.FACID (+)= 2673789
		AND CRE.TMFFONCTION (+) = 'EVFAC_MODIFECH' -- rééchelonnement de facture
		--AND CRE.CREDTVALID IS NOT NULL
		--AND CRE.CREDTSUP IS NULL
		AND CRE.CREID (+) = CCH.CREID
		AND CCH.FACID = 2673789
		AND CCH.CCHSID = CC.CCHSID
		AND CC.CCHVALUECODE = 'QUALIFIMPAYE'
		AND CCH.CVASTRINGVALUE IS NOT NULL
		AND CCH.CVAPKEYVALUE = 'Facid-'||2673789||'||Fecordre-'||1
		AND ROWNUM = 1;
		
select * from facecheance where facid = 2673789;		

select * from DATATRANSCODING where dtrid=1091;
select * from DTRDETAIL where DDEHOSTVALUE in ('001', '002');

select *from CREVT where TMFFONCTION  = 'EVFAC_MODIFECH' and  trunc(CREDTCREAT) < '11/05/2022'; 

select * from tusparam where tusnom = 'QUALIFIMPAYE';
select * from lantusparam where tusnom = 'QUALIFIMPAYE';

