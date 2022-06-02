select * from SAS_LANCE_MODULE;

      SELECT  S.ID_LANCEUR ,
              CODE_PARAM1 ,
              CODE_PARAM2 ,
              CODE_PARAM3 ,
              CODE_PARAM4 ,
              CODE_PARAM5 ,
              CODE_PARAM6 ,
              CODE_PARAMERRFCT ,
              REQERRFCT        ,
              CODE_PARAMPURGE  ,
              REQPURGE
      FROM    SAS_LANCEUR_KDIP S ,
              SAS_LANCEUR_PARAM_KDIP P

      WHERE   S.ID_LANCEUR        =  P.ID_LANCEUR
      AND     S.FGCODE            =  'ACTORS'
      AND     S.CODE_ETAPE        =  'CONTROL'
      AND     S.STATUT_TRAITEMENT =  'EXPL'
      AND     S.STATUT_LANCEMENT  IN ('ATRA','ERRTECH','ERRFCT')
      ORDER BY NO_ORDRE_PIPELINE ;
--ID_LANCEUR	CODE_PARAM1	CODE_PARAM2	CODE_PARAM3	CODE_PARAM4	CODE_PARAM5	CODE_PARAM6	CODE_PARAMERRFCT	REQERRFCT	CODE_PARAMPURGE	REQPURGE
--409	INJECTION_PAR	CONTROL_ACTORS					N		N	
--      
select * from SAS_LANCEUR_KDIP where id_lanceur = 409;

      SELECT NB_PROCESSUS ,
             NB_PARAMETRES
      --INTO   W_NB_PROCESSUS  ,
      --       W_NB_PARAMETRES
      FROM   SAS_LANCE_MODULE
      WHERE  FGCODE       = 'INJECTION_PAR'
      AND    NO_ORDRE     = 1
      AND    CODE_STATUT  = 'EXPL'        ;
      
select *
  FROM      SAS_LANCE_MODULE
		  WHERE     FGCODE    =  'INJECTION_PAR'
		  ORDER BY  NO_ORDRE ;
		  
SELECT * FROM SASADM_TEMPLATE_CASSIOPAE WHERE P_NAME='CONTROL_ACTORS'; AND CONTROL_FLAG=1
;
SELECT * FROM SASADM_TEMPLATE_CASSIOPAE where fgcode = 'ACTORS';

SELECT * FROM SASADM_FG_PIPELINES_DEF WHERE PIPELINE_NAME = 'CONTROL_ACTORS' ORDER BY EXEC_ORDER ASC;
--P_CTRL_KSIOP_BLK.I_CTRL_ACTORS(PARTITION,BATCH_ID)		  
SELECT ACTID FROM XREF_ACTEUR;
select * from RESULT_CONTROL;
select * from acteur;

select * from SAS_CCHAR_DEF where fgcode = 'QUALIFIMPAYE' order by ordre;
select * from SAS_CCHAR_PARAM where fgcode = 'QUALIFIMPAYE';
--FROM sas_impayes_cdc i inner join sas_echeance_ecr_cdc e on i.identifiant_mer = e.identifiant_mer
select code_qualif_gest from sas_impayes_cdc;
select * from FILEFACCAR;