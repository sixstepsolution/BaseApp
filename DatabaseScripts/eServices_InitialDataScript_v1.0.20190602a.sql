USE [eServices]
GO
SET IDENTITY_INSERT [dbo].[StatusTypes] ON 

INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Customer Status', N'Customer Status', N'st_customer_account', 1, 0, 0, 1, NULL, NULL, CAST(0x0000A60F00BE00CC AS DateTime))
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Linked Account Status', N'Linked Account Status', N'st_linked_account', 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Account Status', N'Account Status', N'st_account', 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Rates Rebate Application', N'Rates Rebate Application Status', N'st_rates_rebate_application', 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Rates Rebate Property ', N'Rates Rebate Property Status', N'st_rates_rebate_property', 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Document', N'Document Status', N'st_document_status', 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'System User Status', N'System User Status', N'st_system_user', 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Property Owners', N'Property Owner Status', N'st_property_owners', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Property Accounts', N'Rates Rebate Property Account Status', N'st_property_accounts', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'Property', N'Property Status', N'st_property', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, N'Email Verification', N'Email Verfication Status', N'st_email_verification', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (12, N'Customer Query', N'Customer Query', N'st_customer_query_status', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (13, N'Incentive Policy Property', N'Incentive Policy Property', N'st_incentive_policy_property', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StatusTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (14, N'Incentive Policy Application', N'Incentive Policy Application', N'st_incentive_policy_application', 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[StatusTypes] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Pending', N'Customer Pending Status', N's_customer_pending', 1, 1, 0, 0, NULL, CAST(0x0000A60300A629E4 AS DateTime), NULL, CAST(0x0000AA2600902057 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Active', N'Customer Active', N's_customer_active', 1, 1, 0, 0, 1, CAST(0x0000A60300AE3D14 AS DateTime), 187234, CAST(0x0000AA5B00F2B79C AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Pending Approval', N'Linked Account Pending', N's_linked_account_pending', 2, 1, 0, 0, NULL, CAST(0x0000A60300A62A18 AS DateTime), NULL, CAST(0x0000A9F4015976EE AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Active', N'Linked Account Active', N's_linked_account_active', 2, 1, 0, 0, NULL, CAST(0x0000A60300A62A18 AS DateTime), 80291, CAST(0x0000AA3D00C637D1 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Pending', N'Agent Pending Status', N's_agent_pending', 1, 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Active', N'Agent Active', N's_agent_active', 1, 1, 0, 0, 1, CAST(0x0000A60200F729B3 AS DateTime), 187234, CAST(0x0000AA5B00F2B79C AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Pending', N'Entity Pending', N's_entity_pending', 1, 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Active', N'Entity Active', N's_entity_active', 1, 1, 0, 0, 1, CAST(0x0000A60300AE3DDF AS DateTime), 187234, CAST(0x0000AA5B00F2B79C AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'Active', N'Account Active', N's_account_active', 3, 1, 0, 0, 1, NULL, 80291, CAST(0x0000AA3D00C637D1 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, N'Pending', N'Account Pending', N's_account_pending', 3, 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (12, N'Pending', N'Rates Rebate Application Pending', N's_rates_rebate_application_pending', 4, 1, 0, 0, 1, CAST(0x0000A60200FC5409 AS DateTime), 121473, CAST(0x0000A81900C4B11B AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (13, N'In Query', N'Rates Rebate Application Query', N's_rates_rebate_application_query', 4, 1, 0, 0, 1, NULL, 121473, CAST(0x0000A81900C4B11B AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (14, N'Received', N'Rates Rebate Application Received', N's_rates_rebate_application_received', 4, 1, 0, 0, 1, NULL, NULL, CAST(0x0000A67100B8A91F AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (15, N'In Progress', N'Rates Rebate Application In Progress', N's_rates_rebate_application_in_progress', 4, 1, 0, 0, 1, NULL, NULL, CAST(0x0000A66C00F4C1D5 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (18, N'Approved', N'Rates Rebate Application Approved', N's_rates_rebate_application_approved', 4, 1, 0, 0, 1, NULL, NULL, CAST(0x0000A67100B8A91F AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, N'Pending', N'Rates Rebate Property Pending', N's_rates_rebate_property_pending', 5, 1, 0, 0, NULL, CAST(0x0000A5FD00CE9AE5 AS DateTime), NULL, CAST(0x0000A67100B88A6A AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (20, N'Verified', N'Rates Rebate Property Verified', N's_rates_rebate_property_verified', 5, 1, 0, 0, NULL, CAST(0x0000A5F3009883E8 AS DateTime), NULL, CAST(0x0000A70800D24AE1 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (21, N'Verified', N'Document Verified ', N's_document_verified', 6, 1, 0, 0, 1, NULL, NULL, CAST(0x0000A9F40102AE5C AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (22, N'Pending Documents', N'Document Pending', N's_document_pending', 6, 1, 0, 0, NULL, CAST(0x0000A603009C0E15 AS DateTime), 80291, CAST(0x0000AA3D00C637D1 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (23, N'Active', N'System User Account Active', N's_system_user_account_active', 7, 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (24, N'Conflict', N'Rates Rebate Property Conflict with Value Assist', N's_conflict', 1, 1, 0, 0, NULL, CAST(0x0000A5A400C76F1E AS DateTime), NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (25, N'Verified', N'Customer details verified', N's_verified', 1, 1, 0, 0, NULL, CAST(0x0000A5A9013950AB AS DateTime), NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (28, N'Conflict', N'Rates Rebate Property Information Conflict', N's_rates_rebate_property_conflict', 5, 1, 0, 0, NULL, CAST(0x0000A5D90096B910 AS DateTime), NULL, CAST(0x0000A70800D24AE1 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (29, N'Pending', N'Additional Property Owners Pending', N's_additional_property_owners_pending', 8, 1, 0, 0, NULL, CAST(0x0000A5DA009AFF58 AS DateTime), 108523, CAST(0x0000A6FF00C0E2CD AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (30, N'Verified', N'Additional Property Owners Verified', N's_additional_property_owners_verified', 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (31, N'Conflict', N'Additional Property Owners Conflicts with Value Assist', N's_additional_property_owners_conflict', 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (32, N'Pending', N'Rates Rebate Property Account Pending', N's_rates_rebate_property_account_pending', 9, 1, 0, 0, NULL, CAST(0x0000A5F3009972C8 AS DateTime), NULL, CAST(0x0000A67100ADD9FC AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (33, N'Verified', N'Rates Rebate Property Account Verified', N's_rates_rebate_property_account_verified', 9, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (34, N'Pending', N'Property Pending Verification', N's_property_pending', 10, 1, 0, 0, NULL, CAST(0x0000A5FD00CE9AE5 AS DateTime), NULL, CAST(0x0000A67100B88A6A AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (38, N'Conflict', N'Property Information Conflict with Value Assist', N's_property_conflict', 10, 1, 0, 0, NULL, CAST(0x0000A5D90096B910 AS DateTime), NULL, CAST(0x0000A70800D24AE1 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (39, N'Verified', N'Property Information Verified', N's_property_verified', 10, 1, 0, 0, NULL, CAST(0x0000A5F3009883E8 AS DateTime), NULL, CAST(0x0000A67100B88D96 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (40, N'Pending', N'Pending Email Verification', N's_email_verification_pending', 11, 1, 0, 0, NULL, CAST(0x0000A60300A1F898 AS DateTime), NULL, CAST(0x0000A9F4012D22AB AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (41, N'Verified', N'Email Verified', N's_email_verified', 11, 1, 0, 0, NULL, CAST(0x0000A60300A262C8 AS DateTime), NULL, CAST(0x0000A9F40138D4BE AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (42, N'Unlinked', N'Linked Account Unlinked', N's_linked_account_unlinked', 2, 1, 0, 0, NULL, CAST(0x0000A60300A41CC8 AS DateTime), 183203, CAST(0x0000A9F40112908D AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (43, N'Submitted', N'Rates Rebate Application Submitted', N's_rates_rebate_application_submitted', 4, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A67100B8A91F AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (44, N'Conflict', N'Rates Rebate Property Account Conflict', N's_rates_rebate_property_account_conflict', 9, 1, 0, 0, NULL, NULL, 108523, CAST(0x0000A70800F7DFDD AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (45, N'Declined', N'Rates Rebate Application Declined', N's_rates_rebate_application_declined', 4, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (46, N'Uploaded', N'Document Uploaded', N's_document_uploaded', 6, 1, 0, 0, NULL, NULL, 187238, CAST(0x0000AA3D00ECC136 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (47, N'Resolved', N'Customer Query Resolved', N's_customer_query_resolved', 12, 1, 0, 0, NULL, NULL, 107910, CAST(0x0000A8AB0086EFD2 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (48, N'Pending', N'Customer Query Pending', N's_customer_query_pending', 12, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000AA2600901FFD AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (49, N'InProgress', N'Customer Query In Progress', N's_customer_query_inprogress', 12, 1, 0, 0, NULL, NULL, 1, CAST(0x0000A799009089FC AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (50, N'Pending Documents', N'Customer Profile Pending Documents', N's_customer_pending_document', 1, 1, 0, 0, NULL, NULL, 187234, CAST(0x0000AA5B00F2B79C AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (51, N'Submitted', N'Incentive Policy Application Submitted', N's_incentive_policy_application_submitted', 14, 1, 0, 0, NULL, NULL, 149125, CAST(0x0000A8B800B476A8 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (52, N'InQuery', N'Incentive Policy Application InQuery', N's_incentive_policy_application_inquery', 14, 1, 0, 0, NULL, NULL, 149125, CAST(0x0000A8B800B476A8 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (53, N'Pending', N'Incentive Policy Property Pending', N's_incentive_policy_property_pending', 13, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (54, N'Verified', N'Incentive Policy Property Verified', N's_incentive_policy_property_verified', 13, 1, 0, 0, NULL, NULL, 113095, CAST(0x0000A9B201573DE5 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (55, N'Approved', N'Incentive Policy Application Approved', N's_incentive_policy_application_approved', 14, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (56, N'Pending', N'Incentive Policy Application Pending', N's_incentive_policy_application_pending', 14, 1, 0, 0, NULL, NULL, 149125, CAST(0x0000A8B800B476A8 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (57, N'Re-Submitted', N'Incentive Policy Application Submitted', N's_incentive_policy_application_resubmitted', 14, 1, 0, 0, NULL, NULL, 149125, CAST(0x0000A8B800B476A8 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (58, N'Declined', N'Incentive Policy Application Declined', N's_incentive_policy_application_declined', 14, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Id], [Name], [Description], [Key], [StatusTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (59, N'Processing', N'Incentive Policy Application Processing', N's_incentive_policy_application_processing', 14, 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Status] OFF
SET IDENTITY_INSERT [dbo].[Applications] ON 

INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Linked Accounts', N'Linking accounts and emails to customers.', N'a_linked_accounts', N'LA', 1, CAST(0x0000000000000000 AS DateTime), 0, 1, 0, 0, 1, CAST(0x0000A60300AE3D14 AS DateTime), 187234, CAST(0x0000AA5B00F2B79C AS DateTime))
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Rates Rebate', N'Property rates rebate application.', N'a_rates_rebate', N'RR', 1, CAST(0x0000A81900903133 AS DateTime), 5, 1, 0, 0, NULL, CAST(0x0000A60200FC53F9 AS DateTime), NULL, CAST(0x0000A81900C4B10D AS DateTime))
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (18, N'Valuations and Objections', N'Valuations and Objections Application', N'a_valuations_and_objections', N'VAO', 0, CAST(0x0000A5B600DD9894 AS DateTime), 1, 1, 0, 0, 1, CAST(0x0000A5B600DD98A5 AS DateTime), NULL, NULL)
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, N'Credit Applications', N'Credit Applications System', N'a_credit_applications', N'CAS', 0, CAST(0x0000A5B600DDCC8A AS DateTime), 1, 1, 0, 0, 1, CAST(0x0000A5B600DDCC8A AS DateTime), NULL, NULL)
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (20, N'Economic Development Incentive', N'Economic Development Incentive System', N'a_economic_development_incentive', N'EDIS', 0, CAST(0x0000A5B600DE13CC AS DateTime), 1, 1, 0, 0, 1, CAST(0x0000A5B600DE13CC AS DateTime), NULL, NULL)
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (21, N'All Applications', N'All Applications', N'a_all_applications', N'ALL', 0, CAST(0x0000000000000000 AS DateTime), 0, 1, 0, 0, 1, CAST(0x0000A5FE00A606B1 AS DateTime), NULL, NULL)
INSERT [dbo].[Applications] ([Id], [Name], [Description], [Key], [ApplicationAbbreviation], [IsOnline], [SeedDate], [Seed], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (22, N'Incentive Policy Application', N'Incentive Policy Application - Economic Development', N'a_incentive_policy', N'IPA', 1, CAST(0x0000A9B201544F44 AS DateTime), 1, 1, 0, 0, NULL, NULL, 113095, CAST(0x0000A9B201568E8D AS DateTime))
SET IDENTITY_INSERT [dbo].[Applications] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'e095f1ec-431a-4561-a098-32ab85440fb0', N'Administrators')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'b27e19ec-ff3b-4c35-97af-571ce231a443', N'Agents')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3539428d-886a-4e76-a06b-c0da7682dc06', N'Clerks')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a422939d-586f-4416-93a5-e1073ef14829', N'Customers')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'c635c193-ec34-4351-96b1-3bda78f2e77b', N'Guests')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'b59eb22e-c904-4ff6-af38-a083bf1ca6c6', N'Super Administrators')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2a77a201-3405-4a60-867e-21ebc1a4ff65', N'System Administrators')
SET IDENTITY_INSERT [dbo].[ApplicationRoles] ON 

INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, 2, N'b59eb22e-c904-4ff6-af38-a083bf1ca6c6', 1, 0, 0, NULL, CAST(0x0000A67200C461ED AS DateTime), NULL, CAST(0x0000A67200C461ED AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, 2, N'e095f1ec-431a-4561-a098-32ab85440fb0', 1, 0, 0, NULL, CAST(0x0000A67200C46778 AS DateTime), NULL, CAST(0x0000A67200C46778 AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, 3, N'b59eb22e-c904-4ff6-af38-a083bf1ca6c6', 1, 0, 0, NULL, CAST(0x0000A67200C47B5C AS DateTime), NULL, CAST(0x0000A67200C47B5C AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, 3, N'e095f1ec-431a-4561-a098-32ab85440fb0', 1, 0, 0, NULL, CAST(0x0000A67200C480E2 AS DateTime), NULL, CAST(0x0000A67200C480E2 AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, 2, N'3539428d-886a-4e76-a06b-c0da7682dc06', 1, 0, 0, NULL, CAST(0x0000A67200C5060E AS DateTime), NULL, CAST(0x0000A67200C5060E AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, 3, N'3539428d-886a-4e76-a06b-c0da7682dc06', 1, 0, 0, NULL, CAST(0x0000A67200C51161 AS DateTime), NULL, CAST(0x0000A67200C51161 AS DateTime))
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, 22, N'b59eb22e-c904-4ff6-af38-a083bf1ca6c6', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, 22, N'e095f1ec-431a-4561-a098-32ab85440fb0', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, 22, N'3539428d-886a-4e76-a06b-c0da7682dc06', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ApplicationRoles] ([Id], [ApplicationId], [RoleId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, 22, N'a422939d-586f-4416-93a5-e1073ef14829', 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ApplicationRoles] OFF
SET IDENTITY_INSERT [dbo].[DocumentTypes] ON 

INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'ID Document', N'Copy Of ID Document', N'dt_copy_of_id', 1, 0, 1, 1, NULL, NULL, CAST(0x0000AA2600902057 AS DateTime))
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Authority', N'Letter Of Authority', N'dt_letter_of_authority', 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A9F4015976EE AS DateTime))
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Executorship', N'Letter Of Executorship', N'dt_letter_of_executorship', 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'CIPC Document', N'CIPC Document (If Owner Type Is Business)', N'dt_cipc', 1, 0, 1, NULL, NULL, 1, CAST(0x0000A79F00CB6832 AS DateTime))
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'CK Document', N'Relevant Page From The CK Document Listing All Members (If Owner Type Is Deemed Owner)', N'dt_ck', 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Authorithy (Black Administration Act)', N'Letter Of Authorithy From Black Administration Act (If Owner Type Is Partnership)', N'dt_authorithy_black_administration_act', 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'Partnership Agreement', N'Relevant Page From Partnership Agreement Listing All Partners (If Owner Type Is Partnership)', N'dt_partnership', 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (13, N'PTO Certificate', N'PTO Certificate (If Owner Type Is Trust)', N'dt_pto_certification', 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (18, N'Additional Document', N'Additional Documentation', N'dt_additional_documents', 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A72400FA3113 AS DateTime))
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, N'PTO Certificate', N'PTO Certificate (If Owner Type Is Trust)', N'dt_pto_certificate', 0, 1, 0, 1, CAST(0x0000A64800F3C625 AS DateTime), NULL, CAST(0x0000A64800F46E5B AS DateTime))
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
SET IDENTITY_INSERT [dbo].[ReferenceTypes] ON 

INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Rates Rebate', N'Rates Rebate', N'rt_rates_rebate', 1, 0, 0, 1, CAST(0x0000A5CD009AF8D8 AS DateTime), 148907, CAST(0x0000A8B000CC5BE0 AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Rates Rebate Property', N'Rates Rebate Property Model', N'rt_rates_rebate_property', 1, 0, 0, NULL, NULL, 108523, CAST(0x0000A6FF00C0E2CD AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Linked Accounts', N'Linked Accounts', N'rt_linked_accounts', 1, 0, 0, NULL, NULL, 80291, CAST(0x0000AA3D00C637D1 AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Customer Profile', N'Customer Profile', N'rt_customer_profile', 1, 0, 0, 1, CAST(0x0000A60300AE3DDF AS DateTime), 187234, CAST(0x0000AA5B00F2B79C AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Linked Accounts Managing Agent', N'Linked Accounts Managing Agent', N'rt_linked_accounts_managing_agent', 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A9F40104AD69 AS DateTime))
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Incentive Policy Property', N'Incentive Policy Property', N'rt_incentive_policy_property', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReferenceTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Incentive Policy', N'Incentive Policy', N'rt_incentive_policy', 1, 0, 0, NULL, NULL, 148907, CAST(0x0000A8B000E27376 AS DateTime))
SET IDENTITY_INSERT [dbo].[ReferenceTypes] OFF
SET IDENTITY_INSERT [dbo].[DocumentCheckLists] ON 

INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, 1, 2, 1, 1, 1, 1, 1, NULL, 1, CAST(0x0000A61700CD4B97 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, 2, 3, 4, 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, 5, 3, 4, 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, 6, 3, 4, 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, 8, 3, 4, 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, 9, 3, 4, 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, 10, 3, 4, 1, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, 13, 3, 4, 1, 0, 0, 1, CAST(0x0000A5A600A7F916 AS DateTime), 1, CAST(0x0000A5A600A7F916 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (20, 1, 2, 5, 1, 0, 0, 1, NULL, NULL, CAST(0x0000A9F4015976EE AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (21, 2, 2, 5, 1, 0, 0, 1, NULL, NULL, CAST(0x0000A9F4015976EE AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (22, 1, 2, 6, 1, 0, 0, 1, CAST(0x0000A5FD00CE99DA AS DateTime), NULL, CAST(0x0000AA2600902057 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (23, 1, 3, 4, 1, 0, 0, 1, CAST(0x0000A64201131A2E AS DateTime), 1, CAST(0x0000A64201131A2E AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (24, 18, 2, 5, 1, 0, 0, 1, NULL, NULL, CAST(0x0000A72400FA3113 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (25, 18, 3, 1, 1, 0, 0, 1, CAST(0x0000A64700B24F95 AS DateTime), 1, CAST(0x0000A64700B24F95 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (26, 18, 3, 4, 1, 0, 0, 1, CAST(0x0000A64700B2E169 AS DateTime), 1, CAST(0x0000A64700B2E169 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (27, 18, 2, 6, 1, 0, 0, 1, CAST(0x0000A64700D317C1 AS DateTime), 1, CAST(0x0000A64700D317C1 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (28, 10, 3, 6, 1, 0, 0, 1, CAST(0x0000A64700DE9BC3 AS DateTime), 1, CAST(0x0000A64700DE9BC3 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (29, 1, 2, 1, 1, 0, 0, 1, CAST(0x0000A64800EF67E5 AS DateTime), 1, CAST(0x0000A64800EF67E5 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (32, 2, 2, 7, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A9F40104AD69 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (33, 18, 2, 7, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A72400FA3113 AS DateTime))
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (34, 1, 3, 7, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (35, 1, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (36, 20, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (37, 24, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (38, 25, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (39, 26, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (41, 8, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (42, 18, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (43, 27, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (44, 28, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (45, 22, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (46, 23, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (47, 21, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[DocumentCheckLists] ([Id], [DocumentTypeId], [ApplicationId], [ReferenceTypeId], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (49, 6, 22, 8, 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DocumentCheckLists] OFF
INSERT [dbo].[AspNetUsers] ([Id], [SystemUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [UnconfirmedEmail]) VALUES (N'a1887f3f-98e5-4243-822a-cb226021f707', 1, NULL, 1, N'ACXxk9qwhkKxIDqaYMIwWzFLJaGZ6WkBMoSF2/ECjUSRhu0a5KeolM2p1b+6rRzssw==', N'7013b0ff-897c-4751-ad25-f05c80e54278', NULL, 0, 0, NULL, 0, 0, N'SuperAdmin', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a1887f3f-98e5-4243-822a-cb226021f707', N'b59eb22e-c904-4ff6-af38-a083bf1ca6c6')
SET IDENTITY_INSERT [dbo].[AccountTypes] ON 
INSERT [dbo].[AccountTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Water', N'Water Account (WA)', N'at_water', 1, 0, 0, NULL, CAST(0x0000A601012BE9BC AS DateTime), NULL, CAST(0x0000A60500F93334 AS DateTime))
INSERT [dbo].[AccountTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Electricity', N'Electricity Account', N'at_electricity', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AccountTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Sewage', N'Sewage Services', N'at_sewage', 1, 0, 0, 1, CAST(0x0000A60200A0813E AS DateTime), NULL, NULL)
INSERT [dbo].[AccountTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Waste', N'Waste Management', N'at_waste', 1, 0, 0, 1, CAST(0x0000A602010C72FC AS DateTime), NULL, NULL)
INSERT [dbo].[AccountTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Transport', N'Transport', N'at_transport', 1, 0, 0, 1, CAST(0x0000A60900E770D4 AS DateTime), NULL, CAST(0x0000A60900E7AE20 AS DateTime))
INSERT [dbo].[AccountTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (12, N'Consolidated', N'Consolidated Account', N'at_consolidated', 1, 0, 0, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AccountTypes] OFF
SET IDENTITY_INSERT [dbo].[AppSettings] ON 

INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'SharePoint Username', N'This is Sharepoint Description', N'as_share_point_username', N'Ssrs.dev', 1, 0, NULL, NULL, CAST(0x0000A5AB013F2720 AS DateTime), NULL, CAST(0x0000A651009DB2FF AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'SharePoint Password', NULL, N'as_share_point_password', N'second1$', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'SharePoint Url', NULL, N'as_share_point_url', N'http://reports.durban.gov.za', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'SharePoint Site', NULL, N'as_share_point_site', N'misc', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'SharePoint Domain', N'Independed Research', N'as_share_point_domain', N'martin_west', 1, 0, NULL, NULL, NULL, NULL, CAST(0x0000A64E00AE4D3E AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, N'SharePoint Library', NULL, N'as_share_point_library', N'eServicesLibrary', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (15, N'eServices Email Application ID', N'Email Application ID ', N'eservices_applicationID', N'7', 1, 0, NULL, NULL, CAST(0x0000A5CA01160EF4 AS DateTime), NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (16, N'eServices Default Email Template', N'eServices Default Email Template', N'eservices_default_email_template', N'<html>
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
    <div class="header">eThekwini eServices</div>
    <div class="main">
			<br/>
            Dear <b>#NAME#</b>,<br />
            <br />
            #BODYTEXT#
            <br />
			<br/>
            Regards,<br />
            <b>eServices Team</b>
            <br />
            <br />
    </div>
</body>
<div class="footer"></div>
</html>
', 1, 0, NULL, NULL, CAST(0x0000A5CA01160EF4 AS DateTime), NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (17, N'eServices Email Account', N'Account Name For eServices Emails', N'eservices_email_account', N'5', 1, 0, NULL, NULL, CAST(0x0000A5CA01160EF4 AS DateTime), NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (18, N'Report Server Url', N'eServices Reporting Server Url', N'eservices_report_server_url', N'http://reports.durban.gov.za/misc', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, N'Report Path', N'eServices Report Path', N'eservices_report_path', N'/reports/ebilling/MetroBill6Months/onlinemetrobill.rdl', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (20, N'Report Server Username', N'eServices Report Service Username', N'eservices_report_server_username', N'Ssrs.dev', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (22, N'Report Server Password', N'eServices Report Server Password', N'eservices_report_server_password', N'second1$', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (23, N'Report Server Domain', N'eServices Report Server Domain', N'eservices_report_server_domain', N'martin_west', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (24, N'Generated Bill File Location', N'All bills are generated and temporarily stored in this folder on the eServices website.', N'eservices_generated_bill_file_location', N'GeneratedBills', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (25, N'Generated Rms File Location', N'Drop off location for all Rms bills', N'eservices_generated_rms_bills_root_location', N'GeneratedRmsBills', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (26, N'Sorted Rms Bills Location', N'Sorted location for all Rms bills', N'eservices_sorted_rms_bills_location', N'SortedRmsBills', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (28, N'Customer Help Admin Emails', N'Email addresses for administration of Customer Help', N'as_customer_help_emails', N'Jayan.Kistasami@durban.gov.za;Tom.Narainparsat@durban.gov.za;LEBOHANG.MOTLOUNG@durban.gov.za;Njabulo.Dube@durban.gov.za;Ruvendran.Naidoo@durban.gov.za;', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (30, N'Customer Help Revline Emails', N'Email address for call centre ', N'as_revline_help_emails', N'revline@durban.gov.za;', 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A8A900FFDB8D AS DateTime))
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
    <div class="header">eThekwini eServices</div>
    <div class="main">			
			<br/>
            Dear <b>#NAME#</b>,<br />
            <br />
            #BODYTEXT#
            <br />
			<br/>
			<b class="notice">Please do not respond to the sender as this mail box does not receive return mail.</b>
			<br/>
			Correspondence can be directed to the ROR Office on 031 322 2701 or via email to ROR@durban.gov.za.
			<br/>
			<br/>
            Regards,<br />
            <b>ROR Team</b>
            <br />
            <br />
    </div>
</body>
<div class="footer"></div>
</html>
', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (32, N'Copy Account Watermark', N'Copy Account Watermark for billing', N'as_copy_account_watermark', N'Copy Of Account', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (33, N'Property Rating Category Code', N'Property Rating Category Code', N'as_va_property_rating_category_code', N'1', 1, 0, 0, NULL, NULL, NULL, NULL)
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
    <div class="header">eThekwini eServices</div>
    <div class="main">
			<br/>
            Dear <b>#NAME#</b>,<br />
            <br />
			Account : <strong>#REFERENCENUMBER#</strong> is now successfully linked to your profile.
            #BODYTEXT#
            <br />
			<br/>
            Regards,<br />
            <b>eServices Team</b>
            <br />
            <br />
    </div>
</body>
<div class="footer"></div>
</html>
', 1, 0, 0, NULL, NULL, NULL, NULL)
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
    <div class="header">eThekwini eServices</div>
    <div class="main">
			<br/>
            Dear <b>#NAME#</b>,<br />
            <br />
			You have requested to link a new account : <strong>#REFERENCENUMBER#</strong> to your profile. This request has been sent to the eServices Administration team for approval.
            #BODYTEXT#
            <br />
			<br/>
            Regards,<br />
            <b>eServices Team</b>
            <br />
            <br />
    </div>
</body>
<div class="footer"></div>
</html>
', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (39, N'Linked Accounts Active Message', N'Linked Account Active Message', N'linked_accounts_active_message', N'', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (40, N'Linked Accounts Pending Account Approval Message', N'Linked Account Pending Account Approval Message', N'linked_accounts_pending_account_approval_message', N'', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (42, N'Linked Accounts Pending Account Approval and Email Activation', N'Linked Account Pending Account Approval and Email Activation', N'linked_accounts_pending_account_and_email_activation_message', N'', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (43, N'Linked Emails Pending Email Activation', N'Linked Email Pending Email Activation', N'linked_emails_pending_email_activation_message', N'You will start receiving your bills via email from the next bill date after your email has been activated.', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (44, N'Linked Emails Pending Email Activation and Linked Account Approval', N'Linked Email Pending Email Activation and Linked Account Approval', N'linked_emails_pending_email_activation_and_linked_account_approval_message', N'You will start receiving your bills via email from the next bill date after your email has been activated and your linked account has been approved.', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (45, N'Property Market Value', N'Property Market Value', N'as_va_property_market_value', N'5000000', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (46, N'Customer centres IP Address', N'Customer centres IP Range', N'eservices_customer_centres_ip_range', N'10.', 1, 0, 0, NULL, NULL, NULL, CAST(0x0000AA3300BCF6BE AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (48, N'Property Rating Category Code', N'Property Rating Category Code', N'as_va_property_rating_category_code', N'1', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (53, N'Upload Network Directory', N'The upload directory relative to the website.', N'eservices_upload_network_directory', N'~/uploads/', 1, 0, 0, NULL, NULL, 113095, CAST(0x0000A9B201568E8D AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (54, N'Upload Html Directory', N'The upload directory of the website.', N'upload_html_directory', N'https://eservices.durban.gov.za/v2/uploads/', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (55, N'Update Notification', N'Home Page Updates Notification', N'eservices_update_notification', N'Please note that there will be scheduled maintenance of eServices from 14:00 onwards on 12/05/2018. As a result of this eServices will not be available until 13/05/2018.', 0, 0, NULL, NULL, NULL, 145339, CAST(0x0000A8E0009F36E3 AS DateTime))
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (56, N'Incentive Policy Terms And Conditions', N'Incentive Policy Terms And Conditions', N'incentive_policy_ts_cs', N'https://eservices.durban.gov.za/v2/Content/EconomicDevelopmentIncentivePolicy20171123.pdf', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (57, N'Network Location Storage', N'Network Location For Document Storage', N'incentive_policy_document_location', N'\\10.10.9.71\EconomicDevelopmentDocuments\', 1, 0, 0, NULL, NULL, NULL, NULL)
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
    <div class="header">eThekwini eServices</div>
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
', 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AppSettings] OFF
SET IDENTITY_INSERT [dbo].[CategoryTypes] ON 

INSERT [dbo].[CategoryTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'GreenFields', N'Option1-GreenFields', N'Cat_greenfields', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[CategoryTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'BrownFields', N'Option2-BrownFields', N'Cat_brownfields', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[CategoryTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Derelict or Abandon building redevelopment', N'Option3-Derelict or Abandon building redevelopment', N'Cat_derelict_or_abandon_building_redevelopment', 0, 1, 0, NULL, NULL, 148907, CAST(0x0000A8AF00EA950B AS DateTime))
INSERT [dbo].[CategoryTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Bulk Infrastructure', N'Option4-Bulk Infrastructure', N'Cat_bulk_infrastructure', 0, 1, 0, NULL, NULL, 148907, CAST(0x0000A8AF00EA8B61 AS DateTime))
SET IDENTITY_INSERT [dbo].[CategoryTypes] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Zimbabwe', N'Zimbabwe', N'ct_zimbabwe', 1, 0, 0, 1, CAST(0x0000A5F600A19154 AS DateTime), NULL, CAST(0x0000A651009DC53A AS DateTime))
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Lesotho', N'Lesotho', N'ct_lesotho', 1, 0, 0, 1, NULL, 1, CAST(0x0000A66E00BB17DC AS DateTime))
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Nigeria', N'Nigeria', N'ct_nigeria', 1, 0, 0, 1, CAST(0x0000A5E5009F4E4E AS DateTime), 1, CAST(0x0000A65000FB8705 AS DateTime))
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Angola', N'Angola', N'ct_angola', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (13, N'Egypt', N'Egypt', N'ct_egpty', 1, 0, 0, NULL, CAST(0x0000A5A400DF7009 AS DateTime), 1, CAST(0x0000A65401315266 AS DateTime))
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (17, N'Senegal', N'Senegal', N'ct_senegal', 1, 0, 0, 1, CAST(0x0000A5B000BBA339 AS DateTime), 1, CAST(0x0000A655011C1CC6 AS DateTime))
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (20, N'Italy', N'Italy', N'ct_italy', 1, 0, 0, 1, CAST(0x0000A61200E8EE39 AS DateTime), 1, CAST(0x0000A61200E8EE39 AS DateTime))
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (21, N'Kenya', N'Kenya', N'ct_kenya', 1, 0, 0, 1, CAST(0x0000A64900954ADB AS DateTime), 1, CAST(0x0000A64D014205AD AS DateTime))
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (22, N'Algeria', N'Algeria ', N'ct_algeria', 1, 0, 0, 1, CAST(0x0000A64900958E54 AS DateTime), NULL, CAST(0x0000A67901186352 AS DateTime))
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (23, N'Albania', N'Albania', N'ct_albania', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (25, N'Andorra', N'Andorra', N'ct_andorra', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (27, N'Argentina', N'Argentina', N'ct_argentina', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (28, N'Armenia', N'Armenia', N'ct_armenia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (29, N'Australia', N'Australia', N'ct_australia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (30, N'Austria', N'Austria', N'ct_austria', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (31, N'Azerbaijan', N'Azerbaijan', N'ct_azerbaijan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (32, N'Bahamas', N'Bahamas', N'ct_bahamas', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (33, N'Bahrain', N'Bahrain', N'ct_bahrain', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (34, N'Bangladesh', N'Bangladesh', N'ct_bangladesh', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (35, N'Barbados', N'Barbados', N'ct_barbados', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (36, N'Belarus', N'Belarus', N'ct_belarus', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (37, N'Belgium', N'Belgium', N'ct_belgium', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (38, N'Bolivia', N'Bolivia', N'ct_bolivia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (39, N'Bosnia and Herzegovina', N'Bosnia and Herzegovina', N'ct_bosnia and herzegovina', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (40, N'Botswana', N'Botswana', N'ct_botswana', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (41, N'Brazil', N'Brazil', N'ct_brazil', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (42, N'Bulgaria', N'Bulgaria', N'ct_bulgaria', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (43, N'Burkina Faso', N'Burkina Faso', N'ct_burkina faso', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (44, N'Burundi', N'Burundi', N'ct_burundi', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (45, N'Cabo Verde', N'Cabo Verde', N'ct_cabo verde', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (46, N'Cambodia', N'Cambodia', N'ct_cambodia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (47, N'Cameroon', N'Cameroon', N'ct_cameroon', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (48, N'Canada', N'Canada', N'ct_canada', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (49, N'Central African Republic (CAR)', N'Central African Republic (CAR)', N'ct_central african republic (car)', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (50, N'Chad', N'Chad', N'ct_chad', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (51, N'Chile', N'Chile', N'ct_chile', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (52, N'China', N'China', N'ct_china', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (53, N'Colombia', N'Colombia', N'ct_colombia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (54, N'Democratic Republic of theCongo', N'Democratic Republic of theCongo', N'ct_democratic republic of thecongo', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (55, N'Republic of the Congo', N'Republic of the Congo', N'ct_republic of the congo', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (56, N'Costa Rica', N'Costa Rica', N'ct_costa rica', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (57, N'Cote d''Ivoire', N'Cote d''Ivoire', N'ct_cote d''ivoire', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (58, N'Croatia', N'Croatia', N'ct_croatia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (59, N'Cuba', N'Cuba', N'ct_cuba', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (60, N'Cyprus', N'Cyprus', N'ct_cyprus', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (61, N'Czech Republic', N'Czech Republic', N'ct_czech republic', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (62, N'Denmark', N'Denmark', N'ct_denmark', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (63, N'Dominican Republic', N'Dominican Republic', N'ct_dominican republic', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (64, N'Ecuador', N'Ecuador', N'ct_ecuador', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (66, N'El Salvador', N'El Salvador', N'ct_el salvador', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (67, N'Equatorial Guinea', N'Equatorial Guinea', N'ct_equatorial guinea', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (68, N'Estonia', N'Estonia', N'ct_estonia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (69, N'Ethiopia', N'Ethiopia', N'ct_ethiopia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (70, N'Fiji', N'Fiji', N'ct_fiji', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (71, N'Finland', N'Finland', N'ct_finland', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (72, N'France', N'France', N'ct_france', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (73, N'Gabon', N'Gabon', N'ct_gabon', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (74, N'Gambia', N'Gambia', N'ct_gambia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (75, N'Georgia', N'Georgia', N'ct_georgia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (76, N'Germany', N'Germany', N'ct_germany', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (77, N'Ghana', N'Ghana', N'ct_ghana', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (78, N'Greece', N'Greece', N'ct_greece', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (79, N'Guatemala', N'Guatemala', N'ct_guatemala', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (80, N'Guinea', N'Guinea', N'ct_guinea', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (81, N'Guyana', N'Guyana', N'ct_guyana', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (82, N'Haiti', N'Haiti', N'ct_haiti', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (83, N'Honduras', N'Honduras', N'ct_honduras', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (84, N'Hungary', N'Hungary', N'ct_hungary', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (85, N'Iceland', N'Iceland', N'ct_iceland', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (86, N'India', N'India', N'ct_india', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (87, N'Indonesia', N'Indonesia', N'ct_indonesia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (88, N'Iran', N'Iran', N'ct_iran', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (89, N'Iraq', N'Iraq', N'ct_iraq', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (90, N'Ireland', N'Ireland', N'ct_ireland', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (91, N'Israel', N'Israel', N'ct_israel', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (93, N'Jamaica', N'Jamaica', N'ct_jamaica', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (94, N'Japan', N'Japan', N'ct_japan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (95, N'Jordan', N'Jordan', N'ct_jordan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (96, N'Kazakhstan', N'Kazakhstan', N'ct_kazakhstan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (98, N'Kosovo', N'Kosovo', N'ct_kosovo', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (99, N'Kuwait', N'Kuwait', N'ct_kuwait', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (100, N'Latvia', N'Latvia', N'ct_latvia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (101, N'Lebanon', N'Lebanon', N'ct_lebanon', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (103, N'Liberia', N'Liberia', N'ct_liberia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (104, N'Libya', N'Libya', N'ct_libya', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (105, N'Liechtenstein', N'Liechtenstein', N'ct_liechtenstein', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (106, N'Lithuania', N'Lithuania', N'ct_lithuania', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (107, N'Luxembourg', N'Luxembourg', N'ct_luxembourg', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (108, N'Macedonia', N'Macedonia', N'ct_macedonia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (109, N'Madagascar', N'Madagascar', N'ct_madagascar', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (110, N'Malawi', N'Malawi', N'ct_malawi', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (111, N'Malaysia', N'Malaysia', N'ct_malaysia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (112, N'Maldives', N'Maldives', N'ct_maldives', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (113, N'Mali', N'Mali', N'ct_mali', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (114, N'Malta', N'Malta', N'ct_malta', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (115, N'Mauritius', N'Mauritius', N'ct_mauritius', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (116, N'Mexico', N'Mexico', N'ct_mexico', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (117, N'Moldova', N'Moldova', N'ct_moldova', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (118, N'Monaco', N'Monaco', N'ct_monaco', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (119, N'Mongolia', N'Mongolia', N'ct_mongolia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (120, N'Montenegro', N'Montenegro', N'ct_montenegro', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (121, N'Morocco', N'Morocco', N'ct_morocco', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (122, N'Mozambique', N'Mozambique', N'ct_mozambique', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (123, N'Myanmar (Burma)', N'Myanmar (Burma)', N'ct_myanmar (burma)', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (124, N'Namibia', N'Namibia', N'ct_namibia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (125, N'Nepal', N'Nepal', N'ct_nepal', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (126, N'Netherlands', N'Netherlands', N'ct_netherlands', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (127, N'New Zealand', N'New Zealand', N'ct_new zealand', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (128, N'Nicaragua', N'Nicaragua', N'ct_nicaragua', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (129, N'Niger', N'Niger', N'ct_niger', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (131, N'North Korea', N'North Korea', N'ct_north korea', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (132, N'Norway', N'Norway', N'ct_norway', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (133, N'Oman', N'Oman', N'ct_oman', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (134, N'Pakistan', N'Pakistan', N'ct_pakistan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (135, N'Palau', N'Palau', N'ct_palau', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (136, N'Palestine', N'Palestine', N'ct_palestine', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (137, N'Panama', N'Panama', N'ct_panama', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (138, N'Papua New Guinea', N'Papua New Guinea', N'ct_papua new guinea', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (139, N'Paraguay', N'Paraguay', N'ct_paraguay', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (140, N'Peru', N'Peru', N'ct_peru', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (141, N'Philippines', N'Philippines', N'ct_philippines', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (142, N'Poland', N'Poland', N'ct_poland', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (143, N'Portugal', N'Portugal', N'ct_portugal', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (144, N'Qatar', N'Qatar', N'ct_qatar', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (145, N'Romania', N'Romania', N'ct_romania', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (146, N'Russia', N'Russia', N'ct_russia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (147, N'Rwanda', N'Rwanda', N'ct_rwanda', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (148, N'Samoa', N'Samoa', N'ct_samoa', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (149, N'San Marino', N'San Marino', N'ct_san marino', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (150, N'Saudi Arabia', N'Saudi Arabia', N'ct_saudi arabia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (152, N'Serbia', N'Serbia', N'ct_serbia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (153, N'Seychelles', N'Seychelles', N'ct_seychelles', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (154, N'Sierra Leone', N'Sierra Leone', N'ct_sierra leone', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (155, N'Singapore', N'Singapore', N'ct_singapore', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (156, N'Slovakia', N'Slovakia', N'ct_slovakia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (157, N'Slovenia', N'Slovenia', N'ct_slovenia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (158, N'Solomon Islands', N'Solomon Islands', N'ct_solomon islands', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (159, N'Somalia', N'Somalia', N'ct_somalia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (160, N'South Africa', N'South Africa', N'ct_south africa', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (161, N'South Korea', N'South Korea', N'ct_south korea', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (162, N'South Sudan', N'South Sudan', N'ct_south sudan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (163, N'Spain', N'Spain', N'ct_spain', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (164, N'Sri Lanka', N'Sri Lanka', N'ct_sri lanka', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (165, N'Sudan', N'Sudan', N'ct_sudan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (166, N'Swaziland', N'Swaziland', N'ct_swaziland', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (167, N'Sweden', N'Sweden', N'ct_sweden', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (168, N'Switzerland', N'Switzerland', N'ct_switzerland', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (169, N'Syria', N'Syria', N'ct_syria', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (170, N'Taiwan', N'Taiwan', N'ct_taiwan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (171, N'Tajikistan', N'Tajikistan', N'ct_tajikistan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (172, N'Tanzania', N'Tanzania', N'ct_tanzania', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (173, N'Thailand', N'Thailand', N'ct_thailand', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (174, N'Togo', N'Togo', N'ct_togo', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (175, N'Tonga', N'Tonga', N'ct_tonga', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (176, N'Trinidad and Tobago', N'Trinidad and Tobago', N'ct_trinidad and tobago', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (177, N'Tunisia', N'Tunisia', N'ct_tunisia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (178, N'Turkey', N'Turkey', N'ct_turkey', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (179, N'Uganda', N'Uganda', N'ct_uganda', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (180, N'Ukraine', N'Ukraine', N'ct_ukraine', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (181, N'United Arab Emirates (UAE)', N'United Arab Emirates (UAE)', N'ct_united arab emirates (uae)', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (182, N'United Kingdom (UK)', N'United Kingdom (UK)', N'ct_united kingdom (uk)', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (183, N'United States of America (USA)', N'United States of America (USA)', N'ct_united states of america (usa)', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (184, N'Uruguay', N'Uruguay', N'ct_uruguay', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (185, N'Uzbekistan', N'Uzbekistan', N'ct_uzbekistan', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (186, N'Venezuela', N'Venezuela', N'ct_venezuela', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (187, N'Vietnam', N'Vietnam', N'ct_vietnam', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (188, N'Yemen', N'Yemen', N'ct_yemen', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (189, N'Zambia', N'Zambia', N'ct_zambia', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (191, N'Afghanistan', N'Afghanistan', N'ct_afghanistan', 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Countries] OFF'
SET IDENTITY_INSERT [dbo].[CustomerTypes] ON 

INSERT [dbo].[CustomerTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Managing Agent', N'Primary Contact', N'ct_managing_agent', 1, 0, NULL, 1, CAST(0x0000A60200F7290C AS DateTime), 187257, CAST(0x0000AA5700FBA80D AS DateTime))
INSERT [dbo].[CustomerTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Individual', NULL, N'ct_individual', 1, 0, NULL, 1, CAST(0x0000A60300A35B88 AS DateTime), 187234, CAST(0x0000AA5B00F2B79C AS DateTime))
INSERT [dbo].[CustomerTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Entity(Business)', NULL, N'ct_entity', 1, 0, 0, 1, CAST(0x0000A60300AE3DDF AS DateTime), 187252, CAST(0x0000AA5700D313FB AS DateTime))
INSERT [dbo].[CustomerTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Deemed Owner', NULL, N'ct_deemed_owner', 1, 0, 0, 1, CAST(0x0000A60100D2C122 AS DateTime), NULL, CAST(0x0000A9F40130C697 AS DateTime))
INSERT [dbo].[CustomerTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'PTO', NULL, N'ct_pto', 0, 1, 0, 1, CAST(0x0000A6020109F8DD AS DateTime), NULL, CAST(0x0000A66700A0A4EA AS DateTime))
INSERT [dbo].[CustomerTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (35, N'CC', N'Close Corporation', N'ct_cc', 0, 1, 0, 1, CAST(0x0000A613009A7D9C AS DateTime), NULL, CAST(0x0000A651009E3008 AS DateTime))
SET IDENTITY_INSERT [dbo].[CustomerTypes] OFF
SET IDENTITY_INSERT [dbo].[EntityTypes] ON 

INSERT [dbo].[EntityTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Partnership', N'Partnership', N'et_partnership', 1, 0, 0, 1, NULL, 1, CAST(0x0000A64D0139564A AS DateTime))
INSERT [dbo].[EntityTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Sole Proprietory', N'Sole Proprietory', N'et_sole_proprietory', 1, 0, 0, 1, NULL, 1, CAST(0x0000A65200A897EA AS DateTime))
INSERT [dbo].[EntityTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Close Corporation', N'Close Corporation', N'et_close_corporation', 1, 0, 0, 1, CAST(0x0000A60200F7362D AS DateTime), 1, CAST(0x0000A6620107B236 AS DateTime))
INSERT [dbo].[EntityTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Company', N'Company', N'et_company', 1, 0, 0, 1, NULL, 108523, CAST(0x0000A70D00EB7206 AS DateTime))
INSERT [dbo].[EntityTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Organisation', N'Organisation', N'et_organisation', 1, 0, 0, 1, NULL, 1, CAST(0x0000A66A01139672 AS DateTime))
INSERT [dbo].[EntityTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, N'Trust', N'Trust', N'et_trust', 1, 0, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[EntityTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (12, N'Revenue Clearance (Conveyancers)', N'Practise', N'et_practise', 1, 0, 0, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[EntityTypes] OFF
SET IDENTITY_INSERT [dbo].[IdentificationTypes] ON 

INSERT [dbo].[IdentificationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'South African ID', N'South African ID', N'id_south_african', 1, 0, 0, 1, CAST(0x0000A60300AE3D14 AS DateTime), 187234, CAST(0x0000AA5B00F2B79C AS DateTime))
INSERT [dbo].[IdentificationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Passport Number', N'Passport Number', N'id_passport_no', 1, 0, 0, 1, CAST(0x0000A603008EEFCC AS DateTime), 187237, CAST(0x0000AA3A00C333CB AS DateTime))
SET IDENTITY_INSERT [dbo].[IdentificationTypes] OFF
SET IDENTITY_INSERT [dbo].[InvestmentValueTypes] ON 

INSERT [dbo].[InvestmentValueTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Capital Expenditure', N'Capital Expenditure', N'v_capital_expenditure', 1, 0, 0, NULL, NULL, 113095, CAST(0x0000A9B201573DE5 AS DateTime))
INSERT [dbo].[InvestmentValueTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Permanent Jobs', N'Permanent Jobs', N'v_permanent_jobs_created', 1, 0, 0, NULL, NULL, 113095, CAST(0x0000A9B201573DE5 AS DateTime))
INSERT [dbo].[InvestmentValueTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Temporary Jobs', N'Temporary Jobs', N'v_temporary_jobs_created', 1, 0, 0, NULL, NULL, 113095, CAST(0x0000A9B201573DE5 AS DateTime))
SET IDENTITY_INSERT [dbo].[InvestmentValueTypes] OFF
SET IDENTITY_INSERT [dbo].[LinkedAccountTypes] ON 

INSERT [dbo].[LinkedAccountTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Associated', N'Associated linked account', N'la_associated', 1, 0, 0, NULL, NULL, 80291, CAST(0x0000AA3D00C637D1 AS DateTime))
INSERT [dbo].[LinkedAccountTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Unassociated', N'Unassociated linked account', N'la_unassociated', 1, 0, 0, NULL, NULL, 106647, CAST(0x0000A9F40138D40C AS DateTime))
SET IDENTITY_INSERT [dbo].[LinkedAccountTypes] OFF
SET IDENTITY_INSERT [dbo].[LocationTypes] ON 

INSERT [dbo].[LocationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Sharepoint ', N'Sharepoint', N'lt_sharepoint', 1, 0, 0, NULL, CAST(0x0000A5FD0127A62E AS DateTime), 1, NULL)
INSERT [dbo].[LocationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Database', N'Database File Storage', N'lt_database', 1, 0, 0, NULL, CAST(0x0000A60300ABB964 AS DateTime), 187238, CAST(0x0000AA3D00ECC136 AS DateTime))
INSERT [dbo].[LocationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Network Share', N'Network Share File Storage', N'lt_network_share', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[LocationTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'UploadDirectory', N'Website Upload Directory', N'lt_upload_directory', 1, 0, 0, NULL, NULL, 113095, CAST(0x0000A9B201568E8D AS DateTime))
SET IDENTITY_INSERT [dbo].[LocationTypes] OFF
SET IDENTITY_INSERT [dbo].[LogTypes] ON 

INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'New ', N'Initial Log Type', NULL, 0, 1, NULL, NULL, CAST(0x0000A5A600A8FBC4 AS DateTime), NULL, CAST(0x0000A61600B714AC AS DateTime))
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Log Type 2', N'This is log type number 2', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Log Type 5', N'This is log type 5', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Log Type 4', N'This is log type four', N'lt_log_type_4', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Error', N'This is a log for an error.', N'lt_error', 1, 0, 0, 1, CAST(0x0000A602010E2916 AS DateTime), NULL, NULL)
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Message', N'A notification message.', N'lt_message', 1, 0, 0, 1, CAST(0x0000A602012259AA AS DateTime), 1, CAST(0x0000A602012259AA AS DateTime))
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Warning', N'A warning message.', N'lt_warning', 1, 0, 0, 1, CAST(0x0000A602012355DE AS DateTime), 1, CAST(0x0000A602012355DE AS DateTime))
INSERT [dbo].[LogTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Debug', N'A debug log.', N'lt_debug', 1, 0, 0, 1, CAST(0x0000A602012556EC AS DateTime), NULL, CAST(0x0000A6020125810C AS DateTime))
SET IDENTITY_INSERT [dbo].[LogTypes] OFF
SET IDENTITY_INSERT [dbo].[MeasurementTypes] ON 

INSERT [dbo].[MeasurementTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Building Size', N'Building Size', N't_building_size', 1, 0, 0, NULL, NULL, 113095, CAST(0x0000A9B201573DE5 AS DateTime))
INSERT [dbo].[MeasurementTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Land Size', N'Land Size', N't_land_size', 1, 0, 0, NULL, NULL, 113095, CAST(0x0000A9B201573DE5 AS DateTime))
SET IDENTITY_INSERT [dbo].[MeasurementTypes] OFF
SET IDENTITY_INSERT [dbo].[NoteTypes] ON 

INSERT [dbo].[NoteTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'RatesRebates', N'Rates Rebates', N'nt_rates_rebates', 0, 1, 0, 1, CAST(0x0000A5CD009AF8D8 AS DateTime), 1, CAST(0x0000A64A00FFB4B1 AS DateTime))
INSERT [dbo].[NoteTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Note', N'Type', N'nt_note', 0, 1, 0, 1, CAST(0x0000A608008C0424 AS DateTime), 148907, CAST(0x0000A8B000E27376 AS DateTime))
INSERT [dbo].[NoteTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Email', N'Email', N'nt_email', 1, 1, 0, 1, NULL, 127235, CAST(0x0000A9ED00BCFC60 AS DateTime))
SET IDENTITY_INSERT [dbo].[NoteTypes] OFF
SET IDENTITY_INSERT [dbo].[QueryTypes] ON 

INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Cannot log in.', N'I cannot login with my credentials?', N'qt_login', 1, 1, 0, 0, NULL, NULL, 139649, CAST(0x0000A903012E4AAF AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Recover password.', N'I cannot recover my password?', N'qt_password_recovery', 2, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A904009634F1 AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, N'Migration not done.', N'I don''t think any of my information was migrated?', N'qt_information_migration', 3, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A90300DCEB33 AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Accounts not migrated.', N'My accounts were not migrated?', N'qt_accounts_migration', 4, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A903013C50A7 AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Emails not migrated.', N'My linked emails were not migrated?', N'qt_emails_migration', 5, 1, 0, 1, NULL, NULL, 40312, CAST(0x0000A90300FA5FF9 AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Multiple logins.', N'I received multiple logins for eServices?', N'qt_multiple_logins', 6, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A90300E75ABE AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Convert to entity.', N'I want to convert my profile to an entity?', N'qt_convert_entity', 7, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A8FE00CDF3F3 AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Convert to managing agent.', N'I want to convert my profile to a managing agent?', N'qt_convert_managing agent', 8, 1, 0, 0, NULL, NULL, 155833, CAST(0x0000A8FD00848335 AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'Convert to individual.', N'I want to convert my profile to an individual?', N'qt_convert_individual', 9, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A90300764EED AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, N'Incorrect migration.', N'All my migrated information is incorrect?', N'qt_incorrect_migration', 10, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A81E008D1754 AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (12, N'Incorrect accounts.', N'I have incorrect accounts in my profile?', N'qt_incorrect_accounts', 11, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A8F60110A9D8 AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (14, N'Incorrect emails.', N'I have incorrect emails in my profile?', N'qt_incorrect_emails', 12, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A8FE00DD68FA AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (15, N'Other.', N'Other', N'qt_other', 16, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A90400FF072D AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (16, N'Suggestion.', N'Suggestion', N'qt_suggestion', 13, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A8F5008BDE50 AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (17, N'Compliment.', N'Compliment', N'qt_compliment', 14, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A8FC00C50CDF AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (18, N'Complaint.', N'Complaint', N'qt_complaint', 15, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A90301136282 AS DateTime))
INSERT [dbo].[QueryTypes] ([Id], [Name], [Description], [Key], [Index], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (19, N'Profile Approval', N'Customer Profile Approval', N'qt_customer_approval', 17, 1, 0, 0, NULL, NULL, NULL, CAST(0x0000AA2600901FFD AS DateTime))
SET IDENTITY_INSERT [dbo].[QueryTypes] OFF
SET IDENTITY_INSERT [dbo].[RecipientTypes] ON 

INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'To Primary Email', N'To Primary Email', N'rt_to_primary', 0, 1, 0, NULL, CAST(0x0000A60300A5C9CC AS DateTime), 1, CAST(0x0000A76000AF891C AS DateTime))
INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Blind Carbon Copy ', N'Blind Carbon Copy', N'rt_blind_carbon_copy', 0, 1, 0, NULL, CAST(0x0000A603008B794D AS DateTime), NULL, CAST(0x0000A65C008ED146 AS DateTime))
INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Carbon Copy', N'Carbon Copy', N'rt_carbon_copy', 0, 1, 0, NULL, CAST(0x0000A60300A451F2 AS DateTime), 52483, CAST(0x0000A74000731B69 AS DateTime))
INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Emails', N'Sent to secondary email address', N'rt_secondary_email', 1, 0, 0, NULL, CAST(0x0000A601008BCCD1 AS DateTime), 80291, CAST(0x0000AA3D00C637D1 AS DateTime))
INSERT [dbo].[RecipientTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'View Only', N'View Only', N'rt_view_only', 1, 0, 0, NULL, CAST(0x0000A60200EA8E09 AS DateTime), 164269, CAST(0x0000A9F401634712 AS DateTime))
SET IDENTITY_INSERT [dbo].[RecipientTypes] OFF
SET IDENTITY_INSERT [dbo].[SubSectors] ON 

INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, 1, N'Automative', N'Automative', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, 1, N'Clothing,Textile, Leather and Footwear', N'Clothing, Textile, Leather and Footwear', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, 1, N'Metal, Fabrication, Capital and Rail transport equipment', N'Metal, Fabrication,Capital and Rail transport equipment', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (4, 1, N'Agro-processing', N'Agro-processing', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, 1, N'Wood products', N'Wood products', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, 1, N'Chemicals, Pharmaceuticals, Plastics and Cosmetics', N'Chemicals, Pharmaceuticals, Plastics and Cosmetics', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, 2, N'Green Industries', N'Green Industries', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, 2, N'Business Process Outsourcing (BPO) services', N'Business Process Outsourcing (BPO) services', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, 2, N'Water and Sanitation', N'Water and Sanitation', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, 2, N'Marine manufacturing and associated services', N'Marine manufacturing and associated services', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (11, 2, N'Information and Communication Technology (ICT)', N'Information and Communication Technology (ICT)', NULL, 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (12, 3, N'Tourism accommodation/ resorts', N'Tourism accommodation/ resorts', N'Subtourism_accommodation_resorts', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SubSectors] ([Id], [FocusAreaId], [SubSectorName], [SubSectorDescription], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (13, 4, N'Research on industrial innovation', N'Research on industrial innovation', N'Subresearch_on_industrial_innovation', 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SubSectors] OFF
SET IDENTITY_INSERT [dbo].[SystemUserTypes] ON 

INSERT [dbo].[SystemUserTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Silhle', N'Individual', N'typ_silhle', 0, 1, 0, NULL, CAST(0x0000A60C00A377F1 AS DateTime), NULL, CAST(0x0000A60C00A39B0E AS DateTime))
INSERT [dbo].[SystemUserTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Sihle', N'Customer', N'typ_sihle', 0, 1, 0, NULL, CAST(0x0000A61000F4B4EC AS DateTime), NULL, CAST(0x0000A61000F4E17C AS DateTime))
SET IDENTITY_INSERT [dbo].[SystemUserTypes] OFF
SET IDENTITY_INSERT [dbo].[TitleTypes] ON 

INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Mr', N'Mr', N'tt_Mr', 1, 0, 0, 1, CAST(0x0000A5FD012F4CEC AS DateTime), NULL, CAST(0x0000AA5B00DFF3AF AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Mrs', N'Mrs', N'tt_Mrs', 1, 0, 0, 1, CAST(0x0000A60200F7362D AS DateTime), 121473, CAST(0x0000A81900C4B11B AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (5, N'Ms', N'Miss', N'tt_ms', 1, 0, 0, NULL, NULL, NULL, CAST(0x0000A66C00F89CE3 AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (6, N'Dr', N'Doctor', N'tt_dr', 1, 0, 0, 1, CAST(0x0000A5AA00A54551 AS DateTime), 1, CAST(0x0000A64A00DBE713 AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (7, N'Miss', N'Missus', N'tt_miss', 1, 0, 0, 1, CAST(0x0000A60200FC5409 AS DateTime), 149125, CAST(0x0000A8B800B476A8 AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (8, N'Prof', N'Professor', N'tt_prof', 1, 0, 0, 1, CAST(0x0000A60900C74160 AS DateTime), 1, CAST(0x0000A62F00E0D9B6 AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (9, N'Ps', N'Pastor', N'tt_ps', 1, 0, 0, 1, CAST(0x0000A60900C76F14 AS DateTime), NULL, CAST(0x0000A65F009EAD44 AS DateTime))
INSERT [dbo].[TitleTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (10, N'Pres.', N'President', N'tt_pres.', 1, 0, 0, 1, CAST(0x0000A62D00AE3D27 AS DateTime), NULL, CAST(0x0000A66A00E9DE7D AS DateTime))
SET IDENTITY_INSERT [dbo].[TitleTypes] OFF
SET IDENTITY_INSERT [dbo].[UnitOfmeasureTypes] ON 

INSERT [dbo].[UnitOfmeasureTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (1, N'Square Meters (m2)', N'Option1-Square Meters', N'Option1-(m2)', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[UnitOfmeasureTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (2, N'Square Kilometers (km2)', N'Option2-Square Kilometers', N'Option2-(km2)', 1, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[UnitOfmeasureTypes] ([Id], [Name], [Description], [Key], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (3, N'Hectares (ha)', N'Option3-Hectares', N'Option3-(ha)', 1, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UnitOfmeasureTypes] OFF
