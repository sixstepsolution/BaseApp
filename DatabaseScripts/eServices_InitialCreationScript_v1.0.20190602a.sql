USE [Ekurhuleni]
GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'eMailBills', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eMailBills'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'eMailBills', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eMailBills'

GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]'))
ALTER TABLE [dbo].[UnitOfmeasureTypes] DROP CONSTRAINT [FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]'))
ALTER TABLE [dbo].[UnitOfmeasureTypes] DROP CONSTRAINT [FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]'))
ALTER TABLE [dbo].[UnitOfmeasureTypeAudits] DROP CONSTRAINT [FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]'))
ALTER TABLE [dbo].[UnitOfmeasureTypeAudits] DROP CONSTRAINT [FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypes]'))
ALTER TABLE [dbo].[TitleTypes] DROP CONSTRAINT [FK_dbo.TitleTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypes]'))
ALTER TABLE [dbo].[TitleTypes] DROP CONSTRAINT [FK_dbo.TitleTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]'))
ALTER TABLE [dbo].[TitleTypeAudits] DROP CONSTRAINT [FK_dbo.TitleTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]'))
ALTER TABLE [dbo].[TitleTypeAudits] DROP CONSTRAINT [FK_dbo.TitleTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]'))
ALTER TABLE [dbo].[SystemUserTypes] DROP CONSTRAINT [FK_dbo.SystemUserTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]'))
ALTER TABLE [dbo].[SystemUserTypes] DROP CONSTRAINT [FK_dbo.SystemUserTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]'))
ALTER TABLE [dbo].[SystemUserTypeAudits] DROP CONSTRAINT [FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]'))
ALTER TABLE [dbo].[SystemUserTypeAudits] DROP CONSTRAINT [FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUsers_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUsers]'))
ALTER TABLE [dbo].[SystemUsers] DROP CONSTRAINT [FK_dbo.SystemUsers_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUsers_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUsers]'))
ALTER TABLE [dbo].[SystemUsers] DROP CONSTRAINT [FK_dbo.SystemUsers_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserLogTimes_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserLogTimes]'))
ALTER TABLE [dbo].[SystemUserLogTimes] DROP CONSTRAINT [FK_dbo.SystemUserLogTimes_dbo.SystemUsers_SystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]'))
ALTER TABLE [dbo].[SystemUserAudits] DROP CONSTRAINT [FK_dbo.SystemUserAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]'))
ALTER TABLE [dbo].[SystemUserAudits] DROP CONSTRAINT [FK_dbo.SystemUserAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectors_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectors]'))
ALTER TABLE [dbo].[SubSectors] DROP CONSTRAINT [FK_dbo.SubSectors_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectors_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectors]'))
ALTER TABLE [dbo].[SubSectors] DROP CONSTRAINT [FK_dbo.SubSectors_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectors_dbo.FocusAreas_FocusAreaId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectors]'))
ALTER TABLE [dbo].[SubSectors] DROP CONSTRAINT [FK_dbo.SubSectors_dbo.FocusAreas_FocusAreaId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectorAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]'))
ALTER TABLE [dbo].[SubSectorAudits] DROP CONSTRAINT [FK_dbo.SubSectorAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectorAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]'))
ALTER TABLE [dbo].[SubSectorAudits] DROP CONSTRAINT [FK_dbo.SubSectorAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectorAudits_dbo.FocusAreas_FocusAreaId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]'))
ALTER TABLE [dbo].[SubSectorAudits] DROP CONSTRAINT [FK_dbo.SubSectorAudits_dbo.FocusAreas_FocusAreaId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypes]'))
ALTER TABLE [dbo].[StatusTypes] DROP CONSTRAINT [FK_dbo.StatusTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypes]'))
ALTER TABLE [dbo].[StatusTypes] DROP CONSTRAINT [FK_dbo.StatusTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]'))
ALTER TABLE [dbo].[StatusTypeAudits] DROP CONSTRAINT [FK_dbo.StatusTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]'))
ALTER TABLE [dbo].[StatusTypeAudits] DROP CONSTRAINT [FK_dbo.StatusTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusAudits]'))
ALTER TABLE [dbo].[StatusAudits] DROP CONSTRAINT [FK_dbo.StatusAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusAudits]'))
ALTER TABLE [dbo].[StatusAudits] DROP CONSTRAINT [FK_dbo.StatusAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusAudits_dbo.StatusTypes_StatusTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusAudits]'))
ALTER TABLE [dbo].[StatusAudits] DROP CONSTRAINT [FK_dbo.StatusAudits_dbo.StatusTypes_StatusTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Status_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Status]'))
ALTER TABLE [dbo].[Status] DROP CONSTRAINT [FK_dbo.Status_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Status_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Status]'))
ALTER TABLE [dbo].[Status] DROP CONSTRAINT [FK_dbo.Status_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Status_dbo.StatusTypes_StatusTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Status]'))
ALTER TABLE [dbo].[Status] DROP CONSTRAINT [FK_dbo.Status_dbo.StatusTypes_StatusTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]'))
ALTER TABLE [dbo].[ReferenceTypes] DROP CONSTRAINT [FK_dbo.ReferenceTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]'))
ALTER TABLE [dbo].[ReferenceTypes] DROP CONSTRAINT [FK_dbo.ReferenceTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]'))
ALTER TABLE [dbo].[ReferenceTypeAudits] DROP CONSTRAINT [FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]'))
ALTER TABLE [dbo].[ReferenceTypeAudits] DROP CONSTRAINT [FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypes]'))
ALTER TABLE [dbo].[RecipientTypes] DROP CONSTRAINT [FK_dbo.RecipientTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypes]'))
ALTER TABLE [dbo].[RecipientTypes] DROP CONSTRAINT [FK_dbo.RecipientTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]'))
ALTER TABLE [dbo].[RecipientTypeAudits] DROP CONSTRAINT [FK_dbo.RecipientTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]'))
ALTER TABLE [dbo].[RecipientTypeAudits] DROP CONSTRAINT [FK_dbo.RecipientTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] DROP CONSTRAINT [FK_dbo.RatesRebates_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] DROP CONSTRAINT [FK_dbo.RatesRebates_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] DROP CONSTRAINT [FK_dbo.RatesRebates_dbo.SystemUsers_ClerkUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] DROP CONSTRAINT [FK_dbo.RatesRebates_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Executors_ExecutorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] DROP CONSTRAINT [FK_dbo.RatesRebates_dbo.Executors_ExecutorId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Domiciliums_DomiciliumId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] DROP CONSTRAINT [FK_dbo.RatesRebates_dbo.Domiciliums_DomiciliumId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Customers_OwnerCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] DROP CONSTRAINT [FK_dbo.RatesRebates_dbo.Customers_OwnerCustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Customers_ExecutorCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] DROP CONSTRAINT [FK_dbo.RatesRebates_dbo.Customers_ExecutorCustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Customers_ApplicantCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] DROP CONSTRAINT [FK_dbo.RatesRebates_dbo.Customers_ApplicantCustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] DROP CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] DROP CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] DROP CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.RatesRebates_RatesRebateId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] DROP CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.RatesRebates_RatesRebateId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] DROP CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.Properties_PropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] DROP CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] DROP CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] DROP CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] DROP CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.RatesRebates_RatesRebateId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] DROP CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.RatesRebates_RatesRebateId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] DROP CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.Properties_PropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] DROP CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.SystemUsers_ClerkUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Executors_ExecutorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Executors_ExecutorId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Domiciliums_DomiciliumId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Domiciliums_DomiciliumId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Customers_OwnerCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Customers_OwnerCustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Customers_ExecutorCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Customers_ExecutorCustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Customers_ApplicantCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Customers_ApplicantCustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypes]'))
ALTER TABLE [dbo].[QueryTypes] DROP CONSTRAINT [FK_dbo.QueryTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypes]'))
ALTER TABLE [dbo].[QueryTypes] DROP CONSTRAINT [FK_dbo.QueryTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]'))
ALTER TABLE [dbo].[QueryTypeAudits] DROP CONSTRAINT [FK_dbo.QueryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]'))
ALTER TABLE [dbo].[QueryTypeAudits] DROP CONSTRAINT [FK_dbo.QueryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryAudits]'))
ALTER TABLE [dbo].[QueryAudits] DROP CONSTRAINT [FK_dbo.QueryAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryAudits]'))
ALTER TABLE [dbo].[QueryAudits] DROP CONSTRAINT [FK_dbo.QueryAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryAudits]'))
ALTER TABLE [dbo].[QueryAudits] DROP CONSTRAINT [FK_dbo.QueryAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries] DROP CONSTRAINT [FK_dbo.Queries_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries] DROP CONSTRAINT [FK_dbo.Queries_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries] DROP CONSTRAINT [FK_dbo.Queries_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.QueryTypes_QueryTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries] DROP CONSTRAINT [FK_dbo.Queries_dbo.QueryTypes_QueryTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues] DROP CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues] DROP CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues] DROP CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.InvestmentValues_InvestmentValueId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues] DROP CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.InvestmentValues_InvestmentValueId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.InvestmentValues_InvestmentValueId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.InvestmentValues_InvestmentValueId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestments_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]'))
ALTER TABLE [dbo].[PropertyInvestments] DROP CONSTRAINT [FK_dbo.PropertyInvestments_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestments_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]'))
ALTER TABLE [dbo].[PropertyInvestments] DROP CONSTRAINT [FK_dbo.PropertyInvestments_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestments_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]'))
ALTER TABLE [dbo].[PropertyInvestments] DROP CONSTRAINT [FK_dbo.PropertyInvestments_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements] DROP CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements] DROP CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements] DROP CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements] DROP CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.MeasurementTypes_MeasurementTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements] DROP CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.MeasurementTypes_MeasurementTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.MeasurementTypes_MeasurementTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.MeasurementTypes_MeasurementTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentAudits] DROP CONSTRAINT [FK_dbo.PropertyInvestmentAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAudits]'))
ALTER TABLE [dbo].[PropertyAudits] DROP CONSTRAINT [FK_dbo.PropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAudits]'))
ALTER TABLE [dbo].[PropertyAudits] DROP CONSTRAINT [FK_dbo.PropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAudits]'))
ALTER TABLE [dbo].[PropertyAudits] DROP CONSTRAINT [FK_dbo.PropertyAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts] DROP CONSTRAINT [FK_dbo.PropertyAccounts_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts] DROP CONSTRAINT [FK_dbo.PropertyAccounts_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts] DROP CONSTRAINT [FK_dbo.PropertyAccounts_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts] DROP CONSTRAINT [FK_dbo.PropertyAccounts_dbo.Properties_PropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.AccountTypes_AccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts] DROP CONSTRAINT [FK_dbo.PropertyAccounts_dbo.AccountTypes_AccountTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits] DROP CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits] DROP CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits] DROP CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits] DROP CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.Properties_PropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.AccountTypes_AccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits] DROP CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.AccountTypes_AccountTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Properties_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Properties]'))
ALTER TABLE [dbo].[Properties] DROP CONSTRAINT [FK_dbo.Properties_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Properties_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Properties]'))
ALTER TABLE [dbo].[Properties] DROP CONSTRAINT [FK_dbo.Properties_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Properties_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Properties]'))
ALTER TABLE [dbo].[Properties] DROP CONSTRAINT [FK_dbo.Properties_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypes]'))
ALTER TABLE [dbo].[NoteTypes] DROP CONSTRAINT [FK_dbo.NoteTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypes]'))
ALTER TABLE [dbo].[NoteTypes] DROP CONSTRAINT [FK_dbo.NoteTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]'))
ALTER TABLE [dbo].[NoteTypeAudits] DROP CONSTRAINT [FK_dbo.NoteTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]'))
ALTER TABLE [dbo].[NoteTypeAudits] DROP CONSTRAINT [FK_dbo.NoteTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes] DROP CONSTRAINT [FK_dbo.Notes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes] DROP CONSTRAINT [FK_dbo.Notes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes] DROP CONSTRAINT [FK_dbo.Notes_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.NoteTypes_NoteTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes] DROP CONSTRAINT [FK_dbo.Notes_dbo.NoteTypes_NoteTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits] DROP CONSTRAINT [FK_dbo.NoteAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits] DROP CONSTRAINT [FK_dbo.NoteAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits] DROP CONSTRAINT [FK_dbo.NoteAudits_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.NoteTypes_NoteTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits] DROP CONSTRAINT [FK_dbo.NoteAudits_dbo.NoteTypes_NoteTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]'))
ALTER TABLE [dbo].[MeasurementTypes] DROP CONSTRAINT [FK_dbo.MeasurementTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]'))
ALTER TABLE [dbo].[MeasurementTypes] DROP CONSTRAINT [FK_dbo.MeasurementTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]'))
ALTER TABLE [dbo].[MeasurementTypeAudits] DROP CONSTRAINT [FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]'))
ALTER TABLE [dbo].[MeasurementTypeAudits] DROP CONSTRAINT [FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypes]'))
ALTER TABLE [dbo].[LogTypes] DROP CONSTRAINT [FK_dbo.LogTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypes]'))
ALTER TABLE [dbo].[LogTypes] DROP CONSTRAINT [FK_dbo.LogTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]'))
ALTER TABLE [dbo].[LogTypeAudits] DROP CONSTRAINT [FK_dbo.LogTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]'))
ALTER TABLE [dbo].[LogTypeAudits] DROP CONSTRAINT [FK_dbo.LogTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs] DROP CONSTRAINT [FK_dbo.Logs_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs] DROP CONSTRAINT [FK_dbo.Logs_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs] DROP CONSTRAINT [FK_dbo.Logs_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.LogTypes_LogTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs] DROP CONSTRAINT [FK_dbo.Logs_dbo.LogTypes_LogTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits] DROP CONSTRAINT [FK_dbo.LogAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits] DROP CONSTRAINT [FK_dbo.LogAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits] DROP CONSTRAINT [FK_dbo.LogAudits_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.LogTypes_LogTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits] DROP CONSTRAINT [FK_dbo.LogAudits_dbo.LogTypes_LogTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypes]'))
ALTER TABLE [dbo].[LocationTypes] DROP CONSTRAINT [FK_dbo.LocationTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypes]'))
ALTER TABLE [dbo].[LocationTypes] DROP CONSTRAINT [FK_dbo.LocationTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]'))
ALTER TABLE [dbo].[LocationTypeAudits] DROP CONSTRAINT [FK_dbo.LocationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]'))
ALTER TABLE [dbo].[LocationTypeAudits] DROP CONSTRAINT [FK_dbo.LocationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails] DROP CONSTRAINT [FK_dbo.LinkedEmails_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails] DROP CONSTRAINT [FK_dbo.LinkedEmails_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails] DROP CONSTRAINT [FK_dbo.LinkedEmails_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails] DROP CONSTRAINT [FK_dbo.LinkedEmails_dbo.RecipientTypes_RecipientTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.LinkedAccounts_LinkedAccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails] DROP CONSTRAINT [FK_dbo.LinkedEmails_dbo.LinkedAccounts_LinkedAccountId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits] DROP CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits] DROP CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits] DROP CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits] DROP CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.RecipientTypes_RecipientTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.LinkedAccounts_LinkedAccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits] DROP CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.LinkedAccounts_LinkedAccountId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]'))
ALTER TABLE [dbo].[LinkedAccountTypes] DROP CONSTRAINT [FK_dbo.LinkedAccountTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]'))
ALTER TABLE [dbo].[LinkedAccountTypes] DROP CONSTRAINT [FK_dbo.LinkedAccountTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]'))
ALTER TABLE [dbo].[LinkedAccountTypeAudits] DROP CONSTRAINT [FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]'))
ALTER TABLE [dbo].[LinkedAccountTypeAudits] DROP CONSTRAINT [FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] DROP CONSTRAINT [FK_dbo.LinkedAccounts_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] DROP CONSTRAINT [FK_dbo.LinkedAccounts_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] DROP CONSTRAINT [FK_dbo.LinkedAccounts_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] DROP CONSTRAINT [FK_dbo.LinkedAccounts_dbo.RecipientTypes_RecipientTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.LinkedAccountTypes_LinkedAccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] DROP CONSTRAINT [FK_dbo.LinkedAccounts_dbo.LinkedAccountTypes_LinkedAccountTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] DROP CONSTRAINT [FK_dbo.LinkedAccounts_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.Accounts_AccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] DROP CONSTRAINT [FK_dbo.LinkedAccounts_dbo.Accounts_AccountId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] DROP CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] DROP CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] DROP CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] DROP CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.RecipientTypes_RecipientTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.LinkedAccountTypes_LinkedAccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] DROP CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.LinkedAccountTypes_LinkedAccountTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] DROP CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.Accounts_AccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] DROP CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.Accounts_AccountId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]'))
ALTER TABLE [dbo].[InvestmentValueTypes] DROP CONSTRAINT [FK_dbo.InvestmentValueTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]'))
ALTER TABLE [dbo].[InvestmentValueTypes] DROP CONSTRAINT [FK_dbo.InvestmentValueTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]'))
ALTER TABLE [dbo].[InvestmentValueTypeAudits] DROP CONSTRAINT [FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]'))
ALTER TABLE [dbo].[InvestmentValueTypeAudits] DROP CONSTRAINT [FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValues]'))
ALTER TABLE [dbo].[InvestmentValues] DROP CONSTRAINT [FK_dbo.InvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValues_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValues]'))
ALTER TABLE [dbo].[InvestmentValues] DROP CONSTRAINT [FK_dbo.InvestmentValues_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValues_dbo.InvestmentValueTypes_InvestmentValueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValues]'))
ALTER TABLE [dbo].[InvestmentValues] DROP CONSTRAINT [FK_dbo.InvestmentValues_dbo.InvestmentValueTypes_InvestmentValueTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]'))
ALTER TABLE [dbo].[InvestmentValueAudits] DROP CONSTRAINT [FK_dbo.InvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]'))
ALTER TABLE [dbo].[InvestmentValueAudits] DROP CONSTRAINT [FK_dbo.InvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueAudits_dbo.InvestmentValueTypes_InvestmentValueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]'))
ALTER TABLE [dbo].[InvestmentValueAudits] DROP CONSTRAINT [FK_dbo.InvestmentValueAudits_dbo.InvestmentValueTypes_InvestmentValueTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditures] DROP CONSTRAINT [FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditures] DROP CONSTRAINT [FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditures_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditures] DROP CONSTRAINT [FK_dbo.InvestmentOperationalExpenditures_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditureAudits] DROP CONSTRAINT [FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditureAudits] DROP CONSTRAINT [FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditureAudits_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditureAudits] DROP CONSTRAINT [FK_dbo.InvestmentOperationalExpenditureAudits_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IndustryAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IndustryAudits]'))
ALTER TABLE [dbo].[IndustryAudits] DROP CONSTRAINT [FK_dbo.IndustryAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IndustryAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IndustryAudits]'))
ALTER TABLE [dbo].[IndustryAudits] DROP CONSTRAINT [FK_dbo.IndustryAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IndustryAudits_dbo.SubSectors_SubSectorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IndustryAudits]'))
ALTER TABLE [dbo].[IndustryAudits] DROP CONSTRAINT [FK_dbo.IndustryAudits_dbo.SubSectors_SubSectorId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Industries_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Industries]'))
ALTER TABLE [dbo].[Industries] DROP CONSTRAINT [FK_dbo.Industries_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Industries_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Industries]'))
ALTER TABLE [dbo].[Industries] DROP CONSTRAINT [FK_dbo.Industries_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Industries_dbo.SubSectors_SubSectorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Industries]'))
ALTER TABLE [dbo].[Industries] DROP CONSTRAINT [FK_dbo.Industries_dbo.SubSectors_SubSectorId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.Properties_PropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.IncentivePolicies_IncentivePolicyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.IncentivePolicies_IncentivePolicyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties] DROP CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties] DROP CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties] DROP CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties] DROP CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.Properties_PropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.IncentivePolicies_IncentivePolicyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties] DROP CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.IncentivePolicies_IncentivePolicyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ClerkUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.Industries_IndustryId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.Industries_IndustryId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.CategoryTypes_CategoryTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] DROP CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.CategoryTypes_CategoryTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] DROP CONSTRAINT [FK_dbo.IncentivePolicies_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] DROP CONSTRAINT [FK_dbo.IncentivePolicies_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] DROP CONSTRAINT [FK_dbo.IncentivePolicies_dbo.SystemUsers_ClerkUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] DROP CONSTRAINT [FK_dbo.IncentivePolicies_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.Industries_IndustryId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] DROP CONSTRAINT [FK_dbo.IncentivePolicies_dbo.Industries_IndustryId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] DROP CONSTRAINT [FK_dbo.IncentivePolicies_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.CategoryTypes_CategoryTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] DROP CONSTRAINT [FK_dbo.IncentivePolicies_dbo.CategoryTypes_CategoryTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]'))
ALTER TABLE [dbo].[IdentificationTypes] DROP CONSTRAINT [FK_dbo.IdentificationTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]'))
ALTER TABLE [dbo].[IdentificationTypes] DROP CONSTRAINT [FK_dbo.IdentificationTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]'))
ALTER TABLE [dbo].[IdentificationTypeAudits] DROP CONSTRAINT [FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]'))
ALTER TABLE [dbo].[IdentificationTypeAudits] DROP CONSTRAINT [FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreas_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreas]'))
ALTER TABLE [dbo].[FocusAreas] DROP CONSTRAINT [FK_dbo.FocusAreas_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreas_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreas]'))
ALTER TABLE [dbo].[FocusAreas] DROP CONSTRAINT [FK_dbo.FocusAreas_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreaAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]'))
ALTER TABLE [dbo].[FocusAreaAudits] DROP CONSTRAINT [FK_dbo.FocusAreaAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreaAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]'))
ALTER TABLE [dbo].[FocusAreaAudits] DROP CONSTRAINT [FK_dbo.FocusAreaAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Files_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Files]'))
ALTER TABLE [dbo].[Files] DROP CONSTRAINT [FK_dbo.Files_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Files_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Files]'))
ALTER TABLE [dbo].[Files] DROP CONSTRAINT [FK_dbo.Files_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Executors_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Executors]'))
ALTER TABLE [dbo].[Executors] DROP CONSTRAINT [FK_dbo.Executors_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Executors_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Executors]'))
ALTER TABLE [dbo].[Executors] DROP CONSTRAINT [FK_dbo.Executors_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Executors_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Executors]'))
ALTER TABLE [dbo].[Executors] DROP CONSTRAINT [FK_dbo.Executors_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ExecutorAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]'))
ALTER TABLE [dbo].[ExecutorAudits] DROP CONSTRAINT [FK_dbo.ExecutorAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ExecutorAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]'))
ALTER TABLE [dbo].[ExecutorAudits] DROP CONSTRAINT [FK_dbo.ExecutorAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ExecutorAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]'))
ALTER TABLE [dbo].[ExecutorAudits] DROP CONSTRAINT [FK_dbo.ExecutorAudits_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypes]'))
ALTER TABLE [dbo].[EntityTypes] DROP CONSTRAINT [FK_dbo.EntityTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypes]'))
ALTER TABLE [dbo].[EntityTypes] DROP CONSTRAINT [FK_dbo.EntityTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]'))
ALTER TABLE [dbo].[EntityTypeAudits] DROP CONSTRAINT [FK_dbo.EntityTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]'))
ALTER TABLE [dbo].[EntityTypeAudits] DROP CONSTRAINT [FK_dbo.EntityTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits] DROP CONSTRAINT [FK_dbo.EntityAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits] DROP CONSTRAINT [FK_dbo.EntityAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits] DROP CONSTRAINT [FK_dbo.EntityAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.EntityTypes_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits] DROP CONSTRAINT [FK_dbo.EntityAudits_dbo.EntityTypes_EntityTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits] DROP CONSTRAINT [FK_dbo.EntityAudits_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents] DROP CONSTRAINT [FK_dbo.EntityAgents_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents] DROP CONSTRAINT [FK_dbo.EntityAgents_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.Entities_EntityId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents] DROP CONSTRAINT [FK_dbo.EntityAgents_dbo.Entities_EntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents] DROP CONSTRAINT [FK_dbo.EntityAgents_dbo.Agents_AgentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits] DROP CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits] DROP CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.Entities_EntityId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits] DROP CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.Entities_EntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits] DROP CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.Agents_AgentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities] DROP CONSTRAINT [FK_dbo.Entities_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities] DROP CONSTRAINT [FK_dbo.Entities_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities] DROP CONSTRAINT [FK_dbo.Entities_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.EntityTypes_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities] DROP CONSTRAINT [FK_dbo.Entities_dbo.EntityTypes_EntityTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities] DROP CONSTRAINT [FK_dbo.Entities_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Domiciliums_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Domiciliums]'))
ALTER TABLE [dbo].[Domiciliums] DROP CONSTRAINT [FK_dbo.Domiciliums_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Domiciliums_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Domiciliums]'))
ALTER TABLE [dbo].[Domiciliums] DROP CONSTRAINT [FK_dbo.Domiciliums_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DomiciliumAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]'))
ALTER TABLE [dbo].[DomiciliumAudits] DROP CONSTRAINT [FK_dbo.DomiciliumAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DomiciliumAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]'))
ALTER TABLE [dbo].[DomiciliumAudits] DROP CONSTRAINT [FK_dbo.DomiciliumAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypes]'))
ALTER TABLE [dbo].[DocumentTypes] DROP CONSTRAINT [FK_dbo.DocumentTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypes]'))
ALTER TABLE [dbo].[DocumentTypes] DROP CONSTRAINT [FK_dbo.DocumentTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]'))
ALTER TABLE [dbo].[DocumentTypeAudits] DROP CONSTRAINT [FK_dbo.DocumentTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]'))
ALTER TABLE [dbo].[DocumentTypeAudits] DROP CONSTRAINT [FK_dbo.DocumentTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] DROP CONSTRAINT [FK_dbo.Documents_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] DROP CONSTRAINT [FK_dbo.Documents_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] DROP CONSTRAINT [FK_dbo.Documents_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] DROP CONSTRAINT [FK_dbo.Documents_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.LocationTypes_LocationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] DROP CONSTRAINT [FK_dbo.Documents_dbo.LocationTypes_LocationTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.Files_FileId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] DROP CONSTRAINT [FK_dbo.Documents_dbo.Files_FileId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.DocumentCheckLists_DocumentCheckListId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] DROP CONSTRAINT [FK_dbo.Documents_dbo.DocumentCheckLists_DocumentCheckListId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] DROP CONSTRAINT [FK_dbo.Documents_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences] DROP CONSTRAINT [FK_dbo.DocumentReferences_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences] DROP CONSTRAINT [FK_dbo.DocumentReferences_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences] DROP CONSTRAINT [FK_dbo.DocumentReferences_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.Documents_DocumentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences] DROP CONSTRAINT [FK_dbo.DocumentReferences_dbo.Documents_DocumentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences] DROP CONSTRAINT [FK_dbo.DocumentReferences_dbo.Applications_ApplicationId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits] DROP CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits] DROP CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits] DROP CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.Documents_DocumentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits] DROP CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.Documents_DocumentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits] DROP CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.Applications_ApplicationId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists] DROP CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists] DROP CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists] DROP CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.DocumentTypes_DocumentTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists] DROP CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.DocumentTypes_DocumentTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists] DROP CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.Applications_ApplicationId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits] DROP CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits] DROP CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits] DROP CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.DocumentTypes_DocumentTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits] DROP CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.DocumentTypes_DocumentTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits] DROP CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.Applications_ApplicationId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] DROP CONSTRAINT [FK_dbo.DocumentAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] DROP CONSTRAINT [FK_dbo.DocumentAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] DROP CONSTRAINT [FK_dbo.DocumentAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] DROP CONSTRAINT [FK_dbo.DocumentAudits_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.LocationTypes_LocationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] DROP CONSTRAINT [FK_dbo.DocumentAudits_dbo.LocationTypes_LocationTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.Files_FileId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] DROP CONSTRAINT [FK_dbo.DocumentAudits_dbo.Files_FileId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.DocumentCheckLists_DocumentCheckListId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] DROP CONSTRAINT [FK_dbo.DocumentAudits_dbo.DocumentCheckLists_DocumentCheckListId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] DROP CONSTRAINT [FK_dbo.DocumentAudits_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypes]'))
ALTER TABLE [dbo].[CustomerTypes] DROP CONSTRAINT [FK_dbo.CustomerTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypes]'))
ALTER TABLE [dbo].[CustomerTypes] DROP CONSTRAINT [FK_dbo.CustomerTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]'))
ALTER TABLE [dbo].[CustomerTypeAudits] DROP CONSTRAINT [FK_dbo.CustomerTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]'))
ALTER TABLE [dbo].[CustomerTypeAudits] DROP CONSTRAINT [FK_dbo.CustomerTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_dbo.Customers_dbo.TitleTypes_TitleTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_dbo.Customers_dbo.SystemUsers_SystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_dbo.Customers_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_dbo.Customers_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_dbo.Customers_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_dbo.Customers_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_dbo.Customers_dbo.CustomerTypes_CustomerTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_dbo.Customers_dbo.Countries_CountryOfIssueTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] DROP CONSTRAINT [FK_dbo.CustomerAudits_dbo.TitleTypes_TitleTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] DROP CONSTRAINT [FK_dbo.CustomerAudits_dbo.SystemUsers_SystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] DROP CONSTRAINT [FK_dbo.CustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] DROP CONSTRAINT [FK_dbo.CustomerAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] DROP CONSTRAINT [FK_dbo.CustomerAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] DROP CONSTRAINT [FK_dbo.CustomerAudits_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] DROP CONSTRAINT [FK_dbo.CustomerAudits_dbo.CustomerTypes_CustomerTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] DROP CONSTRAINT [FK_dbo.CustomerAudits_dbo.Countries_CountryOfIssueTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CountryAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CountryAudits]'))
ALTER TABLE [dbo].[CountryAudits] DROP CONSTRAINT [FK_dbo.CountryAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CountryAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CountryAudits]'))
ALTER TABLE [dbo].[CountryAudits] DROP CONSTRAINT [FK_dbo.CountryAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Countries_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Countries]'))
ALTER TABLE [dbo].[Countries] DROP CONSTRAINT [FK_dbo.Countries_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Countries_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Countries]'))
ALTER TABLE [dbo].[Countries] DROP CONSTRAINT [FK_dbo.Countries_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypes]'))
ALTER TABLE [dbo].[CategoryTypes] DROP CONSTRAINT [FK_dbo.CategoryTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypes]'))
ALTER TABLE [dbo].[CategoryTypes] DROP CONSTRAINT [FK_dbo.CategoryTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]'))
ALTER TABLE [dbo].[CategoryTypeAudits] DROP CONSTRAINT [FK_dbo.CategoryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]'))
ALTER TABLE [dbo].[CategoryTypeAudits] DROP CONSTRAINT [FK_dbo.CategoryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BillDirectories_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillDirectories]'))
ALTER TABLE [dbo].[BillDirectories] DROP CONSTRAINT [FK_dbo.BillDirectories_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BillDirectories_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillDirectories]'))
ALTER TABLE [dbo].[BillDirectories] DROP CONSTRAINT [FK_dbo.BillDirectories_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Audits_dbo.SystemUsers_AuditBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Audits]'))
ALTER TABLE [dbo].[Audits] DROP CONSTRAINT [FK_dbo.Audits_dbo.SystemUsers_AuditBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUsers_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUsers]'))
ALTER TABLE [dbo].[AspNetUsers] DROP CONSTRAINT [FK_dbo.AspNetUsers_dbo.SystemUsers_SystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettings_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettings]'))
ALTER TABLE [dbo].[AppSettings] DROP CONSTRAINT [FK_dbo.AppSettings_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettings_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettings]'))
ALTER TABLE [dbo].[AppSettings] DROP CONSTRAINT [FK_dbo.AppSettings_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettingAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]'))
ALTER TABLE [dbo].[AppSettingAudits] DROP CONSTRAINT [FK_dbo.AppSettingAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettingAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]'))
ALTER TABLE [dbo].[AppSettingAudits] DROP CONSTRAINT [FK_dbo.AppSettingAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles] DROP CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.SystemUsers_SystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles] DROP CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles] DROP CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles] DROP CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles] DROP CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.Applications_ApplicationId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits] DROP CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_SystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits] DROP CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits] DROP CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits] DROP CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits] DROP CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.Applications_ApplicationId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Applications_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Applications]'))
ALTER TABLE [dbo].[Applications] DROP CONSTRAINT [FK_dbo.Applications_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Applications_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Applications]'))
ALTER TABLE [dbo].[Applications] DROP CONSTRAINT [FK_dbo.Applications_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles] DROP CONSTRAINT [FK_dbo.ApplicationRoles_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles] DROP CONSTRAINT [FK_dbo.ApplicationRoles_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles] DROP CONSTRAINT [FK_dbo.ApplicationRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles] DROP CONSTRAINT [FK_dbo.ApplicationRoles_dbo.Applications_ApplicationId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits] DROP CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits] DROP CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits] DROP CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits] DROP CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.Applications_ApplicationId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]'))
ALTER TABLE [dbo].[ApplicationAudits] DROP CONSTRAINT [FK_dbo.ApplicationAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]'))
ALTER TABLE [dbo].[ApplicationAudits] DROP CONSTRAINT [FK_dbo.ApplicationAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] DROP CONSTRAINT [FK_dbo.Agents_dbo.TitleTypes_TitleTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] DROP CONSTRAINT [FK_dbo.Agents_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] DROP CONSTRAINT [FK_dbo.Agents_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] DROP CONSTRAINT [FK_dbo.Agents_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] DROP CONSTRAINT [FK_dbo.Agents_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] DROP CONSTRAINT [FK_dbo.Agents_dbo.CustomerTypes_CustomerTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] DROP CONSTRAINT [FK_dbo.Agents_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] DROP CONSTRAINT [FK_dbo.Agents_dbo.Countries_CountryOfIssueTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers] DROP CONSTRAINT [FK_dbo.AgentCustomers_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers] DROP CONSTRAINT [FK_dbo.AgentCustomers_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers] DROP CONSTRAINT [FK_dbo.AgentCustomers_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers] DROP CONSTRAINT [FK_dbo.AgentCustomers_dbo.Agents_AgentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits] DROP CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits] DROP CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits] DROP CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits] DROP CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.Agents_AgentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] DROP CONSTRAINT [FK_dbo.AgentAudits_dbo.TitleTypes_TitleTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] DROP CONSTRAINT [FK_dbo.AgentAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] DROP CONSTRAINT [FK_dbo.AgentAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] DROP CONSTRAINT [FK_dbo.AgentAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] DROP CONSTRAINT [FK_dbo.AgentAudits_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] DROP CONSTRAINT [FK_dbo.AgentAudits_dbo.CustomerTypes_CustomerTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] DROP CONSTRAINT [FK_dbo.AgentAudits_dbo.Customers_CustomerId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] DROP CONSTRAINT [FK_dbo.AgentAudits_dbo.Countries_CountryOfIssueTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.Properties_PropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.Countries_CountryOfIssueTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.Properties_PropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] DROP CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.Countries_CountryOfIssueTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts] DROP CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.TitleTypes_TitleTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts] DROP CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts] DROP CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts] DROP CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits] DROP CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.TitleTypes_TitleTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits] DROP CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits] DROP CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits] DROP CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypes]'))
ALTER TABLE [dbo].[AccountTypes] DROP CONSTRAINT [FK_dbo.AccountTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypes]'))
ALTER TABLE [dbo].[AccountTypes] DROP CONSTRAINT [FK_dbo.AccountTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]'))
ALTER TABLE [dbo].[AccountTypeAudits] DROP CONSTRAINT [FK_dbo.AccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]'))
ALTER TABLE [dbo].[AccountTypeAudits] DROP CONSTRAINT [FK_dbo.AccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts] DROP CONSTRAINT [FK_dbo.Accounts_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts] DROP CONSTRAINT [FK_dbo.Accounts_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts] DROP CONSTRAINT [FK_dbo.Accounts_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts] DROP CONSTRAINT [FK_dbo.Accounts_dbo.Properties_PropertyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits] DROP CONSTRAINT [FK_dbo.AccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits] DROP CONSTRAINT [FK_dbo.AccountAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits] DROP CONSTRAINT [FK_dbo.AccountAudits_dbo.Status_StatusId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits] DROP CONSTRAINT [FK_dbo.AccountAudits_dbo.Properties_PropertyId]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__SystemUse__IsTem__278EDA44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SystemUsers] DROP CONSTRAINT [DF__SystemUse__IsTem__278EDA44]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__SystemUse__IsTem__38B96646]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SystemUserAudits] DROP CONSTRAINT [DF__SystemUse__IsTem__38B96646]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__RatesReba__IsCon__658C0CBD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RatesRebates] DROP CONSTRAINT [DF__RatesReba__IsCon__658C0CBD]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__RatesReba__IsCon__6497E884]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [DF__RatesReba__IsCon__6497E884]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__RatesReba__IsMan__2882FE7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RatesRebateAudits] DROP CONSTRAINT [DF__RatesReba__IsMan__2882FE7D]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__QueryAudi__Resol__37C5420D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QueryAudits] DROP CONSTRAINT [DF__QueryAudi__Resol__37C5420D]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__PropertyA__Marke__09946309]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PropertyAudits] DROP CONSTRAINT [DF__PropertyA__Marke__09946309]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Propertie__Marke__63A3C44B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Properties] DROP CONSTRAINT [DF__Propertie__Marke__63A3C44B]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ELMAH_Error_ErrorId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ELMAH_Error] DROP CONSTRAINT [DF_ELMAH_Error_ErrorId]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AccountAu__IsRMS__22CA2527]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AccountAudits] DROP CONSTRAINT [DF__AccountAu__IsRMS__22CA2527]
END

GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[UnitOfmeasureTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[UnitOfmeasureTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[UnitOfmeasureTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[UnitOfmeasureTypeAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[TitleTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[TitleTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[TitleTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[TitleTypeAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SystemUserTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[SystemUserTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SystemUserTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[SystemUserTypeAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUsers]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SystemUsers]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUsers]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[SystemUsers]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserLogTimes]') AND name = N'IX_SystemUserId')
DROP INDEX [IX_SystemUserId] ON [dbo].[SystemUserLogTimes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SystemUserAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[SystemUserAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectors]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SubSectors]
GO
/****** Object:  Index [IX_FocusAreaId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectors]') AND name = N'IX_FocusAreaId')
DROP INDEX [IX_FocusAreaId] ON [dbo].[SubSectors]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectors]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[SubSectors]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SubSectorAudits]
GO
/****** Object:  Index [IX_FocusAreaId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]') AND name = N'IX_FocusAreaId')
DROP INDEX [IX_FocusAreaId] ON [dbo].[SubSectorAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[SubSectorAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[StatusTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[StatusTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[StatusTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[StatusTypeAudits]
GO
/****** Object:  Index [IX_StatusTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusAudits]') AND name = N'IX_StatusTypeId')
DROP INDEX [IX_StatusTypeId] ON [dbo].[StatusAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[StatusAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[StatusAudits]
GO
/****** Object:  Index [IX_StatusTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND name = N'IX_StatusTypeId')
DROP INDEX [IX_StatusTypeId] ON [dbo].[Status]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Status]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Status]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ReferenceTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[ReferenceTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ReferenceTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[ReferenceTypeAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RecipientTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[RecipientTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RecipientTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[RecipientTypeAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[RatesRebates]
GO
/****** Object:  Index [IX_OwnerCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_OwnerCustomerId')
DROP INDEX [IX_OwnerCustomerId] ON [dbo].[RatesRebates]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RatesRebates]
GO
/****** Object:  Index [IX_ExecutorId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_ExecutorId')
DROP INDEX [IX_ExecutorId] ON [dbo].[RatesRebates]
GO
/****** Object:  Index [IX_ExecutorCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_ExecutorCustomerId')
DROP INDEX [IX_ExecutorCustomerId] ON [dbo].[RatesRebates]
GO
/****** Object:  Index [IX_DomiciliumId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_DomiciliumId')
DROP INDEX [IX_DomiciliumId] ON [dbo].[RatesRebates]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[RatesRebates]
GO
/****** Object:  Index [IX_ClerkUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_ClerkUserId')
DROP INDEX [IX_ClerkUserId] ON [dbo].[RatesRebates]
GO
/****** Object:  Index [IX_ApplicantCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_ApplicantCustomerId')
DROP INDEX [IX_ApplicantCustomerId] ON [dbo].[RatesRebates]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[RatesRebatePropertyAudits]
GO
/****** Object:  Index [IX_RatesRebateId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_RatesRebateId')
DROP INDEX [IX_RatesRebateId] ON [dbo].[RatesRebatePropertyAudits]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_PropertyId')
DROP INDEX [IX_PropertyId] ON [dbo].[RatesRebatePropertyAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RatesRebatePropertyAudits]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[RatesRebatePropertyAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[RatesRebatePropertyAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[RatesRebateProperties]
GO
/****** Object:  Index [IX_RatesRebateId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_RatesRebateId')
DROP INDEX [IX_RatesRebateId] ON [dbo].[RatesRebateProperties]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_PropertyId')
DROP INDEX [IX_PropertyId] ON [dbo].[RatesRebateProperties]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RatesRebateProperties]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[RatesRebateProperties]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[RatesRebateProperties]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[RatesRebateAudits]
GO
/****** Object:  Index [IX_OwnerCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_OwnerCustomerId')
DROP INDEX [IX_OwnerCustomerId] ON [dbo].[RatesRebateAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RatesRebateAudits]
GO
/****** Object:  Index [IX_ExecutorId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_ExecutorId')
DROP INDEX [IX_ExecutorId] ON [dbo].[RatesRebateAudits]
GO
/****** Object:  Index [IX_ExecutorCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_ExecutorCustomerId')
DROP INDEX [IX_ExecutorCustomerId] ON [dbo].[RatesRebateAudits]
GO
/****** Object:  Index [IX_DomiciliumId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_DomiciliumId')
DROP INDEX [IX_DomiciliumId] ON [dbo].[RatesRebateAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[RatesRebateAudits]
GO
/****** Object:  Index [IX_ClerkUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_ClerkUserId')
DROP INDEX [IX_ClerkUserId] ON [dbo].[RatesRebateAudits]
GO
/****** Object:  Index [IX_ApplicantCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_ApplicantCustomerId')
DROP INDEX [IX_ApplicantCustomerId] ON [dbo].[RatesRebateAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[QueryTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[QueryTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[QueryTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[QueryTypeAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[QueryAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[QueryAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[QueryAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Queries]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[Queries]
GO
/****** Object:  Index [IX_QueryTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Queries]') AND name = N'IX_QueryTypeId')
DROP INDEX [IX_QueryTypeId] ON [dbo].[Queries]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Queries]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Queries]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Queries]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Queries]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]') AND name = N'IX_PropertyInvestmentId')
DROP INDEX [IX_PropertyInvestmentId] ON [dbo].[PropertyInvestmentValues]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestmentValues]
GO
/****** Object:  Index [IX_InvestmentValueId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]') AND name = N'IX_InvestmentValueId')
DROP INDEX [IX_InvestmentValueId] ON [dbo].[PropertyInvestmentValues]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestmentValues]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]') AND name = N'IX_PropertyInvestmentId')
DROP INDEX [IX_PropertyInvestmentId] ON [dbo].[PropertyInvestmentValueAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestmentValueAudits]
GO
/****** Object:  Index [IX_InvestmentValueId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]') AND name = N'IX_InvestmentValueId')
DROP INDEX [IX_InvestmentValueId] ON [dbo].[PropertyInvestmentValueAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestmentValueAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestments]
GO
/****** Object:  Index [IX_IncentivePolicyPropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]') AND name = N'IX_IncentivePolicyPropertyId')
DROP INDEX [IX_IncentivePolicyPropertyId] ON [dbo].[PropertyInvestments]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestments]
GO
/****** Object:  Index [IX_UnitOfMeasureTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND name = N'IX_UnitOfMeasureTypeId')
DROP INDEX [IX_UnitOfMeasureTypeId] ON [dbo].[PropertyInvestmentMeasurements]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND name = N'IX_PropertyInvestmentId')
DROP INDEX [IX_PropertyInvestmentId] ON [dbo].[PropertyInvestmentMeasurements]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestmentMeasurements]
GO
/****** Object:  Index [IX_MeasurementTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND name = N'IX_MeasurementTypeId')
DROP INDEX [IX_MeasurementTypeId] ON [dbo].[PropertyInvestmentMeasurements]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestmentMeasurements]
GO
/****** Object:  Index [IX_UnitOfMeasureTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND name = N'IX_UnitOfMeasureTypeId')
DROP INDEX [IX_UnitOfMeasureTypeId] ON [dbo].[PropertyInvestmentMeasurementAudits]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND name = N'IX_PropertyInvestmentId')
DROP INDEX [IX_PropertyInvestmentId] ON [dbo].[PropertyInvestmentMeasurementAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestmentMeasurementAudits]
GO
/****** Object:  Index [IX_MeasurementTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND name = N'IX_MeasurementTypeId')
DROP INDEX [IX_MeasurementTypeId] ON [dbo].[PropertyInvestmentMeasurementAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestmentMeasurementAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestmentAudits]
GO
/****** Object:  Index [IX_IncentivePolicyPropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]') AND name = N'IX_IncentivePolicyPropertyId')
DROP INDEX [IX_IncentivePolicyPropertyId] ON [dbo].[PropertyInvestmentAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestmentAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[PropertyAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[PropertyAccounts]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND name = N'IX_PropertyId')
DROP INDEX [IX_PropertyId] ON [dbo].[PropertyAccounts]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyAccounts]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyAccounts]
GO
/****** Object:  Index [IX_AccountTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND name = N'IX_AccountTypeId')
DROP INDEX [IX_AccountTypeId] ON [dbo].[PropertyAccounts]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[PropertyAccountAudits]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND name = N'IX_PropertyId')
DROP INDEX [IX_PropertyId] ON [dbo].[PropertyAccountAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyAccountAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyAccountAudits]
GO
/****** Object:  Index [IX_AccountTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND name = N'IX_AccountTypeId')
DROP INDEX [IX_AccountTypeId] ON [dbo].[PropertyAccountAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Properties]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[Properties]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Properties]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Properties]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Properties]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Properties]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[NoteTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[NoteTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[NoteTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[NoteTypeAudits]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Notes]') AND name = N'IX_ReferenceTypeId')
DROP INDEX [IX_ReferenceTypeId] ON [dbo].[Notes]
GO
/****** Object:  Index [IX_NoteTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Notes]') AND name = N'IX_NoteTypeId')
DROP INDEX [IX_NoteTypeId] ON [dbo].[Notes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Notes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Notes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Notes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Notes]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteAudits]') AND name = N'IX_ReferenceTypeId')
DROP INDEX [IX_ReferenceTypeId] ON [dbo].[NoteAudits]
GO
/****** Object:  Index [IX_NoteTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteAudits]') AND name = N'IX_NoteTypeId')
DROP INDEX [IX_NoteTypeId] ON [dbo].[NoteAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[NoteAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[NoteAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[MeasurementTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[MeasurementTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[MeasurementTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[MeasurementTypeAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LogTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LogTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LogTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LogTypeAudits]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND name = N'IX_ReferenceTypeId')
DROP INDEX [IX_ReferenceTypeId] ON [dbo].[Logs]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Logs]
GO
/****** Object:  Index [IX_LogTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND name = N'IX_LogTypeId')
DROP INDEX [IX_LogTypeId] ON [dbo].[Logs]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Logs]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogAudits]') AND name = N'IX_ReferenceTypeId')
DROP INDEX [IX_ReferenceTypeId] ON [dbo].[LogAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LogAudits]
GO
/****** Object:  Index [IX_LogTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogAudits]') AND name = N'IX_LogTypeId')
DROP INDEX [IX_LogTypeId] ON [dbo].[LogAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LogAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LocationTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LocationTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LocationTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LocationTypeAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[LinkedEmails]
GO
/****** Object:  Index [IX_RecipientTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND name = N'IX_RecipientTypeId')
DROP INDEX [IX_RecipientTypeId] ON [dbo].[LinkedEmails]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedEmails]
GO
/****** Object:  Index [IX_LinkedAccountId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND name = N'IX_LinkedAccountId')
DROP INDEX [IX_LinkedAccountId] ON [dbo].[LinkedEmails]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedEmails]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[LinkedEmailAudits]
GO
/****** Object:  Index [IX_RecipientTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND name = N'IX_RecipientTypeId')
DROP INDEX [IX_RecipientTypeId] ON [dbo].[LinkedEmailAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedEmailAudits]
GO
/****** Object:  Index [IX_LinkedAccountId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND name = N'IX_LinkedAccountId')
DROP INDEX [IX_LinkedAccountId] ON [dbo].[LinkedEmailAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedEmailAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedAccountTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedAccountTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedAccountTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedAccountTypeAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[LinkedAccounts]
GO
/****** Object:  Index [IX_RecipientTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_RecipientTypeId')
DROP INDEX [IX_RecipientTypeId] ON [dbo].[LinkedAccounts]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedAccounts]
GO
/****** Object:  Index [IX_LinkedAccountTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_LinkedAccountTypeId')
DROP INDEX [IX_LinkedAccountTypeId] ON [dbo].[LinkedAccounts]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[LinkedAccounts]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedAccounts]
GO
/****** Object:  Index [IX_AccountId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_AccountId')
DROP INDEX [IX_AccountId] ON [dbo].[LinkedAccounts]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[LinkedAccountAudits]
GO
/****** Object:  Index [IX_RecipientTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_RecipientTypeId')
DROP INDEX [IX_RecipientTypeId] ON [dbo].[LinkedAccountAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedAccountAudits]
GO
/****** Object:  Index [IX_LinkedAccountTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_LinkedAccountTypeId')
DROP INDEX [IX_LinkedAccountTypeId] ON [dbo].[LinkedAccountAudits]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[LinkedAccountAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedAccountAudits]
GO
/****** Object:  Index [IX_AccountId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_AccountId')
DROP INDEX [IX_AccountId] ON [dbo].[LinkedAccountAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentValueTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentValueTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentValueTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentValueTypeAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValues]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentValues]
GO
/****** Object:  Index [IX_InvestmentValueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValues]') AND name = N'IX_InvestmentValueTypeId')
DROP INDEX [IX_InvestmentValueTypeId] ON [dbo].[InvestmentValues]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValues]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentValues]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentValueAudits]
GO
/****** Object:  Index [IX_InvestmentValueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]') AND name = N'IX_InvestmentValueTypeId')
DROP INDEX [IX_InvestmentValueTypeId] ON [dbo].[InvestmentValueAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentValueAudits]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]') AND name = N'IX_PropertyInvestmentId')
DROP INDEX [IX_PropertyInvestmentId] ON [dbo].[InvestmentOperationalExpenditures]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentOperationalExpenditures]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentOperationalExpenditures]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]') AND name = N'IX_PropertyInvestmentId')
DROP INDEX [IX_PropertyInvestmentId] ON [dbo].[InvestmentOperationalExpenditureAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentOperationalExpenditureAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentOperationalExpenditureAudits]
GO
/****** Object:  Index [IX_SubSectorId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IndustryAudits]') AND name = N'IX_SubSectorId')
DROP INDEX [IX_SubSectorId] ON [dbo].[IndustryAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IndustryAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IndustryAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IndustryAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[IndustryAudits]
GO
/****** Object:  Index [IX_SubSectorId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Industries]') AND name = N'IX_SubSectorId')
DROP INDEX [IX_SubSectorId] ON [dbo].[Industries]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Industries]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Industries]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Industries]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Industries]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[IncentivePolicyPropertyAudits]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND name = N'IX_PropertyId')
DROP INDEX [IX_PropertyId] ON [dbo].[IncentivePolicyPropertyAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IncentivePolicyPropertyAudits]
GO
/****** Object:  Index [IX_IncentivePolicyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND name = N'IX_IncentivePolicyId')
DROP INDEX [IX_IncentivePolicyId] ON [dbo].[IncentivePolicyPropertyAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[IncentivePolicyPropertyAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[IncentivePolicyProperties]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND name = N'IX_PropertyId')
DROP INDEX [IX_PropertyId] ON [dbo].[IncentivePolicyProperties]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IncentivePolicyProperties]
GO
/****** Object:  Index [IX_IncentivePolicyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND name = N'IX_IncentivePolicyId')
DROP INDEX [IX_IncentivePolicyId] ON [dbo].[IncentivePolicyProperties]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[IncentivePolicyProperties]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[IncentivePolicyAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IncentivePolicyAudits]
GO
/****** Object:  Index [IX_IndustryId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_IndustryId')
DROP INDEX [IX_IndustryId] ON [dbo].[IncentivePolicyAudits]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[IncentivePolicyAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[IncentivePolicyAudits]
GO
/****** Object:  Index [IX_ClerkUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_ClerkUserId')
DROP INDEX [IX_ClerkUserId] ON [dbo].[IncentivePolicyAudits]
GO
/****** Object:  Index [IX_CategoryTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_CategoryTypeId')
DROP INDEX [IX_CategoryTypeId] ON [dbo].[IncentivePolicyAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[IncentivePolicies]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IncentivePolicies]
GO
/****** Object:  Index [IX_IndustryId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_IndustryId')
DROP INDEX [IX_IndustryId] ON [dbo].[IncentivePolicies]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[IncentivePolicies]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[IncentivePolicies]
GO
/****** Object:  Index [IX_ClerkUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_ClerkUserId')
DROP INDEX [IX_ClerkUserId] ON [dbo].[IncentivePolicies]
GO
/****** Object:  Index [IX_CategoryTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_CategoryTypeId')
DROP INDEX [IX_CategoryTypeId] ON [dbo].[IncentivePolicies]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IdentificationTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[IdentificationTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IdentificationTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[IdentificationTypeAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreas]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[FocusAreas]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreas]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[FocusAreas]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[FocusAreaAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[FocusAreaAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Files]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Files]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Files]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Files]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Executors]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Executors]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Executors]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[Executors]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Executors]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Executors]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ExecutorAudits]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[ExecutorAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[ExecutorAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[EntityTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[EntityTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[EntityTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[EntityTypeAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[EntityAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[EntityAudits]
GO
/****** Object:  Index [IX_EntityTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND name = N'IX_EntityTypeId')
DROP INDEX [IX_EntityTypeId] ON [dbo].[EntityAudits]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[EntityAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[EntityAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgents]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[EntityAgents]
GO
/****** Object:  Index [IX_EntityId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgents]') AND name = N'IX_EntityId')
DROP INDEX [IX_EntityId] ON [dbo].[EntityAgents]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgents]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[EntityAgents]
GO
/****** Object:  Index [IX_AgentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgents]') AND name = N'IX_AgentId')
DROP INDEX [IX_AgentId] ON [dbo].[EntityAgents]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[EntityAgentAudits]
GO
/****** Object:  Index [IX_EntityId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]') AND name = N'IX_EntityId')
DROP INDEX [IX_EntityId] ON [dbo].[EntityAgentAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[EntityAgentAudits]
GO
/****** Object:  Index [IX_AgentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]') AND name = N'IX_AgentId')
DROP INDEX [IX_AgentId] ON [dbo].[EntityAgentAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[Entities]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Entities]
GO
/****** Object:  Index [IX_EntityTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND name = N'IX_EntityTypeId')
DROP INDEX [IX_EntityTypeId] ON [dbo].[Entities]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[Entities]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Entities]
GO
/****** Object:  Index [IX_ELMAH_Error_App_Time_Seq]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_Error]') AND name = N'IX_ELMAH_Error_App_Time_Seq')
DROP INDEX [IX_ELMAH_Error_App_Time_Seq] ON [dbo].[ELMAH_Error]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Domiciliums]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Domiciliums]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Domiciliums]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Domiciliums]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DomiciliumAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[DomiciliumAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentTypeAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[Documents]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_ReferenceTypeId')
DROP INDEX [IX_ReferenceTypeId] ON [dbo].[Documents]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Documents]
GO
/****** Object:  Index [IX_LocationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_LocationTypeId')
DROP INDEX [IX_LocationTypeId] ON [dbo].[Documents]
GO
/****** Object:  Index [IX_FileId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_FileId')
DROP INDEX [IX_FileId] ON [dbo].[Documents]
GO
/****** Object:  Index [IX_DocumentCheckListId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_DocumentCheckListId')
DROP INDEX [IX_DocumentCheckListId] ON [dbo].[Documents]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[Documents]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Documents]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND name = N'IX_ReferenceTypeId')
DROP INDEX [IX_ReferenceTypeId] ON [dbo].[DocumentReferences]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentReferences]
GO
/****** Object:  Index [IX_DocumentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND name = N'IX_DocumentId')
DROP INDEX [IX_DocumentId] ON [dbo].[DocumentReferences]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentReferences]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND name = N'IX_ApplicationId')
DROP INDEX [IX_ApplicationId] ON [dbo].[DocumentReferences]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND name = N'IX_ReferenceTypeId')
DROP INDEX [IX_ReferenceTypeId] ON [dbo].[DocumentReferenceAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentReferenceAudits]
GO
/****** Object:  Index [IX_DocumentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND name = N'IX_DocumentId')
DROP INDEX [IX_DocumentId] ON [dbo].[DocumentReferenceAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentReferenceAudits]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND name = N'IX_ApplicationId')
DROP INDEX [IX_ApplicationId] ON [dbo].[DocumentReferenceAudits]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND name = N'IX_ReferenceTypeId')
DROP INDEX [IX_ReferenceTypeId] ON [dbo].[DocumentCheckLists]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentCheckLists]
GO
/****** Object:  Index [IX_DocumentTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND name = N'IX_DocumentTypeId')
DROP INDEX [IX_DocumentTypeId] ON [dbo].[DocumentCheckLists]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentCheckLists]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND name = N'IX_ApplicationId')
DROP INDEX [IX_ApplicationId] ON [dbo].[DocumentCheckLists]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND name = N'IX_ReferenceTypeId')
DROP INDEX [IX_ReferenceTypeId] ON [dbo].[DocumentCheckListAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentCheckListAudits]
GO
/****** Object:  Index [IX_DocumentTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND name = N'IX_DocumentTypeId')
DROP INDEX [IX_DocumentTypeId] ON [dbo].[DocumentCheckListAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentCheckListAudits]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND name = N'IX_ApplicationId')
DROP INDEX [IX_ApplicationId] ON [dbo].[DocumentCheckListAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[DocumentAudits]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_ReferenceTypeId')
DROP INDEX [IX_ReferenceTypeId] ON [dbo].[DocumentAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentAudits]
GO
/****** Object:  Index [IX_LocationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_LocationTypeId')
DROP INDEX [IX_LocationTypeId] ON [dbo].[DocumentAudits]
GO
/****** Object:  Index [IX_FileId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_FileId')
DROP INDEX [IX_FileId] ON [dbo].[DocumentAudits]
GO
/****** Object:  Index [IX_DocumentCheckListId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_DocumentCheckListId')
DROP INDEX [IX_DocumentCheckListId] ON [dbo].[DocumentAudits]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[DocumentAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CustomerTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[CustomerTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CustomerTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[CustomerTypeAudits]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_TitleTypeId')
DROP INDEX [IX_TitleTypeId] ON [dbo].[Customers]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_SystemUserId')
DROP INDEX [IX_SystemUserId] ON [dbo].[Customers]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[Customers]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Customers]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_IdentificationTypeId')
DROP INDEX [IX_IdentificationTypeId] ON [dbo].[Customers]
GO
/****** Object:  Index [IX_CustomerTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_CustomerTypeId')
DROP INDEX [IX_CustomerTypeId] ON [dbo].[Customers]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Customers]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_CountryOfIssueTypeId')
DROP INDEX [IX_CountryOfIssueTypeId] ON [dbo].[Customers]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_TitleTypeId')
DROP INDEX [IX_TitleTypeId] ON [dbo].[CustomerAudits]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_SystemUserId')
DROP INDEX [IX_SystemUserId] ON [dbo].[CustomerAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[CustomerAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CustomerAudits]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_IdentificationTypeId')
DROP INDEX [IX_IdentificationTypeId] ON [dbo].[CustomerAudits]
GO
/****** Object:  Index [IX_CustomerTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_CustomerTypeId')
DROP INDEX [IX_CustomerTypeId] ON [dbo].[CustomerAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[CustomerAudits]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_CountryOfIssueTypeId')
DROP INDEX [IX_CountryOfIssueTypeId] ON [dbo].[CustomerAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CountryAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CountryAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CountryAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[CountryAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Countries]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Countries]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Countries]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Countries]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CategoryTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[CategoryTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CategoryTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[CategoryTypeAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BillDirectories]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[BillDirectories]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BillDirectories]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[BillDirectories]
GO
/****** Object:  Index [IX_AuditBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Audits]') AND name = N'IX_AuditBySystemUserId')
DROP INDEX [IX_AuditBySystemUserId] ON [dbo].[Audits]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'UserNameIndex')
DROP INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'IX_SystemUserId')
DROP INDEX [IX_SystemUserId] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_RoleId')
DROP INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND name = N'RoleNameIndex')
DROP INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AppSettings]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AppSettings]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AppSettings]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AppSettings]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AppSettingAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AppSettingAudits]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND name = N'IX_SystemUserId')
DROP INDEX [IX_SystemUserId] ON [dbo].[ApplicationUserRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND name = N'IX_RoleId')
DROP INDEX [IX_RoleId] ON [dbo].[ApplicationUserRoles]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ApplicationUserRoles]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[ApplicationUserRoles]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND name = N'IX_ApplicationId')
DROP INDEX [IX_ApplicationId] ON [dbo].[ApplicationUserRoles]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND name = N'IX_SystemUserId')
DROP INDEX [IX_SystemUserId] ON [dbo].[ApplicationUserRoleAudits]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND name = N'IX_RoleId')
DROP INDEX [IX_RoleId] ON [dbo].[ApplicationUserRoleAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ApplicationUserRoleAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[ApplicationUserRoleAudits]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND name = N'IX_ApplicationId')
DROP INDEX [IX_ApplicationId] ON [dbo].[ApplicationUserRoleAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Applications]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Applications]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]') AND name = N'IX_RoleId')
DROP INDEX [IX_RoleId] ON [dbo].[ApplicationRoles]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ApplicationRoles]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[ApplicationRoles]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]') AND name = N'IX_ApplicationId')
DROP INDEX [IX_ApplicationId] ON [dbo].[ApplicationRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]') AND name = N'IX_RoleId')
DROP INDEX [IX_RoleId] ON [dbo].[ApplicationRoleAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ApplicationRoleAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[ApplicationRoleAudits]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]') AND name = N'IX_ApplicationId')
DROP INDEX [IX_ApplicationId] ON [dbo].[ApplicationRoleAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ApplicationAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[ApplicationAudits]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_TitleTypeId')
DROP INDEX [IX_TitleTypeId] ON [dbo].[Agents]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[Agents]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Agents]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_IdentificationTypeId')
DROP INDEX [IX_IdentificationTypeId] ON [dbo].[Agents]
GO
/****** Object:  Index [IX_CustomerTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_CustomerTypeId')
DROP INDEX [IX_CustomerTypeId] ON [dbo].[Agents]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[Agents]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Agents]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_CountryOfIssueTypeId')
DROP INDEX [IX_CountryOfIssueTypeId] ON [dbo].[Agents]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomers]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AgentCustomers]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomers]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[AgentCustomers]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomers]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AgentCustomers]
GO
/****** Object:  Index [IX_AgentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomers]') AND name = N'IX_AgentId')
DROP INDEX [IX_AgentId] ON [dbo].[AgentCustomers]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AgentCustomerAudits]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[AgentCustomerAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AgentCustomerAudits]
GO
/****** Object:  Index [IX_AgentId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]') AND name = N'IX_AgentId')
DROP INDEX [IX_AgentId] ON [dbo].[AgentCustomerAudits]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_TitleTypeId')
DROP INDEX [IX_TitleTypeId] ON [dbo].[AgentAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[AgentAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AgentAudits]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_IdentificationTypeId')
DROP INDEX [IX_IdentificationTypeId] ON [dbo].[AgentAudits]
GO
/****** Object:  Index [IX_CustomerTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_CustomerTypeId')
DROP INDEX [IX_CustomerTypeId] ON [dbo].[AgentAudits]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_CustomerId')
DROP INDEX [IX_CustomerId] ON [dbo].[AgentAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AgentAudits]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_CountryOfIssueTypeId')
DROP INDEX [IX_CountryOfIssueTypeId] ON [dbo].[AgentAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[AdditionalPropertyOwners]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_PropertyId')
DROP INDEX [IX_PropertyId] ON [dbo].[AdditionalPropertyOwners]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AdditionalPropertyOwners]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_IdentificationTypeId')
DROP INDEX [IX_IdentificationTypeId] ON [dbo].[AdditionalPropertyOwners]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AdditionalPropertyOwners]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_CountryOfIssueTypeId')
DROP INDEX [IX_CountryOfIssueTypeId] ON [dbo].[AdditionalPropertyOwners]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[AdditionalPropertyOwnerAudits]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_PropertyId')
DROP INDEX [IX_PropertyId] ON [dbo].[AdditionalPropertyOwnerAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AdditionalPropertyOwnerAudits]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_IdentificationTypeId')
DROP INDEX [IX_IdentificationTypeId] ON [dbo].[AdditionalPropertyOwnerAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AdditionalPropertyOwnerAudits]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_CountryOfIssueTypeId')
DROP INDEX [IX_CountryOfIssueTypeId] ON [dbo].[AdditionalPropertyOwnerAudits]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]') AND name = N'IX_TitleTypeId')
DROP INDEX [IX_TitleTypeId] ON [dbo].[AdditionalPropertyContacts]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AdditionalPropertyContacts]
GO
/****** Object:  Index [IX_IncentivePolicyPropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]') AND name = N'IX_IncentivePolicyPropertyId')
DROP INDEX [IX_IncentivePolicyPropertyId] ON [dbo].[AdditionalPropertyContacts]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AdditionalPropertyContacts]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]') AND name = N'IX_TitleTypeId')
DROP INDEX [IX_TitleTypeId] ON [dbo].[AdditionalPropertyContactAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AdditionalPropertyContactAudits]
GO
/****** Object:  Index [IX_IncentivePolicyPropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]') AND name = N'IX_IncentivePolicyPropertyId')
DROP INDEX [IX_IncentivePolicyPropertyId] ON [dbo].[AdditionalPropertyContactAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AdditionalPropertyContactAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypes]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AccountTypes]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypes]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AccountTypes]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AccountTypeAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AccountTypeAudits]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[Accounts]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND name = N'IX_PropertyId')
DROP INDEX [IX_PropertyId] ON [dbo].[Accounts]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Accounts]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[Accounts]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountAudits]') AND name = N'IX_StatusId')
DROP INDEX [IX_StatusId] ON [dbo].[AccountAudits]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountAudits]') AND name = N'IX_PropertyId')
DROP INDEX [IX_PropertyId] ON [dbo].[AccountAudits]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountAudits]') AND name = N'IX_ModifiedBySystemUserId')
DROP INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AccountAudits]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountAudits]') AND name = N'IX_CreatedBySystemUserId')
DROP INDEX [IX_CreatedBySystemUserId] ON [dbo].[AccountAudits]
GO
/****** Object:  View [dbo].[eMailBills]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[eMailBills]'))
DROP VIEW [dbo].[eMailBills]
GO
/****** Object:  Table [dbo].[UnitOfmeasureTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]') AND type in (N'U'))
DROP TABLE [dbo].[UnitOfmeasureTypes]
GO
/****** Object:  Table [dbo].[UnitOfmeasureTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[UnitOfmeasureTypeAudits]
GO
/****** Object:  Table [dbo].[TitleTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypes]') AND type in (N'U'))
DROP TABLE [dbo].[TitleTypes]
GO
/****** Object:  Table [dbo].[TitleTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[TitleTypeAudits]
GO
/****** Object:  Table [dbo].[SystemUserTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]') AND type in (N'U'))
DROP TABLE [dbo].[SystemUserTypes]
GO
/****** Object:  Table [dbo].[SystemUserTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[SystemUserTypeAudits]
GO
/****** Object:  Table [dbo].[SystemUsers]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUsers]') AND type in (N'U'))
DROP TABLE [dbo].[SystemUsers]
GO
/****** Object:  Table [dbo].[SystemUserLogTimes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserLogTimes]') AND type in (N'U'))
DROP TABLE [dbo].[SystemUserLogTimes]
GO
/****** Object:  Table [dbo].[SystemUserExceptions]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserExceptions]') AND type in (N'U'))
DROP TABLE [dbo].[SystemUserExceptions]
GO
/****** Object:  Table [dbo].[SystemUserAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]') AND type in (N'U'))
DROP TABLE [dbo].[SystemUserAudits]
GO
/****** Object:  Table [dbo].[SubSectors]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubSectors]') AND type in (N'U'))
DROP TABLE [dbo].[SubSectors]
GO
/****** Object:  Table [dbo].[SubSectorAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]') AND type in (N'U'))
DROP TABLE [dbo].[SubSectorAudits]
GO
/****** Object:  Table [dbo].[StatusTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypes]') AND type in (N'U'))
DROP TABLE [dbo].[StatusTypes]
GO
/****** Object:  Table [dbo].[StatusTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[StatusTypeAudits]
GO
/****** Object:  Table [dbo].[StatusAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatusAudits]') AND type in (N'U'))
DROP TABLE [dbo].[StatusAudits]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND type in (N'U'))
DROP TABLE [dbo].[Status]
GO
/****** Object:  Table [dbo].[RmsTemporaryRatesRebates]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsTemporaryRatesRebates]') AND type in (N'U'))
DROP TABLE [dbo].[RmsTemporaryRatesRebates]
GO
/****** Object:  Table [dbo].[RmsReconStats]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsReconStats]') AND type in (N'U'))
DROP TABLE [dbo].[RmsReconStats]
GO
/****** Object:  Table [dbo].[RmsReconStaging]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsReconStaging]') AND type in (N'U'))
DROP TABLE [dbo].[RmsReconStaging]
GO
/****** Object:  Table [dbo].[RmsReconMailArchives]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsReconMailArchives]') AND type in (N'U'))
DROP TABLE [dbo].[RmsReconMailArchives]
GO
/****** Object:  Table [dbo].[RmsReconExceptions]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsReconExceptions]') AND type in (N'U'))
DROP TABLE [dbo].[RmsReconExceptions]
GO
/****** Object:  Table [dbo].[RmsReconErrors]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsReconErrors]') AND type in (N'U'))
DROP TABLE [dbo].[RmsReconErrors]
GO
/****** Object:  Table [dbo].[RmsBillingAccounts]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsBillingAccounts]') AND type in (N'U'))
DROP TABLE [dbo].[RmsBillingAccounts]
GO
/****** Object:  Table [dbo].[RmsBilling]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsBilling]') AND type in (N'U'))
DROP TABLE [dbo].[RmsBilling]
GO
/****** Object:  Table [dbo].[ReferenceTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]') AND type in (N'U'))
DROP TABLE [dbo].[ReferenceTypes]
GO
/****** Object:  Table [dbo].[ReferenceTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[ReferenceTypeAudits]
GO
/****** Object:  Table [dbo].[RecipientTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypes]') AND type in (N'U'))
DROP TABLE [dbo].[RecipientTypes]
GO
/****** Object:  Table [dbo].[RecipientTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[RecipientTypeAudits]
GO
/****** Object:  Table [dbo].[RatesRebates]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND type in (N'U'))
DROP TABLE [dbo].[RatesRebates]
GO
/****** Object:  Table [dbo].[RatesRebatePropertyAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND type in (N'U'))
DROP TABLE [dbo].[RatesRebatePropertyAudits]
GO
/****** Object:  Table [dbo].[RatesRebateProperties]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND type in (N'U'))
DROP TABLE [dbo].[RatesRebateProperties]
GO
/****** Object:  Table [dbo].[RatesRebateAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND type in (N'U'))
DROP TABLE [dbo].[RatesRebateAudits]
GO
/****** Object:  Table [dbo].[QueryTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypes]') AND type in (N'U'))
DROP TABLE [dbo].[QueryTypes]
GO
/****** Object:  Table [dbo].[QueryTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[QueryTypeAudits]
GO
/****** Object:  Table [dbo].[QueryAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QueryAudits]') AND type in (N'U'))
DROP TABLE [dbo].[QueryAudits]
GO
/****** Object:  Table [dbo].[Queries]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Queries]') AND type in (N'U'))
DROP TABLE [dbo].[Queries]
GO
/****** Object:  Table [dbo].[PropertyInvestmentValues]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]') AND type in (N'U'))
DROP TABLE [dbo].[PropertyInvestmentValues]
GO
/****** Object:  Table [dbo].[PropertyInvestmentValueAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]') AND type in (N'U'))
DROP TABLE [dbo].[PropertyInvestmentValueAudits]
GO
/****** Object:  Table [dbo].[PropertyInvestments]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]') AND type in (N'U'))
DROP TABLE [dbo].[PropertyInvestments]
GO
/****** Object:  Table [dbo].[PropertyInvestmentMeasurements]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND type in (N'U'))
DROP TABLE [dbo].[PropertyInvestmentMeasurements]
GO
/****** Object:  Table [dbo].[PropertyInvestmentMeasurementAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND type in (N'U'))
DROP TABLE [dbo].[PropertyInvestmentMeasurementAudits]
GO
/****** Object:  Table [dbo].[PropertyInvestmentAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]') AND type in (N'U'))
DROP TABLE [dbo].[PropertyInvestmentAudits]
GO
/****** Object:  Table [dbo].[PropertyAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAudits]') AND type in (N'U'))
DROP TABLE [dbo].[PropertyAudits]
GO
/****** Object:  Table [dbo].[PropertyAccounts]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND type in (N'U'))
DROP TABLE [dbo].[PropertyAccounts]
GO
/****** Object:  Table [dbo].[PropertyAccountAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND type in (N'U'))
DROP TABLE [dbo].[PropertyAccountAudits]
GO
/****** Object:  Table [dbo].[Properties]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Properties]') AND type in (N'U'))
DROP TABLE [dbo].[Properties]
GO
/****** Object:  Table [dbo].[NoteTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypes]') AND type in (N'U'))
DROP TABLE [dbo].[NoteTypes]
GO
/****** Object:  Table [dbo].[NoteTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[NoteTypeAudits]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notes]') AND type in (N'U'))
DROP TABLE [dbo].[Notes]
GO
/****** Object:  Table [dbo].[NoteAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NoteAudits]') AND type in (N'U'))
DROP TABLE [dbo].[NoteAudits]
GO
/****** Object:  Table [dbo].[MyTable]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyTable]') AND type in (N'U'))
DROP TABLE [dbo].[MyTable]
GO
/****** Object:  Table [dbo].[Missing]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Missing]') AND type in (N'U'))
DROP TABLE [dbo].[Missing]
GO
/****** Object:  Table [dbo].[MeasurementTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]') AND type in (N'U'))
DROP TABLE [dbo].[MeasurementTypes]
GO
/****** Object:  Table [dbo].[MeasurementTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[MeasurementTypeAudits]
GO
/****** Object:  Table [dbo].[LogTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogTypes]') AND type in (N'U'))
DROP TABLE [dbo].[LogTypes]
GO
/****** Object:  Table [dbo].[LogTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[LogTypeAudits]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND type in (N'U'))
DROP TABLE [dbo].[Logs]
GO
/****** Object:  Table [dbo].[LogAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogAudits]') AND type in (N'U'))
DROP TABLE [dbo].[LogAudits]
GO
/****** Object:  Table [dbo].[LocationTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypes]') AND type in (N'U'))
DROP TABLE [dbo].[LocationTypes]
GO
/****** Object:  Table [dbo].[LocationTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[LocationTypeAudits]
GO
/****** Object:  Table [dbo].[LinkedEmails]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND type in (N'U'))
DROP TABLE [dbo].[LinkedEmails]
GO
/****** Object:  Table [dbo].[LinkedEmailAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND type in (N'U'))
DROP TABLE [dbo].[LinkedEmailAudits]
GO
/****** Object:  Table [dbo].[LinkedAccountTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]') AND type in (N'U'))
DROP TABLE [dbo].[LinkedAccountTypes]
GO
/****** Object:  Table [dbo].[LinkedAccountTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[LinkedAccountTypeAudits]
GO
/****** Object:  Table [dbo].[LinkedAccounts]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND type in (N'U'))
DROP TABLE [dbo].[LinkedAccounts]
GO
/****** Object:  Table [dbo].[LinkedAccountAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND type in (N'U'))
DROP TABLE [dbo].[LinkedAccountAudits]
GO
/****** Object:  Table [dbo].[InvestmentValueTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]') AND type in (N'U'))
DROP TABLE [dbo].[InvestmentValueTypes]
GO
/****** Object:  Table [dbo].[InvestmentValueTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[InvestmentValueTypeAudits]
GO
/****** Object:  Table [dbo].[InvestmentValues]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValues]') AND type in (N'U'))
DROP TABLE [dbo].[InvestmentValues]
GO
/****** Object:  Table [dbo].[InvestmentValueAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]') AND type in (N'U'))
DROP TABLE [dbo].[InvestmentValueAudits]
GO
/****** Object:  Table [dbo].[InvestmentOperationalExpenditures]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]') AND type in (N'U'))
DROP TABLE [dbo].[InvestmentOperationalExpenditures]
GO
/****** Object:  Table [dbo].[InvestmentOperationalExpenditureAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]') AND type in (N'U'))
DROP TABLE [dbo].[InvestmentOperationalExpenditureAudits]
GO
/****** Object:  Table [dbo].[IndustryAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IndustryAudits]') AND type in (N'U'))
DROP TABLE [dbo].[IndustryAudits]
GO
/****** Object:  Table [dbo].[Industries]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Industries]') AND type in (N'U'))
DROP TABLE [dbo].[Industries]
GO
/****** Object:  Table [dbo].[IncentivePolicyPropertyAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND type in (N'U'))
DROP TABLE [dbo].[IncentivePolicyPropertyAudits]
GO
/****** Object:  Table [dbo].[IncentivePolicyProperties]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND type in (N'U'))
DROP TABLE [dbo].[IncentivePolicyProperties]
GO
/****** Object:  Table [dbo].[IncentivePolicyAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND type in (N'U'))
DROP TABLE [dbo].[IncentivePolicyAudits]
GO
/****** Object:  Table [dbo].[IncentivePolicies]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND type in (N'U'))
DROP TABLE [dbo].[IncentivePolicies]
GO
/****** Object:  Table [dbo].[IdentificationTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]') AND type in (N'U'))
DROP TABLE [dbo].[IdentificationTypes]
GO
/****** Object:  Table [dbo].[IdentificationTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[IdentificationTypeAudits]
GO
/****** Object:  Table [dbo].[FocusAreas]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreas]') AND type in (N'U'))
DROP TABLE [dbo].[FocusAreas]
GO
/****** Object:  Table [dbo].[FocusAreaAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]') AND type in (N'U'))
DROP TABLE [dbo].[FocusAreaAudits]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files]') AND type in (N'U'))
DROP TABLE [dbo].[Files]
GO
/****** Object:  Table [dbo].[Executors]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Executors]') AND type in (N'U'))
DROP TABLE [dbo].[Executors]
GO
/****** Object:  Table [dbo].[ExecutorAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]') AND type in (N'U'))
DROP TABLE [dbo].[ExecutorAudits]
GO
/****** Object:  Table [dbo].[EntityTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypes]') AND type in (N'U'))
DROP TABLE [dbo].[EntityTypes]
GO
/****** Object:  Table [dbo].[EntityTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[EntityTypeAudits]
GO
/****** Object:  Table [dbo].[EntityAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND type in (N'U'))
DROP TABLE [dbo].[EntityAudits]
GO
/****** Object:  Table [dbo].[EntityAgents]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgents]') AND type in (N'U'))
DROP TABLE [dbo].[EntityAgents]
GO
/****** Object:  Table [dbo].[EntityAgentAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]') AND type in (N'U'))
DROP TABLE [dbo].[EntityAgentAudits]
GO
/****** Object:  Table [dbo].[Entities]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND type in (N'U'))
DROP TABLE [dbo].[Entities]
GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_Error]') AND type in (N'U'))
DROP TABLE [dbo].[ELMAH_Error]
GO
/****** Object:  Table [dbo].[eBillingViewOnly]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eBillingViewOnly]') AND type in (N'U'))
DROP TABLE [dbo].[eBillingViewOnly]
GO
/****** Object:  Table [dbo].[Domiciliums]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Domiciliums]') AND type in (N'U'))
DROP TABLE [dbo].[Domiciliums]
GO
/****** Object:  Table [dbo].[DomiciliumAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]') AND type in (N'U'))
DROP TABLE [dbo].[DomiciliumAudits]
GO
/****** Object:  Table [dbo].[DocumentTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypes]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentTypes]
GO
/****** Object:  Table [dbo].[DocumentTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentTypeAudits]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND type in (N'U'))
DROP TABLE [dbo].[Documents]
GO
/****** Object:  Table [dbo].[DocumentReferences]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentReferences]
GO
/****** Object:  Table [dbo].[DocumentReferenceAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentReferenceAudits]
GO
/****** Object:  Table [dbo].[DocumentCheckLists]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentCheckLists]
GO
/****** Object:  Table [dbo].[DocumentCheckListAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentCheckListAudits]
GO
/****** Object:  Table [dbo].[DocumentAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentAudits]
GO
/****** Object:  Table [dbo].[CustomerTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypes]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerTypes]
GO
/****** Object:  Table [dbo].[CustomerTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerTypeAudits]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[CustomerAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerAudits]
GO
/****** Object:  Table [dbo].[CountryAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CountryAudits]') AND type in (N'U'))
DROP TABLE [dbo].[CountryAudits]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Countries]') AND type in (N'U'))
DROP TABLE [dbo].[Countries]
GO
/****** Object:  Table [dbo].[CategoryTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypes]') AND type in (N'U'))
DROP TABLE [dbo].[CategoryTypes]
GO
/****** Object:  Table [dbo].[CategoryTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[CategoryTypeAudits]
GO
/****** Object:  Table [dbo].[BillDirectories]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BillDirectories]') AND type in (N'U'))
DROP TABLE [dbo].[BillDirectories]
GO
/****** Object:  Table [dbo].[Audits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Audits]') AND type in (N'U'))
DROP TABLE [dbo].[Audits]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AppSettings]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppSettings]') AND type in (N'U'))
DROP TABLE [dbo].[AppSettings]
GO
/****** Object:  Table [dbo].[AppSettingAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]') AND type in (N'U'))
DROP TABLE [dbo].[AppSettingAudits]
GO
/****** Object:  Table [dbo].[ApplicationUserRoles]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[ApplicationUserRoles]
GO
/****** Object:  Table [dbo].[ApplicationUserRoleAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND type in (N'U'))
DROP TABLE [dbo].[ApplicationUserRoleAudits]
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND type in (N'U'))
DROP TABLE [dbo].[Applications]
GO
/****** Object:  Table [dbo].[ApplicationRoles]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]') AND type in (N'U'))
DROP TABLE [dbo].[ApplicationRoles]
GO
/****** Object:  Table [dbo].[ApplicationRoleAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]') AND type in (N'U'))
DROP TABLE [dbo].[ApplicationRoleAudits]
GO
/****** Object:  Table [dbo].[ApplicationAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]') AND type in (N'U'))
DROP TABLE [dbo].[ApplicationAudits]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND type in (N'U'))
DROP TABLE [dbo].[Agents]
GO
/****** Object:  Table [dbo].[AgentCustomers]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomers]') AND type in (N'U'))
DROP TABLE [dbo].[AgentCustomers]
GO
/****** Object:  Table [dbo].[AgentCustomerAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]') AND type in (N'U'))
DROP TABLE [dbo].[AgentCustomerAudits]
GO
/****** Object:  Table [dbo].[AgentAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND type in (N'U'))
DROP TABLE [dbo].[AgentAudits]
GO
/****** Object:  Table [dbo].[AdditionalPropertyOwners]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND type in (N'U'))
DROP TABLE [dbo].[AdditionalPropertyOwners]
GO
/****** Object:  Table [dbo].[AdditionalPropertyOwnerAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND type in (N'U'))
DROP TABLE [dbo].[AdditionalPropertyOwnerAudits]
GO
/****** Object:  Table [dbo].[AdditionalPropertyContacts]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]') AND type in (N'U'))
DROP TABLE [dbo].[AdditionalPropertyContacts]
GO
/****** Object:  Table [dbo].[AdditionalPropertyContactAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]') AND type in (N'U'))
DROP TABLE [dbo].[AdditionalPropertyContactAudits]
GO
/****** Object:  Table [dbo].[AccountTypes]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypes]') AND type in (N'U'))
DROP TABLE [dbo].[AccountTypes]
GO
/****** Object:  Table [dbo].[AccountTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]') AND type in (N'U'))
DROP TABLE [dbo].[AccountTypeAudits]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND type in (N'U'))
DROP TABLE [dbo].[Accounts]
GO
/****** Object:  Table [dbo].[AccountAudits]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountAudits]') AND type in (N'U'))
DROP TABLE [dbo].[AccountAudits]
GO
/****** Object:  Table [dbo].[_RatesNumbers]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[_RatesNumbers]') AND type in (N'U'))
DROP TABLE [dbo].[_RatesNumbers]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2019/06/02 17:15:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_RatesNumbers]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[_RatesNumbers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[_RatesNumbers](
	[POD_NO] [nvarchar](255) NULL,
	[RATE] [nvarchar](255) NULL,
	[CAN] [nvarchar](255) NULL,
	[PIN] [nvarchar](255) NULL,
	[UNIT] [nvarchar](255) NULL,
	[ADD] [nvarchar](255) NULL,
	[WATE_POD] [nvarchar](255) NULL,
	[WATER_METER_NO] [nvarchar](255) NULL,
	[ELRC_POD] [nvarchar](255) NULL,
	[ELRC_METER_NO] [nvarchar](255) NULL,
	[CSW_POD] [nvarchar](255) NULL,
	[WATER_READ_DATE] [nvarchar](255) NULL,
	[ELRC_READ_DATE] [nvarchar](255) NULL,
	[F14] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AccountAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccountAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[AccountNumber] [nvarchar](30) NULL,
	[ReferenceNumber] [nvarchar](100) NULL,
	[PropertyId] [int] NULL,
	[RateNumber] [nvarchar](100) NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[AccountHolder] [nvarchar](250) NULL,
	[IsRMSAccount] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.AccountAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [nvarchar](30) NULL,
	[ReferenceNumber] [nvarchar](100) NULL,
	[PropertyId] [int] NULL,
	[RateNumber] [nvarchar](100) NULL,
	[StatusId] [int] NOT NULL,
	[AccountHolder] [nvarchar](100) NULL,
	[IsRMSAccount] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AccountTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccountTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.AccountTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AccountTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccountTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.AccountTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AdditionalPropertyContactAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdditionalPropertyContactAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[IncentivePolicyPropertyId] [int] NOT NULL,
	[TitleTypeId] [int] NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[CellPhoneNumber] [nvarchar](max) NULL,
	[BusinessPhoneNumber] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AdditionalPropertyContactAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AdditionalPropertyContacts]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdditionalPropertyContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IncentivePolicyPropertyId] [int] NOT NULL,
	[TitleTypeId] [int] NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[CellPhoneNumber] [nvarchar](max) NULL,
	[BusinessPhoneNumber] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.AdditionalPropertyContacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AdditionalPropertyOwnerAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdditionalPropertyOwnerAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[RatesNumber] [nvarchar](100) NULL,
	[ExecutorContactNumber] [nvarchar](100) NULL,
	[ExecutorName] [nvarchar](128) NULL,
	[IsDeceased] [bit] NOT NULL,
	[IsRegisteredOwner] [bit] NOT NULL,
	[OwnerIdentificationNumber] [nvarchar](100) NULL,
	[OwnerName] [nvarchar](250) NULL,
	[NoLongerRegisteredOwnerReason] [nvarchar](500) NULL,
	[PropertyId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[CountryOfIssueTypeId] [int] NULL,
	[IdentificationTypeId] [int] NULL,
 CONSTRAINT [PK_dbo.AdditionalPropertyOwnerAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AdditionalPropertyOwners]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdditionalPropertyOwners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RatesNumber] [nvarchar](100) NULL,
	[ExecutorContactNumber] [nvarchar](100) NULL,
	[ExecutorName] [nvarchar](100) NULL,
	[IsDeceased] [bit] NOT NULL,
	[IsRegisteredOwner] [bit] NOT NULL,
	[OwnerIdentificationNumber] [nvarchar](100) NULL,
	[OwnerName] [nvarchar](100) NULL,
	[NoLongerRegisteredOwnerReason] [nvarchar](250) NULL,
	[PropertyId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[CountryOfIssueTypeId] [int] NULL,
	[IdentificationTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.AdditionalPropertyOwners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AgentAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AgentAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CustomerTypeId] [int] NOT NULL,
	[IdentificationTypeId] [int] NOT NULL,
	[CountryOfIssueTypeId] [int] NULL,
	[IdentificationNumber] [nvarchar](100) NULL,
	[TitleTypeId] [int] NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Gender] [nvarchar](25) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[WorkPhoneNumber] [nvarchar](100) NULL,
	[HomePhoneNumber] [nvarchar](100) NULL,
	[CellPhoneNumber] [nvarchar](100) NULL,
	[PhysicalAddress1] [nvarchar](100) NULL,
	[PhysicalAddress2] [nvarchar](100) NULL,
	[PhysicalAddress3] [nvarchar](100) NULL,
	[PhysicalAddress4] [nvarchar](100) NULL,
	[PhysicalAddress5] [nvarchar](100) NULL,
	[PhysicalAddressCode] [int] NOT NULL,
	[PostalAddress1] [nvarchar](100) NULL,
	[PostalAddress2] [nvarchar](100) NULL,
	[PostalAddress3] [nvarchar](100) NULL,
	[PostalAddress4] [nvarchar](100) NULL,
	[PostalAddress5] [nvarchar](100) NULL,
	[PostalAddressCode] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.AgentAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AgentCustomerAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AgentCustomerAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[AgentId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.AgentCustomerAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AgentCustomers]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AgentCustomers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgentId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.AgentCustomers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Agents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CustomerTypeId] [int] NOT NULL,
	[IdentificationTypeId] [int] NULL,
	[CountryOfIssueTypeId] [int] NULL,
	[IdentificationNumber] [nvarchar](100) NULL,
	[TitleTypeId] [int] NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Gender] [nvarchar](100) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[WorkPhoneNumber] [nvarchar](max) NULL,
	[HomePhoneNumber] [nvarchar](100) NULL,
	[CellPhoneNumber] [nvarchar](100) NULL,
	[PhysicalAddress1] [nvarchar](128) NULL,
	[PhysicalAddress2] [nvarchar](128) NULL,
	[PhysicalAddress3] [nvarchar](128) NULL,
	[PhysicalAddress4] [nvarchar](128) NULL,
	[PhysicalAddress5] [nvarchar](128) NULL,
	[PhysicalAddressCode] [int] NOT NULL,
	[PostalAddress1] [nvarchar](128) NULL,
	[PostalAddress2] [nvarchar](128) NULL,
	[PostalAddress3] [nvarchar](128) NULL,
	[PostalAddress4] [nvarchar](128) NULL,
	[PostalAddress5] [nvarchar](128) NULL,
	[PostalAddressCode] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Agents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ApplicationAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApplicationAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[ApplicationAbbreviation] [nvarchar](25) NOT NULL,
	[IsOnline] [bit] NOT NULL,
	[SeedDate] [datetime] NOT NULL,
	[Seed] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ApplicationAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ApplicationRoleAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApplicationRoleAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[RoleId] [nvarchar](128) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ApplicationRoleAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ApplicationRoles]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApplicationRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[RoleId] [nvarchar](128) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ApplicationRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Applications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[ApplicationAbbreviation] [nvarchar](30) NOT NULL,
	[IsOnline] [bit] NOT NULL,
	[SeedDate] [datetime] NOT NULL,
	[Seed] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Applications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ApplicationUserRoleAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApplicationUserRoleAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[SystemUserId] [int] NOT NULL,
	[RoleId] [nvarchar](128) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ApplicationUserRoleAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ApplicationUserRoles]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApplicationUserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[SystemUserId] [int] NOT NULL,
	[RoleId] [nvarchar](128) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ApplicationUserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AppSettingAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppSettingAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[Value] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.AppSettingAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AppSettings]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[Value] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.AppSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[SystemUserId] [int] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[UnconfirmedEmail] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Audits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Audits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Audits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](max) NULL,
	[PrimaryKey] [int] NOT NULL,
	[TableName] [nvarchar](max) NULL,
	[ColumnName] [nvarchar](max) NULL,
	[OriginalValue] [nvarchar](max) NULL,
	[CurrentValue] [nvarchar](max) NULL,
	[AuditBySystemUserId] [int] NULL,
	[AuditDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Audits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BillDirectories]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BillDirectories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BillDirectories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [nvarchar](30) NULL,
	[BillDate] [nvarchar](30) NULL,
	[BillLocation] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.BillDirectories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CategoryTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CategoryTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.CategoryTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CategoryTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CategoryTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.CategoryTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Countries]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CountryAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CountryAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CountryAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.CountryAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CustomerAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[CustomerTypeId] [int] NOT NULL,
	[IdentificationTypeId] [int] NOT NULL,
	[CountryOfIssueTypeId] [int] NULL,
	[IdentificationNumber] [nvarchar](max) NULL,
	[TitleTypeId] [int] NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Gender] [nvarchar](100) NULL,
	[IsDeceased] [bit] NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[WorkPhoneNumber] [nvarchar](100) NULL,
	[HomePhoneNumber] [nvarchar](100) NULL,
	[CellPhoneNumber] [nvarchar](100) NULL,
	[PhysicalAddress1] [nvarchar](25) NULL,
	[PhysicalAddress2] [nvarchar](100) NULL,
	[PhysicalAddress3] [nvarchar](100) NULL,
	[PhysicalAddress4] [nvarchar](100) NULL,
	[PhysicalAddress5] [nvarchar](100) NULL,
	[PhysicalAddressCode] [int] NOT NULL,
	[PostalAddress1] [nvarchar](25) NULL,
	[PostalAddress2] [nvarchar](100) NULL,
	[PostalAddress3] [nvarchar](100) NULL,
	[PostalAddress4] [nvarchar](100) NULL,
	[PostalAddress5] [nvarchar](100) NULL,
	[PostalAddressCode] [int] NOT NULL,
	[SystemUserId] [int] NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.CustomerAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerTypeId] [int] NOT NULL,
	[IdentificationTypeId] [int] NULL,
	[CountryOfIssueTypeId] [int] NULL,
	[IdentificationNumber] [nvarchar](100) NULL,
	[TitleTypeId] [int] NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Gender] [nvarchar](25) NULL,
	[IsDeceased] [bit] NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[WorkPhoneNumber] [nvarchar](100) NULL,
	[HomePhoneNumber] [nvarchar](100) NULL,
	[CellPhoneNumber] [nvarchar](100) NULL,
	[PhysicalAddress1] [nvarchar](25) NULL,
	[PhysicalAddress2] [nvarchar](100) NULL,
	[PhysicalAddress3] [nvarchar](100) NULL,
	[PhysicalAddress4] [nvarchar](100) NULL,
	[PhysicalAddress5] [nvarchar](100) NULL,
	[PhysicalAddressCode] [int] NOT NULL,
	[PostalAddress1] [nvarchar](25) NULL,
	[PostalAddress2] [nvarchar](100) NULL,
	[PostalAddress3] [nvarchar](100) NULL,
	[PostalAddress4] [nvarchar](100) NULL,
	[PostalAddress5] [nvarchar](100) NULL,
	[PostalAddressCode] [int] NOT NULL,
	[SystemUserId] [int] NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CustomerTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.CustomerTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CustomerTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.CustomerTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[ReferenceTypeId] [int] NOT NULL,
	[ReferenceId] [int] NOT NULL,
	[LocationTypeId] [int] NOT NULL,
	[DocumentLocation] [nvarchar](500) NULL,
	[DocumentName] [nvarchar](250) NULL,
	[StatusId] [int] NOT NULL,
	[DocumentCheckListId] [int] NOT NULL,
	[FileId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.DocumentAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentCheckListAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentCheckListAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[ReferenceTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.DocumentCheckListAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentCheckLists]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentCheckLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[ReferenceTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.DocumentCheckLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentReferenceAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentReferenceAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[DocumentId] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[ReferenceTypeId] [int] NOT NULL,
	[ReferenceId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.DocumentReferenceAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentReferences]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentReferences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentId] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[ReferenceTypeId] [int] NOT NULL,
	[ReferenceId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.DocumentReferences] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Documents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ReferenceTypeId] [int] NOT NULL,
	[ReferenceId] [int] NOT NULL,
	[LocationTypeId] [int] NOT NULL,
	[DocumentLocation] [nvarchar](250) NULL,
	[DocumentName] [nvarchar](500) NULL,
	[StatusId] [int] NOT NULL,
	[DocumentCheckListId] [int] NOT NULL,
	[FileId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Documents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.DocumentTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.DocumentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DomiciliumAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DomiciliumAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Address1] [nvarchar](25) NULL,
	[Address2] [nvarchar](100) NULL,
	[Address3] [nvarchar](100) NULL,
	[Address4] [nvarchar](100) NULL,
	[Address5] [nvarchar](100) NULL,
	[AddressCode] [nvarchar](25) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.DomiciliumAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Domiciliums]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Domiciliums]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Domiciliums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[Address3] [nvarchar](100) NULL,
	[Address4] [nvarchar](100) NULL,
	[Address5] [nvarchar](100) NULL,
	[AddressCode] [nvarchar](25) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Domiciliums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[eBillingViewOnly]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eBillingViewOnly]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eBillingViewOnly](
	[AccountNumber] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_Error]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Application] [nvarchar](60) NOT NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [ntext] NOT NULL,
 CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY NONCLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Entities]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Entities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[EntityTypeId] [int] NOT NULL,
	[EntityRegistrationNumber] [nvarchar](100) NULL,
	[EntityName] [nvarchar](250) NULL,
	[BranchOrSectionName] [nvarchar](100) NULL,
	[TradingName] [nvarchar](250) NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Entities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EntityAgentAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EntityAgentAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[AgentId] [int] NOT NULL,
	[EntityId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntityAgentAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EntityAgents]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgents]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EntityAgents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgentId] [int] NOT NULL,
	[EntityId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntityAgents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EntityAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EntityAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[EntityTypeId] [int] NOT NULL,
	[EntityRegistrationNumber] [nvarchar](100) NULL,
	[EntityName] [nvarchar](500) NULL,
	[BranchOrSectionName] [nvarchar](100) NULL,
	[TradingName] [nvarchar](500) NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntityAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EntityTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EntityTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntityTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EntityTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EntityTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntityTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ExecutorAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExecutorAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[ContactNumber] [nvarchar](100) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[PostalAddress1] [nvarchar](25) NULL,
	[PostalAddress2] [nvarchar](100) NULL,
	[PostalAddress3] [nvarchar](100) NULL,
	[PostalAddress4] [nvarchar](100) NULL,
	[PostalAddress5] [nvarchar](100) NULL,
	[PostalAddressCode] [nvarchar](25) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ExecutorAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Executors]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Executors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Executors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[ContactNumber] [nvarchar](100) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[PostalAddress1] [nvarchar](100) NULL,
	[PostalAddress2] [nvarchar](100) NULL,
	[PostalAddress3] [nvarchar](100) NULL,
	[PostalAddress4] [nvarchar](100) NULL,
	[PostalAddress5] [nvarchar](100) NULL,
	[PostalAddressCode] [nvarchar](30) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Executors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Files]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Files](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](1024) NULL,
	[ContentType] [nvarchar](256) NULL,
	[Content] [varbinary](max) NULL,
	[FileSize] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FocusAreaAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FocusAreaAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[FocusAreaName] [nvarchar](max) NULL,
	[FocusAreaDescription] [nvarchar](max) NULL,
	[Key] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.FocusAreaAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FocusAreas]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FocusAreas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FocusAreaName] [nvarchar](max) NULL,
	[FocusAreaDescription] [nvarchar](max) NULL,
	[Key] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.FocusAreas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IdentificationTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IdentificationTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.IdentificationTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IdentificationTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IdentificationTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.IdentificationTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IncentivePolicies]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IncentivePolicies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryTypeId] [int] NOT NULL,
	[ApplicationNumber] [nvarchar](max) NULL,
	[CustomerId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[IndustryId] [int] NULL,
	[ClerkUserId] [int] NULL,
	[HasElectronicSignature] [bit] NOT NULL,
	[DeclarationName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[ApplicationDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.IncentivePolicies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IncentivePolicyAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IncentivePolicyAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[CategoryTypeId] [int] NOT NULL,
	[ApplicationNumber] [nvarchar](max) NULL,
	[CustomerId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[IndustryId] [int] NULL,
	[ClerkUserId] [int] NULL,
	[HasElectronicSignature] [bit] NOT NULL,
	[DeclarationName] [nvarchar](max) NULL,
	[ApplicationDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.IncentivePolicyAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IncentivePolicyProperties]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IncentivePolicyProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IncentivePolicyId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.IncentivePolicyProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IncentivePolicyPropertyAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IncentivePolicyPropertyAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[IncentivePolicyId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.IncentivePolicyPropertyAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Industries]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Industries]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Industries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubSectorId] [int] NOT NULL,
	[IndustryName] [nvarchar](max) NULL,
	[IndustryDescription] [nvarchar](max) NULL,
	[Key] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Industries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IndustryAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IndustryAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IndustryAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[SubSectorId] [int] NOT NULL,
	[IndustryName] [nvarchar](max) NULL,
	[IndustryDescription] [nvarchar](max) NULL,
	[Key] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.IndustryAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[InvestmentOperationalExpenditureAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InvestmentOperationalExpenditureAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[PropertyInvestmentId] [int] NOT NULL,
	[Foreign] [int] NOT NULL,
	[OutBound] [int] NOT NULL,
	[InBound] [int] NOT NULL,
 CONSTRAINT [PK_dbo.InvestmentOperationalExpenditureAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[InvestmentOperationalExpenditures]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InvestmentOperationalExpenditures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyInvestmentId] [int] NOT NULL,
	[Foreign] [decimal](18, 2) NOT NULL,
	[OutBound] [decimal](18, 2) NOT NULL,
	[InBound] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.InvestmentOperationalExpenditures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[InvestmentValueAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InvestmentValueAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[InvestmentValueTypeId] [int] NOT NULL,
	[ValueYear1] [decimal](18, 2) NOT NULL,
	[ValueYear2] [decimal](18, 2) NULL,
	[ValueYear3] [decimal](18, 2) NULL,
	[ValueYear4] [decimal](18, 2) NULL,
	[ValueYear5] [decimal](18, 2) NULL,
	[ValueTotal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.InvestmentValueAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[InvestmentValues]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InvestmentValues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvestmentValueTypeId] [int] NOT NULL,
	[ValueYear1] [decimal](18, 2) NOT NULL,
	[ValueYear2] [decimal](18, 2) NULL,
	[ValueYear3] [decimal](18, 2) NULL,
	[ValueYear4] [decimal](18, 2) NULL,
	[ValueYear5] [decimal](18, 2) NULL,
	[ValueTotal] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.InvestmentValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[InvestmentValueTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InvestmentValueTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.InvestmentValueTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[InvestmentValueTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InvestmentValueTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.InvestmentValueTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LinkedAccountAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkedAccountAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[RecipientTypeId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[LinkedAccountTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LinkedAccountAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LinkedAccounts]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkedAccounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[RecipientTypeId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[LinkedAccountTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LinkedAccounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LinkedAccountTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkedAccountTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LinkedAccountTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LinkedAccountTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkedAccountTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LinkedAccountTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LinkedEmailAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkedEmailAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[LinkedAccountId] [int] NOT NULL,
	[RecipientTypeId] [int] NOT NULL,
	[EmailAddress] [nvarchar](100) NOT NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LinkedEmailAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LinkedEmails]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkedEmails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LinkedAccountId] [int] NOT NULL,
	[RecipientTypeId] [int] NOT NULL,
	[EmailAddress] [nvarchar](100) NOT NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LinkedEmails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LocationTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LocationTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LocationTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LocationTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LocationTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LocationTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LogAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LogAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[LogEntry] [nvarchar](max) NULL,
	[LogTypeId] [int] NOT NULL,
	[ReferenceId] [int] NOT NULL,
	[ReferenceTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LogAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LogEntry] [nvarchar](100) NULL,
	[LogTypeId] [int] NOT NULL,
	[ReferenceId] [int] NOT NULL,
	[ReferenceTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LogTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LogTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LogTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LogTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LogTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.LogTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MeasurementTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MeasurementTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.MeasurementTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MeasurementTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MeasurementTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.MeasurementTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Missing]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Missing]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Missing](
	[CUST_ACC_NUMBER] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MyTable]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyTable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MyTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QueryTypeId] [int] NULL,
	[Comment] [nvarchar](max) NULL,
	[Email] [nvarchar](100) NULL,
	[FullName] [nvarchar](100) NULL,
	[ReferenceNumber] [nvarchar](100) NULL,
	[IsResolved] [bit] NOT NULL,
	[ResolutionComment] [nvarchar](max) NULL,
	[ContactNumber] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[ResolvedDateTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[NoteAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NoteAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NoteAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[NoteEntry] [nvarchar](1000) NULL,
	[NoteTypeId] [int] NOT NULL,
	[ReferenceId] [int] NOT NULL,
	[ReferenceTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.NoteAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Notes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoteEntry] [nvarchar](1000) NULL,
	[NoteTypeId] [int] NOT NULL,
	[ReferenceId] [int] NOT NULL,
	[ReferenceTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Notes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[NoteTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NoteTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.NoteTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[NoteTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NoteTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.NoteTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Properties]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Properties]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Properties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RatesNumber] [nvarchar](100) NULL,
	[PhysicalAddress1] [nvarchar](100) NULL,
	[PhysicalAddress2] [nvarchar](100) NULL,
	[PhysicalAddress3] [nvarchar](100) NULL,
	[PhysicalAddress4] [nvarchar](100) NULL,
	[PhysicalAddress5] [nvarchar](100) NULL,
	[PhysicalAddressCode] [nvarchar](30) NULL,
	[PropertyDescription] [nvarchar](250) NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[MarketValue] [decimal](18, 2) NOT NULL,
	[RatingCategoryCode] [nvarchar](max) NULL,
	[SectionType] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Properties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PropertyAccountAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyAccountAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[AccountTypeId] [int] NOT NULL,
	[AccountNumber] [nvarchar](30) NULL,
	[BilledFirstName] [nvarchar](100) NULL,
	[BilledLastName] [nvarchar](100) NULL,
	[BilledIdentificationNumber] [nvarchar](100) NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.PropertyAccountAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PropertyAccounts]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyAccounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyId] [int] NOT NULL,
	[AccountTypeId] [int] NOT NULL,
	[AccountNumber] [nvarchar](30) NULL,
	[BilledFirstName] [nvarchar](100) NULL,
	[BilledLastName] [nvarchar](100) NULL,
	[BilledIdentificationNumber] [nvarchar](100) NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.PropertyAccounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PropertyAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[RatesNumber] [nvarchar](30) NULL,
	[PhysicalAddress1] [nvarchar](25) NULL,
	[PhysicalAddress2] [nvarchar](100) NULL,
	[PhysicalAddress3] [nvarchar](100) NULL,
	[PhysicalAddress4] [nvarchar](100) NULL,
	[PhysicalAddress5] [nvarchar](100) NULL,
	[PhysicalAddressCode] [nvarchar](25) NULL,
	[PropertyDescription] [nvarchar](250) NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[MarketValue] [decimal](18, 2) NOT NULL,
	[RatingCategoryCode] [nvarchar](max) NULL,
	[SectionType] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PropertyAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PropertyInvestmentAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyInvestmentAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[VatNumber] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[InvestmentDescription] [nvarchar](max) NULL,
	[TypeOfServices] [nvarchar](max) NULL,
	[BbbeeStatus] [nvarchar](max) NULL,
	[SupplierNumber] [nvarchar](max) NULL,
	[SicCode] [nvarchar](max) NULL,
	[DevelopmentPeriod] [nvarchar](max) NULL,
	[IncentiveProgrammeCurrentBenefits] [nvarchar](max) NULL,
	[ImpactOnSkillDevelopment] [nvarchar](max) NULL,
	[SupportServices] [nvarchar](max) NULL,
	[ProjectedStartDateTime] [datetime] NOT NULL,
	[ProjectedEndDateTime] [datetime] NOT NULL,
	[IncentivePolicyPropertyId] [int] NOT NULL,
	[TaxNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PropertyInvestmentAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PropertyInvestmentMeasurementAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyInvestmentMeasurementAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[PropertyInvestmentId] [int] NOT NULL,
	[Size] [int] NOT NULL,
	[UnitOfMeasureTypeId] [int] NOT NULL,
	[MeasurementTypeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PropertyInvestmentMeasurementAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PropertyInvestmentMeasurements]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyInvestmentMeasurements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyInvestmentId] [int] NOT NULL,
	[Size] [int] NOT NULL,
	[UnitOfMeasureTypeId] [int] NOT NULL,
	[MeasurementTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.PropertyInvestmentMeasurements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PropertyInvestments]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyInvestments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvestmentDescription] [nvarchar](max) NULL,
	[TypeOfServices] [nvarchar](max) NULL,
	[BbbeeStatus] [nvarchar](max) NULL,
	[SupplierNumber] [nvarchar](max) NULL,
	[SicCode] [nvarchar](max) NULL,
	[DevelopmentPeriod] [nvarchar](max) NULL,
	[VatNumber] [nvarchar](max) NULL,
	[IncentiveProgrammeCurrentBenefits] [nvarchar](max) NULL,
	[ImpactOnSkillDevelopment] [nvarchar](max) NULL,
	[SupportServices] [nvarchar](max) NULL,
	[ProjectedStartDateTime] [datetime] NOT NULL,
	[ProjectedEndDateTime] [datetime] NOT NULL,
	[IncentivePolicyPropertyId] [int] NOT NULL,
	[TaxNumber] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.PropertyInvestments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PropertyInvestmentValueAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyInvestmentValueAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[PropertyInvestmentId] [int] NOT NULL,
	[InvestmentValueId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PropertyInvestmentValueAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PropertyInvestmentValues]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PropertyInvestmentValues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyInvestmentId] [int] NOT NULL,
	[InvestmentValueId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.PropertyInvestmentValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Queries]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Queries]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Queries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QueryTypeId] [int] NULL,
	[Comment] [nvarchar](max) NULL,
	[Email] [nvarchar](100) NULL,
	[FullName] [nvarchar](100) NULL,
	[ReferenceNumber] [nvarchar](100) NULL,
	[ResolutionComment] [nvarchar](max) NULL,
	[ContactNumber] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[ResolvedDateTime] [datetime] NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_dbo.Queries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QueryAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QueryAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QueryAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[QueryTypeId] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Email] [nvarchar](100) NULL,
	[FullName] [nvarchar](100) NULL,
	[ReferenceNumber] [nvarchar](100) NULL,
	[ResolutionComment] [nvarchar](max) NULL,
	[ContactNumber] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[ResolvedDateTime] [datetime] NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_dbo.QueryAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QueryTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QueryTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](100) NULL,
	[Index] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.QueryTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QueryTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QueryTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[Index] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.QueryTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RatesRebateAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RatesRebateAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[ApplicationNumber] [nvarchar](100) NULL,
	[ApplicantCustomerId] [int] NOT NULL,
	[OwnerCustomerId] [int] NOT NULL,
	[ExecutorCustomerId] [int] NULL,
	[ExecutorId] [int] NULL,
	[DomiciliumId] [int] NOT NULL,
	[InOwnCapacity] [bit] NOT NULL,
	[IsDeclared] [bit] NOT NULL,
	[StatusId] [int] NOT NULL,
	[ClerkUserId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[IsManual] [bit] NOT NULL,
	[IsConflict] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.RatesRebateAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RatesRebateProperties]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RatesRebateProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyId] [int] NOT NULL,
	[RatesRebateId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.RatesRebateProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RatesRebatePropertyAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RatesRebatePropertyAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[RatesRebateId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.RatesRebatePropertyAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RatesRebates]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RatesRebates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationNumber] [nvarchar](100) NULL,
	[ApplicantCustomerId] [int] NOT NULL,
	[OwnerCustomerId] [int] NOT NULL,
	[ExecutorCustomerId] [int] NULL,
	[ExecutorId] [int] NULL,
	[DomiciliumId] [int] NOT NULL,
	[InOwnCapacity] [bit] NOT NULL,
	[IsDeclared] [bit] NOT NULL,
	[StatusId] [int] NOT NULL,
	[IsManual] [bit] NOT NULL,
	[ClerkUserId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[IsConflict] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.RatesRebates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RecipientTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RecipientTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.RecipientTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RecipientTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RecipientTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.RecipientTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ReferenceTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReferenceTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ReferenceTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ReferenceTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReferenceTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ReferenceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RmsBilling]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsBilling]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RmsBilling](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [bigint] NOT NULL,
	[EmailAddress] [varchar](128) NOT NULL,
	[IsNew] [bit] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_RmsBilling] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RmsBillingAccounts]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsBillingAccounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RmsBillingAccounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BillYear] [int] NULL,
	[BillMonth] [int] NULL,
	[AccountNumber] [nvarchar](25) NULL,
	[IsNowAvailable] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedDateTime] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RmsReconErrors]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsReconErrors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RmsReconErrors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PackageId] [nvarchar](1000) NULL,
	[TaskName] [nvarchar](250) NULL,
	[ErrorCode] [int] NULL,
	[ErrorDescription] [nvarchar](max) NULL,
	[CreatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RmsReconExceptions]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsReconExceptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RmsReconExceptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [varchar](25) NOT NULL,
	[GeneratedDate] [date] NOT NULL,
	[IsUploaded] [bit] NOT NULL,
	[UploadedDateTime] [datetime] NULL,
	[ProcessedDateTime] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RmsReconMailArchives]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsReconMailArchives]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RmsReconMailArchives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[MailedDateTime] [datetime] NOT NULL,
	[MailTo] [varchar](1000) NOT NULL,
	[FileSourcePath] [nvarchar](500) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RmsReconStaging]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsReconStaging]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RmsReconStaging](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GeneratedDate] [nvarchar](260) NOT NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[GenOrEmail] [varchar](500) NOT NULL,
	[ArchivePath] [nvarchar](500) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RmsReconStats]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsReconStats]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RmsReconStats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GeneratedDate] [date] NULL,
	[Accounts] [int] NOT NULL,
	[Emailed] [int] NOT NULL,
	[MissingInvoices] [int] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RmsTemporaryRatesRebates]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RmsTemporaryRatesRebates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RmsTemporaryRatesRebates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [nvarchar](11) NULL,
	[RateNumber] [nvarchar](8) NULL,
	[RebateCategoryCode] [nvarchar](2) NULL,
	[RebateCategoryDescription] [nvarchar](255) NULL,
	[RebateFromDateTime] [datetime] NOT NULL,
	[RebateToDateTime] [datetime] NOT NULL,
	[Status] [nvarchar](3) NULL,
	[ErrorDescription] [nvarchar](255) NULL,
	[AuthorisedDateTime] [datetime] NOT NULL,
	[RmsProcessedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.RmsTemporaryRatesRebates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Status]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[StatusTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[StatusAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatusAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StatusAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[StatusTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.StatusAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[StatusTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StatusTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.StatusTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[StatusTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StatusTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.StatusTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SubSectorAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SubSectorAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[FocusAreaId] [int] NOT NULL,
	[SubSectorName] [nvarchar](100) NULL,
	[SubSectorDescription] [nvarchar](100) NULL,
	[Key] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SubSectorAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SubSectors]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubSectors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SubSectors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FocusAreaId] [int] NOT NULL,
	[SubSectorName] [nvarchar](100) NULL,
	[SubSectorDescription] [nvarchar](100) NULL,
	[Key] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.SubSectors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SystemUserAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemUserAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[CompanyName] [nvarchar](250) NULL,
	[Designation] [nvarchar](250) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[SystemUserTypeId] [nvarchar](max) NULL,
	[StatusId] [nvarchar](25) NULL,
	[IsPasswordReset] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[IsTemporaryPassword] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemUserAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SystemUserExceptions]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserExceptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemUserExceptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CustomerFirstName] [nvarchar](max) NULL,
	[CustomerLastName] [nvarchar](max) NULL,
	[PropertyName] [nvarchar](max) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[DateLogged] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.SystemUserExceptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SystemUserLogTimes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserLogTimes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemUserLogTimes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SystemUserId] [int] NOT NULL,
	[SessionId] [nvarchar](max) NULL,
	[LoginTime] [datetime] NOT NULL,
	[LogoutTime] [datetime] NULL,
	[IPAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SystemUserLogTimes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SystemUsers]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Designation] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[SystemUserTypeId] [nvarchar](max) NULL,
	[StatusId] [nvarchar](max) NULL,
	[IsPasswordReset] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
	[IsTemporaryPassword] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SystemUserTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemUserTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.SystemUserTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SystemUserTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemUserTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.SystemUserTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TitleTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TitleTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.TitleTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TitleTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TitleTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.TitleTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UnitOfmeasureTypeAudits]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UnitOfmeasureTypeAudits](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](10) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Key] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.UnitOfmeasureTypeAudits] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UnitOfmeasureTypes]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UnitOfmeasureTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Key] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsLocked] [bit] NULL,
	[CreatedBySystemUserId] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedBySystemUserId] [int] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.UnitOfmeasureTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[eMailBills]    Script Date: 2019/06/02 17:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[eMailBills]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[eMailBills]
AS
SELECT DISTINCT a.AccountNumber, le.EmailAddress
FROM            dbo.Accounts AS a INNER JOIN
                         dbo.LinkedAccounts AS la ON la.AccountId = a.Id INNER JOIN
                         dbo.LinkedEmails AS le ON le.LinkedAccountId = la.Id
WHERE        (la.IsActive = 1) AND (la.IsDeleted = 0) AND (la.RecipientTypeId = 6) AND (la.StatusId IN (4)) AND (le.StatusId IN (41)) AND (le.IsActive = 1)
' 
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AccountAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AccountAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountAudits]') AND name = N'IX_PropertyId')
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[AccountAudits]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[AccountAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Accounts]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Accounts]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND name = N'IX_PropertyId')
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[Accounts]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Accounts]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AccountTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AccountTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AccountTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AccountTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AdditionalPropertyContactAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IncentivePolicyPropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]') AND name = N'IX_IncentivePolicyPropertyId')
CREATE NONCLUSTERED INDEX [IX_IncentivePolicyPropertyId] ON [dbo].[AdditionalPropertyContactAudits]
(
	[IncentivePolicyPropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AdditionalPropertyContactAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]') AND name = N'IX_TitleTypeId')
CREATE NONCLUSTERED INDEX [IX_TitleTypeId] ON [dbo].[AdditionalPropertyContactAudits]
(
	[TitleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AdditionalPropertyContacts]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IncentivePolicyPropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]') AND name = N'IX_IncentivePolicyPropertyId')
CREATE NONCLUSTERED INDEX [IX_IncentivePolicyPropertyId] ON [dbo].[AdditionalPropertyContacts]
(
	[IncentivePolicyPropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AdditionalPropertyContacts]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]') AND name = N'IX_TitleTypeId')
CREATE NONCLUSTERED INDEX [IX_TitleTypeId] ON [dbo].[AdditionalPropertyContacts]
(
	[TitleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_CountryOfIssueTypeId')
CREATE NONCLUSTERED INDEX [IX_CountryOfIssueTypeId] ON [dbo].[AdditionalPropertyOwnerAudits]
(
	[CountryOfIssueTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AdditionalPropertyOwnerAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_IdentificationTypeId')
CREATE NONCLUSTERED INDEX [IX_IdentificationTypeId] ON [dbo].[AdditionalPropertyOwnerAudits]
(
	[IdentificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AdditionalPropertyOwnerAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_PropertyId')
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[AdditionalPropertyOwnerAudits]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[AdditionalPropertyOwnerAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_CountryOfIssueTypeId')
CREATE NONCLUSTERED INDEX [IX_CountryOfIssueTypeId] ON [dbo].[AdditionalPropertyOwners]
(
	[CountryOfIssueTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AdditionalPropertyOwners]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_IdentificationTypeId')
CREATE NONCLUSTERED INDEX [IX_IdentificationTypeId] ON [dbo].[AdditionalPropertyOwners]
(
	[IdentificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AdditionalPropertyOwners]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_PropertyId')
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[AdditionalPropertyOwners]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[AdditionalPropertyOwners]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_CountryOfIssueTypeId')
CREATE NONCLUSTERED INDEX [IX_CountryOfIssueTypeId] ON [dbo].[AgentAudits]
(
	[CountryOfIssueTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AgentAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[AgentAudits]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_CustomerTypeId')
CREATE NONCLUSTERED INDEX [IX_CustomerTypeId] ON [dbo].[AgentAudits]
(
	[CustomerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_IdentificationTypeId')
CREATE NONCLUSTERED INDEX [IX_IdentificationTypeId] ON [dbo].[AgentAudits]
(
	[IdentificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AgentAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[AgentAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentAudits]') AND name = N'IX_TitleTypeId')
CREATE NONCLUSTERED INDEX [IX_TitleTypeId] ON [dbo].[AgentAudits]
(
	[TitleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]') AND name = N'IX_AgentId')
CREATE NONCLUSTERED INDEX [IX_AgentId] ON [dbo].[AgentCustomerAudits]
(
	[AgentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AgentCustomerAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[AgentCustomerAudits]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AgentCustomerAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomers]') AND name = N'IX_AgentId')
CREATE NONCLUSTERED INDEX [IX_AgentId] ON [dbo].[AgentCustomers]
(
	[AgentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomers]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AgentCustomers]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomers]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[AgentCustomers]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AgentCustomers]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AgentCustomers]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_CountryOfIssueTypeId')
CREATE NONCLUSTERED INDEX [IX_CountryOfIssueTypeId] ON [dbo].[Agents]
(
	[CountryOfIssueTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Agents]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Agents]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_CustomerTypeId')
CREATE NONCLUSTERED INDEX [IX_CustomerTypeId] ON [dbo].[Agents]
(
	[CustomerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_IdentificationTypeId')
CREATE NONCLUSTERED INDEX [IX_IdentificationTypeId] ON [dbo].[Agents]
(
	[IdentificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Agents]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Agents]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Agents]') AND name = N'IX_TitleTypeId')
CREATE NONCLUSTERED INDEX [IX_TitleTypeId] ON [dbo].[Agents]
(
	[TitleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[ApplicationAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ApplicationAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]') AND name = N'IX_ApplicationId')
CREATE NONCLUSTERED INDEX [IX_ApplicationId] ON [dbo].[ApplicationRoleAudits]
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[ApplicationRoleAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ApplicationRoleAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]') AND name = N'IX_RoleId')
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[ApplicationRoleAudits]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]') AND name = N'IX_ApplicationId')
CREATE NONCLUSTERED INDEX [IX_ApplicationId] ON [dbo].[ApplicationRoles]
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[ApplicationRoles]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ApplicationRoles]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]') AND name = N'IX_RoleId')
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[ApplicationRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Applications]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Applications]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND name = N'IX_ApplicationId')
CREATE NONCLUSTERED INDEX [IX_ApplicationId] ON [dbo].[ApplicationUserRoleAudits]
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[ApplicationUserRoleAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ApplicationUserRoleAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND name = N'IX_RoleId')
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[ApplicationUserRoleAudits]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]') AND name = N'IX_SystemUserId')
CREATE NONCLUSTERED INDEX [IX_SystemUserId] ON [dbo].[ApplicationUserRoleAudits]
(
	[SystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND name = N'IX_ApplicationId')
CREATE NONCLUSTERED INDEX [IX_ApplicationId] ON [dbo].[ApplicationUserRoles]
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[ApplicationUserRoles]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ApplicationUserRoles]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND name = N'IX_RoleId')
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[ApplicationUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]') AND name = N'IX_SystemUserId')
CREATE NONCLUSTERED INDEX [IX_SystemUserId] ON [dbo].[ApplicationUserRoles]
(
	[SystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AppSettingAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AppSettingAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AppSettings]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[AppSettings]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AppSettings]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[AppSettings]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND name = N'RoleNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_RoleId')
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'IX_SystemUserId')
CREATE NONCLUSTERED INDEX [IX_SystemUserId] ON [dbo].[AspNetUsers]
(
	[SystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'UserNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuditBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Audits]') AND name = N'IX_AuditBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_AuditBySystemUserId] ON [dbo].[Audits]
(
	[AuditBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BillDirectories]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[BillDirectories]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BillDirectories]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[BillDirectories]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[CategoryTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CategoryTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[CategoryTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CategoryTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Countries]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Countries]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Countries]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Countries]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CountryAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[CountryAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CountryAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CountryAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_CountryOfIssueTypeId')
CREATE NONCLUSTERED INDEX [IX_CountryOfIssueTypeId] ON [dbo].[CustomerAudits]
(
	[CountryOfIssueTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[CustomerAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_CustomerTypeId')
CREATE NONCLUSTERED INDEX [IX_CustomerTypeId] ON [dbo].[CustomerAudits]
(
	[CustomerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_IdentificationTypeId')
CREATE NONCLUSTERED INDEX [IX_IdentificationTypeId] ON [dbo].[CustomerAudits]
(
	[IdentificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CustomerAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[CustomerAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_SystemUserId')
CREATE NONCLUSTERED INDEX [IX_SystemUserId] ON [dbo].[CustomerAudits]
(
	[SystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAudits]') AND name = N'IX_TitleTypeId')
CREATE NONCLUSTERED INDEX [IX_TitleTypeId] ON [dbo].[CustomerAudits]
(
	[TitleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryOfIssueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_CountryOfIssueTypeId')
CREATE NONCLUSTERED INDEX [IX_CountryOfIssueTypeId] ON [dbo].[Customers]
(
	[CountryOfIssueTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Customers]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_CustomerTypeId')
CREATE NONCLUSTERED INDEX [IX_CustomerTypeId] ON [dbo].[Customers]
(
	[CustomerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdentificationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_IdentificationTypeId')
CREATE NONCLUSTERED INDEX [IX_IdentificationTypeId] ON [dbo].[Customers]
(
	[IdentificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Customers]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Customers]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_SystemUserId')
CREATE NONCLUSTERED INDEX [IX_SystemUserId] ON [dbo].[Customers]
(
	[SystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TitleTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_TitleTypeId')
CREATE NONCLUSTERED INDEX [IX_TitleTypeId] ON [dbo].[Customers]
(
	[TitleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[CustomerTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CustomerTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[CustomerTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CustomerTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[CustomerTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[DocumentAudits]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DocumentCheckListId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_DocumentCheckListId')
CREATE NONCLUSTERED INDEX [IX_DocumentCheckListId] ON [dbo].[DocumentAudits]
(
	[DocumentCheckListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FileId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_FileId')
CREATE NONCLUSTERED INDEX [IX_FileId] ON [dbo].[DocumentAudits]
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LocationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_LocationTypeId')
CREATE NONCLUSTERED INDEX [IX_LocationTypeId] ON [dbo].[DocumentAudits]
(
	[LocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_ReferenceTypeId')
CREATE NONCLUSTERED INDEX [IX_ReferenceTypeId] ON [dbo].[DocumentAudits]
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[DocumentAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND name = N'IX_ApplicationId')
CREATE NONCLUSTERED INDEX [IX_ApplicationId] ON [dbo].[DocumentCheckListAudits]
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentCheckListAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DocumentTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND name = N'IX_DocumentTypeId')
CREATE NONCLUSTERED INDEX [IX_DocumentTypeId] ON [dbo].[DocumentCheckListAudits]
(
	[DocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentCheckListAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]') AND name = N'IX_ReferenceTypeId')
CREATE NONCLUSTERED INDEX [IX_ReferenceTypeId] ON [dbo].[DocumentCheckListAudits]
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND name = N'IX_ApplicationId')
CREATE NONCLUSTERED INDEX [IX_ApplicationId] ON [dbo].[DocumentCheckLists]
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentCheckLists]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DocumentTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND name = N'IX_DocumentTypeId')
CREATE NONCLUSTERED INDEX [IX_DocumentTypeId] ON [dbo].[DocumentCheckLists]
(
	[DocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentCheckLists]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]') AND name = N'IX_ReferenceTypeId')
CREATE NONCLUSTERED INDEX [IX_ReferenceTypeId] ON [dbo].[DocumentCheckLists]
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND name = N'IX_ApplicationId')
CREATE NONCLUSTERED INDEX [IX_ApplicationId] ON [dbo].[DocumentReferenceAudits]
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentReferenceAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DocumentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND name = N'IX_DocumentId')
CREATE NONCLUSTERED INDEX [IX_DocumentId] ON [dbo].[DocumentReferenceAudits]
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentReferenceAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]') AND name = N'IX_ReferenceTypeId')
CREATE NONCLUSTERED INDEX [IX_ReferenceTypeId] ON [dbo].[DocumentReferenceAudits]
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND name = N'IX_ApplicationId')
CREATE NONCLUSTERED INDEX [IX_ApplicationId] ON [dbo].[DocumentReferences]
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentReferences]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DocumentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND name = N'IX_DocumentId')
CREATE NONCLUSTERED INDEX [IX_DocumentId] ON [dbo].[DocumentReferences]
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentReferences]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentReferences]') AND name = N'IX_ReferenceTypeId')
CREATE NONCLUSTERED INDEX [IX_ReferenceTypeId] ON [dbo].[DocumentReferences]
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Documents]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Documents]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DocumentCheckListId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_DocumentCheckListId')
CREATE NONCLUSTERED INDEX [IX_DocumentCheckListId] ON [dbo].[Documents]
(
	[DocumentCheckListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FileId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_FileId')
CREATE NONCLUSTERED INDEX [IX_FileId] ON [dbo].[Documents]
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LocationTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_LocationTypeId')
CREATE NONCLUSTERED INDEX [IX_LocationTypeId] ON [dbo].[Documents]
(
	[LocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Documents]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_ReferenceTypeId')
CREATE NONCLUSTERED INDEX [IX_ReferenceTypeId] ON [dbo].[Documents]
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Documents]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Documents]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[DocumentTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DocumentTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DocumentTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[DomiciliumAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[DomiciliumAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Domiciliums]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Domiciliums]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Domiciliums]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Domiciliums]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ELMAH_Error_App_Time_Seq]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_Error]') AND name = N'IX_ELMAH_Error_App_Time_Seq')
CREATE NONCLUSTERED INDEX [IX_ELMAH_Error_App_Time_Seq] ON [dbo].[ELMAH_Error]
(
	[Application] ASC,
	[TimeUtc] DESC,
	[Sequence] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Entities]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Entities]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EntityTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND name = N'IX_EntityTypeId')
CREATE NONCLUSTERED INDEX [IX_EntityTypeId] ON [dbo].[Entities]
(
	[EntityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Entities]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Entities]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Entities]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]') AND name = N'IX_AgentId')
CREATE NONCLUSTERED INDEX [IX_AgentId] ON [dbo].[EntityAgentAudits]
(
	[AgentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[EntityAgentAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EntityId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]') AND name = N'IX_EntityId')
CREATE NONCLUSTERED INDEX [IX_EntityId] ON [dbo].[EntityAgentAudits]
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[EntityAgentAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgents]') AND name = N'IX_AgentId')
CREATE NONCLUSTERED INDEX [IX_AgentId] ON [dbo].[EntityAgents]
(
	[AgentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgents]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[EntityAgents]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EntityId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgents]') AND name = N'IX_EntityId')
CREATE NONCLUSTERED INDEX [IX_EntityId] ON [dbo].[EntityAgents]
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAgents]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[EntityAgents]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[EntityAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[EntityAudits]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EntityTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND name = N'IX_EntityTypeId')
CREATE NONCLUSTERED INDEX [IX_EntityTypeId] ON [dbo].[EntityAudits]
(
	[EntityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[EntityAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[EntityAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[EntityTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[EntityTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[EntityTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EntityTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[EntityTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[ExecutorAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[ExecutorAudits]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ExecutorAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Executors]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Executors]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Executors]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Executors]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Executors]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Executors]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Files]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Files]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Files]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Files]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[FocusAreaAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[FocusAreaAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreas]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[FocusAreas]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[FocusAreas]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[FocusAreas]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[IdentificationTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IdentificationTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[IdentificationTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IdentificationTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_CategoryTypeId')
CREATE NONCLUSTERED INDEX [IX_CategoryTypeId] ON [dbo].[IncentivePolicies]
(
	[CategoryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClerkUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_ClerkUserId')
CREATE NONCLUSTERED INDEX [IX_ClerkUserId] ON [dbo].[IncentivePolicies]
(
	[ClerkUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[IncentivePolicies]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[IncentivePolicies]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IndustryId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_IndustryId')
CREATE NONCLUSTERED INDEX [IX_IndustryId] ON [dbo].[IncentivePolicies]
(
	[IndustryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IncentivePolicies]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[IncentivePolicies]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_CategoryTypeId')
CREATE NONCLUSTERED INDEX [IX_CategoryTypeId] ON [dbo].[IncentivePolicyAudits]
(
	[CategoryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClerkUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_ClerkUserId')
CREATE NONCLUSTERED INDEX [IX_ClerkUserId] ON [dbo].[IncentivePolicyAudits]
(
	[ClerkUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[IncentivePolicyAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[IncentivePolicyAudits]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IndustryId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_IndustryId')
CREATE NONCLUSTERED INDEX [IX_IndustryId] ON [dbo].[IncentivePolicyAudits]
(
	[IndustryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IncentivePolicyAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[IncentivePolicyAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[IncentivePolicyProperties]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IncentivePolicyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND name = N'IX_IncentivePolicyId')
CREATE NONCLUSTERED INDEX [IX_IncentivePolicyId] ON [dbo].[IncentivePolicyProperties]
(
	[IncentivePolicyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IncentivePolicyProperties]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND name = N'IX_PropertyId')
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[IncentivePolicyProperties]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[IncentivePolicyProperties]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[IncentivePolicyPropertyAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IncentivePolicyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND name = N'IX_IncentivePolicyId')
CREATE NONCLUSTERED INDEX [IX_IncentivePolicyId] ON [dbo].[IncentivePolicyPropertyAudits]
(
	[IncentivePolicyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IncentivePolicyPropertyAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND name = N'IX_PropertyId')
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[IncentivePolicyPropertyAudits]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[IncentivePolicyPropertyAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Industries]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Industries]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Industries]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Industries]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubSectorId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Industries]') AND name = N'IX_SubSectorId')
CREATE NONCLUSTERED INDEX [IX_SubSectorId] ON [dbo].[Industries]
(
	[SubSectorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IndustryAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[IndustryAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IndustryAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[IndustryAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubSectorId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IndustryAudits]') AND name = N'IX_SubSectorId')
CREATE NONCLUSTERED INDEX [IX_SubSectorId] ON [dbo].[IndustryAudits]
(
	[SubSectorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentOperationalExpenditureAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentOperationalExpenditureAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]') AND name = N'IX_PropertyInvestmentId')
CREATE NONCLUSTERED INDEX [IX_PropertyInvestmentId] ON [dbo].[InvestmentOperationalExpenditureAudits]
(
	[PropertyInvestmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentOperationalExpenditures]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentOperationalExpenditures]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]') AND name = N'IX_PropertyInvestmentId')
CREATE NONCLUSTERED INDEX [IX_PropertyInvestmentId] ON [dbo].[InvestmentOperationalExpenditures]
(
	[PropertyInvestmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentValueAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvestmentValueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]') AND name = N'IX_InvestmentValueTypeId')
CREATE NONCLUSTERED INDEX [IX_InvestmentValueTypeId] ON [dbo].[InvestmentValueAudits]
(
	[InvestmentValueTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentValueAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValues]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentValues]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvestmentValueTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValues]') AND name = N'IX_InvestmentValueTypeId')
CREATE NONCLUSTERED INDEX [IX_InvestmentValueTypeId] ON [dbo].[InvestmentValues]
(
	[InvestmentValueTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValues]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentValues]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentValueTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentValueTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[InvestmentValueTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[InvestmentValueTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_AccountId')
CREATE NONCLUSTERED INDEX [IX_AccountId] ON [dbo].[LinkedAccountAudits]
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedAccountAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[LinkedAccountAudits]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LinkedAccountTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_LinkedAccountTypeId')
CREATE NONCLUSTERED INDEX [IX_LinkedAccountTypeId] ON [dbo].[LinkedAccountAudits]
(
	[LinkedAccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedAccountAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecipientTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_RecipientTypeId')
CREATE NONCLUSTERED INDEX [IX_RecipientTypeId] ON [dbo].[LinkedAccountAudits]
(
	[RecipientTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[LinkedAccountAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_AccountId')
CREATE NONCLUSTERED INDEX [IX_AccountId] ON [dbo].[LinkedAccounts]
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedAccounts]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[LinkedAccounts]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LinkedAccountTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_LinkedAccountTypeId')
CREATE NONCLUSTERED INDEX [IX_LinkedAccountTypeId] ON [dbo].[LinkedAccounts]
(
	[LinkedAccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedAccounts]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecipientTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_RecipientTypeId')
CREATE NONCLUSTERED INDEX [IX_RecipientTypeId] ON [dbo].[LinkedAccounts]
(
	[RecipientTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[LinkedAccounts]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedAccountTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedAccountTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedAccountTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedAccountTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedEmailAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LinkedAccountId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND name = N'IX_LinkedAccountId')
CREATE NONCLUSTERED INDEX [IX_LinkedAccountId] ON [dbo].[LinkedEmailAudits]
(
	[LinkedAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedEmailAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecipientTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND name = N'IX_RecipientTypeId')
CREATE NONCLUSTERED INDEX [IX_RecipientTypeId] ON [dbo].[LinkedEmailAudits]
(
	[RecipientTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[LinkedEmailAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LinkedEmails]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LinkedAccountId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND name = N'IX_LinkedAccountId')
CREATE NONCLUSTERED INDEX [IX_LinkedAccountId] ON [dbo].[LinkedEmails]
(
	[LinkedAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LinkedEmails]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecipientTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND name = N'IX_RecipientTypeId')
CREATE NONCLUSTERED INDEX [IX_RecipientTypeId] ON [dbo].[LinkedEmails]
(
	[RecipientTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LinkedEmails]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[LinkedEmails]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LocationTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LocationTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LocationTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LocationTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LocationTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LogAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LogTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogAudits]') AND name = N'IX_LogTypeId')
CREATE NONCLUSTERED INDEX [IX_LogTypeId] ON [dbo].[LogAudits]
(
	[LogTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LogAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogAudits]') AND name = N'IX_ReferenceTypeId')
CREATE NONCLUSTERED INDEX [IX_ReferenceTypeId] ON [dbo].[LogAudits]
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Logs]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LogTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND name = N'IX_LogTypeId')
CREATE NONCLUSTERED INDEX [IX_LogTypeId] ON [dbo].[Logs]
(
	[LogTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Logs]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND name = N'IX_ReferenceTypeId')
CREATE NONCLUSTERED INDEX [IX_ReferenceTypeId] ON [dbo].[Logs]
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LogTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LogTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[LogTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LogTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[LogTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[MeasurementTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[MeasurementTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[MeasurementTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[MeasurementTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[NoteAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[NoteAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NoteTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteAudits]') AND name = N'IX_NoteTypeId')
CREATE NONCLUSTERED INDEX [IX_NoteTypeId] ON [dbo].[NoteAudits]
(
	[NoteTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteAudits]') AND name = N'IX_ReferenceTypeId')
CREATE NONCLUSTERED INDEX [IX_ReferenceTypeId] ON [dbo].[NoteAudits]
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Notes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Notes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Notes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Notes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NoteTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Notes]') AND name = N'IX_NoteTypeId')
CREATE NONCLUSTERED INDEX [IX_NoteTypeId] ON [dbo].[Notes]
(
	[NoteTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Notes]') AND name = N'IX_ReferenceTypeId')
CREATE NONCLUSTERED INDEX [IX_ReferenceTypeId] ON [dbo].[Notes]
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[NoteTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[NoteTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[NoteTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NoteTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[NoteTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Properties]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Properties]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Properties]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Properties]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Properties]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Properties]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND name = N'IX_AccountTypeId')
CREATE NONCLUSTERED INDEX [IX_AccountTypeId] ON [dbo].[PropertyAccountAudits]
(
	[AccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyAccountAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyAccountAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND name = N'IX_PropertyId')
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[PropertyAccountAudits]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[PropertyAccountAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND name = N'IX_AccountTypeId')
CREATE NONCLUSTERED INDEX [IX_AccountTypeId] ON [dbo].[PropertyAccounts]
(
	[AccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyAccounts]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyAccounts]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND name = N'IX_PropertyId')
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[PropertyAccounts]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[PropertyAccounts]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[PropertyAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestmentAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IncentivePolicyPropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]') AND name = N'IX_IncentivePolicyPropertyId')
CREATE NONCLUSTERED INDEX [IX_IncentivePolicyPropertyId] ON [dbo].[PropertyInvestmentAudits]
(
	[IncentivePolicyPropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestmentAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestmentMeasurementAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasurementTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND name = N'IX_MeasurementTypeId')
CREATE NONCLUSTERED INDEX [IX_MeasurementTypeId] ON [dbo].[PropertyInvestmentMeasurementAudits]
(
	[MeasurementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestmentMeasurementAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND name = N'IX_PropertyInvestmentId')
CREATE NONCLUSTERED INDEX [IX_PropertyInvestmentId] ON [dbo].[PropertyInvestmentMeasurementAudits]
(
	[PropertyInvestmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UnitOfMeasureTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]') AND name = N'IX_UnitOfMeasureTypeId')
CREATE NONCLUSTERED INDEX [IX_UnitOfMeasureTypeId] ON [dbo].[PropertyInvestmentMeasurementAudits]
(
	[UnitOfMeasureTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestmentMeasurements]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasurementTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND name = N'IX_MeasurementTypeId')
CREATE NONCLUSTERED INDEX [IX_MeasurementTypeId] ON [dbo].[PropertyInvestmentMeasurements]
(
	[MeasurementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestmentMeasurements]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND name = N'IX_PropertyInvestmentId')
CREATE NONCLUSTERED INDEX [IX_PropertyInvestmentId] ON [dbo].[PropertyInvestmentMeasurements]
(
	[PropertyInvestmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UnitOfMeasureTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]') AND name = N'IX_UnitOfMeasureTypeId')
CREATE NONCLUSTERED INDEX [IX_UnitOfMeasureTypeId] ON [dbo].[PropertyInvestmentMeasurements]
(
	[UnitOfMeasureTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestments]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IncentivePolicyPropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]') AND name = N'IX_IncentivePolicyPropertyId')
CREATE NONCLUSTERED INDEX [IX_IncentivePolicyPropertyId] ON [dbo].[PropertyInvestments]
(
	[IncentivePolicyPropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestments]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestmentValueAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvestmentValueId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]') AND name = N'IX_InvestmentValueId')
CREATE NONCLUSTERED INDEX [IX_InvestmentValueId] ON [dbo].[PropertyInvestmentValueAudits]
(
	[InvestmentValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestmentValueAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]') AND name = N'IX_PropertyInvestmentId')
CREATE NONCLUSTERED INDEX [IX_PropertyInvestmentId] ON [dbo].[PropertyInvestmentValueAudits]
(
	[PropertyInvestmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[PropertyInvestmentValues]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvestmentValueId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]') AND name = N'IX_InvestmentValueId')
CREATE NONCLUSTERED INDEX [IX_InvestmentValueId] ON [dbo].[PropertyInvestmentValues]
(
	[InvestmentValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[PropertyInvestmentValues]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyInvestmentId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]') AND name = N'IX_PropertyInvestmentId')
CREATE NONCLUSTERED INDEX [IX_PropertyInvestmentId] ON [dbo].[PropertyInvestmentValues]
(
	[PropertyInvestmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Queries]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Queries]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Queries]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Queries]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_QueryTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Queries]') AND name = N'IX_QueryTypeId')
CREATE NONCLUSTERED INDEX [IX_QueryTypeId] ON [dbo].[Queries]
(
	[QueryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Queries]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Queries]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[QueryAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[QueryAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[QueryAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[QueryTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[QueryTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[QueryTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QueryTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[QueryTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicantCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_ApplicantCustomerId')
CREATE NONCLUSTERED INDEX [IX_ApplicantCustomerId] ON [dbo].[RatesRebateAudits]
(
	[ApplicantCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClerkUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_ClerkUserId')
CREATE NONCLUSTERED INDEX [IX_ClerkUserId] ON [dbo].[RatesRebateAudits]
(
	[ClerkUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[RatesRebateAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DomiciliumId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_DomiciliumId')
CREATE NONCLUSTERED INDEX [IX_DomiciliumId] ON [dbo].[RatesRebateAudits]
(
	[DomiciliumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExecutorCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_ExecutorCustomerId')
CREATE NONCLUSTERED INDEX [IX_ExecutorCustomerId] ON [dbo].[RatesRebateAudits]
(
	[ExecutorCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExecutorId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_ExecutorId')
CREATE NONCLUSTERED INDEX [IX_ExecutorId] ON [dbo].[RatesRebateAudits]
(
	[ExecutorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RatesRebateAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OwnerCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_OwnerCustomerId')
CREATE NONCLUSTERED INDEX [IX_OwnerCustomerId] ON [dbo].[RatesRebateAudits]
(
	[OwnerCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[RatesRebateAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[RatesRebateProperties]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[RatesRebateProperties]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RatesRebateProperties]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_PropertyId')
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[RatesRebateProperties]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RatesRebateId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_RatesRebateId')
CREATE NONCLUSTERED INDEX [IX_RatesRebateId] ON [dbo].[RatesRebateProperties]
(
	[RatesRebateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[RatesRebateProperties]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[RatesRebatePropertyAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_CustomerId')
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[RatesRebatePropertyAudits]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RatesRebatePropertyAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_PropertyId')
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[RatesRebatePropertyAudits]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RatesRebateId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_RatesRebateId')
CREATE NONCLUSTERED INDEX [IX_RatesRebateId] ON [dbo].[RatesRebatePropertyAudits]
(
	[RatesRebateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[RatesRebatePropertyAudits]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicantCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_ApplicantCustomerId')
CREATE NONCLUSTERED INDEX [IX_ApplicantCustomerId] ON [dbo].[RatesRebates]
(
	[ApplicantCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClerkUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_ClerkUserId')
CREATE NONCLUSTERED INDEX [IX_ClerkUserId] ON [dbo].[RatesRebates]
(
	[ClerkUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[RatesRebates]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DomiciliumId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_DomiciliumId')
CREATE NONCLUSTERED INDEX [IX_DomiciliumId] ON [dbo].[RatesRebates]
(
	[DomiciliumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExecutorCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_ExecutorCustomerId')
CREATE NONCLUSTERED INDEX [IX_ExecutorCustomerId] ON [dbo].[RatesRebates]
(
	[ExecutorCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExecutorId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_ExecutorId')
CREATE NONCLUSTERED INDEX [IX_ExecutorId] ON [dbo].[RatesRebates]
(
	[ExecutorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RatesRebates]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OwnerCustomerId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_OwnerCustomerId')
CREATE NONCLUSTERED INDEX [IX_OwnerCustomerId] ON [dbo].[RatesRebates]
(
	[OwnerCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RatesRebates]') AND name = N'IX_StatusId')
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[RatesRebates]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[RecipientTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RecipientTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[RecipientTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RecipientTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[RecipientTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[ReferenceTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ReferenceTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[ReferenceTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[ReferenceTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[Status]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[Status]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND name = N'IX_StatusTypeId')
CREATE NONCLUSTERED INDEX [IX_StatusTypeId] ON [dbo].[Status]
(
	[StatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[StatusAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[StatusAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusTypeId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusAudits]') AND name = N'IX_StatusTypeId')
CREATE NONCLUSTERED INDEX [IX_StatusTypeId] ON [dbo].[StatusAudits]
(
	[StatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[StatusTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[StatusTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[StatusTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[StatusTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[StatusTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[SubSectorAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FocusAreaId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]') AND name = N'IX_FocusAreaId')
CREATE NONCLUSTERED INDEX [IX_FocusAreaId] ON [dbo].[SubSectorAudits]
(
	[FocusAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SubSectorAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectors]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[SubSectors]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FocusAreaId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectors]') AND name = N'IX_FocusAreaId')
CREATE NONCLUSTERED INDEX [IX_FocusAreaId] ON [dbo].[SubSectors]
(
	[FocusAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SubSectors]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SubSectors]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[SystemUserAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SystemUserAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserLogTimes]') AND name = N'IX_SystemUserId')
CREATE NONCLUSTERED INDEX [IX_SystemUserId] ON [dbo].[SystemUserLogTimes]
(
	[SystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUsers]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[SystemUsers]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUsers]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SystemUsers]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[SystemUserTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SystemUserTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[SystemUserTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[SystemUserTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[TitleTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[TitleTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[TitleTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TitleTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[TitleTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[UnitOfmeasureTypeAudits]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[UnitOfmeasureTypeAudits]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CreatedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]') AND name = N'IX_CreatedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_CreatedBySystemUserId] ON [dbo].[UnitOfmeasureTypes]
(
	[CreatedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ModifiedBySystemUserId]    Script Date: 2019/06/02 17:15:47 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]') AND name = N'IX_ModifiedBySystemUserId')
CREATE NONCLUSTERED INDEX [IX_ModifiedBySystemUserId] ON [dbo].[UnitOfmeasureTypes]
(
	[ModifiedBySystemUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AccountAu__IsRMS__22CA2527]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AccountAudits] ADD  DEFAULT ((0)) FOR [IsRMSAccount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ELMAH_Error_ErrorId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ELMAH_Error] ADD  CONSTRAINT [DF_ELMAH_Error_ErrorId]  DEFAULT (newid()) FOR [ErrorId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Propertie__Marke__63A3C44B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Properties] ADD  DEFAULT ((0)) FOR [MarketValue]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__PropertyA__Marke__09946309]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PropertyAudits] ADD  DEFAULT ((0)) FOR [MarketValue]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__QueryAudi__Resol__37C5420D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QueryAudits] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [ResolvedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__RatesReba__IsMan__2882FE7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RatesRebateAudits] ADD  DEFAULT ((0)) FOR [IsManual]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__RatesReba__IsCon__6497E884]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RatesRebateAudits] ADD  DEFAULT ((0)) FOR [IsConflict]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__RatesReba__IsCon__658C0CBD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RatesRebates] ADD  DEFAULT ((0)) FOR [IsConflict]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__SystemUse__IsTem__38B96646]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SystemUserAudits] ADD  DEFAULT ((0)) FOR [IsTemporaryPassword]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__SystemUse__IsTem__278EDA44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SystemUsers] ADD  DEFAULT ((0)) FOR [IsTemporaryPassword]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountAudits_dbo.Properties_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits] CHECK CONSTRAINT [FK_dbo.AccountAudits_dbo.Properties_PropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits] CHECK CONSTRAINT [FK_dbo.AccountAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits] CHECK CONSTRAINT [FK_dbo.AccountAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountAudits]'))
ALTER TABLE [dbo].[AccountAudits] CHECK CONSTRAINT [FK_dbo.AccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.Properties_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.Properties_PropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Accounts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]'))
ALTER TABLE [dbo].[AccountTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]'))
ALTER TABLE [dbo].[AccountTypeAudits] CHECK CONSTRAINT [FK_dbo.AccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]'))
ALTER TABLE [dbo].[AccountTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypeAudits]'))
ALTER TABLE [dbo].[AccountTypeAudits] CHECK CONSTRAINT [FK_dbo.AccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypes]'))
ALTER TABLE [dbo].[AccountTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypes]'))
ALTER TABLE [dbo].[AccountTypes] CHECK CONSTRAINT [FK_dbo.AccountTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypes]'))
ALTER TABLE [dbo].[AccountTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AccountTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountTypes]'))
ALTER TABLE [dbo].[AccountTypes] CHECK CONSTRAINT [FK_dbo.AccountTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId] FOREIGN KEY([IncentivePolicyPropertyId])
REFERENCES [dbo].[IncentivePolicyProperties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.TitleTypes_TitleTypeId] FOREIGN KEY([TitleTypeId])
REFERENCES [dbo].[TitleTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContactAudits_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContactAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyContactAudits] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyContactAudits_dbo.TitleTypes_TitleTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId] FOREIGN KEY([IncentivePolicyPropertyId])
REFERENCES [dbo].[IncentivePolicyProperties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.TitleTypes_TitleTypeId] FOREIGN KEY([TitleTypeId])
REFERENCES [dbo].[TitleTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyContacts_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyContacts]'))
ALTER TABLE [dbo].[AdditionalPropertyContacts] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyContacts_dbo.TitleTypes_TitleTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.Countries_CountryOfIssueTypeId] FOREIGN KEY([CountryOfIssueTypeId])
REFERENCES [dbo].[Countries] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.Countries_CountryOfIssueTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.IdentificationTypes_IdentificationTypeId] FOREIGN KEY([IdentificationTypeId])
REFERENCES [dbo].[IdentificationTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.Properties_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.Properties_PropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwnerAudits]'))
ALTER TABLE [dbo].[AdditionalPropertyOwnerAudits] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwnerAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.Countries_CountryOfIssueTypeId] FOREIGN KEY([CountryOfIssueTypeId])
REFERENCES [dbo].[Countries] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.Countries_CountryOfIssueTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.IdentificationTypes_IdentificationTypeId] FOREIGN KEY([IdentificationTypeId])
REFERENCES [dbo].[IdentificationTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.Properties_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.Properties_PropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdditionalPropertyOwners]'))
ALTER TABLE [dbo].[AdditionalPropertyOwners] CHECK CONSTRAINT [FK_dbo.AdditionalPropertyOwners_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentAudits_dbo.Countries_CountryOfIssueTypeId] FOREIGN KEY([CountryOfIssueTypeId])
REFERENCES [dbo].[Countries] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] CHECK CONSTRAINT [FK_dbo.AgentAudits_dbo.Countries_CountryOfIssueTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentAudits_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] CHECK CONSTRAINT [FK_dbo.AgentAudits_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentAudits_dbo.CustomerTypes_CustomerTypeId] FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] CHECK CONSTRAINT [FK_dbo.AgentAudits_dbo.CustomerTypes_CustomerTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentAudits_dbo.IdentificationTypes_IdentificationTypeId] FOREIGN KEY([IdentificationTypeId])
REFERENCES [dbo].[IdentificationTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] CHECK CONSTRAINT [FK_dbo.AgentAudits_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] CHECK CONSTRAINT [FK_dbo.AgentAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] CHECK CONSTRAINT [FK_dbo.AgentAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] CHECK CONSTRAINT [FK_dbo.AgentAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentAudits_dbo.TitleTypes_TitleTypeId] FOREIGN KEY([TitleTypeId])
REFERENCES [dbo].[TitleTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentAudits_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentAudits]'))
ALTER TABLE [dbo].[AgentAudits] CHECK CONSTRAINT [FK_dbo.AgentAudits_dbo.TitleTypes_TitleTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.Agents_AgentId] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits] CHECK CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.Agents_AgentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits] CHECK CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits] CHECK CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomerAudits]'))
ALTER TABLE [dbo].[AgentCustomerAudits] CHECK CONSTRAINT [FK_dbo.AgentCustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentCustomers_dbo.Agents_AgentId] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers] CHECK CONSTRAINT [FK_dbo.AgentCustomers_dbo.Agents_AgentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentCustomers_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers] CHECK CONSTRAINT [FK_dbo.AgentCustomers_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentCustomers_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers] CHECK CONSTRAINT [FK_dbo.AgentCustomers_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgentCustomers_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AgentCustomers_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgentCustomers]'))
ALTER TABLE [dbo].[AgentCustomers] CHECK CONSTRAINT [FK_dbo.AgentCustomers_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agents_dbo.Countries_CountryOfIssueTypeId] FOREIGN KEY([CountryOfIssueTypeId])
REFERENCES [dbo].[Countries] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_dbo.Agents_dbo.Countries_CountryOfIssueTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agents_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_dbo.Agents_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agents_dbo.CustomerTypes_CustomerTypeId] FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_dbo.Agents_dbo.CustomerTypes_CustomerTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agents_dbo.IdentificationTypes_IdentificationTypeId] FOREIGN KEY([IdentificationTypeId])
REFERENCES [dbo].[IdentificationTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_dbo.Agents_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agents_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_dbo.Agents_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agents_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_dbo.Agents_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agents_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_dbo.Agents_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agents_dbo.TitleTypes_TitleTypeId] FOREIGN KEY([TitleTypeId])
REFERENCES [dbo].[TitleTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Agents_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Agents]'))
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_dbo.Agents_dbo.TitleTypes_TitleTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]'))
ALTER TABLE [dbo].[ApplicationAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]'))
ALTER TABLE [dbo].[ApplicationAudits] CHECK CONSTRAINT [FK_dbo.ApplicationAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]'))
ALTER TABLE [dbo].[ApplicationAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationAudits]'))
ALTER TABLE [dbo].[ApplicationAudits] CHECK CONSTRAINT [FK_dbo.ApplicationAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits] CHECK CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.Applications_ApplicationId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits] CHECK CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits] CHECK CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoleAudits]'))
ALTER TABLE [dbo].[ApplicationRoleAudits] CHECK CONSTRAINT [FK_dbo.ApplicationRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationRoles_dbo.Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles] CHECK CONSTRAINT [FK_dbo.ApplicationRoles_dbo.Applications_ApplicationId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles] CHECK CONSTRAINT [FK_dbo.ApplicationRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationRoles_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles] CHECK CONSTRAINT [FK_dbo.ApplicationRoles_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationRoles_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationRoles_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationRoles]'))
ALTER TABLE [dbo].[ApplicationRoles] CHECK CONSTRAINT [FK_dbo.ApplicationRoles_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Applications_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Applications]'))
ALTER TABLE [dbo].[Applications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Applications_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Applications_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Applications]'))
ALTER TABLE [dbo].[Applications] CHECK CONSTRAINT [FK_dbo.Applications_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Applications_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Applications]'))
ALTER TABLE [dbo].[Applications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Applications_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Applications_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Applications]'))
ALTER TABLE [dbo].[Applications] CHECK CONSTRAINT [FK_dbo.Applications_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits] CHECK CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.Applications_ApplicationId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits] CHECK CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits] CHECK CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits] CHECK CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_SystemUserId] FOREIGN KEY([SystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoleAudits]'))
ALTER TABLE [dbo].[ApplicationUserRoleAudits] CHECK CONSTRAINT [FK_dbo.ApplicationUserRoleAudits_dbo.SystemUsers_SystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles] CHECK CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.Applications_ApplicationId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles] CHECK CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles] CHECK CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles] CHECK CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.SystemUsers_SystemUserId] FOREIGN KEY([SystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ApplicationUserRoles_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApplicationUserRoles]'))
ALTER TABLE [dbo].[ApplicationUserRoles] CHECK CONSTRAINT [FK_dbo.ApplicationUserRoles_dbo.SystemUsers_SystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettingAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]'))
ALTER TABLE [dbo].[AppSettingAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AppSettingAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettingAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]'))
ALTER TABLE [dbo].[AppSettingAudits] CHECK CONSTRAINT [FK_dbo.AppSettingAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettingAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]'))
ALTER TABLE [dbo].[AppSettingAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AppSettingAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettingAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettingAudits]'))
ALTER TABLE [dbo].[AppSettingAudits] CHECK CONSTRAINT [FK_dbo.AppSettingAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettings_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettings]'))
ALTER TABLE [dbo].[AppSettings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AppSettings_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettings_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettings]'))
ALTER TABLE [dbo].[AppSettings] CHECK CONSTRAINT [FK_dbo.AppSettings_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettings_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettings]'))
ALTER TABLE [dbo].[AppSettings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AppSettings_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AppSettings_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AppSettings]'))
ALTER TABLE [dbo].[AppSettings] CHECK CONSTRAINT [FK_dbo.AppSettings_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUsers_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUsers]'))
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUsers_dbo.SystemUsers_SystemUserId] FOREIGN KEY([SystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUsers_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUsers]'))
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_dbo.AspNetUsers_dbo.SystemUsers_SystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Audits_dbo.SystemUsers_AuditBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Audits]'))
ALTER TABLE [dbo].[Audits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Audits_dbo.SystemUsers_AuditBySystemUserId] FOREIGN KEY([AuditBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Audits_dbo.SystemUsers_AuditBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Audits]'))
ALTER TABLE [dbo].[Audits] CHECK CONSTRAINT [FK_dbo.Audits_dbo.SystemUsers_AuditBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BillDirectories_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillDirectories]'))
ALTER TABLE [dbo].[BillDirectories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BillDirectories_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BillDirectories_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillDirectories]'))
ALTER TABLE [dbo].[BillDirectories] CHECK CONSTRAINT [FK_dbo.BillDirectories_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BillDirectories_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillDirectories]'))
ALTER TABLE [dbo].[BillDirectories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BillDirectories_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BillDirectories_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillDirectories]'))
ALTER TABLE [dbo].[BillDirectories] CHECK CONSTRAINT [FK_dbo.BillDirectories_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]'))
ALTER TABLE [dbo].[CategoryTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]'))
ALTER TABLE [dbo].[CategoryTypeAudits] CHECK CONSTRAINT [FK_dbo.CategoryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]'))
ALTER TABLE [dbo].[CategoryTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypeAudits]'))
ALTER TABLE [dbo].[CategoryTypeAudits] CHECK CONSTRAINT [FK_dbo.CategoryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypes]'))
ALTER TABLE [dbo].[CategoryTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoryTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypes]'))
ALTER TABLE [dbo].[CategoryTypes] CHECK CONSTRAINT [FK_dbo.CategoryTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypes]'))
ALTER TABLE [dbo].[CategoryTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoryTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CategoryTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CategoryTypes]'))
ALTER TABLE [dbo].[CategoryTypes] CHECK CONSTRAINT [FK_dbo.CategoryTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Countries_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Countries]'))
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Countries_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Countries_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Countries]'))
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_dbo.Countries_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Countries_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Countries]'))
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Countries_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Countries_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Countries]'))
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_dbo.Countries_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CountryAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CountryAudits]'))
ALTER TABLE [dbo].[CountryAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CountryAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CountryAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CountryAudits]'))
ALTER TABLE [dbo].[CountryAudits] CHECK CONSTRAINT [FK_dbo.CountryAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CountryAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CountryAudits]'))
ALTER TABLE [dbo].[CountryAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CountryAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CountryAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CountryAudits]'))
ALTER TABLE [dbo].[CountryAudits] CHECK CONSTRAINT [FK_dbo.CountryAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerAudits_dbo.Countries_CountryOfIssueTypeId] FOREIGN KEY([CountryOfIssueTypeId])
REFERENCES [dbo].[Countries] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] CHECK CONSTRAINT [FK_dbo.CustomerAudits_dbo.Countries_CountryOfIssueTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerAudits_dbo.CustomerTypes_CustomerTypeId] FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] CHECK CONSTRAINT [FK_dbo.CustomerAudits_dbo.CustomerTypes_CustomerTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerAudits_dbo.IdentificationTypes_IdentificationTypeId] FOREIGN KEY([IdentificationTypeId])
REFERENCES [dbo].[IdentificationTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] CHECK CONSTRAINT [FK_dbo.CustomerAudits_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] CHECK CONSTRAINT [FK_dbo.CustomerAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] CHECK CONSTRAINT [FK_dbo.CustomerAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] CHECK CONSTRAINT [FK_dbo.CustomerAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerAudits_dbo.SystemUsers_SystemUserId] FOREIGN KEY([SystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] CHECK CONSTRAINT [FK_dbo.CustomerAudits_dbo.SystemUsers_SystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerAudits_dbo.TitleTypes_TitleTypeId] FOREIGN KEY([TitleTypeId])
REFERENCES [dbo].[TitleTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerAudits_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAudits]'))
ALTER TABLE [dbo].[CustomerAudits] CHECK CONSTRAINT [FK_dbo.CustomerAudits_dbo.TitleTypes_TitleTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.Countries_CountryOfIssueTypeId] FOREIGN KEY([CountryOfIssueTypeId])
REFERENCES [dbo].[Countries] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.Countries_CountryOfIssueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.Countries_CountryOfIssueTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.CustomerTypes_CustomerTypeId] FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.CustomerTypes_CustomerTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.CustomerTypes_CustomerTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.IdentificationTypes_IdentificationTypeId] FOREIGN KEY([IdentificationTypeId])
REFERENCES [dbo].[IdentificationTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.IdentificationTypes_IdentificationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.IdentificationTypes_IdentificationTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.SystemUsers_SystemUserId] FOREIGN KEY([SystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.SystemUsers_SystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.TitleTypes_TitleTypeId] FOREIGN KEY([TitleTypeId])
REFERENCES [dbo].[TitleTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Customers_dbo.TitleTypes_TitleTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.TitleTypes_TitleTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]'))
ALTER TABLE [dbo].[CustomerTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]'))
ALTER TABLE [dbo].[CustomerTypeAudits] CHECK CONSTRAINT [FK_dbo.CustomerTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]'))
ALTER TABLE [dbo].[CustomerTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypeAudits]'))
ALTER TABLE [dbo].[CustomerTypeAudits] CHECK CONSTRAINT [FK_dbo.CustomerTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypes]'))
ALTER TABLE [dbo].[CustomerTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypes]'))
ALTER TABLE [dbo].[CustomerTypes] CHECK CONSTRAINT [FK_dbo.CustomerTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypes]'))
ALTER TABLE [dbo].[CustomerTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.CustomerTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerTypes]'))
ALTER TABLE [dbo].[CustomerTypes] CHECK CONSTRAINT [FK_dbo.CustomerTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentAudits_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] CHECK CONSTRAINT [FK_dbo.DocumentAudits_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.DocumentCheckLists_DocumentCheckListId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentAudits_dbo.DocumentCheckLists_DocumentCheckListId] FOREIGN KEY([DocumentCheckListId])
REFERENCES [dbo].[DocumentCheckLists] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.DocumentCheckLists_DocumentCheckListId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] CHECK CONSTRAINT [FK_dbo.DocumentAudits_dbo.DocumentCheckLists_DocumentCheckListId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.Files_FileId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentAudits_dbo.Files_FileId] FOREIGN KEY([FileId])
REFERENCES [dbo].[Files] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.Files_FileId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] CHECK CONSTRAINT [FK_dbo.DocumentAudits_dbo.Files_FileId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.LocationTypes_LocationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentAudits_dbo.LocationTypes_LocationTypeId] FOREIGN KEY([LocationTypeId])
REFERENCES [dbo].[LocationTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.LocationTypes_LocationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] CHECK CONSTRAINT [FK_dbo.DocumentAudits_dbo.LocationTypes_LocationTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentAudits_dbo.ReferenceTypes_ReferenceTypeId] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] CHECK CONSTRAINT [FK_dbo.DocumentAudits_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] CHECK CONSTRAINT [FK_dbo.DocumentAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] CHECK CONSTRAINT [FK_dbo.DocumentAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentAudits]'))
ALTER TABLE [dbo].[DocumentAudits] CHECK CONSTRAINT [FK_dbo.DocumentAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits] CHECK CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.Applications_ApplicationId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.DocumentTypes_DocumentTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.DocumentTypes_DocumentTypeId] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.DocumentTypes_DocumentTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits] CHECK CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.DocumentTypes_DocumentTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.ReferenceTypes_ReferenceTypeId] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits] CHECK CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits] CHECK CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckListAudits]'))
ALTER TABLE [dbo].[DocumentCheckListAudits] CHECK CONSTRAINT [FK_dbo.DocumentCheckListAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists] CHECK CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.Applications_ApplicationId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.DocumentTypes_DocumentTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.DocumentTypes_DocumentTypeId] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.DocumentTypes_DocumentTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists] CHECK CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.DocumentTypes_DocumentTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.ReferenceTypes_ReferenceTypeId] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists] CHECK CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists] CHECK CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentCheckLists_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentCheckLists]'))
ALTER TABLE [dbo].[DocumentCheckLists] CHECK CONSTRAINT [FK_dbo.DocumentCheckLists_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits] CHECK CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.Applications_ApplicationId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.Documents_DocumentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.Documents_DocumentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits] CHECK CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.Documents_DocumentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.ReferenceTypes_ReferenceTypeId] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits] CHECK CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits] CHECK CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferenceAudits]'))
ALTER TABLE [dbo].[DocumentReferenceAudits] CHECK CONSTRAINT [FK_dbo.DocumentReferenceAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentReferences_dbo.Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.Applications_ApplicationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences] CHECK CONSTRAINT [FK_dbo.DocumentReferences_dbo.Applications_ApplicationId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.Documents_DocumentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentReferences_dbo.Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.Documents_DocumentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences] CHECK CONSTRAINT [FK_dbo.DocumentReferences_dbo.Documents_DocumentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentReferences_dbo.ReferenceTypes_ReferenceTypeId] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences] CHECK CONSTRAINT [FK_dbo.DocumentReferences_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentReferences_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences] CHECK CONSTRAINT [FK_dbo.DocumentReferences_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentReferences_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentReferences_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentReferences]'))
ALTER TABLE [dbo].[DocumentReferences] CHECK CONSTRAINT [FK_dbo.DocumentReferences_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Documents_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_dbo.Documents_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.DocumentCheckLists_DocumentCheckListId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Documents_dbo.DocumentCheckLists_DocumentCheckListId] FOREIGN KEY([DocumentCheckListId])
REFERENCES [dbo].[DocumentCheckLists] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.DocumentCheckLists_DocumentCheckListId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_dbo.Documents_dbo.DocumentCheckLists_DocumentCheckListId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.Files_FileId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Documents_dbo.Files_FileId] FOREIGN KEY([FileId])
REFERENCES [dbo].[Files] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.Files_FileId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_dbo.Documents_dbo.Files_FileId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.LocationTypes_LocationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Documents_dbo.LocationTypes_LocationTypeId] FOREIGN KEY([LocationTypeId])
REFERENCES [dbo].[LocationTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.LocationTypes_LocationTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_dbo.Documents_dbo.LocationTypes_LocationTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Documents_dbo.ReferenceTypes_ReferenceTypeId] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_dbo.Documents_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Documents_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_dbo.Documents_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Documents_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_dbo.Documents_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Documents_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Documents_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Documents]'))
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_dbo.Documents_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]'))
ALTER TABLE [dbo].[DocumentTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]'))
ALTER TABLE [dbo].[DocumentTypeAudits] CHECK CONSTRAINT [FK_dbo.DocumentTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]'))
ALTER TABLE [dbo].[DocumentTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypeAudits]'))
ALTER TABLE [dbo].[DocumentTypeAudits] CHECK CONSTRAINT [FK_dbo.DocumentTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypes]'))
ALTER TABLE [dbo].[DocumentTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypes]'))
ALTER TABLE [dbo].[DocumentTypes] CHECK CONSTRAINT [FK_dbo.DocumentTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypes]'))
ALTER TABLE [dbo].[DocumentTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DocumentTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentTypes]'))
ALTER TABLE [dbo].[DocumentTypes] CHECK CONSTRAINT [FK_dbo.DocumentTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DomiciliumAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]'))
ALTER TABLE [dbo].[DomiciliumAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DomiciliumAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DomiciliumAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]'))
ALTER TABLE [dbo].[DomiciliumAudits] CHECK CONSTRAINT [FK_dbo.DomiciliumAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DomiciliumAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]'))
ALTER TABLE [dbo].[DomiciliumAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DomiciliumAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.DomiciliumAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[DomiciliumAudits]'))
ALTER TABLE [dbo].[DomiciliumAudits] CHECK CONSTRAINT [FK_dbo.DomiciliumAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Domiciliums_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Domiciliums]'))
ALTER TABLE [dbo].[Domiciliums]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Domiciliums_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Domiciliums_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Domiciliums]'))
ALTER TABLE [dbo].[Domiciliums] CHECK CONSTRAINT [FK_dbo.Domiciliums_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Domiciliums_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Domiciliums]'))
ALTER TABLE [dbo].[Domiciliums]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Domiciliums_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Domiciliums_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Domiciliums]'))
ALTER TABLE [dbo].[Domiciliums] CHECK CONSTRAINT [FK_dbo.Domiciliums_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entities_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities] CHECK CONSTRAINT [FK_dbo.Entities_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.EntityTypes_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entities_dbo.EntityTypes_EntityTypeId] FOREIGN KEY([EntityTypeId])
REFERENCES [dbo].[EntityTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.EntityTypes_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities] CHECK CONSTRAINT [FK_dbo.Entities_dbo.EntityTypes_EntityTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entities_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities] CHECK CONSTRAINT [FK_dbo.Entities_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entities_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities] CHECK CONSTRAINT [FK_dbo.Entities_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entities_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Entities_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Entities]'))
ALTER TABLE [dbo].[Entities] CHECK CONSTRAINT [FK_dbo.Entities_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.Agents_AgentId] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits] CHECK CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.Agents_AgentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.Entities_EntityId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.Entities_EntityId] FOREIGN KEY([EntityId])
REFERENCES [dbo].[Entities] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.Entities_EntityId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits] CHECK CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.Entities_EntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits] CHECK CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgentAudits]'))
ALTER TABLE [dbo].[EntityAgentAudits] CHECK CONSTRAINT [FK_dbo.EntityAgentAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAgents_dbo.Agents_AgentId] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.Agents_AgentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents] CHECK CONSTRAINT [FK_dbo.EntityAgents_dbo.Agents_AgentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.Entities_EntityId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAgents_dbo.Entities_EntityId] FOREIGN KEY([EntityId])
REFERENCES [dbo].[Entities] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.Entities_EntityId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents] CHECK CONSTRAINT [FK_dbo.EntityAgents_dbo.Entities_EntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAgents_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents] CHECK CONSTRAINT [FK_dbo.EntityAgents_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAgents_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAgents_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAgents]'))
ALTER TABLE [dbo].[EntityAgents] CHECK CONSTRAINT [FK_dbo.EntityAgents_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAudits_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits] CHECK CONSTRAINT [FK_dbo.EntityAudits_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.EntityTypes_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAudits_dbo.EntityTypes_EntityTypeId] FOREIGN KEY([EntityTypeId])
REFERENCES [dbo].[EntityTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.EntityTypes_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits] CHECK CONSTRAINT [FK_dbo.EntityAudits_dbo.EntityTypes_EntityTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits] CHECK CONSTRAINT [FK_dbo.EntityAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits] CHECK CONSTRAINT [FK_dbo.EntityAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityAudits]'))
ALTER TABLE [dbo].[EntityAudits] CHECK CONSTRAINT [FK_dbo.EntityAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]'))
ALTER TABLE [dbo].[EntityTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]'))
ALTER TABLE [dbo].[EntityTypeAudits] CHECK CONSTRAINT [FK_dbo.EntityTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]'))
ALTER TABLE [dbo].[EntityTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypeAudits]'))
ALTER TABLE [dbo].[EntityTypeAudits] CHECK CONSTRAINT [FK_dbo.EntityTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypes]'))
ALTER TABLE [dbo].[EntityTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypes]'))
ALTER TABLE [dbo].[EntityTypes] CHECK CONSTRAINT [FK_dbo.EntityTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypes]'))
ALTER TABLE [dbo].[EntityTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntityTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.EntityTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[EntityTypes]'))
ALTER TABLE [dbo].[EntityTypes] CHECK CONSTRAINT [FK_dbo.EntityTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ExecutorAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]'))
ALTER TABLE [dbo].[ExecutorAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExecutorAudits_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ExecutorAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]'))
ALTER TABLE [dbo].[ExecutorAudits] CHECK CONSTRAINT [FK_dbo.ExecutorAudits_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ExecutorAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]'))
ALTER TABLE [dbo].[ExecutorAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExecutorAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ExecutorAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]'))
ALTER TABLE [dbo].[ExecutorAudits] CHECK CONSTRAINT [FK_dbo.ExecutorAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ExecutorAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]'))
ALTER TABLE [dbo].[ExecutorAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExecutorAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ExecutorAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExecutorAudits]'))
ALTER TABLE [dbo].[ExecutorAudits] CHECK CONSTRAINT [FK_dbo.ExecutorAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Executors_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Executors]'))
ALTER TABLE [dbo].[Executors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Executors_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Executors_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Executors]'))
ALTER TABLE [dbo].[Executors] CHECK CONSTRAINT [FK_dbo.Executors_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Executors_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Executors]'))
ALTER TABLE [dbo].[Executors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Executors_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Executors_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Executors]'))
ALTER TABLE [dbo].[Executors] CHECK CONSTRAINT [FK_dbo.Executors_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Executors_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Executors]'))
ALTER TABLE [dbo].[Executors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Executors_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Executors_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Executors]'))
ALTER TABLE [dbo].[Executors] CHECK CONSTRAINT [FK_dbo.Executors_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Files_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Files]'))
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Files_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Files_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Files]'))
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_dbo.Files_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Files_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Files]'))
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Files_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Files_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Files]'))
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_dbo.Files_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreaAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]'))
ALTER TABLE [dbo].[FocusAreaAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FocusAreaAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreaAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]'))
ALTER TABLE [dbo].[FocusAreaAudits] CHECK CONSTRAINT [FK_dbo.FocusAreaAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreaAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]'))
ALTER TABLE [dbo].[FocusAreaAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FocusAreaAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreaAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreaAudits]'))
ALTER TABLE [dbo].[FocusAreaAudits] CHECK CONSTRAINT [FK_dbo.FocusAreaAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreas_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreas]'))
ALTER TABLE [dbo].[FocusAreas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FocusAreas_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreas_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreas]'))
ALTER TABLE [dbo].[FocusAreas] CHECK CONSTRAINT [FK_dbo.FocusAreas_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreas_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreas]'))
ALTER TABLE [dbo].[FocusAreas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FocusAreas_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.FocusAreas_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[FocusAreas]'))
ALTER TABLE [dbo].[FocusAreas] CHECK CONSTRAINT [FK_dbo.FocusAreas_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]'))
ALTER TABLE [dbo].[IdentificationTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]'))
ALTER TABLE [dbo].[IdentificationTypeAudits] CHECK CONSTRAINT [FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]'))
ALTER TABLE [dbo].[IdentificationTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypeAudits]'))
ALTER TABLE [dbo].[IdentificationTypeAudits] CHECK CONSTRAINT [FK_dbo.IdentificationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]'))
ALTER TABLE [dbo].[IdentificationTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IdentificationTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]'))
ALTER TABLE [dbo].[IdentificationTypes] CHECK CONSTRAINT [FK_dbo.IdentificationTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]'))
ALTER TABLE [dbo].[IdentificationTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IdentificationTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IdentificationTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentificationTypes]'))
ALTER TABLE [dbo].[IdentificationTypes] CHECK CONSTRAINT [FK_dbo.IdentificationTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.CategoryTypes_CategoryTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicies_dbo.CategoryTypes_CategoryTypeId] FOREIGN KEY([CategoryTypeId])
REFERENCES [dbo].[CategoryTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.CategoryTypes_CategoryTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] CHECK CONSTRAINT [FK_dbo.IncentivePolicies_dbo.CategoryTypes_CategoryTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicies_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] CHECK CONSTRAINT [FK_dbo.IncentivePolicies_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.Industries_IndustryId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicies_dbo.Industries_IndustryId] FOREIGN KEY([IndustryId])
REFERENCES [dbo].[Industries] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.Industries_IndustryId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] CHECK CONSTRAINT [FK_dbo.IncentivePolicies_dbo.Industries_IndustryId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicies_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] CHECK CONSTRAINT [FK_dbo.IncentivePolicies_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicies_dbo.SystemUsers_ClerkUserId] FOREIGN KEY([ClerkUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] CHECK CONSTRAINT [FK_dbo.IncentivePolicies_dbo.SystemUsers_ClerkUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicies_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] CHECK CONSTRAINT [FK_dbo.IncentivePolicies_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicies_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicies_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicies]'))
ALTER TABLE [dbo].[IncentivePolicies] CHECK CONSTRAINT [FK_dbo.IncentivePolicies_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.CategoryTypes_CategoryTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.CategoryTypes_CategoryTypeId] FOREIGN KEY([CategoryTypeId])
REFERENCES [dbo].[CategoryTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.CategoryTypes_CategoryTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.CategoryTypes_CategoryTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.Industries_IndustryId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.Industries_IndustryId] FOREIGN KEY([IndustryId])
REFERENCES [dbo].[Industries] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.Industries_IndustryId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.Industries_IndustryId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ClerkUserId] FOREIGN KEY([ClerkUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ClerkUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.IncentivePolicies_IncentivePolicyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.IncentivePolicies_IncentivePolicyId] FOREIGN KEY([IncentivePolicyId])
REFERENCES [dbo].[IncentivePolicies] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.IncentivePolicies_IncentivePolicyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties] CHECK CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.IncentivePolicies_IncentivePolicyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.Properties_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties] CHECK CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.Properties_PropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties] CHECK CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties] CHECK CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyProperties]'))
ALTER TABLE [dbo].[IncentivePolicyProperties] CHECK CONSTRAINT [FK_dbo.IncentivePolicyProperties_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.IncentivePolicies_IncentivePolicyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.IncentivePolicies_IncentivePolicyId] FOREIGN KEY([IncentivePolicyId])
REFERENCES [dbo].[IncentivePolicies] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.IncentivePolicies_IncentivePolicyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.IncentivePolicies_IncentivePolicyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.Properties_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.Properties_PropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IncentivePolicyPropertyAudits]'))
ALTER TABLE [dbo].[IncentivePolicyPropertyAudits] CHECK CONSTRAINT [FK_dbo.IncentivePolicyPropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Industries_dbo.SubSectors_SubSectorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Industries]'))
ALTER TABLE [dbo].[Industries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Industries_dbo.SubSectors_SubSectorId] FOREIGN KEY([SubSectorId])
REFERENCES [dbo].[SubSectors] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Industries_dbo.SubSectors_SubSectorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Industries]'))
ALTER TABLE [dbo].[Industries] CHECK CONSTRAINT [FK_dbo.Industries_dbo.SubSectors_SubSectorId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Industries_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Industries]'))
ALTER TABLE [dbo].[Industries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Industries_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Industries_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Industries]'))
ALTER TABLE [dbo].[Industries] CHECK CONSTRAINT [FK_dbo.Industries_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Industries_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Industries]'))
ALTER TABLE [dbo].[Industries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Industries_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Industries_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Industries]'))
ALTER TABLE [dbo].[Industries] CHECK CONSTRAINT [FK_dbo.Industries_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IndustryAudits_dbo.SubSectors_SubSectorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IndustryAudits]'))
ALTER TABLE [dbo].[IndustryAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndustryAudits_dbo.SubSectors_SubSectorId] FOREIGN KEY([SubSectorId])
REFERENCES [dbo].[SubSectors] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IndustryAudits_dbo.SubSectors_SubSectorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IndustryAudits]'))
ALTER TABLE [dbo].[IndustryAudits] CHECK CONSTRAINT [FK_dbo.IndustryAudits_dbo.SubSectors_SubSectorId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IndustryAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IndustryAudits]'))
ALTER TABLE [dbo].[IndustryAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndustryAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IndustryAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IndustryAudits]'))
ALTER TABLE [dbo].[IndustryAudits] CHECK CONSTRAINT [FK_dbo.IndustryAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IndustryAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IndustryAudits]'))
ALTER TABLE [dbo].[IndustryAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndustryAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.IndustryAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[IndustryAudits]'))
ALTER TABLE [dbo].[IndustryAudits] CHECK CONSTRAINT [FK_dbo.IndustryAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditureAudits_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditureAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentOperationalExpenditureAudits_dbo.PropertyInvestments_PropertyInvestmentId] FOREIGN KEY([PropertyInvestmentId])
REFERENCES [dbo].[PropertyInvestments] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditureAudits_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditureAudits] CHECK CONSTRAINT [FK_dbo.InvestmentOperationalExpenditureAudits_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditureAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditureAudits] CHECK CONSTRAINT [FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditureAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditureAudits]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditureAudits] CHECK CONSTRAINT [FK_dbo.InvestmentOperationalExpenditureAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditures_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentOperationalExpenditures_dbo.PropertyInvestments_PropertyInvestmentId] FOREIGN KEY([PropertyInvestmentId])
REFERENCES [dbo].[PropertyInvestments] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditures_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditures] CHECK CONSTRAINT [FK_dbo.InvestmentOperationalExpenditures_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditures] CHECK CONSTRAINT [FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentOperationalExpenditures]'))
ALTER TABLE [dbo].[InvestmentOperationalExpenditures] CHECK CONSTRAINT [FK_dbo.InvestmentOperationalExpenditures_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueAudits_dbo.InvestmentValueTypes_InvestmentValueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]'))
ALTER TABLE [dbo].[InvestmentValueAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentValueAudits_dbo.InvestmentValueTypes_InvestmentValueTypeId] FOREIGN KEY([InvestmentValueTypeId])
REFERENCES [dbo].[InvestmentValueTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueAudits_dbo.InvestmentValueTypes_InvestmentValueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]'))
ALTER TABLE [dbo].[InvestmentValueAudits] CHECK CONSTRAINT [FK_dbo.InvestmentValueAudits_dbo.InvestmentValueTypes_InvestmentValueTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]'))
ALTER TABLE [dbo].[InvestmentValueAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]'))
ALTER TABLE [dbo].[InvestmentValueAudits] CHECK CONSTRAINT [FK_dbo.InvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]'))
ALTER TABLE [dbo].[InvestmentValueAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueAudits]'))
ALTER TABLE [dbo].[InvestmentValueAudits] CHECK CONSTRAINT [FK_dbo.InvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValues_dbo.InvestmentValueTypes_InvestmentValueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValues]'))
ALTER TABLE [dbo].[InvestmentValues]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentValues_dbo.InvestmentValueTypes_InvestmentValueTypeId] FOREIGN KEY([InvestmentValueTypeId])
REFERENCES [dbo].[InvestmentValueTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValues_dbo.InvestmentValueTypes_InvestmentValueTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValues]'))
ALTER TABLE [dbo].[InvestmentValues] CHECK CONSTRAINT [FK_dbo.InvestmentValues_dbo.InvestmentValueTypes_InvestmentValueTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValues_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValues]'))
ALTER TABLE [dbo].[InvestmentValues]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentValues_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValues_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValues]'))
ALTER TABLE [dbo].[InvestmentValues] CHECK CONSTRAINT [FK_dbo.InvestmentValues_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValues]'))
ALTER TABLE [dbo].[InvestmentValues]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValues]'))
ALTER TABLE [dbo].[InvestmentValues] CHECK CONSTRAINT [FK_dbo.InvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]'))
ALTER TABLE [dbo].[InvestmentValueTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]'))
ALTER TABLE [dbo].[InvestmentValueTypeAudits] CHECK CONSTRAINT [FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]'))
ALTER TABLE [dbo].[InvestmentValueTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypeAudits]'))
ALTER TABLE [dbo].[InvestmentValueTypeAudits] CHECK CONSTRAINT [FK_dbo.InvestmentValueTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]'))
ALTER TABLE [dbo].[InvestmentValueTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentValueTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]'))
ALTER TABLE [dbo].[InvestmentValueTypes] CHECK CONSTRAINT [FK_dbo.InvestmentValueTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]'))
ALTER TABLE [dbo].[InvestmentValueTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvestmentValueTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.InvestmentValueTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestmentValueTypes]'))
ALTER TABLE [dbo].[InvestmentValueTypes] CHECK CONSTRAINT [FK_dbo.InvestmentValueTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.Accounts_AccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.Accounts_AccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] CHECK CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.Accounts_AccountId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] CHECK CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.LinkedAccountTypes_LinkedAccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.LinkedAccountTypes_LinkedAccountTypeId] FOREIGN KEY([LinkedAccountTypeId])
REFERENCES [dbo].[LinkedAccountTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.LinkedAccountTypes_LinkedAccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] CHECK CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.LinkedAccountTypes_LinkedAccountTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.RecipientTypes_RecipientTypeId] FOREIGN KEY([RecipientTypeId])
REFERENCES [dbo].[RecipientTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] CHECK CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.RecipientTypes_RecipientTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] CHECK CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] CHECK CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountAudits]'))
ALTER TABLE [dbo].[LinkedAccountAudits] CHECK CONSTRAINT [FK_dbo.LinkedAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.Accounts_AccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccounts_dbo.Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.Accounts_AccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] CHECK CONSTRAINT [FK_dbo.LinkedAccounts_dbo.Accounts_AccountId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccounts_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] CHECK CONSTRAINT [FK_dbo.LinkedAccounts_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.LinkedAccountTypes_LinkedAccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccounts_dbo.LinkedAccountTypes_LinkedAccountTypeId] FOREIGN KEY([LinkedAccountTypeId])
REFERENCES [dbo].[LinkedAccountTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.LinkedAccountTypes_LinkedAccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] CHECK CONSTRAINT [FK_dbo.LinkedAccounts_dbo.LinkedAccountTypes_LinkedAccountTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccounts_dbo.RecipientTypes_RecipientTypeId] FOREIGN KEY([RecipientTypeId])
REFERENCES [dbo].[RecipientTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] CHECK CONSTRAINT [FK_dbo.LinkedAccounts_dbo.RecipientTypes_RecipientTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccounts_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] CHECK CONSTRAINT [FK_dbo.LinkedAccounts_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccounts_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] CHECK CONSTRAINT [FK_dbo.LinkedAccounts_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccounts_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccounts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccounts]'))
ALTER TABLE [dbo].[LinkedAccounts] CHECK CONSTRAINT [FK_dbo.LinkedAccounts_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]'))
ALTER TABLE [dbo].[LinkedAccountTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]'))
ALTER TABLE [dbo].[LinkedAccountTypeAudits] CHECK CONSTRAINT [FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]'))
ALTER TABLE [dbo].[LinkedAccountTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypeAudits]'))
ALTER TABLE [dbo].[LinkedAccountTypeAudits] CHECK CONSTRAINT [FK_dbo.LinkedAccountTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]'))
ALTER TABLE [dbo].[LinkedAccountTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]'))
ALTER TABLE [dbo].[LinkedAccountTypes] CHECK CONSTRAINT [FK_dbo.LinkedAccountTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]'))
ALTER TABLE [dbo].[LinkedAccountTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedAccountTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedAccountTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedAccountTypes]'))
ALTER TABLE [dbo].[LinkedAccountTypes] CHECK CONSTRAINT [FK_dbo.LinkedAccountTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.LinkedAccounts_LinkedAccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.LinkedAccounts_LinkedAccountId] FOREIGN KEY([LinkedAccountId])
REFERENCES [dbo].[LinkedAccounts] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.LinkedAccounts_LinkedAccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits] CHECK CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.LinkedAccounts_LinkedAccountId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.RecipientTypes_RecipientTypeId] FOREIGN KEY([RecipientTypeId])
REFERENCES [dbo].[RecipientTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits] CHECK CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.RecipientTypes_RecipientTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits] CHECK CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits] CHECK CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmailAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmailAudits]'))
ALTER TABLE [dbo].[LinkedEmailAudits] CHECK CONSTRAINT [FK_dbo.LinkedEmailAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.LinkedAccounts_LinkedAccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedEmails_dbo.LinkedAccounts_LinkedAccountId] FOREIGN KEY([LinkedAccountId])
REFERENCES [dbo].[LinkedAccounts] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.LinkedAccounts_LinkedAccountId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails] CHECK CONSTRAINT [FK_dbo.LinkedEmails_dbo.LinkedAccounts_LinkedAccountId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedEmails_dbo.RecipientTypes_RecipientTypeId] FOREIGN KEY([RecipientTypeId])
REFERENCES [dbo].[RecipientTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.RecipientTypes_RecipientTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails] CHECK CONSTRAINT [FK_dbo.LinkedEmails_dbo.RecipientTypes_RecipientTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedEmails_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails] CHECK CONSTRAINT [FK_dbo.LinkedEmails_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedEmails_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails] CHECK CONSTRAINT [FK_dbo.LinkedEmails_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LinkedEmails_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LinkedEmails_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkedEmails]'))
ALTER TABLE [dbo].[LinkedEmails] CHECK CONSTRAINT [FK_dbo.LinkedEmails_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]'))
ALTER TABLE [dbo].[LocationTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LocationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]'))
ALTER TABLE [dbo].[LocationTypeAudits] CHECK CONSTRAINT [FK_dbo.LocationTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]'))
ALTER TABLE [dbo].[LocationTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LocationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypeAudits]'))
ALTER TABLE [dbo].[LocationTypeAudits] CHECK CONSTRAINT [FK_dbo.LocationTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypes]'))
ALTER TABLE [dbo].[LocationTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LocationTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypes]'))
ALTER TABLE [dbo].[LocationTypes] CHECK CONSTRAINT [FK_dbo.LocationTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypes]'))
ALTER TABLE [dbo].[LocationTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LocationTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LocationTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocationTypes]'))
ALTER TABLE [dbo].[LocationTypes] CHECK CONSTRAINT [FK_dbo.LocationTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.LogTypes_LogTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogAudits_dbo.LogTypes_LogTypeId] FOREIGN KEY([LogTypeId])
REFERENCES [dbo].[LogTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.LogTypes_LogTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits] CHECK CONSTRAINT [FK_dbo.LogAudits_dbo.LogTypes_LogTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogAudits_dbo.ReferenceTypes_ReferenceTypeId] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits] CHECK CONSTRAINT [FK_dbo.LogAudits_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits] CHECK CONSTRAINT [FK_dbo.LogAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogAudits]'))
ALTER TABLE [dbo].[LogAudits] CHECK CONSTRAINT [FK_dbo.LogAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.LogTypes_LogTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Logs_dbo.LogTypes_LogTypeId] FOREIGN KEY([LogTypeId])
REFERENCES [dbo].[LogTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.LogTypes_LogTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_dbo.Logs_dbo.LogTypes_LogTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Logs_dbo.ReferenceTypes_ReferenceTypeId] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_dbo.Logs_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Logs_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_dbo.Logs_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Logs_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Logs_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_dbo.Logs_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]'))
ALTER TABLE [dbo].[LogTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]'))
ALTER TABLE [dbo].[LogTypeAudits] CHECK CONSTRAINT [FK_dbo.LogTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]'))
ALTER TABLE [dbo].[LogTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypeAudits]'))
ALTER TABLE [dbo].[LogTypeAudits] CHECK CONSTRAINT [FK_dbo.LogTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypes]'))
ALTER TABLE [dbo].[LogTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypes]'))
ALTER TABLE [dbo].[LogTypes] CHECK CONSTRAINT [FK_dbo.LogTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypes]'))
ALTER TABLE [dbo].[LogTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.LogTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[LogTypes]'))
ALTER TABLE [dbo].[LogTypes] CHECK CONSTRAINT [FK_dbo.LogTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]'))
ALTER TABLE [dbo].[MeasurementTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]'))
ALTER TABLE [dbo].[MeasurementTypeAudits] CHECK CONSTRAINT [FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]'))
ALTER TABLE [dbo].[MeasurementTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypeAudits]'))
ALTER TABLE [dbo].[MeasurementTypeAudits] CHECK CONSTRAINT [FK_dbo.MeasurementTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]'))
ALTER TABLE [dbo].[MeasurementTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MeasurementTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]'))
ALTER TABLE [dbo].[MeasurementTypes] CHECK CONSTRAINT [FK_dbo.MeasurementTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]'))
ALTER TABLE [dbo].[MeasurementTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MeasurementTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.MeasurementTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[MeasurementTypes]'))
ALTER TABLE [dbo].[MeasurementTypes] CHECK CONSTRAINT [FK_dbo.MeasurementTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.NoteTypes_NoteTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteAudits_dbo.NoteTypes_NoteTypeId] FOREIGN KEY([NoteTypeId])
REFERENCES [dbo].[NoteTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.NoteTypes_NoteTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits] CHECK CONSTRAINT [FK_dbo.NoteAudits_dbo.NoteTypes_NoteTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteAudits_dbo.ReferenceTypes_ReferenceTypeId] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits] CHECK CONSTRAINT [FK_dbo.NoteAudits_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits] CHECK CONSTRAINT [FK_dbo.NoteAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteAudits]'))
ALTER TABLE [dbo].[NoteAudits] CHECK CONSTRAINT [FK_dbo.NoteAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.NoteTypes_NoteTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Notes_dbo.NoteTypes_NoteTypeId] FOREIGN KEY([NoteTypeId])
REFERENCES [dbo].[NoteTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.NoteTypes_NoteTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_dbo.Notes_dbo.NoteTypes_NoteTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Notes_dbo.ReferenceTypes_ReferenceTypeId] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.ReferenceTypes_ReferenceTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_dbo.Notes_dbo.ReferenceTypes_ReferenceTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Notes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_dbo.Notes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Notes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Notes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notes]'))
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_dbo.Notes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]'))
ALTER TABLE [dbo].[NoteTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]'))
ALTER TABLE [dbo].[NoteTypeAudits] CHECK CONSTRAINT [FK_dbo.NoteTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]'))
ALTER TABLE [dbo].[NoteTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypeAudits]'))
ALTER TABLE [dbo].[NoteTypeAudits] CHECK CONSTRAINT [FK_dbo.NoteTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypes]'))
ALTER TABLE [dbo].[NoteTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypes]'))
ALTER TABLE [dbo].[NoteTypes] CHECK CONSTRAINT [FK_dbo.NoteTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypes]'))
ALTER TABLE [dbo].[NoteTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NoteTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.NoteTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[NoteTypes]'))
ALTER TABLE [dbo].[NoteTypes] CHECK CONSTRAINT [FK_dbo.NoteTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Properties_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Properties]'))
ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Properties_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Properties_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Properties]'))
ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_dbo.Properties_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Properties_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Properties]'))
ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Properties_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Properties_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Properties]'))
ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_dbo.Properties_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Properties_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Properties]'))
ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Properties_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Properties_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Properties]'))
ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_dbo.Properties_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.AccountTypes_AccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.AccountTypes_AccountTypeId] FOREIGN KEY([AccountTypeId])
REFERENCES [dbo].[AccountTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.AccountTypes_AccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits] CHECK CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.AccountTypes_AccountTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.Properties_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits] CHECK CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.Properties_PropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits] CHECK CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits] CHECK CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccountAudits]'))
ALTER TABLE [dbo].[PropertyAccountAudits] CHECK CONSTRAINT [FK_dbo.PropertyAccountAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.AccountTypes_AccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAccounts_dbo.AccountTypes_AccountTypeId] FOREIGN KEY([AccountTypeId])
REFERENCES [dbo].[AccountTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.AccountTypes_AccountTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts] CHECK CONSTRAINT [FK_dbo.PropertyAccounts_dbo.AccountTypes_AccountTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAccounts_dbo.Properties_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts] CHECK CONSTRAINT [FK_dbo.PropertyAccounts_dbo.Properties_PropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAccounts_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts] CHECK CONSTRAINT [FK_dbo.PropertyAccounts_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAccounts_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts] CHECK CONSTRAINT [FK_dbo.PropertyAccounts_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAccounts_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAccounts_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAccounts]'))
ALTER TABLE [dbo].[PropertyAccounts] CHECK CONSTRAINT [FK_dbo.PropertyAccounts_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAudits]'))
ALTER TABLE [dbo].[PropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAudits]'))
ALTER TABLE [dbo].[PropertyAudits] CHECK CONSTRAINT [FK_dbo.PropertyAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAudits]'))
ALTER TABLE [dbo].[PropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAudits]'))
ALTER TABLE [dbo].[PropertyAudits] CHECK CONSTRAINT [FK_dbo.PropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAudits]'))
ALTER TABLE [dbo].[PropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyAudits]'))
ALTER TABLE [dbo].[PropertyAudits] CHECK CONSTRAINT [FK_dbo.PropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId] FOREIGN KEY([IncentivePolicyPropertyId])
REFERENCES [dbo].[IncentivePolicyProperties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentAudits_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.MeasurementTypes_MeasurementTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.MeasurementTypes_MeasurementTypeId] FOREIGN KEY([MeasurementTypeId])
REFERENCES [dbo].[MeasurementTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.MeasurementTypes_MeasurementTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.MeasurementTypes_MeasurementTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.PropertyInvestments_PropertyInvestmentId] FOREIGN KEY([PropertyInvestmentId])
REFERENCES [dbo].[PropertyInvestments] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId] FOREIGN KEY([UnitOfMeasureTypeId])
REFERENCES [dbo].[UnitOfmeasureTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurementAudits_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurementAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurementAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentMeasurementAudits_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.MeasurementTypes_MeasurementTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.MeasurementTypes_MeasurementTypeId] FOREIGN KEY([MeasurementTypeId])
REFERENCES [dbo].[MeasurementTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.MeasurementTypes_MeasurementTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.MeasurementTypes_MeasurementTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.PropertyInvestments_PropertyInvestmentId] FOREIGN KEY([PropertyInvestmentId])
REFERENCES [dbo].[PropertyInvestments] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId] FOREIGN KEY([UnitOfMeasureTypeId])
REFERENCES [dbo].[UnitOfmeasureTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentMeasurements_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentMeasurements]'))
ALTER TABLE [dbo].[PropertyInvestmentMeasurements] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentMeasurements_dbo.UnitOfmeasureTypes_UnitOfMeasureTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestments_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]'))
ALTER TABLE [dbo].[PropertyInvestments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestments_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId] FOREIGN KEY([IncentivePolicyPropertyId])
REFERENCES [dbo].[IncentivePolicyProperties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestments_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]'))
ALTER TABLE [dbo].[PropertyInvestments] CHECK CONSTRAINT [FK_dbo.PropertyInvestments_dbo.IncentivePolicyProperties_IncentivePolicyPropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestments_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]'))
ALTER TABLE [dbo].[PropertyInvestments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestments_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestments_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]'))
ALTER TABLE [dbo].[PropertyInvestments] CHECK CONSTRAINT [FK_dbo.PropertyInvestments_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestments_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]'))
ALTER TABLE [dbo].[PropertyInvestments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestments_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestments_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestments]'))
ALTER TABLE [dbo].[PropertyInvestments] CHECK CONSTRAINT [FK_dbo.PropertyInvestments_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.InvestmentValues_InvestmentValueId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.InvestmentValues_InvestmentValueId] FOREIGN KEY([InvestmentValueId])
REFERENCES [dbo].[InvestmentValues] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.InvestmentValues_InvestmentValueId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.InvestmentValues_InvestmentValueId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.PropertyInvestments_PropertyInvestmentId] FOREIGN KEY([PropertyInvestmentId])
REFERENCES [dbo].[PropertyInvestments] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValueAudits]'))
ALTER TABLE [dbo].[PropertyInvestmentValueAudits] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentValueAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.InvestmentValues_InvestmentValueId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.InvestmentValues_InvestmentValueId] FOREIGN KEY([InvestmentValueId])
REFERENCES [dbo].[InvestmentValues] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.InvestmentValues_InvestmentValueId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.InvestmentValues_InvestmentValueId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.PropertyInvestments_PropertyInvestmentId] FOREIGN KEY([PropertyInvestmentId])
REFERENCES [dbo].[PropertyInvestments] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.PropertyInvestments_PropertyInvestmentId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.PropertyInvestments_PropertyInvestmentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[PropertyInvestmentValues]'))
ALTER TABLE [dbo].[PropertyInvestmentValues] CHECK CONSTRAINT [FK_dbo.PropertyInvestmentValues_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.QueryTypes_QueryTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Queries_dbo.QueryTypes_QueryTypeId] FOREIGN KEY([QueryTypeId])
REFERENCES [dbo].[QueryTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.QueryTypes_QueryTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries] CHECK CONSTRAINT [FK_dbo.Queries_dbo.QueryTypes_QueryTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Queries_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries] CHECK CONSTRAINT [FK_dbo.Queries_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Queries_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries] CHECK CONSTRAINT [FK_dbo.Queries_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Queries_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Queries_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Queries]'))
ALTER TABLE [dbo].[Queries] CHECK CONSTRAINT [FK_dbo.Queries_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryAudits]'))
ALTER TABLE [dbo].[QueryAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueryAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryAudits]'))
ALTER TABLE [dbo].[QueryAudits] CHECK CONSTRAINT [FK_dbo.QueryAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryAudits]'))
ALTER TABLE [dbo].[QueryAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueryAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryAudits]'))
ALTER TABLE [dbo].[QueryAudits] CHECK CONSTRAINT [FK_dbo.QueryAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryAudits]'))
ALTER TABLE [dbo].[QueryAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueryAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryAudits]'))
ALTER TABLE [dbo].[QueryAudits] CHECK CONSTRAINT [FK_dbo.QueryAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]'))
ALTER TABLE [dbo].[QueryTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]'))
ALTER TABLE [dbo].[QueryTypeAudits] CHECK CONSTRAINT [FK_dbo.QueryTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]'))
ALTER TABLE [dbo].[QueryTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypeAudits]'))
ALTER TABLE [dbo].[QueryTypeAudits] CHECK CONSTRAINT [FK_dbo.QueryTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypes]'))
ALTER TABLE [dbo].[QueryTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueryTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypes]'))
ALTER TABLE [dbo].[QueryTypes] CHECK CONSTRAINT [FK_dbo.QueryTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypes]'))
ALTER TABLE [dbo].[QueryTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueryTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.QueryTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[QueryTypes]'))
ALTER TABLE [dbo].[QueryTypes] CHECK CONSTRAINT [FK_dbo.QueryTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Customers_ApplicantCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Customers_ApplicantCustomerId] FOREIGN KEY([ApplicantCustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Customers_ApplicantCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] CHECK CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Customers_ApplicantCustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Customers_ExecutorCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Customers_ExecutorCustomerId] FOREIGN KEY([ExecutorCustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Customers_ExecutorCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] CHECK CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Customers_ExecutorCustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Customers_OwnerCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Customers_OwnerCustomerId] FOREIGN KEY([OwnerCustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Customers_OwnerCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] CHECK CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Customers_OwnerCustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Domiciliums_DomiciliumId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Domiciliums_DomiciliumId] FOREIGN KEY([DomiciliumId])
REFERENCES [dbo].[Domiciliums] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Domiciliums_DomiciliumId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] CHECK CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Domiciliums_DomiciliumId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Executors_ExecutorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Executors_ExecutorId] FOREIGN KEY([ExecutorId])
REFERENCES [dbo].[Executors] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Executors_ExecutorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] CHECK CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Executors_ExecutorId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] CHECK CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.SystemUsers_ClerkUserId] FOREIGN KEY([ClerkUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] CHECK CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.SystemUsers_ClerkUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] CHECK CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateAudits]'))
ALTER TABLE [dbo].[RatesRebateAudits] CHECK CONSTRAINT [FK_dbo.RatesRebateAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] CHECK CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.Properties_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] CHECK CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.Properties_PropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.RatesRebates_RatesRebateId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.RatesRebates_RatesRebateId] FOREIGN KEY([RatesRebateId])
REFERENCES [dbo].[RatesRebates] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.RatesRebates_RatesRebateId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] CHECK CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.RatesRebates_RatesRebateId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] CHECK CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] CHECK CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebateProperties_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebateProperties]'))
ALTER TABLE [dbo].[RatesRebateProperties] CHECK CONSTRAINT [FK_dbo.RatesRebateProperties_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.Customers_CustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] CHECK CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.Customers_CustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.Properties_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Properties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.Properties_PropertyId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] CHECK CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.Properties_PropertyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.RatesRebates_RatesRebateId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.RatesRebates_RatesRebateId] FOREIGN KEY([RatesRebateId])
REFERENCES [dbo].[RatesRebates] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.RatesRebates_RatesRebateId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] CHECK CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.RatesRebates_RatesRebateId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] CHECK CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] CHECK CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebatePropertyAudits]'))
ALTER TABLE [dbo].[RatesRebatePropertyAudits] CHECK CONSTRAINT [FK_dbo.RatesRebatePropertyAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Customers_ApplicantCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebates_dbo.Customers_ApplicantCustomerId] FOREIGN KEY([ApplicantCustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Customers_ApplicantCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] CHECK CONSTRAINT [FK_dbo.RatesRebates_dbo.Customers_ApplicantCustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Customers_ExecutorCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebates_dbo.Customers_ExecutorCustomerId] FOREIGN KEY([ExecutorCustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Customers_ExecutorCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] CHECK CONSTRAINT [FK_dbo.RatesRebates_dbo.Customers_ExecutorCustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Customers_OwnerCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebates_dbo.Customers_OwnerCustomerId] FOREIGN KEY([OwnerCustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Customers_OwnerCustomerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] CHECK CONSTRAINT [FK_dbo.RatesRebates_dbo.Customers_OwnerCustomerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Domiciliums_DomiciliumId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebates_dbo.Domiciliums_DomiciliumId] FOREIGN KEY([DomiciliumId])
REFERENCES [dbo].[Domiciliums] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Domiciliums_DomiciliumId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] CHECK CONSTRAINT [FK_dbo.RatesRebates_dbo.Domiciliums_DomiciliumId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Executors_ExecutorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebates_dbo.Executors_ExecutorId] FOREIGN KEY([ExecutorId])
REFERENCES [dbo].[Executors] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Executors_ExecutorId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] CHECK CONSTRAINT [FK_dbo.RatesRebates_dbo.Executors_ExecutorId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebates_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.Status_StatusId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] CHECK CONSTRAINT [FK_dbo.RatesRebates_dbo.Status_StatusId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebates_dbo.SystemUsers_ClerkUserId] FOREIGN KEY([ClerkUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.SystemUsers_ClerkUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] CHECK CONSTRAINT [FK_dbo.RatesRebates_dbo.SystemUsers_ClerkUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebates_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] CHECK CONSTRAINT [FK_dbo.RatesRebates_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RatesRebates_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RatesRebates_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RatesRebates]'))
ALTER TABLE [dbo].[RatesRebates] CHECK CONSTRAINT [FK_dbo.RatesRebates_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]'))
ALTER TABLE [dbo].[RecipientTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecipientTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]'))
ALTER TABLE [dbo].[RecipientTypeAudits] CHECK CONSTRAINT [FK_dbo.RecipientTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]'))
ALTER TABLE [dbo].[RecipientTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecipientTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypeAudits]'))
ALTER TABLE [dbo].[RecipientTypeAudits] CHECK CONSTRAINT [FK_dbo.RecipientTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypes]'))
ALTER TABLE [dbo].[RecipientTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecipientTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypes]'))
ALTER TABLE [dbo].[RecipientTypes] CHECK CONSTRAINT [FK_dbo.RecipientTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypes]'))
ALTER TABLE [dbo].[RecipientTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecipientTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.RecipientTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[RecipientTypes]'))
ALTER TABLE [dbo].[RecipientTypes] CHECK CONSTRAINT [FK_dbo.RecipientTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]'))
ALTER TABLE [dbo].[ReferenceTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]'))
ALTER TABLE [dbo].[ReferenceTypeAudits] CHECK CONSTRAINT [FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]'))
ALTER TABLE [dbo].[ReferenceTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypeAudits]'))
ALTER TABLE [dbo].[ReferenceTypeAudits] CHECK CONSTRAINT [FK_dbo.ReferenceTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]'))
ALTER TABLE [dbo].[ReferenceTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReferenceTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]'))
ALTER TABLE [dbo].[ReferenceTypes] CHECK CONSTRAINT [FK_dbo.ReferenceTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]'))
ALTER TABLE [dbo].[ReferenceTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReferenceTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ReferenceTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReferenceTypes]'))
ALTER TABLE [dbo].[ReferenceTypes] CHECK CONSTRAINT [FK_dbo.ReferenceTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Status_dbo.StatusTypes_StatusTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Status]'))
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Status_dbo.StatusTypes_StatusTypeId] FOREIGN KEY([StatusTypeId])
REFERENCES [dbo].[StatusTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Status_dbo.StatusTypes_StatusTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Status]'))
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK_dbo.Status_dbo.StatusTypes_StatusTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Status_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Status]'))
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Status_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Status_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Status]'))
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK_dbo.Status_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Status_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Status]'))
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Status_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Status_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Status]'))
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK_dbo.Status_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusAudits_dbo.StatusTypes_StatusTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusAudits]'))
ALTER TABLE [dbo].[StatusAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StatusAudits_dbo.StatusTypes_StatusTypeId] FOREIGN KEY([StatusTypeId])
REFERENCES [dbo].[StatusTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusAudits_dbo.StatusTypes_StatusTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusAudits]'))
ALTER TABLE [dbo].[StatusAudits] CHECK CONSTRAINT [FK_dbo.StatusAudits_dbo.StatusTypes_StatusTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusAudits]'))
ALTER TABLE [dbo].[StatusAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StatusAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusAudits]'))
ALTER TABLE [dbo].[StatusAudits] CHECK CONSTRAINT [FK_dbo.StatusAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusAudits]'))
ALTER TABLE [dbo].[StatusAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StatusAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusAudits]'))
ALTER TABLE [dbo].[StatusAudits] CHECK CONSTRAINT [FK_dbo.StatusAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]'))
ALTER TABLE [dbo].[StatusTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StatusTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]'))
ALTER TABLE [dbo].[StatusTypeAudits] CHECK CONSTRAINT [FK_dbo.StatusTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]'))
ALTER TABLE [dbo].[StatusTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StatusTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypeAudits]'))
ALTER TABLE [dbo].[StatusTypeAudits] CHECK CONSTRAINT [FK_dbo.StatusTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypes]'))
ALTER TABLE [dbo].[StatusTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StatusTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypes]'))
ALTER TABLE [dbo].[StatusTypes] CHECK CONSTRAINT [FK_dbo.StatusTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypes]'))
ALTER TABLE [dbo].[StatusTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StatusTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.StatusTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[StatusTypes]'))
ALTER TABLE [dbo].[StatusTypes] CHECK CONSTRAINT [FK_dbo.StatusTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectorAudits_dbo.FocusAreas_FocusAreaId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]'))
ALTER TABLE [dbo].[SubSectorAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SubSectorAudits_dbo.FocusAreas_FocusAreaId] FOREIGN KEY([FocusAreaId])
REFERENCES [dbo].[FocusAreas] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectorAudits_dbo.FocusAreas_FocusAreaId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]'))
ALTER TABLE [dbo].[SubSectorAudits] CHECK CONSTRAINT [FK_dbo.SubSectorAudits_dbo.FocusAreas_FocusAreaId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectorAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]'))
ALTER TABLE [dbo].[SubSectorAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SubSectorAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectorAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]'))
ALTER TABLE [dbo].[SubSectorAudits] CHECK CONSTRAINT [FK_dbo.SubSectorAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectorAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]'))
ALTER TABLE [dbo].[SubSectorAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SubSectorAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectorAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectorAudits]'))
ALTER TABLE [dbo].[SubSectorAudits] CHECK CONSTRAINT [FK_dbo.SubSectorAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectors_dbo.FocusAreas_FocusAreaId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectors]'))
ALTER TABLE [dbo].[SubSectors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SubSectors_dbo.FocusAreas_FocusAreaId] FOREIGN KEY([FocusAreaId])
REFERENCES [dbo].[FocusAreas] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectors_dbo.FocusAreas_FocusAreaId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectors]'))
ALTER TABLE [dbo].[SubSectors] CHECK CONSTRAINT [FK_dbo.SubSectors_dbo.FocusAreas_FocusAreaId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectors_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectors]'))
ALTER TABLE [dbo].[SubSectors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SubSectors_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectors_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectors]'))
ALTER TABLE [dbo].[SubSectors] CHECK CONSTRAINT [FK_dbo.SubSectors_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectors_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectors]'))
ALTER TABLE [dbo].[SubSectors]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SubSectors_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SubSectors_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubSectors]'))
ALTER TABLE [dbo].[SubSectors] CHECK CONSTRAINT [FK_dbo.SubSectors_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]'))
ALTER TABLE [dbo].[SystemUserAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SystemUserAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]'))
ALTER TABLE [dbo].[SystemUserAudits] CHECK CONSTRAINT [FK_dbo.SystemUserAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]'))
ALTER TABLE [dbo].[SystemUserAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SystemUserAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserAudits]'))
ALTER TABLE [dbo].[SystemUserAudits] CHECK CONSTRAINT [FK_dbo.SystemUserAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserLogTimes_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserLogTimes]'))
ALTER TABLE [dbo].[SystemUserLogTimes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SystemUserLogTimes_dbo.SystemUsers_SystemUserId] FOREIGN KEY([SystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserLogTimes_dbo.SystemUsers_SystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserLogTimes]'))
ALTER TABLE [dbo].[SystemUserLogTimes] CHECK CONSTRAINT [FK_dbo.SystemUserLogTimes_dbo.SystemUsers_SystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUsers_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUsers]'))
ALTER TABLE [dbo].[SystemUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SystemUsers_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUsers_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUsers]'))
ALTER TABLE [dbo].[SystemUsers] CHECK CONSTRAINT [FK_dbo.SystemUsers_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUsers_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUsers]'))
ALTER TABLE [dbo].[SystemUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SystemUsers_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUsers_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUsers]'))
ALTER TABLE [dbo].[SystemUsers] CHECK CONSTRAINT [FK_dbo.SystemUsers_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]'))
ALTER TABLE [dbo].[SystemUserTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]'))
ALTER TABLE [dbo].[SystemUserTypeAudits] CHECK CONSTRAINT [FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]'))
ALTER TABLE [dbo].[SystemUserTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypeAudits]'))
ALTER TABLE [dbo].[SystemUserTypeAudits] CHECK CONSTRAINT [FK_dbo.SystemUserTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]'))
ALTER TABLE [dbo].[SystemUserTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SystemUserTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]'))
ALTER TABLE [dbo].[SystemUserTypes] CHECK CONSTRAINT [FK_dbo.SystemUserTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]'))
ALTER TABLE [dbo].[SystemUserTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SystemUserTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SystemUserTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemUserTypes]'))
ALTER TABLE [dbo].[SystemUserTypes] CHECK CONSTRAINT [FK_dbo.SystemUserTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]'))
ALTER TABLE [dbo].[TitleTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TitleTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]'))
ALTER TABLE [dbo].[TitleTypeAudits] CHECK CONSTRAINT [FK_dbo.TitleTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]'))
ALTER TABLE [dbo].[TitleTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TitleTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypeAudits]'))
ALTER TABLE [dbo].[TitleTypeAudits] CHECK CONSTRAINT [FK_dbo.TitleTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypes]'))
ALTER TABLE [dbo].[TitleTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TitleTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypes]'))
ALTER TABLE [dbo].[TitleTypes] CHECK CONSTRAINT [FK_dbo.TitleTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypes]'))
ALTER TABLE [dbo].[TitleTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TitleTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.TitleTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleTypes]'))
ALTER TABLE [dbo].[TitleTypes] CHECK CONSTRAINT [FK_dbo.TitleTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]'))
ALTER TABLE [dbo].[UnitOfmeasureTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]'))
ALTER TABLE [dbo].[UnitOfmeasureTypeAudits] CHECK CONSTRAINT [FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]'))
ALTER TABLE [dbo].[UnitOfmeasureTypeAudits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypeAudits]'))
ALTER TABLE [dbo].[UnitOfmeasureTypeAudits] CHECK CONSTRAINT [FK_dbo.UnitOfmeasureTypeAudits_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]'))
ALTER TABLE [dbo].[UnitOfmeasureTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_CreatedBySystemUserId] FOREIGN KEY([CreatedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_CreatedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]'))
ALTER TABLE [dbo].[UnitOfmeasureTypes] CHECK CONSTRAINT [FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_CreatedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]'))
ALTER TABLE [dbo].[UnitOfmeasureTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_ModifiedBySystemUserId] FOREIGN KEY([ModifiedBySystemUserId])
REFERENCES [dbo].[SystemUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_ModifiedBySystemUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UnitOfmeasureTypes]'))
ALTER TABLE [dbo].[UnitOfmeasureTypes] CHECK CONSTRAINT [FK_dbo.UnitOfmeasureTypes_dbo.SystemUsers_ModifiedBySystemUserId]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'eMailBills', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "la"
            Begin Extent = 
               Top = 6
               Left = 297
               Bottom = 136
               Right = 518
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "le"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eMailBills'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'eMailBills', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eMailBills'
GO
