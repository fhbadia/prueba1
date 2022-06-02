SELECT * FROM FACTURE where facnum like  '%13053250%' ; --13053250   2862749
select * from facture where facid=2353853;  --12969668   1
   select * from dossier where dosnum = '1162511';   --338889
select * from facture where facid=2586366;  --02451909   2
   select * from dossier where dosnum = '0136911';   --240712

select * from cchvalue where facid in (select facid from FACTURE where facnum like  '%13053250%' );   --CMBCCHSID50444
select * from  cchvalue where cchsid='CMBCCHSID50444';


select trunc(CREDTCREAT),count(*) from crevt where uticodecreat = 'REPRISE' and  TMFFONCTION='EVD_NEW'  group by trunc(CREDTCREAT)
;
select trunc(CREDTCREAT),count(*) from crevt where uticodecreat = 'REPRISE' and  TMFFONCTION='EVD_NEW' and dosid = 342288 group by trunc(CREDTCREAT)
;--11/05/2022
select trunc(CREDTCREAT),count(*) from crevt where uticodecreat = 'REPRISE' and  TMFFONCTION='EVD_NEW' and dosid = 338889 group by trunc(CREDTCREAT)
;--11/05/2022
select trunc(CREDTCREAT),count(*) from crevt where uticodecreat = 'REPRISE' and  TMFFONCTION='EVD_NEW' and dosid = 240712 group by trunc(CREDTCREAT)
;--11/05/2022

select * from dossier where dosnum = '1149468';  --342288
select * from dossier where dosid in (
  select dosid from crevt where uticodecreat = 'REPRISE' and  TMFFONCTION='EVD_NEW' and trunc(CREDTCREAT)='11/05/2022');
  
SELECT * FROM FACTURE where facnum like  '%13053250%' ;      --2862749
SELECT * FROM FACREFERENCE WHERE facid = 2862749;  --dosnum 1149468 dosid 1149468

select * from facreference where fredosnum in (
select dosnum from dossier where dosid in (
  select dosid from crevt where uticodecreat = 'REPRISE' and  TMFFONCTION='EVD_NEW' and trunc(CREDTCREAT)='11/05/2022'))
and facid in (  
  
  ;
  
  
select CVASTRINGVALUE, count(*) from  cchvalue where cchsid='CMBCCHSID50444' group by CVASTRINGVALUE; 
--900535
select * from facture where facid=900535;    --08011994
select * from  cchvalue where cchsid='CMBCCHSID50444';
select * from  cchvalue where entcode='FACTURE';
select entcode, count(*) from  cchvalue group by entcode; 
--ENTCODE	COUNT(*)
--ACTEUR	979146
--DOSSIER	10537807
--FACTURE	112
--BIENIMMOBILIER	889407
select cchsid,COUNT(*) from  cchvalue where entcode='DOSSIER' group by cchsid;
select * from CUSTOMCHARACTERISTIC where cchsid='CMBCCHSID50444';   --COMBOTUSPARAM
--COMTYPE	    CCHVALUECODE	ENTCODE	CCHSID	        CCHCODE
--COMBOTUSPARAM	QUALIFIMPAYE	FACTURE	CMBCCHSID50444	
--Component Type ( Reference to COMPONENT.COMPTYPE)
--Value code of the Custom Characteristic 
--Custom characteristic ID key of the component (coming from CUSTOMCHARACTERISTIC.CCHSID)
select * from CUSTOMCHARACTERISTIC where CCHVALUECODE='QUALIFIMPAYE'; 

select u.COMTYPE,u.CCHVALUECODE, count(*) from cchvalue t, customcharacteristic u where t.cchsid=u.cchsid and u.comtype = 'COMBOTUSPARAM' /* and u.ENTCODE='FACTURE' */ 
group by u.COMTYPE,u.CCHVALUECODE;
;
select * from cchvalue ; 

select * from deftable where nomtable='CUSTOMCHARACTERISTIC' order by ordre nulls first;

select u.COMTYPE,u.CCHVALUECODE, count(*) from cchvalue t, customcharacteristic u where t.cchsid=u.cchsid and u.comtype = 'COMBOTUSPARAM' and CCHVALUECODE='ORITYPETAUX'/* and u.ENTCODE='FACTURE' */ 
group by u.COMTYPE,u.CCHVALUECODE;
;
select * from CUSTOMCHARACTERISTIC u where u.comtype = 'COMBOTUSPARAM' and CCHVALUECODE='ORITYPETAUX';  
--COMTYPE	    CCHVALUECODE	ENTCODE	CCHSID	        CCHCODE
--COMBOTUSPARAM	ORITYPETAUX	    DOSSIER	CMBCCHSID50440	
select * from  cchvalue where cchsid='CMBCCHSID50440';
--CVAID	    CCHSID	        ENTCODE	CVASTRINGVALUE	CVADTVALUE	CVANUMERICVALUE	CVABOOLEANVALUE	CVADT	FACID	DEPID	REGID	ANAID	AGGID	DOSIDPROSPECT	DPRVERSION	ACTID	ITRID	BIMID	DOSID	CREID	CVAPKEYVALUE	MANID	TPGCODE	VARID	ASSID	COLID	SINID	BUDID	CHAID	CEXID	COMID	ADMID
--7159069	CMBCCHSID50440	DOSSIER	F															                                                                                                    210066		    Dosid-210066||											
--
select * from  cchvalue where cchsid='CMBCCHSID50444';
--CVAID	    CCHSID	        ENTCODE	CVASTRINGVALUE	CVADTVALUE	CVANUMERICVALUE	CVABOOLEANVALUE	CVADT	FACID	DEPID	REGID	ANAID	AGGID	DOSIDPROSPECT	DPRVERSION	ACTID	ITRID	BIMID	DOSID	CREID	CVAPKEYVALUE	MANID	TPGCODE	VARID	ASSID	COLID	SINID	BUDID	CHAID	CEXID	COMID	ADMID
--12132826	CMBCCHSID50444	FACTURE	002					                                                2673789												                                                        Facid-2673789||Fecordre-1											

