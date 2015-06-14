/****** Object:  Table devtasks    Script Date: 8/9/2014 9:59:03 PM ******/
--users
--test comment

CREATE TABLE devtasks (
    taskname varchar(100) NULL,
    tasktype varchar(100) NULL,
    team varchar(50) NULL
)
;



/****** Object:  Table devtracker    Script Date: 8/9/2014 9:59:03 PM ******/





CREATE TABLE devtracker (
    UID int NOT NULL,
    TaskType nvarchar(255) NULL,
    TaskName nvarchar(255) NULL,
    OverallStatus nvarchar(255) NULL,
    Developer nvarchar(255) NULL,
    Comments varchar(1000) NULL,
    fixedBuild varchar(5) NULL,
    ETLdocumentStatus nvarchar(255) NULL,
    Source nvarchar(255) NULL,
    RefID nvarchar(50) NULL,
    Project varchar(36) NULL,
    Description varchar(1000) NULL,
    devstatus varchar(5) NULL,
    utpstatus varchar(5) NULL,
    utprevstatus varchar(5) NULL,
    utpissuestatus varchar(5) NULL,
    movestatus varchar(5) NULL,
    NIS varchar(5) NULL,
    NA varchar(5) NULL,
    modified_at datetime NULL,
    modifiedby varchar(100) NULL,
    FAOWNER varchar(255) NULL,
    administrator varchar(500) NULL,
    reviewer varchar(500) NULL,
    qcupdated varchar(500) NULL,
    includedine2e varchar(500) NULL,
    priority varchar(10) NULL,
    PlannedStartDate date NULL,
    PlannedEndDate date NULL,
    ActualStartDate date NULL,
    ActualEndDate date NULL,
    PlannedHours int NULL,
    ActualHours int NULL,
    onholdstatus varchar(50) NULL
)
;



/****** Object:  Table refvals    Script Date: 8/9/2014 9:59:03 PM ******/





CREATE TABLE refvals (
    value varchar(36) NOT NULL,
    type varchar(50) NULL,
    team varchar(50) NULL
)

;


/****** Object:  Table USERS    Script Date: 8/9/2014 9:59:03 PM ******/





CREATE TABLE USERS (
    name varchar(25) NOT NULL,
    Password varchar(25) NULL,
    team varchar(50) NULL
)
;



INSERT into devtasks (taskname, tasktype, team) VALUES (N'Create database script', N'Database', N'Informatica')
;
INSERT into devtasks (taskname, tasktype, team) VALUES (N'create mapping', N'Informatica', N'Informatica')
;
INSERT into devtasks (taskname, tasktype, team) VALUES (N'Fix database script', N'Database', N'Informatica')
;
INSERT into devtasks (taskname, tasktype, team) VALUES (N'Fix mapping', N'Informatica', N'Informatica')
;



INSERT into devtracker (UID, TaskType, TaskName, OverallStatus, Developer, Comments, fixedBuild, ETLdocumentStatus, Source, RefID, Project, Description, devstatus, utpstatus, utprevstatus, utpissuestatus, movestatus, NIS, NA, modified_at, modifiedby, FAOWNER, administrator, reviewer, qcupdated, includedine2e, priority, PlannedStartDate, PlannedEndDate, ActualStartDate, ActualEndDate, PlannedHours, ActualHours, onholdstatus) VALUES (2, N'Review Comments', N'Fix database script', N'Outstanding', N'brajamurugan', N'comm', NULL, N'Outstanding', N'Rally/SF', N'131231', N'HIEA', N'desc', N'No', N'No', N'No', NULL, N'No', N'No', N'No', CAST(N'2014-07-14 00:34:50.747' AS DateTime), N'', NULL, NULL, NULL, NULL, NULL, N'3', CAST(N'2014-07-14' AS Date), CAST(N'2014-07-14' AS Date), NULL, NULL, 6, NULL, NULL)
;
INSERT into devtracker (UID, TaskType, TaskName, OverallStatus, Developer, Comments, fixedBuild, ETLdocumentStatus, Source, RefID, Project, Description, devstatus, utpstatus, utprevstatus, utpissuestatus, movestatus, NIS, NA, modified_at, modifiedby, FAOWNER, administrator, reviewer, qcupdated, includedine2e, priority, PlannedStartDate, PlannedEndDate, ActualStartDate, ActualEndDate, PlannedHours, ActualHours, onholdstatus) VALUES (1, N'Database', N'Fix database script', N'Outstanding', N'brajamurugan', N'change desc2', N'650', N'In progress', N'Rally/SF', N'1234', N'CareDiscovery', N'comments2', N'No', N'No', N'No', N'No', N'No', N'No', N'No', CAST(N'2014-07-13 23:38:37.030' AS DateTime), N'brajamurugan', NULL, N'brajamurugan', N'brajamurugan', NULL, NULL, N'2', CAST(N'2014-07-13' AS Date), CAST(N'2014-07-14' AS Date), CAST(N'2014-07-14' AS Date), CAST(N'2014-07-14' AS Date), NULL, 10, N'No')
;

INSERT into refvals (value, type, team) VALUES (N'AMGEN', N'atype', N'Informatica');
;
INSERT into refvals (value, type, team) VALUES (N'HIEA', N'atype', N'Informatica');
;

INSERT into refvals (value, type, team) VALUES (N'CareDiscovery', N'atype', N'Informatica');
INSERT into refvals (value, type, team) VALUES (N'Outstanding', N'status', N'Informatica');
INSERT into refvals (value, type, team) VALUES (N'Outstanding', N'docstatus', N'Informatica');
;
INSERT into refvals (value, type, team) VALUES (N'Complete', N'Status', N'Informatica');
INSERT into refvals (value, type, team) VALUES (N'Not Applicable', N'devstatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Others', N'ttype', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Dashboard', N'ttype', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Database', N'ttype', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Informatica', N'ttype', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Script', N'ttype', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Reports', N'ttype', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Review Comments', N'ttype', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Development Completed', N'devstatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Complete', N'docstatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'UTP Completed', N'devstatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Reviewed', N'devstatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'On Hold', N'devstatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Rework', N'ttype', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Delivered', N'devstatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Not Applicable', N'Status', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Not in Scope', N'Status', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'In progress', N'Status', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'On Hold', N'ostatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Not Applicable', N'ostatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Documentation Pending', N'ostatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Complete', N'ostatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'UTP Pending', N'ostatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Review Pending', N'ostatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'UTP issue pending', N'ostatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Pending Delivery', N'ostatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Outstanding', N'ostatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Not Applicable', N'docstatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Rally/SF', N'source', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Design Input', N'source', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Internal Design Changes', N'source', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Email', N'source', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'New Req', N'source', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Not in Scope', N'docstatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'In progress', N'docstatus', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Create database script', N'tasks', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'create mapping', N'tasks', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Fix database script', N'tasks', N'Informatica')
;
INSERT into refvals (value, type, team) VALUES (N'Fix mapping', N'tasks', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'brajamurugan', N'muruga', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'pbalasubram4', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'rpurushotha2', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'admin', N'muruga', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'smuthu', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'clee36', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'htait', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'tmoorcroft', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'anatesan', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'vgudimetla2', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'gthangamani', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'mramachandr3', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'spillariset3', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'vmurugesan2', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'ayadavilli', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'shiggins4', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'cbagshaw', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'tperiyannan', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'hkosuru', N'password123', N'Informatica')
;
INSERT into USERS (name, Password, team) VALUES (N'pbora2', N'password123', N'Informatica')
;


CREATE TABLE `devtracker` (
  `UID` int(11) NOT NULL,
  `TaskType` varchar(255) DEFAULT NULL,
  `TaskName` varchar(255) DEFAULT NULL,
  `OverallStatus` varchar(255) DEFAULT NULL,
  `Developer` varchar(255) DEFAULT NULL,
  `Comments` varchar(1000) DEFAULT NULL,
  `fixedBuild` varchar(5) DEFAULT NULL,
  `ETLdocumentStatus` varchar(255) DEFAULT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `RefID` varchar(50) DEFAULT NULL,
  `Project` varchar(36) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `devstatus` varchar(5) DEFAULT NULL,
  `utpstatus` varchar(5) DEFAULT NULL,
  `utprevstatus` varchar(5) DEFAULT NULL,
  `utpissuestatus` varchar(5) DEFAULT NULL,
  `movestatus` varchar(5) DEFAULT NULL,
  `NIS` varchar(5) DEFAULT NULL,
  `NA` varchar(5) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modifiedby` varchar(100) DEFAULT NULL,
  `FAOWNER` varchar(255) DEFAULT NULL,
  `administrator` varchar(500) DEFAULT NULL,
  `reviewer` varchar(500) DEFAULT NULL,
  `qcupdated` varchar(500) DEFAULT NULL,
  `includedine2e` varchar(500) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `PlannedStartDate` date DEFAULT NULL,
  `PlannedEndDate` date DEFAULT NULL,
  `ActualStartDate` date DEFAULT NULL,
  `ActualEndDate` date DEFAULT NULL,
  `PlannedHours` int(11) DEFAULT NULL,
  `ActualHours` int(11) DEFAULT NULL,
  `onholdstatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table dischrg_cnt
(
uid integer,
monthname varchar(100),
cnt integer
)
;

insert into dischrg_cnt 
select * from 
(
select 1,'Jan', 150
union
select 2,'Feb', 175
union
select 3,'Mar', 200
union
select 4,'Apr', 225
union
select 5,'May', 250
union
select 6,'Jun', 289
union
select 7,'Jul', 300
) a

commit;


