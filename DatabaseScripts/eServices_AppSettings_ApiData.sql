USE [Ekurhuleni]
GO
SET IDENTITY_INSERT [dbo].[AppSettings] ON 

GO

INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (59, N'Meter Consumption URL', N'Interactive Meter Consumption API', N'meter_consumption_url', N'http://196.15.242.177:5555/rest/EMMAssets/resources/assets/', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (61, N'Business Account Number', N'Account Number of Business', N'acb_business_account_number', N'4055327394', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (62, N'ACB Header', N'ACB Header Description', N'acb_header_description', N'Billing ACB NetBank Secure', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (63, N'Support Email', N'Email list to support personnel', N'as_support_email_list', N'jayan.kistasami@calc8.co.za', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (65, N'Customer Accounts Api', N'Venus/ Solar Customer Accounts API', N'api_customer_accounts', N'http://196.15.242.176:5555/rest/EMMCRMIntegration.resources.getAccountNumber/', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (66, N'Account Balance Api', N'Venus/ Solar Account Balance', N'api_account_balance', N'http://196.15.242.176:5555/rest/EMMCRMIntegration/resources/getAccountBalance/', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (67, N'Account Balance Api Username', N'Venus/ Solar Account Balance Api Username', N'api_account_balance_username', N'XET', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppSettings] ([Id], [Name], [Description], [Key], [Value], [IsActive], [IsDeleted], [IsLocked], [CreatedBySystemUserId], [CreatedDateTime], [ModifiedBySystemUserId], [ModifiedDateTime]) VALUES (69, N'Account Balance Api Password', N'Venus/ Solar Account Balance Api Password', N'api_account_balance_password', N'EMM123', 1, 0, 0, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AppSettings] OFF
GO
