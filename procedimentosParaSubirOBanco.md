# Para criar um usuario novo (code):
alter session set "_oracle_script" = true;
### lembrar de substituir as aspas desse comando pela aspas digitas por voce mesmo.
CREATE USER APP IDENTIFIED BY APP123
QUOTA UNLIMITED ON USERS
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

## Depois rodar esse comando:

GRANT CONNECT, RESOURCE TO APP;