--如果与当前数据库的关键字有冲突，请自行调整
USE Demo

GO
--T_USER
SET IDENTITY_INSERT T_USER ON 
INSERT INTO T_USER(IDENTIFICATION,USERNAME,USERPWD,EMPLOYEENAME,ORGCODE,ORGNAME) VALUES(1,'chengderen','123456','程德忍','001001','网络研发一组')
INSERT INTO T_USER(IDENTIFICATION,USERNAME,USERPWD,EMPLOYEENAME,ORGCODE,ORGNAME) VALUES(2,'xuq','123456','徐群','001001','网络研发一组')
INSERT INTO T_USER(IDENTIFICATION,USERNAME,USERPWD,EMPLOYEENAME,ORGCODE,ORGNAME) VALUES(3,'xyq','123456','徐焰群','001002','网络研发二组')
INSERT INTO T_USER(IDENTIFICATION,USERNAME,USERPWD,EMPLOYEENAME,ORGCODE,ORGNAME) VALUES(4,'zhangsan','123456','张三','002','市场部')
INSERT INTO T_USER(IDENTIFICATION,USERNAME,USERPWD,EMPLOYEENAME,ORGCODE,ORGNAME) VALUES(5,'wangwu','123456','王五','002','市场部')
INSERT INTO T_USER(IDENTIFICATION,USERNAME,USERPWD,EMPLOYEENAME,ORGCODE,ORGNAME) VALUES(6,'wanger','123456','王二','002','市场部')
INSERT INTO T_USER(IDENTIFICATION,USERNAME,USERPWD,EMPLOYEENAME,ORGCODE,ORGNAME) VALUES(7,'libin','123456','李斌','002','市场部')
INSERT INTO T_USER(IDENTIFICATION,USERNAME,USERPWD,EMPLOYEENAME,ORGCODE,ORGNAME) VALUES(8,'zhongsan','123456','钟三','002','市场部')
SET IDENTITY_INSERT T_USER OFF 




SET IDENTITY_INSERT T_ROLE ON 
INSERT INTO T_ROLE(Identification,Appellation)VALUES(1,'系统管理员')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(2,'小组长')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(3,'总经理')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(4,'部门经理')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(5,'部门助理')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(6,'总经理秘书')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(7,'项目经理')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(8,'市场部经理')
SET IDENTITY_INSERT T_ROLE OFF 

--T_UMR
INSERT INTO T_UMR(RID,UUID)VALUES(1,1)
INSERT INTO T_UMR(RID,UUID)VALUES(1,2)
INSERT INTO T_UMR(RID,UUID)VALUES(1,3)
INSERT INTO T_UMR(RID,UUID)VALUES(2,4)
INSERT INTO T_UMR(RID,UUID)VALUES(2,8)
INSERT INTO T_UMR(RID,UUID)VALUES(3,1)
INSERT INTO T_UMR(RID,UUID)VALUES(4,2)
INSERT INTO T_UMR(RID,UUID)VALUES(4,5)
INSERT INTO T_UMR(RID,UUID)VALUES(5,7)
INSERT INTO T_UMR(RID,UUID)VALUES(6,6)
INSERT INTO T_UMR(RID,UUID)VALUES(7,3)
INSERT INTO T_UMR(RID,UUID)VALUES(7,8)
INSERT INTO T_UMR(RID,UUID)VALUES(8,4)


--T_ORG
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('组织机构','000','0','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('网络研发部','001','000','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('市场部','002','000','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('综合管理部','003','000','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('后勤保障门','004','000','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('网络研发一组','001001','001','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('网络研发二组','001002','001','')

INSERT [dbo].[t_structure] ([IDENTIFICATION], [APPELLATION], [STRUCTUREXML]) VALUES (N'07880c98-caf1-494c-9c32-b52e686f3084', N'简单流程', N'<workflow  mode="Transition"><start id="30" name="开始" layout="303 17 79 -7" category="start" cooperation="0"><transition name="提交部门助理审批" destination="32" layout="333,109 332,146" id="36"></transition></start><end id="31" name="结束" layout="300 32 364 -11" category="end" cooperation="0"><action id="Smartflow.BussinessService.WorkflowService.DefaultAction" name="DefaultAction"/></end><node id="32" name="部门助理" layout="242 103 146 0" category="node" cooperation="0"><transition name="提交部门经理审批" destination="33" layout="332,186 331,245" id="37"></transition><transition name="提交部门副经理" destination="34" layout="332,186 588,246" id="38"></transition><transition name="提交部门副经理2" destination="35" layout="332,186 130,244" id="39"></transition><actor id="1" name="chengderen"/><actor id="2" name="xuq"/><actor id="4" name="zhangsan"/></node><node id="33" name="部门经理" layout="241 115 245 17" category="node" cooperation="0"><group id="3" name="总经理"/><action id="Smartflow.BussinessService.WorkflowService.TestAction" name="TestAction"/><transition name="结束" destination="31" layout="331,285 330,334" id="40"></transition></node><node id="34" name="部门副经理" layout="498 88 246 8" category="node" cooperation="0"><transition name="结束" destination="31" layout="588,286 330,334" id="41"></transition><actor id="1" name="chengderen"/><actor id="2" name="xuq"/></node><node id="35" name="部门副经理2" layout="40 108 244 11" category="node" cooperation="0"><group id="6" name="总经理秘书"/><group id="7" name="项目经理"/><transition name="结束" destination="31" layout="130,284 330,334" id="42"></transition></node></workflow>')
