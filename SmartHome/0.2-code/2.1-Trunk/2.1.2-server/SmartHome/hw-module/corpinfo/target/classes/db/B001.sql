create table B001
(
  ma001 VARCHAR2(40) not null,
  ma002 VARCHAR2(50) not null,
  ma003 VARCHAR2(50) not null,
  ma004 VARCHAR2(50) not null,
  ma005 VARCHAR2(2000),
  ma006 VARCHAR2(40),
  ma007 VARCHAR2(40) not null,
  ma008 VARCHAR2(40) not null,
  ma009 VARCHAR2(40) not null,
  ma010 VARCHAR2(30),
  ma011 VARCHAR2(100),
  ma012 DATE,
  ma013 VARCHAR2(100),
  ma014 NUMBER(19,2),
  ma015 NUMBER(19,2),
  ma016 NUMBER(19,2),
  ma017 NUMBER(19,2),
  ma018 VARCHAR2(200),
  ma019 NUMBER(2),
  ma020 VARCHAR2(20),
  ma021 VARCHAR2(100),
  ma022 VARCHAR2(30),
  ma023 VARCHAR2(20),
  ma024 VARCHAR2(20),
  ma025 NUMBER(19,2),
  ma026 VARCHAR2(20),
  ma027 VARCHAR2(20),
  ma028 VARCHAR2(40) not null,
  ma029 VARCHAR2(20),
  ma030 VARCHAR2(20),
  ma031 DATE default sysdate,
  ma032 DATE,
  ma033 VARCHAR2(100),
  ma034 VARCHAR2(20),
  ma035 VARCHAR2(50),
  ma036 VARCHAR2(50),
  ma037 DATE,
  ma038 NUMBER(2),
  ma039 VARCHAR2(40) not null,
  ma040 VARCHAR2(100),
  ma041 DATE,
  ma042 VARCHAR2(200),
  ma043 NUMBER(2),
  ma044 VARCHAR2(200),
  ma045 VARCHAR2(200),
  ma046 VARCHAR2(200),
  ma047 VARCHAR2(20),
  ma048 VARCHAR2(20),
  ma049 VARCHAR2(20),
  ma050 VARCHAR2(20),
  ma051 VARCHAR2(20),
  ma052 VARCHAR2(20),
  ma053 VARCHAR2(20),
  ma054 VARCHAR2(40),
  ma055 VARCHAR2(40),
  ma056 VARCHAR2(40),
  ma057 VARCHAR2(40),
  ma058 VARCHAR2(40),
  ma059 NUMBER(10),
  ma060 NUMBER(10),
  ma061 NUMBER(10),
  ma062 NUMBER(10),
  ma063 NUMBER(10),
  ma064 VARCHAR2(20),
  ma065 VARCHAR2(20),
  ma066 VARCHAR2(200),
  ma067 VARCHAR2(200),
  ma068 VARCHAR2(200),
  ma069 VARCHAR2(40),
  ma070 VARCHAR2(100),
  ma071 NUMBER(2) default 0
)
;

create index IX_B001_MA004 on B001 (MA004);
create index IX_B001_MA037 on B001 (MA037);
create index IX_B001_MA038 on B001 (MA038);
create index IX_B001_MA041 on B001 (MA041);
alter table B001
  add constraint PK_B001_OBJID primary key (MA001);