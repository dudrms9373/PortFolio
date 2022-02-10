--------------------------------------
CREATE TABLE MENUS
(
     MENU_ID    VARCHAR2(6)   NOT NULL PRIMARY KEY
   , MENU_NAME  VARCHAR2(100) NOT NULL
   , MENU_SEQ   NUMBER(5, 0)  NOT NULL
);


CREATE  TABLE   MBOARD
(
      IDX         NUMBER(5, 0)   PRIMARY KEY
    , MENU_ID     VARCHAR2(6)    NOT NULL
    , TITLE       VARCHAR2(200)  NOT NULL
    , CONT        VARCHAR2(4000) 
    , WRITER      VARCHAR2(50)   NOT NULL
    , REGDATE     DATE           DEFAULT  SYSDATE
    , READCOUNT   NUMBER(6, 0)   DEFAULT  0
    
    , BNUM        NUMBER(5, 0)   DEFAULT 0
    , LVL         NUMBER(5, 0)   DEFAULT 0
    , STEP        NUMBER(5, 0)   DEFAULT 0
    , NREF        NUMBER(5, 0)   DEFAULT 0
    
);


  
  CREATE  TABLE   FILES
  (
      FILE_NUM    NUMBER(5, 0)   NOT NULL
     , IDX        NUMBER(5, 0)   NOT NULL
     , FILENAME   VARCHAR2(300)  NOT NULL
     , FILEEXT    VARCHAR2(30)   NOT NULL
     , SFILENAME  VARCHAR2(300)  NOT NULL
     , CONSTRAINT  FILES_PK   PRIMARY KEY
       ( 
           FILE_NUM,
           IDX
       )
     , CONSTRAINT  FK_MBAORD_FILES_IDX
       FOREIGN KEY (IDX)
       REFERENCES  MBOARD(IDX)
  ) 
  
  
  
  
  
  
  
  





