create or replace PACKAGE PKG_MENU AS 


PROCEDURE PROC_MENU_LIST(
IN_MENU_ID IN VARCHAR2,
O_CUR OUT SYS_REFCURSOR
);
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END PKG_MENU;