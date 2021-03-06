USE [BaseAppDB]
GO
SET IDENTITY_INSERT [dbo].[Applications] ON 

INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Linked Accounts', N'Linking accounts and emails to customers.', N'a_linked_accounts', N'LA', 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, 1, 0, 0, 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime), 1, CAST(N'2020-01-14T11:42:46.873' AS DateTime))
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Rates Rebate', N'Property rates rebate application.', N'a_rates_rebate', N'RR', 1, CAST(N'2017-10-27T08:44:59.263' AS DateTime), 5, 1, 0, 0, 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime), 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime))
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (18, N'Valuations and Objections', N'Valuations and Objections Application', N'a_valuations_and_objections', N'VAO', 0, CAST(N'2016-02-24T13:26:48.387' AS DateTime), 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime), 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime))
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, N'Credit Applications', N'Credit Applications System', N'a_credit_applications', N'CAS', 0, CAST(N'2016-02-24T13:27:32.727' AS DateTime), 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime), 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime))
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (20, N'Economic Development Incentive', N'Economic Development Incentive System', N'a_economic_development_incentive', N'EDIS', 0, CAST(N'2016-02-24T13:28:33.533' AS DateTime), 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime), 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime))
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (21, N'All Applications', N'All Applications', N'a_all_applications', N'ALL', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, 1, 0, 0, 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime), 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime))
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (22, N'Incentive Policy Application', N'Incentive Policy Application - Economic Development', N'a_incentive_policy', N'IPA', 1, CAST(N'2018-12-10T20:39:01.773' AS DateTime), 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime), 1, CAST(N'2019-06-03T13:13:48.133' AS DateTime))
SET IDENTITY_INSERT [dbo].[Applications] OFF
SET IDENTITY_INSERT [dbo].[ReferenceTypes] ON 

INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Rates Rebate', N'Rates Rebate', N'rt_rates_rebate', 1, 0, 0, 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime), 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Rates Rebate Property', N'Rates Rebate Property Model', N'rt_rates_rebate_property', 1, 0, 0, 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime), 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Linked Accounts', N'Linked Accounts', N'rt_linked_accounts', 1, 0, 0, 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime), 1, CAST(N'2020-01-14T11:42:12.340' AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Customer Profile', N'Customer Profile', N'rt_customer_profile', 1, 0, 0, 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime), 1, CAST(N'2020-01-14T11:42:46.873' AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Linked Accounts Managing Agent', N'Linked Accounts Managing Agent', N'rt_linked_accounts_managing_agent', 1, 0, 0, 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime), NULL, CAST(N'2020-01-14T11:27:33.927' AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Incentive Policy Property', N'Incentive Policy Property', N'rt_incentive_policy_property', 1, 0, 0, 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime), 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Incentive Policy', N'Incentive Policy', N'rt_incentive_policy', 1, 0, 0, 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime), 1, CAST(N'2019-06-03T13:26:18.247' AS DateTime))
SET IDENTITY_INSERT [dbo].[ReferenceTypes] OFF


INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3539428d-886a-4e76-a06b-c0da7682dc06', N'Clerks')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2a77a201-3405-4a60-867e-21ebc1a4ff65', N'System Administrators')
SET IDENTITY_INSERT [dbo].[ApplicationRoles] ON 

INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, 2, N'829e39f4-c2e1-4d38-bae7-56f7ee156793', 1, 0, 0, NULL, CAST(N'2016-08-30T11:55:00.417' AS DateTime), NULL, CAST(N'2016-08-30T11:55:00.417' AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, 2, N'753b27e6-7169-4a00-b00c-885576f4e8f7', 1, 0, 0, NULL, CAST(N'2016-08-30T11:55:05.147' AS DateTime), NULL, CAST(N'2016-08-30T11:55:05.147' AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, 3, N'829e39f4-c2e1-4d38-bae7-56f7ee156793', 1, 0, 0, NULL, CAST(N'2016-08-30T11:55:22.120' AS DateTime), NULL, CAST(N'2016-08-30T11:55:22.120' AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, 3, N'753b27e6-7169-4a00-b00c-885576f4e8f7', 1, 0, 0, NULL, CAST(N'2016-08-30T11:55:26.833' AS DateTime), NULL, CAST(N'2016-08-30T11:55:26.833' AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, 2, N'3539428d-886a-4e76-a06b-c0da7682dc06', 1, 0, 0, NULL, CAST(N'2016-08-30T11:57:20.473' AS DateTime), NULL, CAST(N'2016-08-30T11:57:20.473' AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, 3, N'3539428d-886a-4e76-a06b-c0da7682dc06', 1, 0, 0, NULL, CAST(N'2016-08-30T11:57:30.137' AS DateTime), NULL, CAST(N'2016-08-30T11:57:30.137' AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, 22, N'829e39f4-c2e1-4d38-bae7-56f7ee156793', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, 22, N'753b27e6-7169-4a00-b00c-885576f4e8f7', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, 22, N'3539428d-886a-4e76-a06b-c0da7682dc06', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, 22, N'9524ba14-6dea-44af-b2e4-c94f8980a412', 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ApplicationRoles] OFF

SET IDENTITY_INSERT [dbo].[LogTypes] ON 

INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'New ', N'Initial Log Type', NULL, 0, 1, NULL, 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime), 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime))
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Log Type 2', N'This is log type number 2', NULL, 0, 0, NULL, 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime), 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime))
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Log Type 5', N'This is log type 5', NULL, 1, 0, 0, 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime), 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime))
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Log Type 4', N'This is log type four', N'lt_log_type_4', 1, 0, 0, 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime), 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime))
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Error', N'This is a log for an error.', N'lt_error', 1, 0, 0, 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime), 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime))
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Message', N'A notification message.', N'lt_message', 1, 0, 0, 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime), 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime))
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Warning', N'A warning message.', N'lt_warning', 1, 0, 0, 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime), 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime))
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Debug', N'A debug log.', N'lt_debug', 1, 0, 0, 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime), 1, CAST(N'2019-06-03T14:12:53.307' AS DateTime))
SET IDENTITY_INSERT [dbo].[LogTypes] OFF

SET IDENTITY_INSERT [dbo].[NotificationTypes] ON 

INSERT [dbo].[NotificationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Email', N'Email', N'nt2_email', 1, 0, 0, 1, CAST(N'2019-06-03T14:14:27.540' AS DateTime), 1, CAST(N'2019-08-19T09:41:17.937' AS DateTime))
INSERT [dbo].[NotificationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Sms', N'Sms', N'nt2_sms', 1, 0, 0, 1, CAST(N'2019-06-03T14:14:27.540' AS DateTime), 1, CAST(N'2019-08-19T09:41:17.937' AS DateTime))
INSERT [dbo].[NotificationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Both', N'Email & Sms', N'nt2_emailsms', 1, 0, 0, 1, CAST(N'2019-06-03T14:14:27.540' AS DateTime), 1, CAST(N'2019-08-19T09:41:17.937' AS DateTime))
SET IDENTITY_INSERT [dbo].[NotificationTypes] OFF

SET IDENTITY_INSERT [dbo].[QueryTypes] ON 

INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Account Query', N'Account related queries', N'qt_account_query', 1, 1, 0, NULL, NULL, NULL, 1, CAST(N'2020-01-14T11:46:12.907' AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Complaint', N'Complaint', N'qt_complaint', 2, 1, 0, NULL, NULL, NULL, 1, CAST(N'2020-01-14T11:46:12.907' AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Compliment', N'Compliment', N'qt_compliment', 3, 1, 0, NULL, NULL, NULL, 1, CAST(N'2020-01-13T21:17:51.777' AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Electricity', N'Electricity', N'qt_electricity', 4, 1, 0, NULL, NULL, NULL, 1, CAST(N'2020-01-14T10:03:19.483' AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Street Lights', N'Street Lights', N'qt_street_lights', 5, 1, 0, NULL, NULL, NULL, 1, CAST(N'2020-01-14T11:44:30.343' AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Traffic Lights', N'Traffic Lights', N'qt_traffic_lights', 6, 1, 0, NULL, NULL, NULL, 1, CAST(N'2020-01-13T10:23:37.097' AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Municipality Query', N'Municipality Query', N'qt_municipality_query', 7, 1, 0, NULL, NULL, NULL, 1, CAST(N'2020-01-14T11:44:30.343' AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Deactivate Account', N'Deactivate Account', N'qt_deactivate_account', 8, 1, 0, NULL, NULL, NULL, 1, CAST(N'2020-01-14T11:46:12.907' AS DateTime))
SET IDENTITY_INSERT [dbo].[QueryTypes] OFF
SET IDENTITY_INSERT [dbo].[StatusTypes] ON 

INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Customer Status', N'Customer Status', N'st_customer_account', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Linked Account Status', N'Linked Account Status', N'st_linked_account', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Account Status', N'Account Status', N'st_account', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Rates Rebate Application', N'Rates Rebate Application Status', N'st_rates_rebate_application', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Rates Rebate Property ', N'Rates Rebate Property Status', N'st_rates_rebate_property', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Document', N'Document Status', N'st_document_status', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'System User Status', N'System User Status', N'st_system_user', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Property Owners', N'Property Owner Status', N'st_property_owners', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Property Accounts', N'Rates Rebate Property Account Status', N'st_property_accounts', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'Property', N'Property Status', N'st_property', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, N'Email Verification', N'Email Verfication Status', N'st_email_verification', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (12, N'Customer Query', N'Customer Query', N'st_customer_query_status', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (13, N'Incentive Policy Property', N'Incentive Policy Property', N'st_incentive_policy_property', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (14, N'Incentive Policy Application', N'Incentive Policy Application', N'st_incentive_policy_application', 1, 0, 0, 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime), 1, CAST(N'2019-06-03T13:07:11.267' AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (15, N'Debit Order Status', N'Debit ORder Status For ACB File Creation', N'st_debit_order', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (16, N'Support Query', N'Support Query', N'st_support_query', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (17, N'Linked Mobile', N'Linked Mobile', N'st_linked_mobile', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (18, N'Masterpass', N'Masterpass Transaction Status', N'st_masterpass', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, N'SMS Notification', N'SMS  Notifications', N'st_sms_notification', 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[StatusTypes] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Pending', N'Customer Pending Status', N's_customer_pending', 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), NULL, CAST(N'2019-12-22T22:19:49.417' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Active', N'Customer Active', N's_customer_active', 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2020-01-14T11:42:46.873' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Pending Approval', N'Linked Account Pending', N's_linked_account_pending', 2, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2020-01-14T11:41:34.730' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Active', N'Linked Account Active', N's_linked_account_active', 2, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), NULL, CAST(N'2020-01-14T11:42:12.467' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Pending', N'Agent Pending Status', N's_agent_pending', 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Active', N'Agent Active', N's_agent_active', 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2020-01-14T11:42:46.873' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Pending', N'Entity Pending', N's_entity_pending', 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Active', N'Entity Active', N's_entity_active', 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2020-01-14T11:42:46.873' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'Active', N'Account Active', N's_account_active', 3, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2020-01-14T11:42:12.340' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, N'Pending', N'Account Pending', N's_account_pending', 3, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (12, N'Pending', N'Rates Rebate Application Pending', N's_rates_rebate_application_pending', 4, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (13, N'In Query', N'Rates Rebate Application Query', N's_rates_rebate_application_query', 4, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (14, N'Received', N'Rates Rebate Application Received', N's_rates_rebate_application_received', 4, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (15, N'In Progress', N'Rates Rebate Application In Progress', N's_rates_rebate_application_in_progress', 4, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (18, N'Approved', N'Rates Rebate Application Approved', N's_rates_rebate_application_approved', 4, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, N'Pending', N'Rates Rebate Property Pending', N's_rates_rebate_property_pending', 5, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (20, N'Verified', N'Rates Rebate Property Verified', N's_rates_rebate_property_verified', 5, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (21, N'Verified', N'Document Verified ', N's_document_verified', 6, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), NULL, CAST(N'2020-01-14T11:38:52.263' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (22, N'Pending Documents', N'Document Pending', N's_document_pending', 6, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2020-01-14T11:42:12.340' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (23, N'Active', N'System User Account Active', N's_system_user_account_active', 7, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (24, N'Conflict', N'Rates Rebate Property Conflict with Value Assist', N's_conflict', 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (25, N'Verified', N'Customer details verified', N's_verified', 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (28, N'Conflict', N'Rates Rebate Property Information Conflict', N's_rates_rebate_property_conflict', 5, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (29, N'Pending', N'Additional Property Owners Pending', N's_additional_property_owners_pending', 8, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (30, N'Verified', N'Additional Property Owners Verified', N's_additional_property_owners_verified', 8, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (31, N'Conflict', N'Additional Property Owners Conflicts with Value Assist', N's_additional_property_owners_conflict', 8, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (32, N'Pending', N'Rates Rebate Property Account Pending', N's_rates_rebate_property_account_pending', 9, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (33, N'Verified', N'Rates Rebate Property Account Verified', N's_rates_rebate_property_account_verified', 9, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (34, N'Pending', N'Property Pending Verification', N's_property_pending', 10, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (38, N'Conflict', N'Property Information Conflict with Value Assist', N's_property_conflict', 10, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (39, N'Verified', N'Property Information Verified', N's_property_verified', 10, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (40, N'Pending', N'Pending Email Verification', N's_email_verification_pending', 11, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), NULL, CAST(N'2020-01-14T11:23:33.793' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (41, N'Verified', N'Email Verified', N's_email_verified', 11, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), NULL, CAST(N'2020-01-14T11:42:12.467' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (42, N'Unlinked', N'Linked Account Unlinked', N's_linked_account_unlinked', 2, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2020-01-14T11:15:33.400' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (43, N'Submitted', N'Rates Rebate Application Submitted', N's_rates_rebate_application_submitted', 4, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (44, N'Conflict', N'Rates Rebate Property Account Conflict', N's_rates_rebate_property_account_conflict', 9, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (45, N'Declined', N'Rates Rebate Application Declined', N's_rates_rebate_application_declined', 4, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (46, N'Uploaded', N'Document Uploaded', N's_document_uploaded', 6, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2020-01-14T11:41:47.527' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (47, N'Resolved', N'Customer Query Resolved', N's_customer_query_resolved', 12, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (48, N'Pending', N'Customer Query Pending', N's_customer_query_pending', 12, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (49, N'InProgress', N'Customer Query In Progress', N's_customer_query_inprogress', 12, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (50, N'Pending Documents', N'Customer Profile Pending Documents', N's_customer_pending_document', 1, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2020-01-14T11:42:46.873' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (51, N'Submitted', N'Incentive Policy Application Submitted', N's_incentive_policy_application_submitted', 14, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (52, N'InQuery', N'Incentive Policy Application InQuery', N's_incentive_policy_application_inquery', 14, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (53, N'Pending', N'Incentive Policy Property Pending', N's_incentive_policy_property_pending', 13, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (54, N'Verified', N'Incentive Policy Property Verified', N's_incentive_policy_property_verified', 13, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (55, N'Approved', N'Incentive Policy Application Approved', N's_incentive_policy_application_approved', 14, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), NULL, CAST(N'2020-01-14T11:13:39.860' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (56, N'Pending', N'Incentive Policy Application Pending', N's_incentive_policy_application_pending', 14, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (57, N'Re-Submitted', N'Incentive Policy Application Submitted', N's_incentive_policy_application_resubmitted', 14, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (58, N'Declined', N'Incentive Policy Application Declined', N's_incentive_policy_application_declined', 14, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), NULL, CAST(N'2020-01-14T11:04:26.030' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (59, N'Processing', N'Incentive Policy Application Processing', N's_incentive_policy_application_processing', 14, 1, 0, 0, 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime), 1, CAST(N'2019-06-03T13:08:58.180' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (60, N'Pending', N'Debit Order Pending', N's_debit_order_pending', 15, 1, 0, 0, NULL, NULL, 1, CAST(N'2020-01-14T11:46:49.343' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (61, N'Success', N'Debit Order Success', N's_debit_order_success', 15, 1, 0, 0, NULL, NULL, NULL, CAST(N'2020-01-14T11:24:25.810' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (62, N'Failed', N'Debit Order Failed', N's_debit_order_failed', 15, 1, 0, 0, NULL, NULL, NULL, CAST(N'2020-01-14T09:52:25.927' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (63, N'Sent', N'Debit Order Sent To Bank', N's_debit_order_sent', 15, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (64, N'Pending', N'Support Query Pending', N's_support_query_pending', 16, 1, 0, NULL, NULL, NULL, 1, CAST(N'2020-01-14T11:46:12.907' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (65, N'Closed', N'Support Query Closed', N's_support_query_closed', 16, 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (66, N'Resolved', N'Support Query Resolved', N's_support_query_resolved', 16, 1, 0, NULL, NULL, NULL, 1, CAST(N'2020-01-14T11:46:12.907' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (67, N'Pending', N'Linked Mobile Pending', N's_linked_mobile_pending', 17, 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (68, N'Active', N'Linked Mobile Active', N's_linked_mobile_active', 17, 1, 0, NULL, NULL, NULL, NULL, CAST(N'2020-01-14T11:09:41.297' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (69, N'Unlinked', N'Linked Mobile Unlinked', N's_linked_mobile_unlinked', 17, 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (70, N'Recieved', N'Masterpass Notification Recieved', N's_masterpass_notication_recieved', 18, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (71, N'Processed', N'Masterpass Notification Processed', N's_masterpass_notication_processed', 18, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (72, N'Pending', N'Masterpass Hourly Integration Flag', N's_masterpass_hourly_integration_flag_pending', 18, 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (73, N'Processed', N'Masterpass Hourly Integration Flag', N's_masterpass_hourly_integration_flag_processed', 18, 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (74, N'Duplicate', N'Duplicate orders.', N's_debit_order_duplicate', 15, 1, 0, 0, 1, CAST(N'2019-10-21T18:05:18.383' AS DateTime), 1, CAST(N'2019-10-21T18:05:18.383' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (75, N'Pending', N'SMS Pending', N's_sms_pending', 19, 1, 0, 0, NULL, NULL, NULL, CAST(N'2020-01-14T11:47:40.923' AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (76, N'Success', N'SMS Success', N's_sms_success', 19, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (77, N'Failed', N'SMS Failed', N's_sms_failed', 19, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (78, N'Sent', N'SMS Sent To Customer', N's_sms_sent', 19, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (79, N'Query', N'Order needs to be queried', N's_debit_order_query', 15, 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Status] OFF


SET IDENTITY_INSERT [dbo].[AppSettings] ON 
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'SharePoint Username', N'This is Sharepoint Description', N'as_share_point_username', N'Ssrs.dev', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'SharePoint Password', NULL, N'as_share_point_password', N'second1$', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'SharePoint Url', NULL, N'as_share_point_url', N'http://reports.durban.gov.za', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'SharePoint Site', NULL, N'as_share_point_site', N'misc', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'SharePoint Domain', N'Independed Research', N'as_share_point_domain', N'martin_west', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, N'SharePoint Library', NULL, N'as_share_point_library', N'eServicesLibrary', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (15, N'eServices Email Application ID', N'Email Application ID ', N'eservices_applicationID', N'7', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (16, N'eServices Default Email Template', N'eServices Default Email Template', N'eservices_default_email_template', N'<html>
<head>
    <title></title>
    <style type="text/css">
        body {
            font-family: "Helvetica Neue", "Lucida Grande", "Segoe UI", Arial, Helvetica, Verdana, sans-serif;
            font-size: 10pt;
        }

        .header {
            background-color: #ffc000;
            color: #ffffff;
            font-weight: bold;
            font-size: 16px;
            padding: 10px 10px 10px 10px;
        }
		
		.footer {
			background-color: #ffc000;
			height: 10px;
		}

        .main {
            padding: 10px 10px 10px 10px;
            border-top: 1px solid grey;
        }
    </style>
</head>
<body>
    <div class="header">Ekurhuleni Siyakhokha</div>
    <div class="main">
			<br/>
            Dear <b>#NAME#</b>,<br />
            <br />
            #BODYTEXT#
            <br />
			<br/>
            Regards,<br />
            <b>Siyakhokha Team</b>
            <br />
            <br />
    </div>
</body>
<div class="footer">&nbsp;</div>
</html>', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (17, N'eServices Email Account', N'Account Name For eServices Emails', N'eservices_email_account', N'5', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (18, N'Report Server Url', N'eServices Reporting Server Url', N'eservices_report_server_url', N'http://10.1.2.212/ReportServer_SOLARERP', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, N'Report Path', N'eServices Report Path', N'eservices_report_path', N'/reports/Customer_Bill/Customer_Bill_View', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (20, N'Report Server Username', N'eServices Report Service Username', N'eservices_report_server_username', N'SolarAdmin', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (22, N'Report Server Password', N'eServices Report Server Password', N'eservices_report_server_password', N'Ekurhuleni1', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (23, N'Report Server Domain', N'eServices Report Server Domain', N'eservices_report_server_domain', N'Ekurhuleni', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (24, N'Generated Bill File Location', N'All bills are generated and temporarily stored in this folder on the eServices website.', N'eservices_generated_bill_file_location', N'GeneratedBills', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (25, N'Generated Rms File Location', N'Drop off location for all Rms bills', N'eservices_generated_rms_bills_root_location', N'GeneratedRmsBills', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (26, N'Sorted Rms Bills Location', N'Sorted location for all Rms bills', N'eservices_sorted_rms_bills_location', N'SortedRmsBills', 1, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (28, N'Customer Help Admin Emails', N'Email addresses for administration of Customer Help', N'as_customer_help_emails', N'Jayan.Kistasami@durban.gov.za;Tom.Narainparsat@durban.gov.za;LEBOHANG.MOTLOUNG@durban.gov.za;Njabulo.Dube@durban.gov.za;Ruvendran.Naidoo@durban.gov.za;', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (30, N'Customer Help Revline Emails', N'Email address for call centre ', N'as_revline_help_emails', N'revline@durban.gov.za;', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (31, N'Rates Rebate Default Email Template', N'Rates Rebate Default Email Template', N'rates_rebate_default_email_template', N'<html>
<head>
    <title></title>
    <style type="text/css">
        body {
            font-family: "Helvetica Neue", "Lucida Grande", "Segoe UI", Arial, Helvetica, Verdana, sans-serif;
            font-size: 10pt;
        }
		
		.notice{
			color:red;
		}

        .header {
            background-color: #0574c6;
            color: #ffffff;
            font-weight: bold;
            font-size: 16px;
            padding: 10px 10px 10px 10px;
        }
		
		.footer {
			background: #0574c6;
			height: 10px;
		}

        .main {
            padding: 10px 10px 10px 10px;
            border-top: 1px solid grey;
        }
    </style>
</head>
<body>
    <div class="header">Ekurhuleni Siyakhokha</div>
    <div class="main">			
			<br/>
            Dear <b>#NAME#</b>,<br />
            <br />
            #BODYTEXT#
            <br />
			<br/>
			<b class="notice">Please do not respond to the sender as this mail box does not receive return mail.</b>
			<br/>
			Correspondence can be directed to the Support Desk on 011 9995102 or via email to siyakhokha@ekurhuleni.gov.za.
			<br/>
			<br/>
            Regards,<br />
            <b>Siyakhokha Team</b>
            <br />
            <br />
    </div>
</body>
<div class="footer"></div>
</html>
', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (32, N'Copy Account Watermark', N'Copy Account Watermark for billing', N'as_copy_account_watermark', N'Copy Of Account', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (37, N'Linked Accounts Associated Email Template', N'Associated Linked Account Template', N'linked_accounts_associated_email_template', N'<html>
<head>
    <title></title>
    <style type="text/css">
        body {
            font-family: "Helvetica Neue", "Lucida Grande", "Segoe UI", Arial, Helvetica, Verdana, sans-serif;
            font-size: 10pt;
        }

        .header {
            background-color: #0574c6;
            color: #ffffff;
            font-weight: bold;
            font-size: 16px;
            padding: 10px 10px 10px 10px;
        }
		
		.footer {
			background: #0574c6;
			height: 10px;
		}

        .main {
            padding: 10px 10px 10px 10px;
            border-top: 1px solid grey;
        }
    </style>
</head>
<body>
    <div class="header">Ekurhuleni Siyakhokha</div>
    <div class="main">
			<br/>
            Dear <b>#NAME#</b>,<br />
            <br />
			Account : <strong>#REFERENCENUMBER#</strong> is now successfully linked to your profile.
            #BODYTEXT#
            <br />
			<br/>
            Regards,<br />
            <b>Siyakhokha Team</b>
            <br />
            <br />
    </div>
</body>
<div class="footer"></div>
</html>
', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (38, N'Linked Accounts Unassociated Email Template', N'Unassociated Linked Account Template', N'linked_accounts_unassociated_email_template', N'<html>
<head>
    <title></title>
    <style type="text/css">
        body {
            font-family: "Helvetica Neue", "Lucida Grande", "Segoe UI", Arial, Helvetica, Verdana, sans-serif;
            font-size: 10pt;
        }

        .header {
            background-color: #0574c6;
            color: #ffffff;
            font-weight: bold;
            font-size: 16px;
            padding: 10px 10px 10px 10px;
        }
		
		.footer {
			background: #0574c6;
			height: 10px;
		}

        .main {
            padding: 10px 10px 10px 10px;
            border-top: 1px solid grey;
        }
    </style>
</head>
<body>
    <div class="header">Ekurhuleni Siyakhokha </div>
    <div class="main">
			<br/>
            Dear <b>#NAME#</b>,<br />
            <br />
			You have requested to link a new account : <strong>#REFERENCENUMBER#</strong> to your profile. This request has been sent to the Siyakhokha Administration team for approval.
            #BODYTEXT#
            <br />
			<br/>
            Regards,<br />
            <b>Siyakhokha Team</b>
            <br />
            <br />
    </div>
</body>
<div class="footer"></div>
</html>', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (39, N'Linked Accounts Active Message', N'Linked Account Active Message', N'linked_accounts_active_message', N'', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (40, N'Linked Accounts Pending Account Approval Message', N'Linked Account Pending Account Approval Message', N'linked_accounts_pending_account_approval_message', N'', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (42, N'Linked Accounts Pending Account Approval and Email Activation', N'Linked Account Pending Account Approval and Email Activation', N'linked_accounts_pending_account_and_email_activation_message', N'', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (43, N'Linked Emails Pending Email Activation', N'Linked Email Pending Email Activation', N'linked_emails_pending_email_activation_message', N'You will start receiving your bills via email from the next bill date after your email has been activated.', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (44, N'Linked Emails Pending Email Activation and Linked Account Approval', N'Linked Email Pending Email Activation and Linked Account Approval', N'linked_emails_pending_email_activation_and_linked_account_approval_message', N'You will start receiving your bills via email from the next bill date after your email has been activated and your linked account has been approved.', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (45, N'Property Market Value', N'Property Market Value', N'as_va_property_market_value', N'5000000', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (46, N'Customer centres IP Address', N'Customer centres IP Range', N'eservices_customer_centres_ip_range', N'', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), NULL, CAST(N'2019-07-04T11:59:20.387' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (53, N'Upload Network Directory', N'The upload directory relative to the website.', N'eservices_upload_network_directory', N'~/uploads/', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (54, N'Upload Html Directory', N'The upload directory of the website.', N'upload_html_directory', N'https://eservices.durban.gov.za/v2/uploads/', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (55, N'Update Notification', N'Home Page Updates Notification', N'eservices_update_notification', N'Please note that there will be scheduled maintenance of eServices from 14:00 onwards on 12/05/2018. As a result of this eServices will not be available until 13/05/2018.', 0, 0, NULL, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (56, N'Incentive Policy Terms And Conditions', N'Incentive Policy Terms And Conditions', N'incentive_policy_ts_cs', N'https://eservices.durban.gov.za/v2/Content/EconomicDevelopmentIncentivePolicy20171123.pdf', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (57, N'Network Location Storage', N'Network Location For Document Storage', N'incentive_policy_document_location', N'\\10.10.9.71\EconomicDevelopmentDocuments\', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (58, N'Incentive Policy Default Email Template', N'Incentive Policy Default Email Template', N'incentive_policy_default_email_template', N'<html>
<head>
    <title></title>
    <style type="text/css">
        body {
            font-family: "Helvetica Neue", "Lucida Grande", "Segoe UI", Arial, Helvetica, Verdana, sans-serif;
            font-size: 10pt;
        }
		
		.notice{
			color:red;
		}

        .header {
            background-color: #0574c6;
            color: #ffffff;
            font-weight: bold;
            font-size: 16px;
            padding: 10px 10px 10px 10px;
        }
		
		.footer {
			background: #0574c6;
			height: 10px;
		}

        .main {
            padding: 10px 10px 10px 10px;
            border-top: 1px solid grey;
        }
    </style>
</head>
<body>
    <div class="header">Ekurhuleni Siyakhokha</div>
    <div class="main">			
			<br/>
            Dear <b>#NAME#</b>,<br />
            <br />
            #BODYTEXT#
            <br />
			<br/>
			<b class="notice">Please do not respond to the sender as this mail box does not receive return mail.</b>
			<br/>
			<br/>
            Regards,<br />
            <b>Economic Development Team</b>
            <br />
            <br />
    </div>
</body>
<div class="footer"></div>
</html>
', 1, 0, 0, 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime), 1, CAST(N'2019-06-03T13:38:47.273' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (59, N'Meter Consumption URL', N'Interactive Meter Consumption API', N'meter_consumption_url', N'http://10.1.2.83:5555/rest/EMMAssets/resources/assets/', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (61, N'Business Account Number', N'Account Number of Business', N'acb_business_account_number', N'4055327394', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (62, N'ACB Header', N'ACB Header Description', N'acb_header_description', N'Billing ACB NetBank Secure', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (63, N'Support Email', N'Email list to support personnel', N'as_support_email_list', N'siyakhokha@ekurhuleni.gov.za', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (65, N'Customer Accounts Api', N'Venus/ Solar Customer Accounts API', N'api_customer_accounts', N'http://10.1.2.83:5555/rest/EMMCRMIntegration/resources/getAccountInfoById/', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (66, N'Account Balance Api', N'Venus/ Solar Account Balance', N'api_account_balance', N'http://10.1.2.83:5555/rest/EMMCRMIntegration/resources/getAccountBalance/', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (67, N'Account Balance Api Username', N'Venus/ Solar Account Balance Api Username', N'api_account_balance_username', N'XET', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (69, N'Account Balance Api Password', N'Venus/ Solar Account Balance Api Password', N'api_account_balance_password', N'EMM123', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1066, N'Imagin8 AVS Customer ID', N'Imagin8 AVS Customer Username', N'avs_customer_id', N'10190', 1, 0, 0, 1, CAST(N'2019-06-28T23:15:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1068, N'Imagin8 AVS Customer Key', N'Imagin8 AVS Customer API Key', N'avs_customer_api_key', N'89B4036F-9908-4764-B2F4-847BC5AC8168', 1, 0, 0, 1, CAST(N'2019-06-28T23:17:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1069, N'Imagin8 AVS Enquiry URL', N'Imagin8 AVS First AVS URL', N'avs_first_check_url', N'https://www.imagin8.co.za/api/json/avsr/SubmitFile?', 1, 0, 0, 1, CAST(N'2019-06-28T23:20:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1070, N'Imagin8 AVS Check URL', N'Imagin8 AVS 14 Day Check URL', N'avs_check_14_day_url', N'https://www.imagin8.co.za/api/json/avsr/CheckJobID?JobID=', 1, 0, 0, 1, CAST(N'2019-06-28T23:23:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1071, N'Masterpass Url', N'Base Url for Masterpass Integration', N'as_masterpass_url', N'https://masterpass.oltio.co.za/rags', 1, 0, 0, NULL, NULL, 1, CAST(N'2020-01-14T11:54:10.937' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1072, N'Masterpass Username', N'Masterpass Username', N'as_masterpass_username', N'merchant-33825', 1, 0, 0, NULL, NULL, 1, CAST(N'2020-01-14T11:54:10.937' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1073, N'Masterpass Password', N'Masterpass Password', N'as_masterpass_password', N'6DF4D761D557AEAC14836F5C678ABB0E', 1, 0, 0, NULL, NULL, 1, CAST(N'2020-01-14T11:54:10.937' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1074, N'Masterpass Daily Url', N'Masterpass Daily Url', N'as_masterpass_daily_url', N'https://masterpass.oltio.co.za/portal/restful/transactionsByDate', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1075, N'Masterpass Daily Url Path', N'Masterpass Daily Url Path', N'as_masterpass_daily_path_url', N'G:\SiyakhokhaIntegration\ftp\archive\Masterpass_Daily_Recon', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1076, N'Masterpass Daily Start Time', N'Masterpass Daily Start Time', N'as_masterpass_daily_starttime', N'00:00:00', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1077, N'Masterpass Daily End Time', N'Masterpass Daily End Time', N'as_masterpass_daily_endtime', N'00:00:00', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1078, N'Masterpass Daily Filename', N'Masterpass Daily Filename', N'as_masterpass_daily_filename', N'MPASS', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1079, N'Masterpass Daily Execution Time', N'Masterpass Daily Execution Time', N'as_masterpass_daily_executiontime', N'00:15:00', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1080, N'Masterpass Hourly Path', N'Masterpass Hourly Path', N'as_masterpass_hourly_path', N'G:\SiyakhokhaIntegration\ftp\outbound\MasterpassHourly', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1081, N'Masterpass Hourly Filename', N'Masterpass Hourly Filename', N'as_masterpass_hourly_filename', N'FileRecon', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1082, N'Payment History Polling Directory', N'Payment History Polling Directory', N'as_paymenthistory_polling_directory', N'G:\SiyakhokhaIntegration\ftp\inbound\paymentHistory', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1083, N'ACB Schedule One', N'ACB Schedule One', N'acb_schedule_one', N'09:00', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1084, N'ACB Schedule Two', N'ACB Schedule Two', N'acb_schedule_two', N'15:30', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1085, N'ACB Filename', N'ACB Filename', N'acb_filename', N'ACB', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1086, N'ACB Path', N'ACB Path', N'acb_path', N'G:\SiyakhokhaIntegration\ftp\outbound\AcbFiles', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1087, N'SMPP Host', N'SMPP Host', N'as_smpp_host', N'smsgw5.gsm.co.za', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1088, N'SMPP Username', N'SMPP Username', N'as_smpp_username', N'dyna01', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1089, N'SMPP Password', N'SMPP Password', N'as_smpp_password', N'dyna01', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1090, N'SMPP Port', N'SMPP Port', N'as_smpp_port', N'2775', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1091, N'Masterpass Test', N'Test for Masterpass URL validation', N'as_masterpass_test', N'false', 1, 0, 0, NULL, NULL, NULL, CAST(N'2020-01-14T11:32:06.293' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1093, N'Masterpass Hourly Interval', N'Masterpass hourly interval setting', N'as_masterpass_hourly_interval', N'60', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1094, N'Payment History Processed Directory', N'Payment History Processed Directory', N'as_paymenthistory_processed_directory', N'G:\SiyakhokhaIntegration\ftp\inbound\processed\paymentHistory', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1095, N'Payment History Poll Interval', N'Payment History Poll Interval', N'as_paymenthistory_poll_interval', N'15', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1096, N'Customer Account Polling Directory', N'Customer Account Polling Directory', N'as_customer_account_polling_directory', N'G:\SiyakhokhaIntegration\ftp\inbound\billPayments', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1097, N'Customer Account Processed Directory', N'Customer Account Processed Directory', N'as_customer_account_processed_directory', N'G:\SiyakhokhaIntegration\ftp\inbound\processed\billPayments', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1099, N'Recurring Debit Orders Strike Day Remove', N'Number of days before you can remove a debit order  ', N'as_recurring_debit_orders_strikeday_remove', N'5', 1, 0, 0, NULL, CAST(N'2019-09-28T13:00:02.000' AS DateTime), NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1103, N'Recurring Debit Orders Strike Day Remove', N'Number of days before debit order can be editable ', N'as_recurring_debit_orders_strikeday_edit', N'5', 1, 0, 0, NULL, CAST(N'2019-09-28T13:00:02.000' AS DateTime), NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1110, N'Statement Notification Email Template', N'Template for sending notifications to customers when statements are loaded', N'nt_statement_load_notification', N'<html>
<head>
    <title></title>
    <style type="text/css">
        body {
            font-family: "Helvetica Neue", "Lucida Grande", "Segoe UI", Arial, Helvetica, Verdana, sans-serif;
            font-size: 10pt;
        }

        .header {
            background-color: #0574c6;
            color: #ffffff;
            font-weight: bold;
            font-size: 16px;
            padding: 10px 10px 10px 10px;
        }
		
		.footer {
			background-color: #0574c6;
			height: 10px;
		}

        .main {
            padding: 10px 10px 10px 10px;
            border-top: 1px solid grey;
        }
    </style>
</head>
<body>
    <div class="header">eKurhuleni Siyakhokha</div>
    <div class="main">
			<br/>
            Dear <b><Customer></b>,<br />
            <br />
            Your Ekurhuleni account <AccNo> has a balance of R <AmtDue>, due on <DueDate>. Please ignore if paid.
            <br />
			<br/>
            Regards,<br />
            <b>Siyakhokha Team</b>
            <br />
            <br />
    </div>
</body>
<div class="footer">&nbsp;</div>
</html>', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1111, N'Debit Order Daily Sequence', N'Debit Order Daily Sequence counter', N'debit_order_daily_sequence_counter', N'0033', 1, 0, 0, NULL, CAST(N'2019-11-17T14:55:29.757' AS DateTime), NULL, CAST(N'2020-01-14T11:47:10.297' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1112, N'EFT Daily Sequence', N'EFT Daily Sequence counter', N'eft_daily_sequence_counter', N'0650', 1, 0, 0, NULL, CAST(N'2019-11-17T15:16:07.133' AS DateTime), NULL, CAST(N'2020-01-14T11:59:41.570' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1113, N'Debit Order Daily Sequence Limit', N'Debit Order Daily Sequence Limiter', N'debit_order_daily_sequence_limiter', N'4', 1, 0, 0, NULL, CAST(N'2019-10-18T13:00:02.000' AS DateTime), NULL, CAST(N'2020-01-14T11:47:10.297' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1114, N'EFT Daily Sequence Limit', N'EFT Daily Sequence Limiter', N'eft_daily_sequence_limiter', N'4', 1, 0, 0, NULL, CAST(N'2019-10-18T13:00:02.000' AS DateTime), NULL, CAST(N'2020-01-14T11:59:41.570' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1115, N'Account Lockout', N'Account Lockout if users entered password wrong', N'account_lock_out', N'OFF', 0, 1, 0, NULL, CAST(N'2019-10-18T13:00:02.000' AS DateTime), NULL, CAST(N'2020-01-14T11:59:54.100' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1116, N'Debit Order Multiple Payments Monthly', N'Allow Multiple Debit order payments per account each Month', N'debit_order_multiple_payments_monthly', N'ON', 1, 0, 0, NULL, CAST(N'2019-10-10T13:00:02.000' AS DateTime), 1, CAST(N'2020-01-14T11:54:34.927' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1117, N'Debit Order Multiple Payments Daily', N'Allow Multiple Debit order payments per account each Day', N'debit_order_multiple_payments_daily', N'ON', 1, 0, 0, NULL, CAST(N'2019-10-10T13:00:05.000' AS DateTime), 1, CAST(N'2020-01-14T11:54:34.927' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1118, N'Debit Order Multiple Payments Amount Check', N'Allow Multiple Debit order payments per account for the same Amount', N'debit_order_multiple_payments_amount', N'ON', 1, 0, 0, NULL, CAST(N'2019-10-10T13:00:05.000' AS DateTime), 1, CAST(N'2020-01-14T11:54:34.927' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1119, N'Active Directory UserName for Ekurhuleni', N'Active Directory UserName for Ekurhuleni', N'ad_user_name', N'SiyakhokhaAdmin', 1, 0, 0, NULL, CAST(N'2019-10-10T13:00:05.000' AS DateTime), NULL, CAST(N'2019-10-10T22:13:35.940' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1120, N'Active Directory Password for Ekurhuleni', N'Active Directory Password for Ekurhuleni', N'ad_password', N'@Eku2019!', 1, 0, 0, NULL, CAST(N'2019-10-10T13:00:05.000' AS DateTime), NULL, CAST(N'2019-10-10T22:13:35.940' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1121, N'Active Directory Domain for Ekurhuleni', N'Active Directory Domain for Ekurhuleni', N'ad_domain', N'Ekurhuleni', 1, 0, 0, NULL, CAST(N'2019-10-10T13:00:05.000' AS DateTime), NULL, CAST(N'2019-10-10T22:13:35.940' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1122, N'Masterpass Daily Venus Interval', N'Masterpass Daily Venus Recon File interval setting', N'as_masterpass_daily_venus_interval', N'1440', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1123, N'Masterpass Recon Cashier No', N'Masterpass Recon File Cashier No', N'as_masterpass_recon_venus_cashier', N'3374', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1124, N'Masterpass Recon Receipt No', N'Masterpass Recon Receipt No', N'as_masterpass_recon_venus_receipt_no', N'007396', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1125, N'EFT Recon Cashier No', N'EFT Recon Cashier No', N'as_eft_recon_venus_cashier', N'3375', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1126, N'EFT Recon Receipt No', N'EFT Recon Receipt No', N'as_eft_recon_venus_receipt_no', N'001439', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1127, N'Recon Daily Venus Sequence', N'Recon Daily Venus Sequence setting', N'as_recon_daily_venus_sequence', N'01', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1128, N'Recon Daily Venus Receipt Type', N'Recon Daily Venus Receipt Type setting', N'as_recon_daily_venus_receipt_type', N'T4', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1129, N'Recon Daily Venus Town', N'Recon Daily Venus Town setting', N'as_recon_daily_venus_town', N'1', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1130, N'Recon Daily Pay Type', N'Recon Daily Venus Pay Type setting', N'as_recon_daily_venus_pay_type', N'1', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1131, N'Recon Daily Venus Levy Code', N'Recon Daily Venus Levy Code setting', N'as_recon_daily_venus_levy_code', N'00', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1132, N'Recon Daily Venus Sundry Code', N'Recon Daily Venus Sundry Code setting', N'as_recon_daily_venus_sundry_code', N'000', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1133, N'Recon Daily Venus Receipt Code', N'Recon Daily Venus Receipt Code setting', N'as_recon_daily_venus_receipt_code', N'000018', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1134, N'Recon Daily Venus Clearance', N'Recon Daily Venus Clearance setting', N'as_recon_daily_venus_clearance', N'0', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1135, N'Recon Daily Venus Cheque No', N'Recon Daily Venus Cheque No setting', N'as_recon_daily_venus_cheque_no', N'000000', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1136, N'Recon Daily Venus Cheque Account', N'Recon Daily Venus Cheque Account setting', N'as_recon_daily_venus_cheque_account', N'000000000000', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1137, N'Recon Daily Venus Tariff', N'Recon Daily Venus Tariff setting', N'as_recon_daily_venus_tariff', N'000000', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1138, N'Recon Daily Venus Units', N'Recon Daily Venus Units setting', N'as_recon_daily_venus_units', N'00000000000', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1139, N'EFT Hourly Interval', N'EFT hourly interval setting', N'as_eft_hourly_interval', N'60', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1140, N'EFT Url', N'Base Url for EFT Integration', N'as_eft_url', N'', 1, 0, 0, NULL, NULL, 1, CAST(N'2019-11-07T15:34:48.167' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1141, N'EFT Username', N'EFT Username', N'as_eft_username', N'', 1, 0, 0, NULL, NULL, 1, CAST(N'2019-11-07T15:34:48.167' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1142, N'EFT Password', N'EFT Password', N'as_eft_password', N'', 1, 0, 0, NULL, NULL, 1, CAST(N'2019-11-07T15:34:48.167' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1143, N'EFT Daily Url', N'EFT Daily Url', N'as_eft_daily_url', N'', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1144, N'EFT Daily Url Path', N'EFT Daily Url Path', N'as_eft_daily_path_url', N'G:\SiyakhokhaIntegration\ftp\archive\Instant_EFT_Daily_Recon', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1145, N'EFT Daily Start Time', N'EFT Daily Start Time', N'as_eft_daily_starttime', N'00:00:00', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1146, N'EFT Daily End Time', N'EFT Daily End Time', N'as_eft_daily_endtime', N'00:00:00', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1147, N'EFT Daily Filename', N'EFT Daily Filename', N'as_eft_daily_filename', N'IEFT', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1148, N'EFT Daily Execution Time', N'EFT Daily Execution Time', N'as_eft_daily_executiontime', N'00:15:00', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1149, N'EFT Hourly Path', N'EFT Hourly Path', N'as_eft_hourly_path', N'G:\SiyakhokhaIntegration\ftp\outbound\MasterpassHourly', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1150, N'EFT Hourly Filename', N'EFT Hourly Filename', N'as_eft_hourly_filename', N'FileRecon', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1151, N'EFT Daily Venus Interval', N'EFT Daily Venus Recon File interval setting', N'as_eft_daily_venus_interval', N'1440', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1152, N'Recon Daily Venus Mailing List', N'Recon Daily Venus Mailing List', N'as_recon_daily_venus_mailing_list', N'ashraf@xetgroup.com,deepak.haluman@xetgroup.com,ash786abdulkader@gmail.com,sharon.sibiya@ekurhuleni.gov.za,njabulo.dube@xetgroup.com,renier.pretorius@ekurhuleni.gov.za,lungile.ntsimbi@ekurhuleni.gov.za,ronel.nel@ekurhuleni.gov.za,gugulethu.magoso@ekurhuleni.gov.za,', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1153, N'Recon Daily Venus SFTP Host', N'Recon Daily Venus SFTP Host', N'as_recon_daily_venus_sftp_host', N'10.20.218.41', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1154, N'Recon Daily Venus SFTP Port', N'Recon Daily Venus SFTP port', N'as_recon_daily_venus_sftp_port', N'22', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1155, N'Recon Daily Venus SFTP Username', N'Recon Daily Venus SFTP Username', N'as_recon_daily_venus_sftp_username', N'FTPServc', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1156, N'Recon Daily Venus SFTP Password', N'Recon Daily Venus SFTP Password', N'as_recon_daily_venus_sftp_password', N'FTPSP@19', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1157, N'Recon Daily Venus SFTP Server Path Masterpass', N'Recon Daily Venus SFTP Server Path Masterpass', N'as_recon_daily_venus_sftp_server_path_masterpass', N'batch/WF11/', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1158, N'Recon Daily Venus SFTP Server Path EFT', N'Recon Daily Venus SFTP Server Path EFT', N'as_recon_daily_venus_sftp_server_path_eft', N'batch/WF11/', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1159, N'CPS Client Profile No.', N'Nedbank COE Integration.', N'as_cps_client_profile_number', N'0000002281', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1160, N'CPS Nominated Account No.', N'Nedbank COE Integration', N'as_cps_nominated_acccount_number', N'1119115124', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1161, N'CPS Charges Account No.', N'Nedbank COE Integration', N'as_cps_charges_acccount_number', N'1119115124', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1162, N'CPS Path', N'Put location for CPS files.', N'as_cps_path', N'G:\SiyakhokhaIntegration\ftp\outbound\CpsFiles', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1163, N'CPS Filename Prefix', N'Start of the CPS filename.', N'as_cps_filename', N'QNGG00.CDPACK.AJ8I', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1164, N'CPS Sequence Number', N'Sequence no. for CPS file generation.', N'as_cps_sequence', N'1', 1, 0, NULL, NULL, NULL, NULL, CAST(N'2019-12-12T14:55:27.987' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1165, N'Report Server for Ekurhuleni', N'Report Server for Ekurhuleni', N'ad_bill_Link', N'http://10.1.2.212/ReportServer_SOLARERP?%2fCustomer_Bill%2fSmart_Bill_Customer_Bill_View&rs:Command=Render&rs:Format=PDF&customer=', 1, 0, 0, NULL, CAST(N'2019-10-10T13:00:05.000' AS DateTime), NULL, CAST(N'2019-10-10T22:13:35.940' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1166, N'Report Server for Ekurhuleni Date Range Report', N'Report Server for Ekurhuleni Date Range Report', N'ad_date_range_report', N'http://10.1.2.212/ReportServer_SOLARERP?%2fEku_Stats_Report%2fDate_Range_Stats&rs:Command=Render&rs:Format=EXCEL&StartDate=', 1, 0, 0, NULL, CAST(N'2019-12-11T13:00:05.000' AS DateTime), NULL, CAST(N'2019-12-11T22:13:35.940' AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1167, N'Report Server for Ekurhuleni Detailed Report', N'Report Server for Ekurhuleni Detailed Report', N'ad_detailed_report', N'http://10.1.2.212/ReportServer_SOLARERP?%2fEku_Stats_Report%2fEku_avs_stats&rs:Command=Render&rs:Format=EXCEL', 1, 0, 0, NULL, CAST(N'2019-12-11T13:00:05.000' AS DateTime), NULL, CAST(N'2019-12-11T22:13:35.940' AS DateTime))
SET IDENTITY_INSERT [dbo].[AppSettings] OFF
SET IDENTITY_INSERT [dbo].[DocumentTypes] ON 

INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'ID Document', N'Copy Of ID Document', N'dt_copy_of_id', 1, 0, 1, 1, NULL, NULL, CAST(N'2020-01-14T11:57:36.840' AS DateTime))
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Authority', N'Letter Of Authority (For Agent and Business use only)', N'dt_letter_of_authority', 1, 0, 1, NULL, NULL, NULL, CAST(N'2020-01-14T11:27:33.927' AS DateTime))
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Executorship', N'Letter Of Executorship', N'dt_letter_of_executorship', 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'CIPC Document', N'CIPC Document (If Owner Type Is Business)', N'dt_cipc', 1, 0, 1, NULL, NULL, 1, CAST(N'2017-06-27T12:20:34.940' AS DateTime))
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'CK Document', N'Relevant Page From The CK Document Listing All Members (If Owner Type Is Deemed Owner)', N'dt_ck', 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Authorithy (Black Administration Act)', N'Letter Of Authorithy From Black Administration Act (If Owner Type Is Partnership)', N'dt_authorithy_black_administration_act', 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'Partnership Agreement', N'Relevant Page From Partnership Agreement Listing All Partners (If Owner Type Is Partnership)', N'dt_partnership', 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (13, N'PTO Certificate', N'PTO Certificate (If Owner Type Is Trust)', N'dt_pto_certification', 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (18, N'Additional Document', N'Additional Documentation', N'dt_additional_documents', 1, 0, 1, NULL, NULL, NULL, CAST(N'2017-02-24T15:10:55.210' AS DateTime))
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, N'PTO Certificate', N'PTO Certificate (If Owner Type Is Trust)', N'dt_pto_certificate', 0, 1, 0, 1, CAST(N'2016-07-19T14:47:33.243' AS DateTime), NULL, CAST(N'2016-07-19T14:49:56.783' AS DateTime))
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (20, N'Copy  Of Rates Account', N'A copy of latest property rates account', N'dt_copy_of_rates_account', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (21, N'Copy Of Municipal Bill', N'A copy of the latest consolidated municipal bill', N'dt_copy_of_municipal_bill', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (22, N'Letter Of Good Standing on Municipal Rates', N'A letter of good standing on municipal rates from eThekwini Municipality', N'dt_letter_of_good_standing', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (23, N'Tax Clearance Certificate', N'Original, valid, tax clearance certificate or SARS Tax Clearance PIN', N'dt_tax_clearance_certificate', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (24, N'VAT Registration Certificate', N'Certified copy of VAT Registration certificate (VAT103)', N'dt_vat_registration_certificate', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (25, N'Building Plan', N'An approved building plan (with Municipal stamp and signature)', N'dt_building_plan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (26, N'Projected Milestones And Cost Schedule', N'Projected milestoes and cost schedule', N'dt_projected_milestones_cost_schedule', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (27, N'ID and Letter of Authority ', N'Letters of authority from trustees with certified copies of ID document from trustees', N'dt_copy_of_id_letter_of_authority', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (28, N'Building Specialist Report ', N'Report From Building Specialist Confirming Project Milestones And Estimated Investment Cost', N'dt_building_special_report', 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DocumentTypes] OFF
SET IDENTITY_INSERT [dbo].[IdentificationTypes] ON 

INSERT [dbo].[IdentificationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'South African ID', N'South African ID', N'id_south_african', 1, 0, 0, 1, CAST(N'2019-06-03T14:05:54.303' AS DateTime), 1, CAST(N'2020-01-14T11:59:00.080' AS DateTime))
INSERT [dbo].[IdentificationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Passport Number', N'Passport Number', N'id_passport_no', 1, 0, 0, 1, CAST(N'2019-06-03T14:05:54.310' AS DateTime), 1, CAST(N'2019-12-29T19:22:18.957' AS DateTime))
SET IDENTITY_INSERT [dbo].[IdentificationTypes] OFF
SET IDENTITY_INSERT [dbo].[NoteTypes] ON 

INSERT [dbo].[NoteTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'RatesRebates', N'Rates Rebates', N'nt_rates_rebates', 0, 1, 0, 1, CAST(N'2019-06-03T14:14:27.540' AS DateTime), 1, CAST(N'2019-06-03T14:14:27.540' AS DateTime))
INSERT [dbo].[NoteTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Note', N'Type', N'nt_note', 0, 1, 0, 1, CAST(N'2019-06-03T14:14:27.540' AS DateTime), 1, CAST(N'2019-06-03T14:14:27.540' AS DateTime))
INSERT [dbo].[NoteTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Email', N'Email', N'nt_email', 1, 1, 0, 1, CAST(N'2019-06-03T14:14:27.540' AS DateTime), 1, CAST(N'2019-09-07T08:46:01.903' AS DateTime))
SET IDENTITY_INSERT [dbo].[NoteTypes] OFF
SET IDENTITY_INSERT [dbo].[RecipientTypes] ON 

INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'To Primary Email', N'To Primary Email', N'rt_to_primary', 0, 1, 0, 1, CAST(N'2019-06-03T14:16:09.040' AS DateTime), 1, CAST(N'2019-06-03T14:16:09.040' AS DateTime))
INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Blind Carbon Copy ', N'Blind Carbon Copy', N'rt_blind_carbon_copy', 0, 1, 0, 1, CAST(N'2019-06-03T14:16:09.040' AS DateTime), 1, CAST(N'2019-06-03T14:16:09.040' AS DateTime))
INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Carbon Copy', N'Carbon Copy', N'rt_carbon_copy', 0, 1, 0, 1, CAST(N'2019-06-03T14:16:09.040' AS DateTime), 1, CAST(N'2019-06-03T14:16:09.040' AS DateTime))
INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Emails', N'Sent to secondary email address', N'rt_secondary_email', 1, 0, 0, 1, CAST(N'2019-06-03T14:16:09.040' AS DateTime), 1, CAST(N'2020-01-14T11:57:36.637' AS DateTime))
INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'View Only', N'View Only', N'rt_view_only', 1, 0, 0, 1, CAST(N'2019-06-03T14:16:09.040' AS DateTime), 1, CAST(N'2020-01-14T11:40:31.450' AS DateTime))
INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'Mobile', N'Mobile Bill Notifications', N'rt_mobile', 1, 0, 0, NULL, NULL, 1, CAST(N'2020-01-14T11:09:41.263' AS DateTime))
SET IDENTITY_INSERT [dbo].[RecipientTypes] OFF
SET IDENTITY_INSERT [dbo].[TitleTypes] ON 

INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Mr', N'Mr', N'tt_Mr', 1, 0, 0, 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime), 1, CAST(N'2020-01-14T11:58:29.267' AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Mrs', N'Mrs', N'tt_Mrs', 1, 0, 0, 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime), 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Ms', N'Miss', N'tt_ms', 1, 0, 0, 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime), 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Dr', N'Doctor', N'tt_dr', 1, 0, 0, 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime), 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Miss', N'Missus', N'tt_miss', 1, 0, 0, 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime), 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Prof', N'Professor', N'tt_prof', 1, 0, 0, 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime), 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Ps', N'Pastor', N'tt_ps', 1, 0, 0, 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime), 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'Pres.', N'President', N'tt_pres.', 1, 0, 0, 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime), 1, CAST(N'2019-06-03T14:19:03.733' AS DateTime))
SET IDENTITY_INSERT [dbo].[TitleTypes] OFF
