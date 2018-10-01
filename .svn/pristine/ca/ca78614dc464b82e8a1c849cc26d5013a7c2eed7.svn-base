-- 数据库地址：120.78.64.78
-- 数据库连接帐号：dtxzdba
-- 数据库连接密码：dtxz1314



/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/12/31 11:17:40                          */
/*==============================================================*/

-- 数据库
create database dtxz charset=utf8;
grant all privileges on dtxz.* to 'dtxzdba'@'%' identified by 'dtxzdba';
grant all privileges on dtxz.* to 'dtxzdba'@'localhost' identified by 'dtxz1314';

use dtxz;


drop table if exists dtxz_comment;

drop table if exists dtxz_submit;

drop table if exists dtxz_admin;

drop table if exists dtxz_answer;

drop table if exists dtxz_authen;

drop table if exists dtxz_bill;

drop table if exists dtxz_clazz;

drop table if exists dtxz_exam;

drop table if exists dtxz_exampaper;

drop table if exists dtxz_exercise;

drop table if exists dtxz_message;

drop table if exists dtxz_paper_exe;

drop table if exists dtxz_power;

drop table if exists dtxz_problem;

drop table if exists dtxz_pv;

drop table if exists dtxz_receive;

drop table if exists dtxz_role;

drop table if exists dtxz_user;

drop table if exists dtxz_user_clazz;

/*==============================================================*/
/* Table: dtxz_comment                                               */
/*==============================================================*/
create table dtxz_comment
(
   comment_id           varchar(64) not null,
   content              varchar(255) not null,
   pub_time             datetime not null,
   status               varchar(16),
   user_id              varchar(64) not null,
   answer_id            varchar(64) not null,
   primary key (comment_id)
);

/*==============================================================*/
/* Table: dtxz_submit                                           */
/*==============================================================*/
create table dtxz_submit
(
   submit_id            varchar(64) not null,
   exercise_id          varchar(64) not null,
   answer               text,
   examinee_id          varchar(64) not null,
   primary key (submit_id)
);

/*==============================================================*/
/* Table: dtxz_admin                                            */
/*==============================================================*/
create table dtxz_admin
(
   admin_id             varchar(64) not null,
   account              varchar(64) not null,
   pwd                  varchar(64) not null,
   role_id              varchar(64) not null,
   primary key (admin_id)
);

/*==============================================================*/
/* Table: dtxz_answer                                           */
/*==============================================================*/
create table dtxz_answer
(
   answer_id            varchar(64) not null,
   title                varchar(100),
   content              varchar(255) not null,
   praise_count         int(50) not null default 0,
   pub_time             datetime not null,
   status               varchar(16),
   user_id              varchar(64) not null,
   prob_id              varchar(64) not null,
   primary key (answer_id)
);

/*==============================================================*/
/* Table: dtxz_authen                                           */
/*==============================================================*/
create table dtxz_authen
(
   authen_id            varchar(64) not null,
   user_id              varchar(64) not null,
   info                 varchar(255) not null,
   title                varchar(64) not null,
   img                  varchar(255) not null,
   primary key (authen_id)
);

/*==============================================================*/
/* Table: dtxz_bill                                             */
/*==============================================================*/
create table dtxz_bill
(
   bill_id              varchar(64) not null,
   cost                 double not null default 0,
   spender_id           varchar(64) not null,
   payee_id             varchar(64) not null,
   primary key (bill_id)
);

/*==============================================================*/
/* Table: dtxz_clazz                                            */
/*==============================================================*/
create table dtxz_clazz
(
   clazz_id             varchar(64) not null,
   name                 varchar(50) not null,
   teacher_id           varchar(64) not null,
   description          varchar(255),
   primary key (clazz_id)
);

/*==============================================================*/
/* Table: dtxz_exam                                             */
/*==============================================================*/
create table dtxz_exam
(
   exam_id              varchar(64) not null,
   title                varchar(501) not null,
   status               varchar(16),
   createtime           datetime not null,
   begintime            datetime not null,
   duration             time not null,
   clazz_id             varchar(64) not null,
   ep_id                varchar(64) not null,
   primary key (exam_id)
);

/*==============================================================*/
/* Table: dtxz_exampaper                                        */
/*==============================================================*/
create table dtxz_exampaper
(
   ep_id                varchar(64) not null,
   title                varchar(64) not null,
   description          varchar(255),
   teacher_id           varchar(64) not null,
   primary key (ep_id)
);

/*==============================================================*/
/* Table: dtxz_exercise                                         */
/*==============================================================*/
create table dtxz_exercise
(
   exercise_id          varchar(64) not null,
   title                varchar(64) not null,
   description          varchar(255) not null,
   answer               text not null,
   type                 varchar(10) not null,
   writer_id            varchar(64) not null,
   primary key (exercise_id)
);

/*==============================================================*/
/* Table: dtxz_message                                          */
/*==============================================================*/
create table dtxz_message
(
   mes_id               varchar(64) not null,
   content              varchar(255) not null,
   primary key (mes_id)
);

/*==============================================================*/
/* Table: dtxz_paper_exe                                        */
/*==============================================================*/
create table dtxz_paper_exe
(
   pe_id                varchar(64) not null,
   ep_id                varchar(64) not null,
   exercise_id          varchar(64) not null,
   primary key (pe_id)
);

/*==============================================================*/
/* Table: dtxz_power                                            */
/*==============================================================*/
create table dtxz_power
(
   power_id             varchar(64) not null,
   rank                 varchar(50) not null,
   src                  varchar(255) not null,
   parent_id            varchar(64),
   primary key (power_id)
);

/*==============================================================*/
/* Table: dtxz_problem                                          */
/*==============================================================*/
create table dtxz_problem
(
   prob_id              varchar(64) not null,
   title                varchar(100) not null,
   content              varchar(255) not null,
   type                 varchar(16),
   pub_time             datetime not null,
   count                int(10) not null default 0,
   user_id              varchar(64) not null,
   primary key (prob_id)
);

/*==============================================================*/
/* Table: dtxz_pv                                               */
/*==============================================================*/
create table dtxz_pv
(
   pv_id                varchar(64) not null,
   hour                 datetime not null,
   pv                   varchar(64) not null,
   primary key (pv_id)
);

/*==============================================================*/
/* Table: dtxz_receive                                          */
/*==============================================================*/
create table dtxz_receive
(
   rec_id               varchar(64) not null,
   user_id              varchar(64) not null,
   mes_id               varchar(64) not null,
   primary key (rec_id)
);

/*==============================================================*/
/* Table: dtxz_role                                             */
/*==============================================================*/
create table dtxz_role
(
   role_id              varchar(64) not null,
   name                 varchar(64) not null,
   power                varchar(255) not null,
   primary key (role_id)
);

/*==============================================================*/
/* Table: dtxz_user                                             */
/*==============================================================*/
create table dtxz_user
(
   user_id              varchar(64) not null,
   nickname             varchar(10) not null,
   email                varchar(50) not null,
   pwd                  varchar(50) not null,
   sex                  varchar(4),
   name                 varchar(10),
   age                  int(10),
   job                  varchar(50),
   rank                 varchar(50),
   img                  varchar(255),
   signature            varchar(255),
   money                double not null default 0,
   praise_count         int(50) not null default 0,
   status               varchar(16),
   recent_login_time    datetime,
   primary key (user_id),
   unique key AK_uq_email (email)
);

/*==============================================================*/
/* Table: dtxz_user_clazz                                       */
/*==============================================================*/
create table dtxz_user_clazz
(
   uc_id                varchar(64) not null,
   user_id              varchar(64) not null,
   clazz_id             varchar(64) not null,
   primary key (uc_id)
);

alter table dtxz_comment add constraint FK_answer_com foreign key (answer_id)
      references dtxz_answer (answer_id) on delete restrict on update restrict;

alter table dtxz_comment add constraint FK_com_user foreign key (user_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_submit add constraint FK_pro_wri foreign key (exercise_id)
      references dtxz_exercise (exercise_id) on delete restrict on update restrict;

alter table dtxz_submit add constraint FK_user_wir foreign key (examinee_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_admin add constraint FK_role_admin foreign key (role_id)
      references dtxz_role (role_id) on delete restrict on update restrict;

alter table dtxz_answer add constraint FK_answer_prob foreign key (prob_id)
      references dtxz_problem (prob_id) on delete restrict on update restrict;

alter table dtxz_answer add constraint FK_answer_user foreign key (user_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_authen add constraint FK_user_teacher foreign key (user_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_bill add constraint FK_user_payee foreign key (spender_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_bill add constraint FK_user_spender foreign key (payee_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_clazz add constraint FK_teacher_user foreign key (teacher_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_exam add constraint FK_Reference_21 foreign key (ep_id)
      references dtxz_exampaper (ep_id) on delete restrict on update restrict;

alter table dtxz_exam add constraint FK_clazz_exam foreign key (clazz_id)
      references dtxz_clazz (clazz_id) on delete restrict on update restrict;

alter table dtxz_exampaper add constraint FK_user_paper foreign key (teacher_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_exercise add constraint FK_wirter_user foreign key (writer_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_paper_exe add constraint FK_Reference_17 foreign key (ep_id)
      references dtxz_exampaper (ep_id) on delete restrict on update restrict;

alter table dtxz_paper_exe add constraint FK_exe_paper foreign key (exercise_id)
      references dtxz_exercise (exercise_id) on delete restrict on update restrict;

alter table dtxz_problem add constraint FK_pro_user foreign key (user_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_receive add constraint FK_mess_rec foreign key (mes_id)
      references dtxz_message (mes_id) on delete restrict on update restrict;

alter table dtxz_receive add constraint FK_user_rec foreign key (user_id)
      references dtxz_user (user_id) on delete restrict on update restrict;

alter table dtxz_user_clazz add constraint FK_clazz_user foreign key (clazz_id)
      references dtxz_clazz (clazz_id) on delete restrict on update restrict;

alter table dtxz_user_clazz add constraint FK_user_clazz foreign key (user_id)
      references dtxz_user (user_id) on delete restrict on update restrict;






-- 辅助视图
create view dtxz_exam_submit as

select e.*,
   ep.title as ep_title, ep.description as ep_description ,ep.teacher_id,
   pe.pe_id,pe.exercise_id,
   ec.title as ec_title, ec.description as ec_description, ec.answer as ec_answer,
       ec.type as type,ec.writer_id as ec_writer,
   s.submit_id as submit_id, s.answer as sm_answer,examinee_id
from dtxz_exam e  
   inner join dtxz_exampaper ep on e.ep_id=ep.ep_id 
      inner join dtxz_paper_exe pe on pe.ep_id=ep.ep_id
         inner join dtxz_exercise ec on pe.exercise_id=ec.exercise_id 
            inner join dtxz_submit s on s.exercise_id =ec.exercise_id
            ;








-- 注册
insert into dtxz_user(user_id,nickname,email,pwd) values(uuid(),'sirius',
'siriusing.cc@qq.com',md5('sirius'));





