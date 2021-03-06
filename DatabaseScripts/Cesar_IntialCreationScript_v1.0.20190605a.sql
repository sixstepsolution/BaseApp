USE [Cesar]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_UnreadEmailItems_HaveAttachments]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_UnreadEmailItems] DROP CONSTRAINT [DF_tb_UnreadEmailItems_HaveAttachments]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_UnreadEmails_IsProcessed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_UnreadEmailItems] DROP CONSTRAINT [DF_tb_UnreadEmails_IsProcessed]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAttachments_IsProcessed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_UnreadEmailAttachments] DROP CONSTRAINT [DF_tb_EmailAttachments_IsProcessed]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_ReadEmailItems_HaveAttachments]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_ReadEmailItems] DROP CONSTRAINT [DF_tb_ReadEmailItems_HaveAttachments]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailTemplates_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailTemplates] DROP CONSTRAINT [DF_tb_EmailTemplates_IsDeleted]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailTemplates_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailTemplates] DROP CONSTRAINT [DF_tb_EmailTemplates_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailTemplates_HasVariables]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailTemplates] DROP CONSTRAINT [DF_tb_EmailTemplates_HasVariables]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailTemplates_IsHTML]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailTemplates] DROP CONSTRAINT [DF_tb_EmailTemplates_IsHTML]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailQueueProcessed_HaveAttachments]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailQueueProcessed] DROP CONSTRAINT [DF_tb_EmailQueueProcessed_HaveAttachments]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailQueue_HaveAttachments]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailQueue] DROP CONSTRAINT [DF_tb_EmailQueue_HaveAttachments]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailQueue_QueueDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailQueue] DROP CONSTRAINT [DF_tb_EmailQueue_QueueDateTime]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_IsLocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] DROP CONSTRAINT [DF_tb_EmailAccounts_IsLocked]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] DROP CONSTRAINT [DF_tb_EmailAccounts_IsDeleted]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] DROP CONSTRAINT [DF_tb_EmailAccounts_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_DisableAccount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] DROP CONSTRAINT [DF_tb_EmailAccounts_DisableAccount]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_AccountFailureCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] DROP CONSTRAINT [DF_tb_EmailAccounts_AccountFailureCount]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_CheckUndeliverable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] DROP CONSTRAINT [DF_tb_EmailAccounts_CheckUndeliverable]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_CanSend]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] DROP CONSTRAINT [DF_tb_EmailAccounts_CanSend]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_CanRecieve]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] DROP CONSTRAINT [DF_tb_EmailAccounts_CanRecieve]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_PasswordNeverExpires]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] DROP CONSTRAINT [DF_tb_EmailAccounts_PasswordNeverExpires]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_PasswordExpiredDays]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] DROP CONSTRAINT [DF_tb_EmailAccounts_PasswordExpiredDays]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_AppSettings_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_AppSettings] DROP CONSTRAINT [DF_tb_AppSettings_IsDeleted]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_AppSettings_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_AppSettings] DROP CONSTRAINT [DF_tb_AppSettings_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_Applications_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_Applications] DROP CONSTRAINT [DF_tb_Applications_IsDeleted]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_Applications_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_Applications] DROP CONSTRAINT [DF_tb_Applications_IsActive]
END

GO
/****** Object:  Table [dbo].[tb_UnreadEmailItems]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_UnreadEmailItems]') AND type in (N'U'))
DROP TABLE [dbo].[tb_UnreadEmailItems]
GO
/****** Object:  Table [dbo].[tb_UnreadEmailAttachments]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_UnreadEmailAttachments]') AND type in (N'U'))
DROP TABLE [dbo].[tb_UnreadEmailAttachments]
GO
/****** Object:  Table [dbo].[tb_ReadEmailItems]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ReadEmailItems]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ReadEmailItems]
GO
/****** Object:  Table [dbo].[tb_ReadEmailAttachments]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ReadEmailAttachments]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ReadEmailAttachments]
GO
/****** Object:  Table [dbo].[tb_EventLogs]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EventLogs]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EventLogs]
GO
/****** Object:  Table [dbo].[tb_EmailTemplates]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailTemplates]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EmailTemplates]
GO
/****** Object:  Table [dbo].[tb_EmailStaticAttachments]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailStaticAttachments]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EmailStaticAttachments]
GO
/****** Object:  Table [dbo].[tb_EmailQueueProcessed]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailQueueProcessed]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EmailQueueProcessed]
GO
/****** Object:  Table [dbo].[tb_EmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailQueue]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EmailQueue]
GO
/****** Object:  Table [dbo].[tb_EmailLogs]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailLogs]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EmailLogs]
GO
/****** Object:  Table [dbo].[tb_EmailExceptionTypes]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailExceptionTypes]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EmailExceptionTypes]
GO
/****** Object:  Table [dbo].[tb_EmailExceptions]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailExceptions]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EmailExceptions]
GO
/****** Object:  Table [dbo].[tb_EmailAttachmentQueueProcessed]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailAttachmentQueueProcessed]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EmailAttachmentQueueProcessed]
GO
/****** Object:  Table [dbo].[tb_EmailAttachmentQueue]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailAttachmentQueue]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EmailAttachmentQueue]
GO
/****** Object:  Table [dbo].[tb_EmailAccounts]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailAccounts]') AND type in (N'U'))
DROP TABLE [dbo].[tb_EmailAccounts]
GO
/****** Object:  Table [dbo].[tb_AppSettings]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_AppSettings]') AND type in (N'U'))
DROP TABLE [dbo].[tb_AppSettings]
GO
/****** Object:  Table [dbo].[tb_Applications]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_Applications]') AND type in (N'U'))
DROP TABLE [dbo].[tb_Applications]
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EventLog]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EventLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_UPDATE_EventLog]
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EmailTemplate]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EmailTemplate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_UPDATE_EmailTemplate]
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EmailQueue]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_UPDATE_EmailQueue]
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EmailExceptionType]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EmailExceptionType]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_UPDATE_EmailExceptionType]
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EmailBody]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EmailBody]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_UPDATE_EmailBody]
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EmailAccount]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EmailAccount]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_UPDATE_EmailAccount]
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_AppSetting]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_AppSetting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_UPDATE_AppSetting]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_UnreadEmailAttachmentsByEmailItem]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_UnreadEmailAttachmentsByEmailItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_UnreadEmailAttachmentsByEmailItem]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_ReadEmailAttachmentsByEmailItem]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_ReadEmailAttachmentsByEmailItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_ReadEmailAttachmentsByEmailItem]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EventLogs]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EventLogs]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EventLogs]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EventLog]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EventLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EventLog]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailTemplatesByApplication]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailTemplatesByApplication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailTemplatesByApplication]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailTemplates]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailTemplates]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailTemplates]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailTemplateByName]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailTemplateByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailTemplateByName]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailTemplateByKey]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailTemplateByKey]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailTemplateByKey]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailTemplate]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailTemplate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailTemplate]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailStaticAttachmentsByEmailAccount]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailStaticAttachmentsByEmailAccount]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailStaticAttachmentsByEmailAccount]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailQueueItemProcessed]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailQueueItemProcessed]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailQueueItemProcessed]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailQueueItem]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailQueueItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailQueueItem]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailQueue]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailQueue]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailLogsByApplication]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailLogsByApplication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailLogsByApplication]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailExceptionTypeByKey]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailExceptionTypeByKey]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailExceptionTypeByKey]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailExceptionType]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailExceptionType]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailExceptionType]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailExceptionByEmailQueueId]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailExceptionByEmailQueueId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailExceptionByEmailQueueId]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailAttachmentQueueProcessedByEmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailAttachmentQueueProcessedByEmailQueue]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailAttachmentQueueProcessedByEmailQueue]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailAttachmentQueueByEmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailAttachmentQueueByEmailQueue]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailAttachmentQueueByEmailQueue]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailAccounts]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailAccounts]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailAccounts]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailAccount]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailAccount]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_EmailAccount]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AuthenticationByName]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AuthenticationByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_AuthenticationByName]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AppSettingsByApplication]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AppSettingsByApplication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_AppSettingsByApplication]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AppSettings]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AppSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_AppSettings]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AppSettingByKey]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AppSettingByKey]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_AppSettingByKey]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AppSettingByDescription]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AppSettingByDescription]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_AppSettingByDescription]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AppSetting]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AppSetting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_AppSetting]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_ApplicationsByUser]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_ApplicationsByUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_ApplicationsByUser]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_ApplicationsByName]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_ApplicationsByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_ApplicationsByName]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_Applications]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_Applications]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_Applications]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_ApplicationByName]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_ApplicationByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_ApplicationByName]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_ApplicationByKey]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_ApplicationByKey]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_ApplicationByKey]
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_Application]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_Application]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SELECT_Application]
GO
/****** Object:  StoredProcedure [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsFrom]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsFrom]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsFrom]
GO
/****** Object:  StoredProcedure [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsForRange]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsForRange]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsForRange]
GO
/****** Object:  StoredProcedure [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItem]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItem]
GO
/****** Object:  StoredProcedure [dbo].[pr_SCRIPT_ReQueueEmailQueueItem]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SCRIPT_ReQueueEmailQueueItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SCRIPT_ReQueueEmailQueueItem]
GO
/****** Object:  StoredProcedure [dbo].[pr_SCRIPT_ProcessUnreadToReadEmailsAndAttachments]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SCRIPT_ProcessUnreadToReadEmailsAndAttachments]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_SCRIPT_ProcessUnreadToReadEmailsAndAttachments]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_UnreadEmailItem]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_UnreadEmailItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_UnreadEmailItem]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_UnreadEmailAttachment]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_UnreadEmailAttachment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_UnreadEmailAttachment]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_ReadEmailItem]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_ReadEmailItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_ReadEmailItem]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_ReadEmailAttachment]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_ReadEmailAttachment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_ReadEmailAttachment]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EventLog]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EventLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EventLog]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailTemplate]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailTemplate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EmailTemplate]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailStaticAttachment]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailStaticAttachment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EmailStaticAttachment]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailQueueProcessed]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailQueueProcessed]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EmailQueueProcessed]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailQueue]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EmailQueue]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailLog]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EmailLog]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailExceptionType]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailExceptionType]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EmailExceptionType]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailException]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailException]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EmailException]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailAttachmentQueueProcessed]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailAttachmentQueueProcessed]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EmailAttachmentQueueProcessed]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailAttachmentQueue]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailAttachmentQueue]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EmailAttachmentQueue]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailAccount]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailAccount]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_EmailAccount]
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_AppSetting]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_AppSetting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_INSERT_AppSetting]
GO
/****** Object:  StoredProcedure [dbo].[pr_EMAIL_SQLNotify]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_EMAIL_SQLNotify]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_EMAIL_SQLNotify]
GO
/****** Object:  StoredProcedure [dbo].[pr_EMAIL_Reminder]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_EMAIL_Reminder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_EMAIL_Reminder]
GO
/****** Object:  StoredProcedure [dbo].[pr_DELETE_EventLog]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_DELETE_EventLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_DELETE_EventLog]
GO
/****** Object:  StoredProcedure [dbo].[pr_DELETE_EmailTemplate]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_DELETE_EmailTemplate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_DELETE_EmailTemplate]
GO
/****** Object:  StoredProcedure [dbo].[pr_DELETE_EmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_DELETE_EmailQueue]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_DELETE_EmailQueue]
GO
/****** Object:  StoredProcedure [dbo].[pr_DELETE_EmailAttachmentQueue]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_DELETE_EmailAttachmentQueue]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_DELETE_EmailAttachmentQueue]
GO
/****** Object:  StoredProcedure [dbo].[pr_DELETE_AppSettting]    Script Date: 2019/06/05 14:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_DELETE_AppSettting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_DELETE_AppSettting]
GO
/****** Object:  StoredProcedure [dbo].[pr_DELETE_AppSettting]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_DELETE_AppSettting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the delgation model.
-- =============================================
create PROCEDURE [dbo].[pr_DELETE_AppSettting] 
	-- Add the parameters for the stored procedure here
	@AppSettingID INT
AS
BEGIN
	-- SET NOCOUNT ON added tog prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE 
		tb_AppSettings 
	SET
		IsDeleted = 1
	WHERE
		AppSettingID = @AppSettingID;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_DELETE_EmailAttachmentQueue]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_DELETE_EmailAttachmentQueue]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-28
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_DELETE_EmailAttachmentQueue] 
	-- Add the parameters for the stored procedure here
	@EmailAttachmentQueueId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM 
		tb_EmailAttachmentQueue
	WHERE 
		EmailAttachmentQueueId = @EmailAttachmentQueueId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_DELETE_EmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_DELETE_EmailQueue]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-21
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_DELETE_EmailQueue] 
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM 
		tb_EmailQueue 
	WHERE 
		EmailQueueId = @EmailQueueId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_DELETE_EmailTemplate]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_DELETE_EmailTemplate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Avashen Mari
-- Create date: 
-- Description:	This procedure is part of the delgation model.
-- =============================================
create PROCEDURE [dbo].[pr_DELETE_EmailTemplate] 
	-- Add the parameters for the stored procedure here
	@EmailTemplateID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE 
		tb_EmailTemplates
	SET
		IsDeleted = 1
	WHERE
		EmailTemplateID = @EmailTemplateID;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_DELETE_EventLog]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_DELETE_EventLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the cesar win services.
-- =============================================
create PROCEDURE [dbo].[pr_DELETE_EventLog] 
	-- Add the parameters for the stored procedure here
	@EventLogID INT
AS
BEGIN
	-- SET NOCOUNT ON added tog prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE 
		tb_EventLogs 
	SET
		IsDeleted = 1,
		IsActive = 1
	WHERE
		EventLogID = @EventLogID;
	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_EMAIL_Reminder]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_EMAIL_Reminder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_EMAIL_Reminder] 
	-- Add the parameters for the stored procedure here
	@EmailTemplateID INT, 	
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @UserID INT;
	DECLARE @To VARCHAR(150);
	DECLARE @From VARCHAR(150);
	DECLARE @Subject VARCHAR(150);
	DECLARE @Body VARCHAR(MAX);
	DECLARE @TmpBody VARCHAR(MAX);
	
	SET @From = (SELECT EmailFrom FROM tb_EmailTemplates WHERE EmailTemplateID = @EmailTemplateID);
	SET @Subject = (SELECT EmailSubject FROM tb_EmailTemplates WHERE EmailTemplateID = @EmailTemplateID);
	SET @Body = (SELECT EmailBody FROM tb_EmailTemplates WHERE EmailTemplateID = @EmailTemplateID);
	
	DECLARE SubscriberCursor CURSOR FOR
		SELECT 
			ud.UserID 
		FROM 
			tb_UserSubscriptions us
			INNER JOIN tb_EmailTemplates et ON et.EmailTemplateID = us.EmailTemplateID
			INNER JOIN tb_UserDetails ud ON ud.UserID = us.UserID
			INNER JOIN tb_Users u ON u.UserID = ud.UserID
		WHERE
			et.EmailTemplateID = @EmailTemplateID
			AND u.IsActive = @IsActive
			AND u.IsDeleted = @IsDeleted;	
	
	OPEN SubscriberCursor;
	FETCH NEXT FROM SubscriberCursor INTO @UserID;
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @To = (SELECT Email FROM tb_UserDetails WHERE UserID = @UserID);
		SET @TmpBody = REPLACE(@Body, ''#DATE#'', GETDATE());
		SET @TmpBody = REPLACE(@Body, ''#FULLNAME#'', (
			SELECT	
				Name + '' '' + Surname
			FROM
				tb_UserDetails
			WHERE
				UserID = @UserID
		));
		
		EXEC pr_EMAIL_SQLNotify @From, @To, @Subject, @Body;
		FETCH NEXT FROM SubscriberCursor;
	END;
	
	CLOSE SubscriberCursor;
	DEALLOCATE SubscriberCursor;
	
END;
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_EMAIL_SQLNotify]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_EMAIL_SQLNotify]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the email model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_EMAIL_SQLNotify] 
   @From varchar(100),
   @To varchar(100),
   @Subject varchar(100)= " ",
   @Body varchar(4000) = " "
/*********************************************************************

This stored procedure takes the above parameters and sends an e-mail. 
All of the mail configurations are hard-coded in the stored procedure. 
Comments are added to the stored procedure where necessary.
Reference to the CDOSYS objects are at the following MSDN Web site:
http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cdosys/html/_cdosys_messaging.asp

***********************************************************************/ 
   AS
   Declare @iMsg int
   Declare @hr int
   Declare @source varchar(255)
   Declare @description varchar(500)
   Declare @output varchar(1000)

--************* Create the CDO.Message Object ************************
   EXEC @hr = sp_OACreate ''CDO.Message'', @iMsg OUT

--***************Configuring the Message Object ******************
-- This is to configure a remote SMTP server.
-- http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cdosys/html/_cdosys_schema_configuration_sendusing.asp
   EXEC @hr = sp_OASetProperty @iMsg, ''Configuration.fields("http://schemas.microsoft.com/cdo/configuration/sendusing").Value'',''2''
-- This is to configure the Server Name or IP address. 
-- Replace MailServerName by the name or IP of your SMTP Server.
   EXEC @hr = sp_OASetProperty @iMsg, ''Configuration.fields("http://schemas.microsoft.com/cdo/configuration/smtpserver").Value'', ''10.10.10.11'' 

-- Save the configurations to the message object.
   EXEC @hr = sp_OAMethod @iMsg, ''Configuration.Fields.Update'', null

-- Set the e-mail parameters.
   EXEC @hr = sp_OASetProperty @iMsg, ''To'', @To
   EXEC @hr = sp_OASetProperty @iMsg, ''From'', @From
   EXEC @hr = sp_OASetProperty @iMsg, ''Subject'', @Subject

-- If you are using HTML e-mail, use ''HTMLBody'' instead of ''TextBody''.
   EXEC @hr = sp_OASetProperty @iMsg, ''HTMLBody'', @Body
   EXEC @hr = sp_OAMethod @iMsg, ''Send'', NULL

-- Sample error handling.
   IF @hr <> 0 
     select @hr
     BEGIN
       EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
       IF @hr = 0
         BEGIN
           SELECT @output = ''  Source: '' + @source
           PRINT  @output
           SELECT @output = ''  Description: '' + @description
           PRINT  @output
         END
       ELSE
         BEGIN
           PRINT ''  sp_OAGetErrorInfo failed.''
           RETURN
         END
     END

-- Do some error handling after each step if you need to.
-- Clean up the objects created.
   EXEC @hr = sp_OADestroy @iMsg
   
   PRINT ''Mail Sent!''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_AppSetting]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_AppSetting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_AppSetting] 
	-- Add the parameters for the stored procedure here
	@ApplicationID INT, 
	@AppKey VARCHAR(256),
	@AppValue VARCHAR(256),
	@Description VARCHAR(256),
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_AppSettings (
		ApplicationID,
		AppKey,
		AppValue,
		Description,	
		IsActive,
		IsDeleted )
	VALUES (
		@ApplicationID,
		@AppKey,
		@AppValue,
		@Description,
		@IsActive,
		@IsDeleted );
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailAccount]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailAccount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-03-01
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
CREATE PROCEDURE [dbo].[pr_INSERT_EmailAccount] 
	-- Add the parameters for the stored procedure here
	@ApplicationId INT,
	@EmailAccountDescription VARCHAR(256),
	@EmailAddress VARCHAR(256),
	@Password VARCHAR(256),
	@ServiceUrl VARCHAR(256),
	@PasswordExpiredDays INT,
	@PasswordExpiredDate DATETIME,
	@PasswordNeverExpires BIT,
	@DeleteServerEmail BIT,
	@CanRecieve BIT,
	@CanSend BIT,
	@CheckUndeliverable BIT,
	@AccountFailureCount INT,
	@MaxFailureCount INT,
	@IsActive BIT,
	@IsDeleted BIT,
	@IsLocked BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EmailAccounts (
		ApplicationId,
		EmailAccountDescription,
		EmailAddress,
		Password,
		ServiceUrl,
		PasswordExpiredDays,
		PasswordExpiredDate,
		PasswordNeverExpires,
		DeleteServerEmail,
		CanRecieve,
		CanSend,
		CheckUndeliverable,
		AccountFailureCount,
		MaxFailureCount,
		IsActive,
		IsDeleted,
		IsLocked )
	VALUES (
		@ApplicationId,
		@EmailAccountDescription,
		@EmailAddress,
		@Password,
		@ServiceUrl,
		@PasswordExpiredDays,
		@PasswordExpiredDate,
		@PasswordNeverExpires,
		@DeleteServerEmail,
		@CanRecieve,
		@CanSend,
		@CheckUndeliverable,
		@AccountFailureCount,
		@MaxFailureCount,
		@IsActive,
		@IsDeleted,
		@IsLocked );

	SELECT SCOPE_IDENTITY();
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailAttachmentQueue]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailAttachmentQueue]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-26
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_EmailAttachmentQueue] 
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT, 
	@ApplicationId INT,
	@Filename VARCHAR(1024),
	@ContentType VARCHAR(50),
	@Attachment VARBINARY(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EmailAttachmentQueue (
		EmailQueueId, 
		ApplicationId,
		Filename,
		ContentType,
		Attachment )
	VALUES (
		@EmailQueueId, 
		@ApplicationId,
		@Filename,
		@ContentType,
		@Attachment );
	
	SELECT SCOPE_IDENTITY();
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailAttachmentQueueProcessed]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailAttachmentQueueProcessed]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-26
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_EmailAttachmentQueueProcessed] 
	-- Add the parameters for the stored procedure here
	@EmailAttachmentQueueId INT,
	@EmailQueueId INT, 
	@ApplicationId INT,
	@Filename VARCHAR(1024),
	@ContentType VARCHAR(50),
	@Attachment VARBINARY(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EmailAttachmentQueueProcessed (
		EmailAttachmentQueueId,
		EmailQueueId, 
		ApplicationId,
		Filename,
		ContentType,
		Attachment )
	VALUES (
		@EmailAttachmentQueueId,
		@EmailQueueId, 
		@ApplicationId,
		@Filename,
		@ContentType,
		@Attachment );
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailException]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailException]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-07-27
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_EmailException] 
	-- Add the parameters for the stored procedure here
	@EmailExceptionTypeId INT,
	@EmailQueueId INT,
	@ToList VARCHAR(512),
	@Exception VARCHAR(MAX),
	@ProcessedDateTime DATETIME,
	@AttemptCount INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EmailExceptions (		
		EmailExceptionTypeId,
		EmailQueueId,
		ToList,
		Exception,
		ProcessedDateTime,
		AttemptCount )
	VALUES (
		@EmailExceptionTypeId,
		@EmailQueueId,
		@ToList,
		@Exception,
		@ProcessedDateTime,
		@AttemptCount );

	SELECT SCOPE_IDENTITY();
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailExceptionType]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailExceptionType]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-07-27
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_EmailExceptionType] 
	-- Add the parameters for the stored procedure here
	@EmailExceptionTypeName VARCHAR(50),
	@EmailExceptionTypeDescription VARCHAR(50),
	@EmailExceptionTypeKey VARCHAR(50),
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EmailExceptionTypes (		
		EmailExceptionTypeName,
		EmailExceptionTypeDescription,
		EmailExceptionTypeKey,
		IsActive,
		IsDeleted )
	VALUES (
		@EmailExceptionTypeName,
		@EmailExceptionTypeDescription,
		@EmailExceptionTypeKey,
		@IsActive,
		@IsDeleted );

	SELECT SCOPE_IDENTITY();
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailLog]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_EmailLog] 
	-- Add the parameters for the stored procedure here
	@ApplicationID INT,
	@EmailTemplateID INT = NULL,
	@EmailTo VARCHAR(255),
	@EmailFrom VARCHAR(255),
	@EmailSubject VARCHAR(255),
	@EmailBody VARCHAR(MAX),		
	@SentDateTime DATETIME,
	@SentByUserID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EmailLogs (		
		ApplicationID,		
		EmailTemplateID,
		EmailTo,
		EmailFrom,
		EmailSubject,
		EmailBody,
		SentDateTime,
		SentByUserID )
	VALUES (
		@ApplicationID,		
		@EmailTemplateID,
		@EmailTo,
		@EmailFrom,
		@EmailSubject,
		@EmailBody,
		@SentDateTime,
-		@SentByUserID );

	SELECT @@IDENTITY;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailQueue]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-13
-- Description:	This procedure is part of the email model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_INSERT_EmailQueue] 
	-- Add the parameters for the stored procedure here
	@ApplicationId INT,
	@EmailAccountId INT,
	@ToList VARCHAR(512),
	@CcList VARCHAR(512),
	@BccList VARCHAR(512),
	@Subject VARCHAR(1024),
	@Body NVARCHAR(MAX),		
	@IsHtml BIT,
	@FailureCount INT,
	@ReferenceId VARCHAR(32),
	@ReferenceTypeId INT,
	@HasAttachments BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EmailQueue (		
		QueueDateTime,
		ApplicationId,
		EmailAccountId,
		ToList,
		CcList,
		BccList,
		Subject,
		Body,
		IsHtml,
		FailureCount,
		ReferenceId,
		ReferenceTypeId,
		HasAttachments )
	VALUES (
		GETDATE(),
		@ApplicationId,
		@EmailAccountId,
		@ToList,
		@CcList,
		@BccList,
		@Subject,
		@Body,
		@IsHtml,
		@FailureCount,
		@ReferenceId,
		@ReferenceTypeId,
		@HasAttachments );

	DECLARE @EmailQueueId INT;

	SET @EmailQueueId = (SELECT SCOPE_IDENTITY());

	UPDATE tb_EmailQueue SET [Subject] = [Subject] + '' ['' + CAST(@EmailQueueId AS VARCHAR) + '']'' WHERE EmailQueueId = @EmailQueueId;

	SELECT @EmailQueueId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailQueueProcessed]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailQueueProcessed]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-13
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_EmailQueueProcessed] 
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT,
	@QueueDateTime DATETIME,
	@ApplicationId INT,
	@EmailAccountId INT,
	@ToList VARCHAR(512),
	@CcList VARCHAR(512),
	@BccList VARCHAR(512),
	@Subject VARCHAR(1024),
	@Body NVARCHAR(MAX),		
	@IsHtml BIT,
	@FailureCount INT,
	@ReferenceId VARCHAR(32),
	@ReferenceTypeId INT,
	@HasAttachments BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EmailQueueProcessed (		
		EmailQueueId,
		QueueDateTime,
		ApplicationId,
		EmailAccountId,
		ToList,
		CcList,
		BccList,
		Subject,
		Body,
		IsHtml,
		FailureCount,
		ReferenceId,
		ReferenceTypeId,
		ProcessedDateTime,
		HasAttachments )
	VALUES (
		@EmailQueueId,
		@QueueDateTime,
		@ApplicationId,
		@EmailAccountId,
		@ToList,
		@CcList,
		@BccList,
		@Subject,
		@Body,
		@IsHtml,
		@FailureCount,
		@ReferenceId,
		@ReferenceTypeId,
		GETDATE(),
		@HasAttachments );
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailStaticAttachment]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailStaticAttachment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-26
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_EmailStaticAttachment] 
	-- Add the parameters for the stored procedure here
	@EmailAccountId INT, 
	@ApplicationId INT,
	@Filename VARCHAR(1024),
	@ContentType VARCHAR(50),
	@Attachment VARBINARY(MAX),
	@StartDateTime DATETIME,
	@EndDateTime DATETIME,
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EmailStaticAttachments (
		EmailAccountId, 
		ApplicationId,
		Filename,
		ContentType,
		Attachment,
		StartDateTime,
		EndDateTime,
		IsActive,
		IsDeleted )
	VALUES (
		@EmailAccountId, 
		@ApplicationId,
		@Filename,
		@ContentType,
		@Attachment,
		@StartDateTime,
		@EndDateTime,
		@IsActive,
		@IsDeleted );
	
	SELECT SCOPE_IDENTITY();
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EmailTemplate]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EmailTemplate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Avashen Mari
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_INSERT_EmailTemplate] 
	-- Add the parameters for the stored procedure here
	@ApplicationID INT,
	@EmailTemplateName VARCHAR(50),
	@EmailTemplateDescription VARCHAR(50),
	@EmailTemplateKey VARCHAR(50),	
	@EmailFrom VARCHAR(50),
	@EmailSubject VARCHAR(50),
	@EmailBody VARCHAR(MAX),
	@Variables VARCHAR(Max),
	@ToVariable VARCHAR(Max),
	@CcVariable VARCHAR(Max),
	@IsHTML BIT,	
	@HasVariables BIT,
	@SendAsOneEmail BIT,
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EmailTemplates (		
		ApplicationID,
		EmailTemplateName,
		EmailTemplateDescription,
		EmailTemplateKey,
		EmailFrom,
		EmailSubject,
		EmailBody,
		Variables,
		ToVariable,
		CcVariable,
		IsHTML,
		HasVariables,
		SendAsOneEmail,
		IsActive,
		IsDeleted )
	VALUES (
		@ApplicationID,
		@EmailTemplateName,
		@EmailTemplateDescription,
		@EmailTemplateKey,
		@EmailFrom,
		@EmailSubject,
		@EmailBody,
		@Variables,
		@ToVariable,
		@CcVariable,
		@IsHTML,
		@HasVariables,		
		@SendAsOneEmail,
		@IsActive,
		@IsDeleted );

	SELECT SCOPE_IDENTITY();
	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_EventLog]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_EventLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the cesar win services.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_EventLog] 
	-- Add the parameters for the stored procedure here
	@ApplicationID INT,
	@UserID INT,
	@EventDateTime DATETIME,
	@EventData VARCHAR(MAX), 
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_EventLogs (
		ApplicationID,
		UserID,
		EventDateTime,
		EventData,
		IsActive,
		IsDeleted )
	VALUES (
		@ApplicationID,
		@UserID,
		@EventDateTime,
		@EventData,
		@IsActive,
		@IsDeleted );
	
	SELECT @@IDENTITY;
	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_ReadEmailAttachment]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_ReadEmailAttachment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-03-01
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_ReadEmailAttachment] 
	-- Add the parameters for the stored procedure here
	@EmailAttachmentId INT,
	@EmailItemId INT, 
	@Filename VARCHAR(1024),
	@ContentType VARCHAR(50),
	@Attachment VARBINARY(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_ReadEmailAttachments (
		EmailAttachmentId,
		EmailItemId,
		Filename,
		ContentType,
		Attachment )
	VALUES (
		@EmailAttachmentId,
		@EmailItemId,
		@Filename,
		@ContentType,
		@Attachment );
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_ReadEmailItem]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_ReadEmailItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-03-01
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
CREATE PROCEDURE [dbo].[pr_INSERT_ReadEmailItem] 
	-- Add the parameters for the stored procedure here
	@EmailItemId INT,
	@EmailAccountId INT, 
	@ApplicationId INT,
	@FromList VARCHAR(MAX),
	@ToList VARCHAR(MAX),
	@CcList VARCHAR(MAX),
	@Subject VARCHAR(MAX),
	@Body VARCHAR(MAX),
	@RecievedDateTime DATETIME,
	@HasAttachments BIT,
	@EmailExceptionTypeId INT = NULL,
	@ReferenceTypeId INT = NULL,
	@ReferenceId INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_ReadEmailItems (
		EmailItemId,
		EmailAccountId,
		ApplicationId,
		EmailExceptionTypeId,
		ReferenceTypeId,
		ReferenceId,
		FromList,
		ToList,
		CcList,
		Subject,
		Body,
		RecievedDateTime,
		HasAttachments )
	VALUES (
		@EmailItemId,
		@EmailAccountId,
		@ApplicationId,
		@EmailExceptionTypeId,
		@ReferenceTypeId,
		@ReferenceId,
		@FromList,
		@ToList,
		@CcList,
		@Subject,
		@Body,
		@RecievedDateTime,
		@HasAttachments );
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_UnreadEmailAttachment]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_UnreadEmailAttachment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-03-01
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
create PROCEDURE [dbo].[pr_INSERT_UnreadEmailAttachment] 
	-- Add the parameters for the stored procedure here
	@EmailItemId INT, 
	@Filename VARCHAR(1024),
	@ContentType VARCHAR(50),
	@Attachment VARBINARY(MAX),
	@IsProcessed BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_UnreadEmailAttachments (
		EmailItemId,
		Filename,
		ContentType,
		Attachment,
		IsProcessed )
	VALUES (
		@EmailItemId,
		@Filename,
		@ContentType,
		@Attachment,
		@IsProcessed );
	
	SELECT SCOPE_IDENTITY();
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_INSERT_UnreadEmailItem]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_INSERT_UnreadEmailItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-03-01
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
CREATE PROCEDURE [dbo].[pr_INSERT_UnreadEmailItem] 
	-- Add the parameters for the stored procedure here
	@EmailAccountId INT, 
	@ApplicationId INT,
	@FromList VARCHAR(MAX),
	@ToList VARCHAR(MAX),
	@CcList VARCHAR(MAX),
	@Subject VARCHAR(MAX),
	@Body VARCHAR(MAX),
	@RecievedDateTime DATETIME,
	@IsProcessed BIT,
	@HasAttachments BIT,
	@EmailExceptionTypeId INT = NULL,
	@ReferenceTypeId INT = NULL,
	@ReferenceId INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tb_UnreadEmailItems (
		EmailAccountId,
		ApplicationId,
		EmailExceptionTypeId,
		ReferenceTypeId,
		ReferenceId,
		FromList,
		ToList,
		CcList,
		Subject,
		Body,
		RecievedDateTime,
		IsProcessed,
		HasAttachments )
	VALUES (
		@EmailAccountId,
		@ApplicationId,
		@EmailExceptionTypeId,
		@ReferenceTypeId,
		@ReferenceId,
		@FromList,
		@ToList,
		@CcList,
		@Subject,
		@Body,
		@RecievedDateTime,
		@IsProcessed,
		@HasAttachments );

	SELECT SCOPE_IDENTITY();
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SCRIPT_ProcessUnreadToReadEmailsAndAttachments]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SCRIPT_ProcessUnreadToReadEmailsAndAttachments]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-03-01
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SCRIPT_ProcessUnreadToReadEmailsAndAttachments] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	BEGIN TRANSACTION;

	BEGIN TRY

		SET NOCOUNT ON;
	
		INSERT INTO [dbo].[tb_ReadEmailAttachments]
			([EmailAttachmentId]
			,[EmailItemId]
			,[Filename]
			,[ContentType]
			,[Attachment])
		SELECT 
			 [EmailAttachmentId]
			,[EmailItemId]
			,[Filename]
			,[ContentType]
			,[Attachment]
		FROM 
			[dbo].[tb_UnreadEmailAttachments]
		WHERE
			IsProcessed = 1;

		-- Insert statements for procedure here
		INSERT INTO [dbo].[tb_ReadEmailItems]
			([EmailItemId]
			,[EmailAccountId]
			,[ApplicationId]
			,[EmailExceptionTypeId]
			,[ReferenceTypeId]
			,[ReferenceId]
			,[FromList]
			,[ToList]
			,[CcList]
			,[Subject]
			,[Body]
			,[IsHtml]
			,[RecievedDateTime]
			,[HasAttachments])
		SELECT 
			 [EmailItemId]
			,[EmailAccountId]
			,[ApplicationId]
			,[EmailExceptionTypeId]
			,[ReferenceTypeId]
			,[ReferenceId]
			,[FromList]
			,[ToList]
			,[CcList]
			,[Subject]
			,[Body]
			,[IsHtml]
			,[RecievedDateTime]
			,[HasAttachments]
		FROM 
			[dbo].[tb_UnreadEmailItems]
		WHERE
			IsProcessed = 1;

		DELETE FROM tb_UnreadEmailItems WHERE IsProcessed = 1;
		DELETE FROM tb_UnreadEmailAttachments WHERE IsProcessed = 1;
		
	END TRY
	BEGIN CATCH
		SELECT 
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;

		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH;

	IF @@TRANCOUNT > 0
		COMMIT TRANSACTION;
  	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SCRIPT_ReQueueEmailQueueItem]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SCRIPT_ReQueueEmailQueueItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-08-01
-- Description:	This procedure is part of the email model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SCRIPT_ReQueueEmailQueueItem]
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION;

	BEGIN TRY

		SET IDENTITY_INSERT tb_EmailQueue ON;

		-- Insert statements for procedure here
		INSERT INTO tb_EmailQueue (
			EmailQueueId,
			QueueDateTime,
			ApplicationId,
			EmailAccountId,
			ToList,
			CcList,
			BccList,
			Subject,
			Body,
			IsHtml,
			FailureCount,
			ReferenceId,
			ReferenceTypeId,
			HasAttachments
		)
		SELECT
			EmailQueueId,
			QueueDateTime,
			ApplicationId,
			EmailAccountId,
			ToList,
			CcList,
			BccList,
			Subject,
			Body,
			IsHtml,
			0,
			ReferenceId,
			ReferenceTypeId,
			HasAttachments
		FROM
			tb_EmailQueueProcessed
		WHERE
			EmailQueueId = @EmailQueueId;

		SET IDENTITY_INSERT tb_EmailQueue OFF;

		DELETE FROM tb_EmailQueueProcessed WHERE EmailQueueId = @EmailQueueId;

	END TRY
	BEGIN CATCH
		SELECT 
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;

		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH;

	IF @@TRANCOUNT > 0
		COMMIT TRANSACTION;

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItem]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-08-01
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItem]
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION;

	BEGIN TRY

		SET IDENTITY_INSERT tb_EmailQueue ON;

		-- Insert statements for procedure here
		INSERT INTO tb_EmailQueue (
			EmailQueueId,
			QueueDateTime,
			ApplicationId,
			EmailAccountId,
			ToList,
			CcList,
			BccList,
			Subject,
			Body,
			IsHtml,
			FailureCount,
			ReferenceId,
			ReferenceTypeId,
			HasAttachments
		)
		SELECT
			EmailQueueId,
			QueueDateTime,
			ApplicationId,
			EmailAccountId,
			ToList,
			CcList,
			BccList,
			Subject,
			Body,
			IsHtml,
			FailureCount + 1,
			ReferenceId,
			ReferenceTypeId,
			HasAttachments
		FROM
			tb_EmailQueueProcessed
		WHERE
			EmailQueueId = @EmailQueueId;

		SET IDENTITY_INSERT tb_EmailQueue OFF;

		DELETE FROM tb_EmailQueueProcessed WHERE EmailQueueId = @EmailQueueId;

	END TRY
	BEGIN CATCH
		SELECT 
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;

		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH;

	IF @@TRANCOUNT > 0
		COMMIT TRANSACTION;

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsForRange]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsForRange]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		Lebohang Motloung
-- Create date: 2018-09-06
-- Description:	This procedure is part of the email model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsForRange]
	-- Add the parameters for the stored procedure here
	@StartDateTime DATETIME,
	@EndDateTime DATETIME,
	@ApplicationID INT	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION;

	BEGIN TRY

		SET IDENTITY_INSERT tb_EmailQueue ON;

		-- Insert statements for procedure here
		INSERT INTO tb_EmailQueue (
			EmailQueueId,
			QueueDateTime,
			ApplicationId,
			EmailAccountId,
			ToList,
			CcList,
			BccList,
			Subject,
			Body,
			IsHtml,
			FailureCount,
			ReferenceId,
			ReferenceTypeId,
			HasAttachments
		)
		SELECT
			EmailQueueId,
			QueueDateTime,
			eqp.ApplicationId,
			eqp.EmailAccountId,
			ToList,
			CcList,
			BccList,
			Subject,
			Body,
			IsHtml,
			0,
			--FailureCount + 1,
			ReferenceId,
			ReferenceTypeId,
			HasAttachments
		FROM
			tb_EmailQueueProcessed eqp
			INNER JOIN tb_EmailAccounts ea ON ea.EmailAccountId = eqp.EmailAccountId
		WHERE
			CAST(ProcessedDateTime AS DATE) BETWEEN @StartDateTime AND @EndDateTime
			AND eqp.ApplicationId = @ApplicationID
			AND eqp.FailureCount >= ea.MaxFailureCount;

		SET IDENTITY_INSERT tb_EmailQueue OFF;

		DELETE eqp FROM 
			tb_EmailQueueProcessed eqp 
			INNER JOIN tb_EmailAccounts ea ON ea.EmailAccountId = eqp.EmailAccountId
		WHERE
			CAST(ProcessedDateTime AS DATE) BETWEEN @StartDateTime AND @EndDateTime
			AND eqp.ApplicationId = @ApplicationID
			AND eqp.FailureCount >= ea.MaxFailureCount;

	END TRY
	BEGIN CATCH
		SELECT 
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;

		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH;

	IF @@TRANCOUNT > 0
		COMMIT TRANSACTION;

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsFrom]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsFrom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-10-28
-- Description:	This procedure is part of the email model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SCRIPT_ReQueueFailedEmailQueueItemsFrom]
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION;

	BEGIN TRY

		SET IDENTITY_INSERT tb_EmailQueue ON;

		-- Insert statements for procedure here
		INSERT INTO tb_EmailQueue (
			EmailQueueId,
			QueueDateTime,
			ApplicationId,
			EmailAccountId,
			ToList,
			CcList,
			BccList,
			Subject,
			Body,
			IsHtml,
			FailureCount,
			ReferenceId,
			ReferenceTypeId,
			HasAttachments
		)
		SELECT
			EmailQueueId,
			QueueDateTime,
			eqp.ApplicationId,
			eqp.EmailAccountId,
			ToList,
			CcList,
			BccList,
			Subject,
			Body,
			IsHtml,
			0,
			--FailureCount + 1,
			ReferenceId,
			ReferenceTypeId,
			HasAttachments
		FROM
			tb_EmailQueueProcessed eqp
			INNER JOIN tb_EmailAccounts ea ON ea.EmailAccountId = eqp.EmailAccountId
		WHERE
			EmailQueueId >= @EmailQueueId
			AND eqp.FailureCount >= ea.MaxFailureCount;

		SET IDENTITY_INSERT tb_EmailQueue OFF;

		DELETE eqp FROM 
			tb_EmailQueueProcessed eqp 
			INNER JOIN tb_EmailAccounts ea ON ea.EmailAccountId = eqp.EmailAccountId
		WHERE
			EmailQueueId >= @EmailQueueId
			AND eqp.FailureCount >= ea.MaxFailureCount;

	END TRY
	BEGIN CATCH
		SELECT 
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;

		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;
	END CATCH;

	IF @@TRANCOUNT > 0
		COMMIT TRANSACTION;

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_Application]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_Application]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SELECT_Application] 
	-- Add the parameters for the stored procedure here
	@ApplicationID INT,
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				*
			FROM
				tb_Applications 
			WHERE
				ApplicationID = @ApplicationID
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;
		END
	ELSE
		BEGIN
			SELECT
				*
			FROM
				tb_Applications
			WHERE
				ApplicationID = @ApplicationID
				AND IsDeleted = @IsDeleted;
		END
	
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_ApplicationByKey]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_ApplicationByKey]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_ApplicationByKey] 
	-- Add the parameters for the stored procedure here				
	@ApplicationKey VARCHAR(50),
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive != NULL )
		BEGIN
			SELECT
				a.*
			FROM				
				tb_Applications a
			WHERE					
				a.ApplicationKey = @ApplicationKey
				AND a.IsActive = @IsActive
				AND a.IsDeleted = @IsDeleted;
		END
	ELSE
		BEGIN
			SELECT
				a.*
			FROM				
				tb_Applications a
			WHERE					
				a.ApplicationKey = @ApplicationKey
				AND a.IsDeleted = @IsDeleted;
		END
	
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_ApplicationByName]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_ApplicationByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Themeshen Govender
-- Create date: 05/11/12
-- Description:	Returns a single app name.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SELECT_ApplicationByName] 
	-- Add the parameters for the stored procedure here						
	@ApplicationName Varchar(100),
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				*
			FROM				
				tb_Applications				
			WHERE
				ApplicationName = @ApplicationName
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;
		END
	--ELSE
	--	BEGIN
	--		SELECT
	--			*
	--		FROM				
	--			tb_Actions
	--		WHERE
	--			ActionName = @ActionName 				
	--			AND	IsDeleted = @IsDeleted;
	--	END
	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_Applications]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_Applications]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SELECT_Applications] 
	-- Add the parameters for the stored procedure here				
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				*
			FROM				
				tb_Applications				
			WHERE					
				IsActive = @IsActive
				AND IsDeleted = @IsDeleted;
		END
	ELSE
		BEGIN
			SELECT
				*
			FROM				
				tb_Applications
			WHERE					
				IsDeleted = @IsDeleted;
		END
	
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_ApplicationsByName]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_ApplicationsByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Themeshen Govender
-- Create date: 08/05/12
-- Description:	This procedure is part of the security model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_ApplicationsByName] 
	-- Add the parameters for the stored procedure here						
	@ApplicationName Varchar(100),
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				*
			FROM				
				tb_Applications				
			WHERE
				ApplicationName LIKE ''%'' + @ApplicationName + ''%''
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;
		END
	--ELSE
	--	BEGIN
	--		SELECT
	--			*
	--		FROM				
	--			tb_Actions
	--		WHERE
	--			ActionName = @ActionName 				
	--			AND	IsDeleted = @IsDeleted;
	--	END
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_ApplicationsByUser]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_ApplicationsByUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SELECT_ApplicationsByUser] 
	-- Add the parameters for the stored procedure here				
	@UserID INT,
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				a.*
			FROM				
				tb_Applications a
				INNER JOIN tb_UserApplications ua ON ua.ApplicationID = a.ApplicationID				
			WHERE					
				ua.UserID = @UserID
				AND ua.IsActive = @IsActive
				AND ua.IsDeleted = @IsDeleted;
		END
	ELSE
		BEGIN
			SELECT
				a.*
			FROM				
				tb_Applications a
				INNER JOIN tb_UserApplications ua ON ua.ApplicationID = a.ApplicationID				
			WHERE					
				ua.UserID = @UserID
				AND ua.IsDeleted = @IsDeleted;
		END
	
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AppSetting]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AppSetting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Themeshen Govender
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_AppSetting] 
	-- Add the parameters for the stored procedure here				
	@AppSettingID INT,
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF (@IsActive IS NOT NULL)
		BEGIN
			SELECT 
				*
			FROM
				tb_AppSettings
			WHERE	
				AppSettingID = @AppSettingID	
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;		
		END
	ELSE
		BEGIN
			SELECT 
				*
			FROM
				tb_AppSettings
			WHERE		
				AppSettingID = @AppSettingID
				AND IsDeleted = @IsDeleted;
		END	
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AppSettingByDescription]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AppSettingByDescription]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Themeshen Govender
-- Create date: 24/10/12
-- Description:	This procedure is part of the security model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SELECT_AppSettingByDescription] 
	-- Add the parameters for the stored procedure here						
	@Description Varchar(256),
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				*
			FROM				
				tb_AppSettings				
			WHERE
				[Description] LIKE ''%'' + @Description + ''%''
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;
		END
	--ELSE
	--	BEGIN
	--		SELECT
	--			*
	--		FROM				
	--			tb_Actions
	--		WHERE
	--			ActionName = @ActionName 				
	--			AND	IsDeleted = @IsDeleted;
	--	END
	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AppSettingByKey]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AppSettingByKey]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_AppSettingByKey]
	-- Add the parameters for the stored procedure here				
	@AppKey VARCHAR(256),
	@ApplicationID INT,
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF (@IsActive IS NOT NULL)
		BEGIN
			SELECT 
				*
			FROM
				tb_AppSettings
			WHERE	
				AppKey = @AppKey
				AND ApplicationID = @ApplicationID
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;		
		END
	ELSE
		BEGIN
			SELECT 
				*
			FROM
				tb_AppSettings
			WHERE		
				AppKey = @AppKey
				AND ApplicationID = @ApplicationID
				AND IsDeleted = @IsDeleted;
		END
				
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AppSettings]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AppSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[pr_SELECT_AppSettings]
	-- Add the parameters for the stored procedure here		
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF (@IsActive IS NOT NULL)
		BEGIN
			SELECT 
				*
			FROM
				tb_AppSettings
			WHERE	
				IsActive = @IsActive
				AND IsDeleted = @IsDeleted;		
		END
	ELSE
		BEGIN
			SELECT 
				*
			FROM
				tb_AppSettings
			WHERE		
				IsDeleted = @IsDeleted;
		END					
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AppSettingsByApplication]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AppSettingsByApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_AppSettingsByApplication]
	-- Add the parameters for the stored procedure here		
	@ApplicationID INT,		
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF (@IsActive IS NOT NULL)
		BEGIN
			SELECT 
				*
			FROM
				tb_AppSettings
			WHERE	
				ApplicationID = @ApplicationID	
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;		
		END
	ELSE
		BEGIN
			SELECT 
				*
			FROM
				tb_AppSettings
			WHERE		
				ApplicationID = @ApplicationID
				AND IsDeleted = @IsDeleted;
		END
				
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_AuthenticationByName]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_AuthenticationByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Themeshen Govender
-- Create date: 08/05/12
-- Description:	This procedure is part of the security model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_AuthenticationByName] 
	-- Add the parameters for the stored procedure here						
	@AuthenticationTypeName Varchar(255),
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				*
			FROM				
				tb_AuthenticationTypes				
			WHERE
				AuthenticationTypeName LIKE ''%'' + @AuthenticationTypeName + ''%''
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;
		END
	--ELSE
	--	BEGIN
	--		SELECT
	--			*
	--		FROM				
	--			tb_Actions
	--		WHERE
	--			ActionName = @ActionName 				
	--			AND	IsDeleted = @IsDeleted;
	--	END
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailAccount]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailAccount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-03-01
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailAccount] 
	-- Add the parameters for the stored procedure here
	@EmailAccountId INT,
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		*
	FROM
		tb_EmailAccounts
	WHERE
		EmailAccountId = @EmailAccountId
		AND IsActive = @IsActive
		AND IsDeleted = @IsDeleted;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailAccounts]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailAccounts]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-03-01
-- Description:	This procedure is part of the email retrieval component.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailAccounts] 
	-- Add the parameters for the stored procedure here
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		*
	FROM
		tb_EmailAccounts
	WHERE
		IsActive = @IsActive
		AND IsDeleted = @IsDeleted;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailAttachmentQueueByEmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailAttachmentQueueByEmailQueue]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-26
-- Description:	This procedure is part of the email message component.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailAttachmentQueueByEmailQueue] 
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	SELECT 
		*
	FROM
		tb_EmailAttachmentQueue
	WHERE
		EmailQueueId = @EmailQueueId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailAttachmentQueueProcessedByEmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailAttachmentQueueProcessedByEmailQueue]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-26
-- Description:	This procedure is part of the email message component.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailAttachmentQueueProcessedByEmailQueue] 
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	SELECT 
		*
	FROM
		tb_EmailAttachmentQueueProcessed
	WHERE
		EmailQueueId = @EmailQueueId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailExceptionByEmailQueueId]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailExceptionByEmailQueueId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-07-27
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailExceptionByEmailQueueId] 
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		*
	FROM
		tb_EmailExceptions 
	WHERE
		EmailQueueId = @EmailQueueId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailExceptionType]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailExceptionType]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-07-27
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailExceptionType] 
	-- Add the parameters for the stored procedure here
	@EmailExceptionTypeId INT,
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		*
	FROM
		tb_EmailExceptionTypes
	WHERE
		EmailExceptionTypeId = @EmailExceptionTypeId
		AND IsActive = @IsActive
		AND IsDeleted = @IsDeleted;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailExceptionTypeByKey]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailExceptionTypeByKey]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-07-27
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailExceptionTypeByKey] 
	-- Add the parameters for the stored procedure here
	@EmailExceptionTypeKey VARCHAR(50),
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		*
	FROM
		tb_EmailExceptionTypes
	WHERE
		EmailExceptionTypeKey = @EmailExceptionTypeKey
		AND IsActive = @IsActive
		AND IsDeleted = @IsDeleted;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailLogsByApplication]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailLogsByApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the delegation component.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailLogsByApplication] 
	-- Add the parameters for the stored procedure here	
	@ApplicationID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	SELECT
		*
	FROM
		 tb_EmailLogs
	WHERE	
		ApplicationID = @ApplicationID;	
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailQueue]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-13
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailQueue] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		*
	FROM
		tb_EmailQueue;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailQueueItem]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailQueueItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-13
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailQueueItem] 
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		*
	FROM
		tb_EmailQueue
	WHERE
		EmailQueueId = @EmailQueueId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailQueueItemProcessed]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailQueueItemProcessed]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-13
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailQueueItemProcessed] 
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		*
	FROM
		tb_EmailQueueProcessed
	WHERE
		EmailQueueId = @EmailQueueId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailStaticAttachmentsByEmailAccount]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailStaticAttachmentsByEmailAccount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-26
-- Description:	This procedure is part of the email message component.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailStaticAttachmentsByEmailAccount] 
	-- Add the parameters for the stored procedure here
	@EmailAccountId INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	SELECT 
		*
	FROM
		tb_EmailStaticAttachments
	WHERE
		EmailAccountId = @EmailAccountId
		AND StartDateTime <= GETDATE()
		AND EndDateTime >= GETDATE();
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailTemplate]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailTemplate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the email component.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SELECT_EmailTemplate] 
	-- Add the parameters for the stored procedure here	
	@EmailTemplateID INT,
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				et.*
			FROM
				tb_EmailTemplates et
			WHERE				
				et.EmailTemplateID = @EmailTemplateID
				AND et.IsActive = @IsActive
				AND et.IsDeleted = @IsDeleted;
		END
	ELSE
		BEGIN
			SELECT
				et.*
			FROM
				tb_EmailTemplates et
			WHERE				
				et.EmailTemplateID = @EmailTemplateID
				AND et.IsDeleted = @IsDeleted;
		END
	
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailTemplateByKey]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailTemplateByKey]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the security component.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SELECT_EmailTemplateByKey] 
	-- Add the parameters for the stored procedure here	
	@EmailTemplateKey VARCHAR(50),
	--@ApplicationID INT = 1,
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive != NULL )
		BEGIN
			SELECT
				et.*
			FROM
				tb_EmailTemplates et
			WHERE				
				et.EmailTemplateKey = @EmailTemplateKey	
				--AND et.ApplicationID =@ApplicationID
				AND et.IsActive = @IsActive
				AND et.IsDeleted = @IsDeleted;
		END
	ELSE
		BEGIN
			SELECT
				et.*
			FROM
				tb_EmailTemplates et
			WHERE				
				et.EmailTemplateKey = @EmailTemplateKey
				--AND et.ApplicationID = @ApplicationID
				AND et.IsDeleted = @IsDeleted;
		END
	
	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailTemplateByName]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailTemplateByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Themeshen Govender
-- Create date: 
-- Description:	This procedure is part of the email component.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailTemplateByName] 
	-- Add the parameters for the stored procedure here	
	@EmailTemplateName VARCHAR(50),
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				*
			FROM
				tb_EmailTemplates 
			WHERE
			    EmailTemplateName LIKE ''%'' + @EmailTemplateName + ''%''			
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;
		END	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailTemplates]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailTemplates]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the email component.
-- =============================================
CREATE PROCEDURE [dbo].[pr_SELECT_EmailTemplates] 
	-- Add the parameters for the stored procedure here	
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				et.*
			FROM
				tb_EmailTemplates et
			WHERE				
				et.IsActive = @IsActive
				AND et.IsDeleted = @IsDeleted;
		END
	ELSE
		BEGIN
			SELECT
				et.*
			FROM
				tb_EmailTemplates et
			WHERE				
				et.IsDeleted = @IsDeleted;
		END
	
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EmailTemplatesByApplication]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EmailTemplatesByApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EmailTemplatesByApplication] 
	-- Add the parameters for the stored procedure here		
	@ApplicationID INT,		
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				*
			FROM				
				tb_EmailTemplates				
			WHERE					
				ApplicationID = @ApplicationID
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;
		END
	ELSE
		BEGIN
			SELECT
				*
			FROM				
				tb_EmailTemplates
			WHERE					
				ApplicationID = @ApplicationID
				AND IsDeleted = @IsDeleted;
		END
	
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EventLog]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EventLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the cesar win services.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EventLog] 
	-- Add the parameters for the stored procedure here		
	@EventLogID INT,				
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				*
			FROM				
				tb_EventLogs				
			WHERE
				EventLogID = @EventLogID
				AND IsActive = @IsActive
				AND IsDeleted = @IsDeleted;
		END
	ELSE
		BEGIN
			SELECT
				*
			FROM				
				tb_EventLogs
			WHERE					
				EventLogID = @EventLogID
				AND IsDeleted = @IsDeleted;
		END
	
	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_EventLogs]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_EventLogs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the cesar win services.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_EventLogs] 
	-- Add the parameters for the stored procedure here		
	@IsActive BIT = NULL,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF ( @IsActive IS NOT NULL )
		BEGIN
			SELECT
				*
			FROM				
				tb_EventLogs				
			WHERE
				IsActive = @IsActive
				AND IsDeleted = @IsDeleted;
		END
	ELSE
		BEGIN
			SELECT
				*
			FROM				
				tb_EventLogs
			WHERE					
				IsDeleted = @IsDeleted;
		END
	
	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_ReadEmailAttachmentsByEmailItem]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_ReadEmailAttachmentsByEmailItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-26
-- Description:	This procedure is part of the email message component.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_ReadEmailAttachmentsByEmailItem] 
	-- Add the parameters for the stored procedure here
	@EmailItemId INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		*
	FROM
		tb_ReadEmailAttachments
	WHERE
		EmailItemId = @EmailItemId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SELECT_UnreadEmailAttachmentsByEmailItem]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_SELECT_UnreadEmailAttachmentsByEmailItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-26
-- Description:	This procedure is part of the email message component.
-- =============================================
create PROCEDURE [dbo].[pr_SELECT_UnreadEmailAttachmentsByEmailItem] 
	-- Add the parameters for the stored procedure here
	@EmailItemId INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		*
	FROM
		tb_UnreadEmailAttachments
	WHERE
		EmailItemId = @EmailItemId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_AppSetting]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_AppSetting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
create PROCEDURE [dbo].[pr_UPDATE_AppSetting] 
	-- Add the parameters for the stored procedure here
	@AppSettingID int,
	@ApplicationID int, 
	@AppKey VARCHAR(256),
	@AppValue VARCHAR(256),
	@Description VARCHAR(256), 	
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE 
		tb_AppSettings 
	SET
		ApplicationID = @ApplicationID ,
		AppKey = @AppKey,
		AppValue = @AppValue,
		Description = @Description,	
		IsActive = @IsActive,
		IsDeleted = @IsDeleted 
 	WHERE
		AppSettingID = @AppSettingID;	
		
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EmailAccount]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EmailAccount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-03-11
-- Description:	This procedure is part of the exchange
--				email retrieval component.
-- =============================================
CREATE PROCEDURE [dbo].[pr_UPDATE_EmailAccount]
	-- Add the parameters for the stored procedure here		
	@EmailAccountId INT,
	@ApplicationId INT,
	@EmailAccountDescription VARCHAR(256),
	@EmailAddress VARCHAR(256),
	@Password VARCHAR(256),
	@ServiceUrl VARCHAR(256),
	@PasswordExpiredDays INT,
	@PasswordExpiredDate DATETIME,
	@PasswordNeverExpires BIT,
	@DeleteServerEmail BIT,
	@CanRecieve BIT,
	@CanSend BIT,
	@CheckUndeliverable BIT,
	@AccountFailureCount INT,
	@MaxFailureCount INT,
	@IsActive BIT,
	@IsDeleted BIT,
	@IsLocked BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE 
		tb_EmailAccounts 
	SET						
		ApplicationId = @ApplicationId,
		EmailAccountDescription = @EmailAccountDescription,
		EmailAddress = @EmailAddress,
		Password = @Password,
		ServiceUrl = @ServiceUrl,
		PasswordExpiredDays = @PasswordExpiredDays,
		PasswordExpiredDate = @PasswordExpiredDate,
		PasswordNeverExpires = @PasswordNeverExpires,
		DeleteServerEmail = @DeleteServerEmail,
		CanRecieve = @CanRecieve,
		CanSend = @CanSend,
		CheckUndeliverable = @CheckUndeliverable,
		AccountFailureCount = @AccountFailureCount,
		MaxFailureCount = @MaxFailureCount,
		IsActive = @IsActive,
		IsDeleted = @IsDeleted,
		IsLocked = @IsLocked
	WHERE	
		EmailAccountId = @EmailAccountId;			
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EmailBody]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EmailBody]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Avashen Mari
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_UPDATE_EmailBody] 
	-- Add the parameters for the stored procedure here
	@EmailTemplateID INT,
	@EmailBody VARCHAR(MAX),
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE 
		tb_EmailTemplates
	SET	
		EmailBody = @EmailBody,
		IsActive = @IsActive,
		IsDeleted = @IsDeleted
	WHERE
		EmailTemplateID = @EmailTemplateID;
	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EmailExceptionType]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EmailExceptionType]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-07-27
-- Description:	This procedure is part of the email model.
-- =============================================
create PROCEDURE [dbo].[pr_UPDATE_EmailExceptionType] 
	-- Add the parameters for the stored procedure here
	@EmailExceptionTypeId INT,
	@EmailExceptionTypeName VARCHAR(50),
	@EmailExceptionTypeDescription VARCHAR(50),
	@EmailExceptionTypeKey VARCHAR(50),
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE tb_EmailExceptionTypes SET		
		EmailExceptionTypeName = @EmailExceptionTypeName,
		EmailExceptionTypeDescription = @EmailExceptionTypeDescription,
		EmailExceptionTypeKey = @EmailExceptionTypeKey,
		IsActive = @IsActive,
		IsDeleted = IsDeleted
	WHERE
		EmailExceptionTypeId = @EmailExceptionTypeId;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EmailQueue]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EmailQueue]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 2014-05-13
-- Description:	This procedure is part of the email model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_UPDATE_EmailQueue] 
	-- Add the parameters for the stored procedure here
	@EmailQueueId INT,
	@ApplicationId INT,
	@EmailAccountId INT,
	@QueueDateTime DATETIME,
	@ToList VARCHAR(512),
	@CcList VARCHAR(512),
	@BccList VARCHAR(512),
	@Subject VARCHAR(1024),
	@Body NVARCHAR(MAX),		
	@IsHtml BIT,
	@FailureCount INT,
	@ReferenceId VARCHAR(32),
	@ReferenceTypeId INT,
	@HasAttachments BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Count INT;

	SET @Count = (SELECT COUNT(*) FROM tb_EmailQueue WHERE EmailQueueId = @EmailQueueId);

	IF (@Count > 0)
		BEGIN

			-- Insert statements for procedure here
			UPDATE tb_EmailQueue SET 		
				QueueDateTime = @QueueDateTime,
				ApplicationId = @ApplicationId,
				EmailAccountId = @EmailAccountId,
				ToList = @ToList,
				CcList = @CcList,
				BccList = @BccList,
				Subject = @Subject,
				Body = @Body,
				IsHtml = @IsHtml,
				FailureCount = @FailureCount,
				ReferenceId = @ReferenceId,
				ReferenceTypeId = @ReferenceTypeId,
				HasAttachments = @HasAttachments
			WHERE
				EmailQueueId = @EmailQueueId;

		END;

	SELECT @Count;

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EmailTemplate]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EmailTemplate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the security model.
-- =============================================
CREATE PROCEDURE [dbo].[pr_UPDATE_EmailTemplate] 
	-- Add the parameters for the stored procedure here
	@EmailTemplateID INT,
	@ApplicationID INT,
	@EmailTemplateName VARCHAR(50),
	@EmailTemplateDescription VARCHAR(50),		
	@EmailTemplateKey VARCHAR(50),
	@EmailFrom VARCHAR(50),
	@EmailSubject VARCHAR(50),
	@EmailBody VARCHAR(MAX),
	@Variables VARCHAR(MAX),
	@ToVariable VARCHAR(MAX),
	@CcVariable VARCHAR(MAX),
	@IsHTML BIT,
	@HasVariables BIT,
	@SendAsOneEmail BIT,
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE 
		tb_EmailTemplates
	SET	
		ApplicationID = @ApplicationID,		
		EmailTemplateName = @EmailTemplateName,
		EmailTemplateDescription = @EmailTemplateDescription,
		EmailTemplateKey = @EmailTemplateKey,
		EmailFrom = @EmailFrom,
		EmailSubject = @EmailSubject,
		EmailBody = @EmailBody,
		Variables = @Variables,
		ToVariable = @ToVariable,
		CcVariable = @CcVariable,
		IsHTML = @IsHTML,
		HasVariables = @HasVariables,
		SendAsOneEmail = @SendAsOneEmail,
		IsActive = @IsActive,
		IsDeleted = @IsDeleted
	WHERE
		EmailTemplateID = @EmailTemplateID;
	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pr_UPDATE_EventLog]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_UPDATE_EventLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jayan Kistasami
-- Create date: 
-- Description:	This procedure is part of the cesar win services.
-- =============================================
create PROCEDURE [dbo].[pr_UPDATE_EventLog] 
	-- Add the parameters for the stored procedure here
	@EventLogID INT,
    @ApplicationID INT,
	@UserID INT,
	@EventDateTime DATETIME,
	@EventData VARCHAR(MAX),
	@IsActive BIT,
	@IsDeleted BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE 
		tb_EventLogs
	SET
		ApplicationID = @ApplicationID,
		UserID = @UserID,
		EventDateTime = @EventDateTime,
		EventData = @EventData,
		IsActive = @IsActive,
		IsDeleted = @IsDeleted
	WHERE
		EventLogID = @EventLogID;	
		
END' 
END
GO
/****** Object:  Table [dbo].[tb_Applications]    Script Date: 2019/06/05 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_Applications](
	[ApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationKey] [varchar](50) NOT NULL,
	[ApplicationName] [varchar](100) NOT NULL,
	[ApplicationDescription] [varchar](250) NULL,
	[ApplicationURL] [varchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tb_Applications] PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_AppSettings]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_AppSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_AppSettings](
	[AppSettingID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[AppKey] [varchar](256) NOT NULL,
	[AppValue] [varchar](256) NOT NULL,
	[Description] [varchar](256) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tb_AppSettings] PRIMARY KEY CLUSTERED 
(
	[AppSettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EmailAccounts]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailAccounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EmailAccounts](
	[EmailAccountId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[EmailAccountDescription] [varchar](256) NOT NULL,
	[EmailAddress] [varchar](256) NOT NULL,
	[Username] [varchar](256) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[ServiceUrl] [varchar](256) NOT NULL,
	[PasswordExpiredDays] [int] NOT NULL,
	[PasswordExpiredDate] [datetime] NOT NULL,
	[PasswordNeverExpires] [bit] NOT NULL,
	[DeleteServerEmail] [bit] NOT NULL,
	[CanRecieve] [bit] NOT NULL,
	[CanSend] [bit] NOT NULL,
	[CheckUndeliverable] [bit] NOT NULL,
	[AccountFailureCount] [int] NOT NULL,
	[MaxFailureCount] [int] NOT NULL,
	[DisableAccount] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NOT NULL,
 CONSTRAINT [PK_tb_EmailAccounts] PRIMARY KEY CLUSTERED 
(
	[EmailAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EmailAttachmentQueue]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailAttachmentQueue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EmailAttachmentQueue](
	[EmailAttachmentQueueId] [int] IDENTITY(1,1) NOT NULL,
	[EmailQueueId] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[Filename] [varchar](1024) NOT NULL,
	[ContentType] [varchar](50) NOT NULL,
	[Attachment] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_tb_EmailAttachmentQueue] PRIMARY KEY CLUSTERED 
(
	[EmailAttachmentQueueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EmailAttachmentQueueProcessed]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailAttachmentQueueProcessed]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EmailAttachmentQueueProcessed](
	[EmailAttachmentQueueId] [int] NOT NULL,
	[EmailQueueId] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[Filename] [varchar](1024) NOT NULL,
	[ContentType] [varchar](50) NOT NULL,
	[Attachment] [varbinary](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EmailExceptions]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailExceptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EmailExceptions](
	[EmailExceptionId] [int] IDENTITY(1,1) NOT NULL,
	[EmailExceptionTypeId] [int] NOT NULL,
	[EmailQueueId] [int] NOT NULL,
	[ToList] [varchar](512) NULL,
	[Exception] [varchar](max) NULL,
	[ProcessedDateTime] [datetime] NOT NULL,
	[AttemptCount] [int] NOT NULL,
 CONSTRAINT [PK_tb_EmailExceptions] PRIMARY KEY CLUSTERED 
(
	[EmailExceptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EmailExceptionTypes]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailExceptionTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EmailExceptionTypes](
	[EmailExceptionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[EmailExceptionTypeName] [varchar](50) NOT NULL,
	[EmailExceptionTypeDescription] [varchar](256) NULL,
	[EmailExceptionTypeKey] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tb_EmailExceptionTypes] PRIMARY KEY CLUSTERED 
(
	[EmailExceptionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EmailLogs]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailLogs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EmailLogs](
	[EmailLogID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[EmailTemplateID] [int] NULL,
	[EmailTo] [varchar](255) NOT NULL,
	[EmailFrom] [varchar](255) NOT NULL,
	[EmailSubject] [varchar](255) NOT NULL,
	[EmailBody] [varchar](max) NOT NULL,
	[SentDateTime] [datetime] NOT NULL,
	[SentByUserID] [int] NOT NULL,
 CONSTRAINT [PK_tb_EmailLogs] PRIMARY KEY CLUSTERED 
(
	[EmailLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EmailQueue]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailQueue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EmailQueue](
	[EmailQueueId] [int] IDENTITY(1,1) NOT NULL,
	[QueueDateTime] [datetime] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[EmailAccountId] [int] NOT NULL,
	[ToList] [varchar](512) NOT NULL,
	[CcList] [varchar](512) NULL,
	[BccList] [varchar](512) NULL,
	[Subject] [varchar](1024) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[IsHtml] [bit] NOT NULL,
	[FailureCount] [int] NOT NULL,
	[ReferenceId] [varchar](32) NULL,
	[ReferenceTypeId] [int] NULL,
	[HasAttachments] [bit] NOT NULL,
 CONSTRAINT [PK_tb_EmailQueue] PRIMARY KEY CLUSTERED 
(
	[EmailQueueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EmailQueueProcessed]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailQueueProcessed]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EmailQueueProcessed](
	[EmailQueueId] [int] NOT NULL,
	[QueueDateTime] [datetime] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[EmailAccountId] [int] NOT NULL,
	[ToList] [varchar](512) NOT NULL,
	[CcList] [varchar](512) NULL,
	[BccList] [varchar](512) NULL,
	[Subject] [varchar](1024) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[IsHtml] [bit] NOT NULL,
	[FailureCount] [int] NOT NULL,
	[ReferenceId] [varchar](32) NULL,
	[ReferenceTypeId] [int] NULL,
	[ProcessedDateTime] [datetime] NOT NULL,
	[HasAttachments] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EmailStaticAttachments]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailStaticAttachments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EmailStaticAttachments](
	[EmailStaticAttachmentId] [int] IDENTITY(1,1) NOT NULL,
	[EmailAccountId] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[Filename] [varchar](1024) NOT NULL,
	[ContentType] [varchar](50) NOT NULL,
	[Attachment] [varbinary](max) NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tb_EmailStaticAttachments] PRIMARY KEY CLUSTERED 
(
	[EmailStaticAttachmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EmailTemplates]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EmailTemplates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EmailTemplates](
	[EmailTemplateID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[EmailTemplateName] [varchar](50) NOT NULL,
	[EmailTemplateDescription] [varchar](50) NULL,
	[EmailTemplateKey] [varchar](50) NOT NULL,
	[EmailFrom] [varchar](50) NOT NULL,
	[EmailSubject] [varchar](50) NOT NULL,
	[EmailBody] [varchar](max) NOT NULL,
	[Variables] [varchar](max) NULL,
	[IsHTML] [bit] NOT NULL,
	[ToVariable] [varchar](max) NULL,
	[CcVariable] [varchar](max) NULL,
	[HasVariables] [bit] NOT NULL,
	[SendAsOneEmail] [bit] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tb_EmailTemplates] PRIMARY KEY CLUSTERED 
(
	[EmailTemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_EventLogs]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_EventLogs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_EventLogs](
	[EventLogID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NULL,
	[UserID] [int] NULL,
	[EventDateTime] [datetime] NOT NULL,
	[EventData] [varchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tb_EventLog] PRIMARY KEY CLUSTERED 
(
	[EventLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_ReadEmailAttachments]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ReadEmailAttachments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_ReadEmailAttachments](
	[EmailAttachmentId] [int] NOT NULL,
	[EmailItemId] [int] NOT NULL,
	[Filename] [varchar](1024) NULL,
	[ContentType] [varchar](50) NULL,
	[Attachment] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_tb_ReadEmailAttachments] PRIMARY KEY CLUSTERED 
(
	[EmailAttachmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_ReadEmailItems]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ReadEmailItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_ReadEmailItems](
	[EmailItemId] [int] NOT NULL,
	[EmailAccountId] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[EmailExceptionTypeId] [int] NULL,
	[ReferenceTypeId] [int] NULL,
	[ReferenceId] [int] NULL,
	[FromList] [varchar](max) NOT NULL,
	[ToList] [varchar](max) NOT NULL,
	[CcList] [varchar](max) NULL,
	[Subject] [varchar](max) NULL,
	[Body] [varchar](max) NULL,
	[IsHtml] [bit] NULL,
	[RecievedDateTime] [datetime] NOT NULL,
	[HasAttachments] [bit] NOT NULL,
 CONSTRAINT [PK_tb_ReadEmails] PRIMARY KEY CLUSTERED 
(
	[EmailItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_UnreadEmailAttachments]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_UnreadEmailAttachments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_UnreadEmailAttachments](
	[EmailAttachmentId] [int] IDENTITY(1,1) NOT NULL,
	[EmailItemId] [int] NOT NULL,
	[Filename] [varchar](1024) NULL,
	[ContentType] [varchar](50) NULL,
	[Attachment] [varbinary](max) NOT NULL,
	[IsProcessed] [bit] NOT NULL,
 CONSTRAINT [PK_tb_EmailAttachments] PRIMARY KEY CLUSTERED 
(
	[EmailAttachmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_UnreadEmailItems]    Script Date: 2019/06/05 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_UnreadEmailItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_UnreadEmailItems](
	[EmailItemId] [int] IDENTITY(1,1) NOT NULL,
	[EmailAccountId] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[EmailExceptionTypeId] [int] NULL,
	[ReferenceTypeId] [int] NULL,
	[ReferenceId] [int] NULL,
	[FromList] [varchar](max) NOT NULL,
	[ToList] [varchar](max) NOT NULL,
	[CcList] [varchar](max) NULL,
	[Subject] [varchar](max) NULL,
	[Body] [varchar](max) NULL,
	[RecievedDateTime] [datetime] NOT NULL,
	[IsHtml] [bit] NULL,
	[IsProcessed] [bit] NOT NULL,
	[HasAttachments] [bit] NOT NULL,
 CONSTRAINT [PK_tb_UnreadEmails] PRIMARY KEY CLUSTERED 
(
	[EmailItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_ReferenceTypes]    Script Date: 2019/06/05 15:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_ReferenceTypes](
	[ReferenceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ReferenceTypeName] [varchar](512) NOT NULL,
	[ReferenceTypeDescription] [varchar](1024) NULL,
	[ReferenceTypeKey] [varchar](256) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NOT NULL,
 CONSTRAINT [PK_tb_ReferenceTypes] PRIMARY KEY CLUSTERED 
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_Applications_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_Applications] ADD  CONSTRAINT [DF_tb_Applications_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_Applications_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_Applications] ADD  CONSTRAINT [DF_tb_Applications_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_AppSettings_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_AppSettings] ADD  CONSTRAINT [DF_tb_AppSettings_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_AppSettings_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_AppSettings] ADD  CONSTRAINT [DF_tb_AppSettings_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_PasswordExpiredDays]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] ADD  CONSTRAINT [DF_tb_EmailAccounts_PasswordExpiredDays]  DEFAULT ((20)) FOR [PasswordExpiredDays]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_PasswordNeverExpires]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] ADD  CONSTRAINT [DF_tb_EmailAccounts_PasswordNeverExpires]  DEFAULT ((0)) FOR [PasswordNeverExpires]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_CanRecieve]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] ADD  CONSTRAINT [DF_tb_EmailAccounts_CanRecieve]  DEFAULT ((1)) FOR [CanRecieve]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_CanSend]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] ADD  CONSTRAINT [DF_tb_EmailAccounts_CanSend]  DEFAULT ((1)) FOR [CanSend]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_CheckUndeliverable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] ADD  CONSTRAINT [DF_tb_EmailAccounts_CheckUndeliverable]  DEFAULT ((0)) FOR [CheckUndeliverable]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_AccountFailureCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] ADD  CONSTRAINT [DF_tb_EmailAccounts_AccountFailureCount]  DEFAULT ((0)) FOR [AccountFailureCount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_DisableAccount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] ADD  CONSTRAINT [DF_tb_EmailAccounts_DisableAccount]  DEFAULT ((0)) FOR [DisableAccount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] ADD  CONSTRAINT [DF_tb_EmailAccounts_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] ADD  CONSTRAINT [DF_tb_EmailAccounts_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAccounts_IsLocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailAccounts] ADD  CONSTRAINT [DF_tb_EmailAccounts_IsLocked]  DEFAULT ((0)) FOR [IsLocked]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailQueue_QueueDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailQueue] ADD  CONSTRAINT [DF_tb_EmailQueue_QueueDateTime]  DEFAULT (getdate()) FOR [QueueDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailQueue_HaveAttachments]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailQueue] ADD  CONSTRAINT [DF_tb_EmailQueue_HaveAttachments]  DEFAULT ((0)) FOR [HasAttachments]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailQueueProcessed_HaveAttachments]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailQueueProcessed] ADD  CONSTRAINT [DF_tb_EmailQueueProcessed_HaveAttachments]  DEFAULT ((0)) FOR [HasAttachments]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailTemplates_IsHTML]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailTemplates] ADD  CONSTRAINT [DF_tb_EmailTemplates_IsHTML]  DEFAULT ((1)) FOR [IsHTML]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailTemplates_HasVariables]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailTemplates] ADD  CONSTRAINT [DF_tb_EmailTemplates_HasVariables]  DEFAULT ((0)) FOR [HasVariables]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailTemplates_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailTemplates] ADD  CONSTRAINT [DF_tb_EmailTemplates_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailTemplates_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_EmailTemplates] ADD  CONSTRAINT [DF_tb_EmailTemplates_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_ReadEmailItems_HaveAttachments]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_ReadEmailItems] ADD  CONSTRAINT [DF_tb_ReadEmailItems_HaveAttachments]  DEFAULT ((0)) FOR [HasAttachments]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_EmailAttachments_IsProcessed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_UnreadEmailAttachments] ADD  CONSTRAINT [DF_tb_EmailAttachments_IsProcessed]  DEFAULT ((0)) FOR [IsProcessed]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_UnreadEmails_IsProcessed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_UnreadEmailItems] ADD  CONSTRAINT [DF_tb_UnreadEmails_IsProcessed]  DEFAULT ((0)) FOR [IsProcessed]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tb_UnreadEmailItems_HaveAttachments]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_UnreadEmailItems] ADD  CONSTRAINT [DF_tb_UnreadEmailItems_HaveAttachments]  DEFAULT ((0)) FOR [HasAttachments]
END

GO
