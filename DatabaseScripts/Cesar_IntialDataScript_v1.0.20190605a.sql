USE [CommonCore_GoLive]
GO
SET IDENTITY_INSERT [dbo].[tb_AppSettings] ON 

INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (1, 2, N'SmtpServer', N'10.10.10.44', N'The SMTP email server for sending emails.', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (2, 2, N'CesarWebUrl', N'http://10.10.9.48:81/CesarWeb/default.aspx', N'The Cesar web site', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (3, 2, N'CesarRootUrl', N'http://10.10.9.48:81/CesarWeb/default.aspx', N'The location of the login page for Cesar', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (4, 2, N'CesarWebWinLoginDnUrl', N'http://ams4.durban.gov.za:81/CesarWeb/Account/WindowsAuthentication/Winlogin.aspx', N'The location of the windows authentication login screen.', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (5, 2, N'CesarWebFormLoginIpUrl', N'http://10.10.9.48:81/CesarWeb/Account/Login.aspx', N'The location of the forms login page.d', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (6, 2, N'AutoRedirectToWinLogin', N'true', N'Automatic redirection of the user to the windows login page.', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (8, 2, N'CesarWebWinLoginIpUrl', N'http://10.10.9.48:81/CesarWeb/Account/WindowsAuthentication/WinLogin.aspx', N'The ip Url location of the wndows authentication site', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (9, 2, N'ScheduledTimeInterval', N'10', N'The time interval to check the database for scheduled tasks.', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (12, 2, N'SmtpPort', N'25', N'The port number of the SMTP server.', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (13, 2, N'SmtpUsername', N'AppsProd', N'The username for the SMTP server.', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (14, 2, N'SmtpPassword', N'zcjs7spE!F', N'The password for the SMTP server.', 1, 0)
INSERT [dbo].[tb_AppSettings] ([AppSettingID], [ApplicationID], [AppKey], [AppValue], [Description], [IsActive], [IsDeleted]) VALUES (23, 2, N'CesarExchangeServicesInterval', N'5', N'The polling interval for retreving and sending emails.', 1, 0)
SET IDENTITY_INSERT [dbo].[tb_AppSettings] OFF
SET IDENTITY_INSERT [dbo].[tb_EmailAccounts] ON 

INSERT [dbo].[tb_EmailAccounts] ([EmailAccountId], [ApplicationId], [EmailAccountDescription], [EmailAddress], [Username], [Password], [ServiceUrl], [PasswordExpiredDays], [PasswordExpiredDate], [PasswordNeverExpires], [DeleteServerEmail], [CanRecieve], [CanSend], [CheckUndeliverable], [AccountFailureCount], [MaxFailureCount], [DisableAccount], [IsActive], [IsDeleted], [IsLocked]) VALUES (2, 9, N'Correspondence Revline (DynaTech)', N'revlinenium@durban.gov.za', N'revlinenium', N'second2@', N'https://webmail.durban.gov.za/ews/exchange.asmx', 20, CAST(0x0000A30D00000000 AS DateTime), 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[tb_EmailAccounts] ([EmailAccountId], [ApplicationId], [EmailAccountDescription], [EmailAddress], [Username], [Password], [ServiceUrl], [PasswordExpiredDays], [PasswordExpiredDate], [PasswordNeverExpires], [DeleteServerEmail], [CanRecieve], [CanSend], [CheckUndeliverable], [AccountFailureCount], [MaxFailureCount], [DisableAccount], [IsActive], [IsDeleted], [IsLocked]) VALUES (3, 8, N'Test account', N'jayan.kistasami@durban.gov.za', N'jayan.kistasami', N'password_12', N'https://webmail.durban.gov.za/ews/exchange.asmx', 365, CAST(0x0000A33200000000 AS DateTime), 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[tb_EmailAccounts] ([EmailAccountId], [ApplicationId], [EmailAccountDescription], [EmailAddress], [Username], [Password], [ServiceUrl], [PasswordExpiredDays], [PasswordExpiredDate], [PasswordNeverExpires], [DeleteServerEmail], [CanRecieve], [CanSend], [CheckUndeliverable], [AccountFailureCount], [MaxFailureCount], [DisableAccount], [IsActive], [IsDeleted], [IsLocked]) VALUES (5, 7, N'noreply', N'noreply@durban.gov.za', N'noreply', N'second1$', N'https://webmail.durban.gov.za/ews/exchange.asmx', 365, CAST(0x0000A33200000000 AS DateTime), 1, 0, 1, 1, 1, 0, 3, 0, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[tb_EmailAccounts] OFF
SET IDENTITY_INSERT [dbo].[tb_EmailExceptionTypes] ON 

INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (1, N'Standard', N'Standard message type.', N'email_exception_standard', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (3, N'Undeliverable Mail', N'Email was not delivered.', N'email_exception_undeliverable_mail', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (4, N'Out Of Office', N'Out of office reply.', N'email_exception_out_of_office', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (5, N'QuotaExceeded', N'Mailbox quota exceeded.', N'email_exception_quota_exceeded', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (6, N'Delayed', N'There was a delay with sending the email.', N'email_exception_delayed', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (7, N'Mailbox Is Full', N'Mailbox is at max capacity.', N'email_exception_mailbox_is_full', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (8, N'Timed Out', N'Sending timed out.', N'email_exception_timed_out', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (9, N'Transient Delivery Failure', N'Temporary delivery failure.', N'email_exception_transient_delivery_failure', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (10, N'Failure Notice', N'Failure notice received.', N'email_exception_failure_notice', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (11, N'Unknown User', N'User is not recognised.', N'email_exception_unknown_user', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (12, N'Invalid Recipients', N'One or more recipients are invalid.', N'email_exception_invalid_recipients', 1, 0)
INSERT [dbo].[tb_EmailExceptionTypes] ([EmailExceptionTypeId], [EmailExceptionTypeName], [EmailExceptionTypeDescription], [EmailExceptionTypeKey], [IsActive], [IsDeleted]) VALUES (13, N'Unauthorized', N'The account has invalid credentials.', N'email_exception_unauthorized', 1, 0)
SET IDENTITY_INSERT [dbo].[tb_EmailExceptionTypes] OFF
SET IDENTITY_INSERT [dbo].[tb_EmailTemplates] ON 

INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (1, 1, N'Open for Capture', N'Mail to verify plans', N'pma_open_for_capture', N'no-reply@durban.gov.za', N'EPM: Scorecard and SDBIP Quarterly Reporting - Q1', N'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head>    <title></title>    <style type="text/css">        body        {            font-family: "Helvetica Neue" , "Lucida Grande" , "Segoe UI" , Arial, Helvetica, Verdana, sans-serif;            font-size: smaller;        }        .header        {            background-color: #7d7dff;            color: #ffffff;            font-weight: bold;            padding: 5px 5px 5px 5px;        }        .main        {            padding: 5px 5px 5px 5px;            border-top: 1px solid grey;        }    </style></head><body>    <div class="header">        EPMA - Quarterly Capture    </div>    <div class="main">        <strong>Dear Sir/ Madam,</strong>        <p>            Kindly note that the EPM system is open for capturing your actuals.</p>        <p>            The system will lock on the 14th October 2012.</p>        <p>            Please be advised of the following changes to the Organisational Performance Monitoring            section w.r.t the Scorecard and SDBIP:</p>        <ul>            <li>Cindy O&rsquo;Brien is temporarily no longer with PME and Rekha Singh will be assisting                in the OPM&amp;E Manager post until further notice.</li>            <li>Plan 1, 3, 8 and 9 will be co-ordinated by Thandeka and Radika (ext 14118, <a href="mailto:OrganisationalPerformance@durban.gov.za">OrganisationalPerformance@durban.gov.za</a>                and ext 14189, <a href="mailto:radika.sewnarain@durban.gov.za">radika.sewnarain@durban.gov.za</a>)</li>            <li>Plan 2, 4 and 5 will be co-ordinated by Zandile (ext 14123, <a href="mailto:zandile.mdletshe@durban.gov.za">zandile.mdletshe@durban.gov.za</a>)</li>            <li>Plan 6 and 7 will be co-ordinated by Sli (ext 27209, <a href="mailto:slindile.mthiyane@durban.gov.za">slindile.mthiyane@durban.gov.za</a>)</li>        </ul>        <p>            Should you need any assistance kindly contact your plan rep or PME co-ordinator            of your plan.</p>        <p>            <strong>Thank you and kind regards,</strong><br />            Performance Monitoring and Evaluation Unit</p>    </div>    <div class="header">        &nbsp;    </div></body></html>', N'FALSE', 1, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (11, 1, N'Users who have not Captured Actuals', N'Users who have not Captured Actuals', N'pma_actuals_not_captued', N'no-reply@durban.gov.za', N'EPM: Scorecard and SDBIP Quarterly Reporting', N'<html><head><title></title><style type="text/css">body{font-family: "Helvetica Neue" , "Lucida Grande" , "Segoe UI" , Arial, Helvetica, Verdana, sans-serif;font-size: smaller;}.header{background-color: #7d7dff;color: #ffffff;font-weight: bold;padding: 5px 5px 5px 5px;text-align: center;}.main{padding: 5px 5px 5px 5px;border-top: 1px solid grey;}</style></head><body><div class="header">EPMA - Quarterly Capture</div><div class="main">Dear <b>#USER#</b>,<br /><br />You are reminded that there are 5 working days remaining to capture your actuals.<br />The actuals for the following KPIs/Projects have not been updated:<br /><br /><div style="font-size: 0.9em;">#OUTSTANDINGACTUALS#</div><br /><br />Should you require assistance please contact your plan rep or PME co-ordinator (detailsbelow):<br /><ul><li>Plan 1, 3, 8 and 9 is co-ordinated by Thandeka and Radika (ext 14118, <a href="OrganisationalPerformance@durban.gov.za">OrganisationalPerformance@durban.gov.za</a> and ext 14189, <a href="radika.sewnarain@durban.gov.za">radika.sewnarain@durban.gov.za</a>)</li><li>Plan 2, 4 and 5 is co-ordinated by Zandile (ext 14123, <a href="zandile.mdletshe@durban.gov.za">zandile.mdletshe@durban.gov.za</a>)</li><li>Plan 6 and 7 is co-ordinated by Sli (ext 27209, <a href="slindile.mthiyane@durban.gov.za">slindile.mthiyane@durban.gov.za</a>)</li></ul>Thank you and kind regards,<br /><b>Performance Monitoring and Evaluation Unit</b></div></body></html>', N'#OUTSTANDINGACTUALS#,#USER#', 1, NULL, NULL, 1, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (13, 1, N'Quarterly Capture - 5 day', N'Quarterly Capture - 5 day', N'pma_quarterly_capture_5_day', N'no-reply@durban.gov.za', N'EPM: Scorecard and SDBIP Quarterly Reporting', N'<html> <head> <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> <title></title> <style type="text/css"> body, table, td, tr { font-family: Verdana; font-size: smaller; } .header { background-color: #7d7dff; color: #ffffff; font-weight: bold; padding: 5px 5px 5px 5px; } .main { padding: 5px 5px 5px 5px; border-top: 1px solid grey; }  table { width: 70%; }  td { border: 1px solid black; padding: 2px; font-size: 1.2em; } </style> </head> <body> <div class="header"> EPMA - Quarterly Capture </div> <div class="main"> <strong>Dear Sir/ Madam,</strong> <p> 
You have 5 working days left for capturing of quarter 4 performance results into the EPMA system. Please note that results not reported within 10 working days after the end of the quarter will not be accepted. Should we not receive information on time, we will be reporting as such and the relevant official will become accountable for any repercussions. These results can be retained and presented to the auditors when they are auditing your scorecards. Kindly also note that if there has been no reporting, the target will be considered as not achieved. Once the reporting period is closed, changes to results reported will then only be accepted from the auditors. Requests received from the Units for changes to statistics will not be actioned. Please note that these results will also be audited by the AG. Therefore, kindly ensure that all reporting is accurate and that evidence is uploaded/ available to support results reported.
</p>
<p>
	Please note that if you are experiencing problems with the EPMA system, kindly advise us immediately (within the 10-day period) so that we may rectify the problem/ assist. 
The system will close for capturing on 14th July 2016.

</p>
<p>
Further, please note the following:
</p>
<ol>
	<li>If there is under-achievement, a reason and a measure to improve is COMPULSORY.</li>
	<li>Reasons and measures must be relevant i.e. the reason should tell us why you have not achieved and the measure must tell us what corrective action you intend taking to remedy the under-performance. This corrective action should be in the form of an action plan and must be as comprehensive as possible, detailing steps that will be taken to achieve the target going forward. Per the AG, COGTA and audit committee requirements, brief comments/ explanations are not sufficient. Please capture this action plan in the measures to improve field or if required, attach a document which details these steps.</li>
	<li>Please upload all your evidence into the system. If files are larger than 3mb, you will not be able to upload these. Should this be the case, please indicate in the system that the file is too large to upload and provide details of the person who has the evidence. Should this not be done, even if the target has been achieved, PME will change the status to not achieved. </li>
	<li>If there is an over-achievement, please provide a reason for the over-achievement. This can be captured in the reason for under-achieving field for now.
Please also note that the wireless connection is slower than when you connect via the network cable. To enhance the speed, please use the network cable instead of the wireless connection.</li>
</ol
<p>Do not forget to Press F11 for a full screen view.</p>

<p>
Should you require assistance please contact your plan rep or PME co-ordinator (details below):
</p>
	<table> <tr> <td> <b>Plan number</b> </td> <td> <b>Name</b> </td> </tr> 
	<tr> <td> Plan 1 & 5 </td> <td> Precious Hlongwane</td> </tr> 
<tr> <td> Plan 2 & Moses Mabhida Stadium </td> <td>Bongiwe Khumalo</td>   </tr> 
<tr> <td> Plan 3 </td> <td> Ayanda Ndlovu </td>   </tr> 
<tr> <td> Plan 4 </td> <td> Silindile Mfeka </td>   </tr> 
<tr> <td> Plan 6 </td> <td> Nomyamezelo Sibiya </td>  </tr> 
<tr> <td> Plan 7 & ICC</td> <td> Nontobeko Nkosi</td>   </tr> 
<tr> <td> Plan 8 & Ushaka</td> <td> Sambulo Ndwandwe </td>   </tr> 
</table> 
<br>
Regards<br>
PME Unit
</div> </body> </html> 
 ', N'FALSE', 1, NULL, NULL, 1, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (15, 1, N'Quarterly Capture - 1 day reminder to lock', N'Quarterly Capture - 1 day reminder to lock', N'pma_quarterly_capture_1_day_reminder_lock', N'no-reply@durban.gov.za', N'EPM: Scorecard and SDBIP Quarterly Reporting', N'<html> <head> <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> <title></title> <style type="text/css"> body, table, td, tr { font-family: Verdana; font-size: smaller; } .header { background-color: #7d7dff; color: #ffffff; font-weight: bold; padding: 5px 5px 5px 5px; } .main { padding: 5px 5px 5px 5px; border-top: 1px solid grey; }  table { width: 70%; }  td { border: 1px solid black; padding: 2px; font-size: 1.2em; } </style> </head> <body> <div class="header"> EPMA - Quarterly Capture </div> <div class="main"> <strong>Dear Sir/ Madam,</strong> <p> 
Thank you for updating the EPMA system with your KPI/Project actuals.
You are reminded that the system closes for capturing at 4pm tomorrow, 16th April. Please make any remaining changes or capture your statistics urgently.
</p> 
<p>
Should you require assistance please contact your plan rep or PME co-ordinator (details below):
</p>

	
	<table> <tr> <td> <b>Plan number</b> </td> <td> <b>Name</b> </td> <td> <b>Telephone</b> </td> </tr> 
	<tr> <td> Plan 1 </td> <td> Ushantha Naidoo</td> <td> 031-3114118 </td> </tr> 
	<td> Plan 2 & Moses Mahbida Stadium </td> <td> Philani Mpofana </td> <td> 031-3227217</td> </tr> 
	<tr> <td> Plan 3 </td> <td> Philile Gwala </td>  <td> 031-3227217 </td> </tr> 
<tr> <td> Plan 4 </td> <td> Nthatile Nakin </td>  <td> 031-3227217 </td> </tr> 
<tr> <td> Plan 5 </td> <td> Senzo Ngcobo </td>  <td> 031-3114123 </td> </tr> 
<tr> <td> Plan 6 </td> <td> Thabani Mthombeni</td>  <td> 031-3114123 </td> </tr> 
<tr> <td> Plan 7 </td> <td> Ebrahim Nabi  </td>  <td> 031-3114118 </td> </tr> 
<tr> <td> Plan 8 </td> <td> Sambulo Ndwandwe </td>  <td> 031-3114123 </td> </tr> 
<tr> <td> Plan ICC & Ushaka</td> <td> Ushantha Naidoo </td>  <td> 031-3114118 </td> </tr> 
</table> 

Per the City Manager’s Circular, please note that if you do not upload your evidence or provide an indication of where this can be found, the target will be considered as not achieved for reporting purposes.
<p>
All co-ordinators can also be contacted via Outlook.
</p>
Thank you and kind regards,<br>
Performance Monitoring and Evaluation Unit
</div> </body> </html> 
 ', N'FALSE', 1, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (17, 1, N'Quarterly Capture - reminder day of lock', N'Quarterly Capture - reminder day of lock', N'pma_quarterly_capture_reminder_day_of_lock', N'no-reply@durban.gov.za', N'EPM: Scorecard and SDBIP Quarterly Reporting', N'<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <title></title>
  <style type="text/css">
        body        {            font-family: "Helvetica Neue" , "Lucida Grande" , "Segoe UI" , Arial, Helvetica, Verdana, sans-serif;            font-size: smaller;        }        .header        {            background-color: #7d7dff;            color: #ffffff;            font-weight: bold;            padding: 5px 5px 5px 5px;        }        .main        {            padding: 5px 5px 5px 5px;            border-top: 1px solid grey;        }    </style>
</head>

<body>

<div class="header">
EPMA - Quarterly Capture </div>

<div class="main">
<strong>Dear Sir/ Madam,</strong> 

<p style="line-height:1em;"></p>

<p>Good day</p>

<p></p>

<p>Kindly note that the Enterprise Monitoring system will lock for capture
today at 24h00.</p>

<p>There will be no extensions to the deadline. Any KPIs/ Projects that have
not been updated will be reported to Council and Audit Committee as not
submitted.</p>

<p></p>

<p class="MsoNormal">Should you have any queries, please contact your
co-ordinators as follows:</p>

<table class="MsoNormalTable" border="0" cellspacing="0" cellpadding="0"
style="border-collapse:collapse">
  <tbody>
    <tr>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><b><u>Plan number</u></b></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><b><u>Name</u></b></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><b><u>E-mail</u></b></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><b><u>Telephone</u></b></p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">2,4,5 and UShaka</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">Sinenhlanhla Tsekiso</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><a
        href="mailto:Zandile.mdletshe@durban.gov.za">Sinenhlanhla.Tsekiso@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">031-3114208</p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">ICC, 6, and 7</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">Zama Gomes</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><a
        href="mailto:Precious.hlongwane@durban.gov.za">Zama.Gomes@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">031-3114123</p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">1,3 and 8</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">Gugu Hlongwa</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><a
        href="mailto:Gugu.hlongwa@durban.gov.za">Gugu.hlongwa@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">031-3114208</p>
      </td>
    </tr>
  </tbody>
</table>

<p></p>

<p class="MsoNormal"><strong>Thank you and kind regards</strong>,<br />
Nevana Srikissoon<br />
Acting Manager: Organisational Performance Monitoring <br />
Performance Monitoring &amp; Evaluation Unit<br />
eThekwini Municipality<br />
Tel: 031-322 7209<br />
E-mail: <a
href="mailto:Nevana.Srikissoon@durban.gov.za">Nevana.Srikissoon@durban.gov.za</a></p>
</div>

<div class="header">
</div>
</body>
</html>', N'FALSE', 1, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (38, 1, N'onedaybeforelockdown', N'One day before lockdown with outstanding actuls', N'pma_one_day_before_lockdown', N'no-reply@durban.gov.za', N'EPM: Scorecard and SDBIP Quarterly Reporting', N'<html><head></head>    <body style="font-family: Verdana; font-size: 12; padding: 2px;">        <div style="width: 100%;">            <div style="width: 100%; text-align: center; background-color: lightblue; padding: 4px; font-size: 14;"><b>EPM: Scorecard & SDBIP Quarterly Reporting</b></div>            <div style="width: 100%; padding: 4px;">                Dear <b>#USER#</b>,<br/><br/>                You are kindly reminded that the EPM system will only be open for 1 more day for the capture of your actuals. The actuals for the following items have not been updated:<br/><br/>                #OUTSTANDINGACTUALS#<br/><br/>                The system will lockdown on <b>Friday, 2012/07/13 COB</b>.<br/><br/>                Should you experience any challenges, please email <a href="mailto:organisationalperformance@durban.gov.za">Organisational Performance</a> and c.c. <a href="mailto:obrienc@durban.gov.za">Cindy O''Brian</a> as well as your Plan Representative. Alternatively, access the guide on the Performance Monitoring and Evaluation Portal for assistance.<br/><br/>                                <b>Please note that late submissions will not be accepted.</b><br/><br/>                                <p>Thank you and kind regards,<br/><b>Performance Monitoring & Evaluation Unit</b>.</p>            </div>            <div style="width: 100%; text-align: center; background-color: lightblue; padding: 4px; font-size: 14;">&nbsp;</div>        </div>    </body></html>', N'#user#,#outstandingactuals#', 1, NULL, NULL, 1, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (39, 1, N'Generated Password', N'This template is for generated password.', N'cesar_generated_password', N'no-reply@durban.gov.za', N'CESAR - Generated Password', N'    <style type="text/css">        body        {            font-family: "Helvetica Neue" , "Lucida Grande" , "Segoe UI" , Arial, Helvetica, Verdana, sans-serif;        }        .header        {            background-color: #33338b;            color: #ffffff;            font-weight: bold;            padding: 10px 10px 10px 10px;        }        .main        {            padding: 10px 10px 10px 10px;            border-top: 1px solid grey;        }    </style>    <title>CESAR - Generated Password - #DATE#</title>    
<div class="header">        CESAR - Generated Password - #DATE#    </div>    
<div class="main">        <b>Dear #FULLNAME#,</b>       &nbsp; Test<br />
        <br />
        Your login details are: <br />
        Username: #USERNAME#<br />
        Password: #PASSWORD#        <br />
        <br />
        Kind regards,<br />
        <b>CESAR Administrators.</b>        <br />
        <br />
        NB: You may adjust your email subscriptions via the CSAR web portal, please contact your friendly CESAR administrator.    </div>', N'#FULLName#,#DATE#,#USERNAME#,#PASSWORD#', 1, NULL, NULL, 1, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (40, 1, N'Testing Emails', N'This template tests the email scheduler.', N'cesar_test_email', N'noreply@durban.gov.za', N'CESAR: Email Test', N'<html><header></header><body>Dear <b>#FULLNAME#</b></body></html>', N'#FULLNAME#', 1, NULL, NULL, 1, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (41, 1, N'Open for Capture - Q3', N'Mail to notify users system open for capture', N'pma_open_for_capture', N'no-reply@durban.gov.za', N'EPM:Scorecard and SDBIP Capture', N'<html> <head> <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> <title></title> <style type="text/css"> body, table, td, tr { font-family: Verdana; font-size: smaller; } .header { background-color: #7d7dff; color: #ffffff; font-weight: bold; padding: 5px 5px 5px 5px; } .main { padding: 5px 5px 5px 5px; border-top: 1px solid grey; }  table { width: 70%; }  td { border: 1px solid black; padding: 2px; font-size: 1.2em; } </style> </head> <body> <div class="header"> EPMA - Quarterly Capture </div> <div class="main"> <strong>Dear Sir/ Madam,</strong> <p> 
The EPMA system is now open for capturing of quarter 3 information. Please note that the PME unit will be enforcing the 10 working day timeframe for reporting i.e. results not reported within 10 working days after the end of the quarter will not be accepted. Should we not receive information on time, we will be reporting as such and the relevant official will become accountable for any repercussions. These results can be retained and presented to the auditors when they are auditing your scorecards. Kindly also note that if there has been no reporting, the target will be considered as not achieved. Once the reporting period is closed, changes to results reported will then only be accepted from the auditors. Requests received from the Units for changes to statistics will no longer be actioned. </p> 
<p> Please note that if you are experiencing problems with the EPMA system, kindly advise us immediately (within the 10 day period) so that we may rectify the problem/ assist. There have been changes to the KPI’s and projects as a result of the mid-term amendments so there may thus be discrepancies. 
</p> 
<p>
Kindly proceed to capture your statistics for quarter 3. The system will close for capturing on 16th April 2015.
</p>
<ol> <li>If there is under-achievement, a reason and a measure to improve is COMPULSORY </li> 
	<li>Reasons and measures must be relevant i.e. the reason should state why you have not achieved and the measure must state what corrective action you intend taking to remedy the under-performance.This corrective action should be in the form of an action plan, including information about the responsible official and date by which they plan will be auctioned. Per COGTA and audit committee requirements, brief comments/ explanations are no longer sufficient. Please capture this action plan in the measures to improve field or if required, attach a document which details these steps.</li> 
	<li>Please upload all your evidence into the system. If files are larger than 3mb, you will not be able to upload these. Should this be the case, please indicate in the system that the file is too large to upload and provide details of the person who has the evidence. Should this not be done, even if the target has been achieved, PME will change the status to not achieved.  </li> 
	<li>If there is a significant over-achievement i.e. in excess of 5% of the target, kindly provide a reason for the over-achievement. This can be captured in the reason for under-achievement field.</li> </ol> </p> 
	<p> Please also note that the wireless connection is slower than when you connect via the network cable. To enhance the speed, please use the network cable instead of the wireless connection.Do not forget to Press F11 for a full screen view.</p> <p> Should you have any queries, please contact your co-ordinators as follows:</p> 
	
	<table> <tr> <td> <b>Plan number</b> </td> <td> <b>Name</b> </td> <td> <b>Telephone</b> </td> </tr> 
	<tr> <td> Plan 1 </td> <td> Ushantha Naidoo</td> <td> 031-3114118 </td> </tr> 
	<td> Plan 2 & Moses Mahbida Stadium </td> <td> Philani Mpofana </td> <td> 031-3227217</td> </tr> 
	<tr> <td> Plan 3 </td> <td> Philile Gwala </td>  <td> 031-3227217 </td> </tr> 
<tr> <td> Plan 4 </td> <td> Nthatile Nakin </td>  <td> 031-3227217 </td> </tr> 
<tr> <td> Plan 5 </td> <td> Senzo Ngcobo </td>  <td> 031-3114123 </td> </tr> 
<tr> <td> Plan 6 </td> <td> Ebrahim Nabi </td>  <td> 031-3114123 </td> </tr> 
<tr> <td> Plan 7 </td> <td> Thabani Mthombeni </td>  <td> 031-3114118 </td> </tr> 
<tr> <td> Plan 8 </td> <td> Sambulo Ndwandwe </td>  <td> 031-3114123 </td> </tr> 
<tr> <td> Plan ICC & Ushaka</td> <td> Ushantha Naidoo </td>  <td> 031-3114118 </td> </tr> 

</table> 
<p>
All co-ordinators can also be contacted via Outlook.
</p>

Regards<br>
PME Unit
</div> </body> </html> 
 ', N'FALSE', 1, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (46, 1, N'Quarterly Capture - Delegation Reminder', N'Quarterly Capture - Mail to Delegators/Delegatees', N'pma_quarterly_capture_delegation_reminder', N'no-reply@durban.gov.za', N'EPMA: Delegation Notification', N'<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
  <title></title>
</head>

<body style="font-family: Verdana; font-size: 12; padding: 2px;">

<div style="width: 100%;">

<div
style="width: 100%; text-align: center; background-color: lightblue; padding: 4px; font-size: 14;">
<b>EPM: Scorecard &amp; SDBIP Quarterly Reporting</b></div>

<div style="width: 100%; padding: 4px;">
Dear <b>#USER#</b>,<br>
<br>


<p>Please be advised that you have delegation/s for the following:</p>

<p><br>
#DELEGATEELIST#</p>

<p></p>

<p>Should you require changes to your delegation/s, kindly email changes to #OPMMANAGER#.</p>

<p></p>

<p>NB. Based on queries raised by the AG Auditor on the system, we will not set
delegations for a period longer than one year. You will be required to request
for an extension. You will therefore receive an email every quarter on the
status of your delegation.</p>

<p></p>

<p>Thank You</p>

<p>EPMA Admin</p>

<p></p>

<p><br>
</p>
</div>
</div>
</body>
</html>', N'#USER#,#DELEGATEELIST#,#OPMMANAGER#', 1, NULL, NULL, 1, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (47, 1, N'Open for Capture - Q4', N'Mail to notify users system open for capture', N'pma_open_for_capture', N'no-reply@durban.gov.za', N'EPM:Scorecard and SDBIP Capture', N'<html> <head> <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> <title></title> <style type="text/css"> body, table, td, tr { font-family: Verdana; font-size: smaller; } .header { background-color: #7d7dff; color: #ffffff; font-weight: bold; padding: 5px 5px 5px 5px; } .main { padding: 5px 5px 5px 5px; border-top: 1px solid grey; }  table { width: 70%; }  td { border: 1px solid black; padding: 2px; font-size: 1.2em; } </style> </head> <body> <div class="header"> EPMA - Quarterly Capture </div> <div class="main"> <strong>Dear Sir/ Madam,</strong> <p> 
The EPMA system is now open for capturing of Quarter 4 information. Please note that the PME unit will be enforcing the 10 working day timeframe for reporting i.e. results not reported within 10 working days after the end of the quarter will not be accepted. Should we not receive information on time, we will be reporting as such and the relevant official will become accountable for any repercussions. These results can be retained and presented to the auditors when they are auditing your scorecards. Kindly also note that if there has been no reporting, the target will be considered as not achieved. Once the reporting period is closed, changes to results reported will then only be accepted from the auditors. Requests received from the Units for changes to statistics will no longer be actioned. </p> 
<p> Please note that if you are experiencing problems with the EPMA system, kindly advise us immediately (within the 10 day period) so that we may rectify the problem/ assist. There have been changes to the KPI’s and projects as a result of the mid-term amendments so there may thus be discrepancies.
</p> 
<p>
Kindly proceed to capture your statistics for quarter 4. The system will close for capturing on 14th July 2015.
</p>
<ol> <li>If there is under-achievement, a reason and a measure to improve is COMPULSORY </li> 
	<li>Reasons and measures must be relevant i.e. the reason should tell us why you have not achieved and the measure must tell us what corrective action you intend taking to remedy the under-performance. This corrective action should be in the form of an action plan, including information about the responsible official and date by which they plan will be auctioned. Per COGTA and audit committee requirements, brief comments/ explanations are no longer sufficient. Please capture this action plan in the measures to improve field or if required, attach a document which details these steps.</li> 
	<li>Please upload all your evidence into the system. If files are larger than 3mb, you will not be able to upload these. Should this be the case, please indicate in the system that the file is too large to upload and provide details of the person who has the evidence. Should this not be done, even if the target has been achieved, PME will change the status to not achieved.  </li> 
	<li>If there is a significant over-achievement i.e. in excess of 5% of the target, please provide a reason for the over-achievement. This can be captured in the reason for under-achieving field.</li> </ol> </p> 
	<p> Please also note that the wireless connection is slower than when you connect via the network cable. To enhance the speed, please use the network cable instead of the wireless connection. Do not forget to Press F11 for a full screen view.</p> <p> Should you have any queries, please contact your co-ordinators as follows:</p> 
	
	<table> <tr> <td> <b>Plan number</b> </td> <td> <b>Name</b> </td> <td> <b>Telephone</b> </td> </tr> 
	<tr> <td> Plan 1 </td> <td> Ushantha Naidoo</td> <td> 031-3222927 </td> </tr> 
	<td> Plan 2 & Moses Mahbida Stadium </td> <td> Philani Mpofana </td> <td> 031-3227217</td> </tr> 
	<tr> <td> Plan 3 </td> <td> Senzo Ngcobo </td>  <td> 031-3114123 </td> </tr> 
<tr> <td> Plan 4 </td> <td> Nthatile Nakin </td>  <td> 031-3227217 </td> </tr> 
<tr> <td> Plan 5 </td> <td> Senzo Ngcobo/Nontobeko Nkosi </td>  <td> 031-3114123 </td> </tr> 
<tr> <td> Plan 6 </td> <td> Thabani Mthombeni </td>  <td> 031-3114118 </td> </tr> 
<tr> <td> Plan 7 </td> <td> Ebrahim Nabi</td>  <td> 031-3114123</td> </tr> 
<tr> <td> Plan 8 </td> <td> Sambulo Ndwandwe </td>  <td> 031-3114123 </td> </tr> 
<tr> <td> Plan ICC & Ushaka</td> <td> Ushantha Naidoo </td>  <td> 031-3222927 </td> </tr> 

</table> 
<p>
All co-ordinators can also be contacted via Outlook.
</p>

Regards<br>
PME Unit
</div> </body> </html> 
 ', N'FALSE', 1, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (49, 1, N'Users who have not Captured Actuals', N'Users who have not Captured Actuals', N'pma_actuals_not_captued', N'no-reply@durban.gov.za', N'EPM: Scorecard and SDBIP Quarterly Reporting', N'<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
  <title></title>
  <style type="text/css">
body {font-family: "Helvetica Neue" , "Lucida Grande" , "Segoe UI" , Arial, Helvetica, Verdana, sans-serif;font-size: smaller;}.header{background-color: #7d7dff;color: #ffffff;font-weight: bold;padding: 5px 5px 5px 5px;text-align: center;}.main{padding: 5px 5px 5px 5px;border-top: 1px solid grey;}
  </style>
</head>

<body>

<div class="header">
EPMA - Quarterly Capture</div>

<div class="main">
Dear <b>#USER#</b>,<br>
<br>
You are reminded that the system will lock on Monday, 14 October 2013. 

<p>The actuals for the following KPIs/Projects have not been updated:<br>
<br>
</p>

<div style="font-size: 0.9em;">
#OUTSTANDINGACTUALS#</div>
<br>
Should you have any queries, please contact your co-ordinators as follows: 

<p></p>

<table class="MsoNormalTable" border="0" cellspacing="0" cellpadding="0"
style="border-collapse:collapse">
  <tbody>
    <tr>
      <td width="213" valign="top"
      
            style="width:159.6pt; border:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" 
            ><p
        class="MsoNormal"><u><b>Plan number</b></u></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><b><u>Name</u></b></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><b><u>E-mail</u></b></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><b><u>Telephone</u></b></p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      
            style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" 
            class="style1"><p
        class="MsoNormal">Plan 3</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">Sne Tsekiso</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><a
        href="mailto:Zandile.mdletshe@durban.gov.za">Sinenhlanhla.Tsekiso@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">031-3114123</p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      
            style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" 
            class="style1"><p
        class="MsoNormal">Plan 5;8 and Ushaka</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">Precious Hlongwane</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><a
        href="mailto:Precious.hlongwane@durban.gov.za">Precious.Hlongwane@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">031-3114208</p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      
            style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" 
            class="style1"><p
        class="MsoNormal">Plan2;7 </p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">Sibusiso Radebe</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><a
        href="mailto:Sibusiso.Radebe@durban.gov.za">Sibusiso.Radebe@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">031-3227217</p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      
            style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" 
            class="MsoNormal">
          <p  class="MsoNormal">
              Plan1;4;6 &amp; ICC</p>
        </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt">
          <p class="MsoNormal">
          Sli Mthiyane</p>
        </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt">
          <p class="MsoNormal"><a
        href="mailto:Slindile.Mthiyane@durban.gov.za">Slindile.Mthiyane@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt">
          <p class="MsoNormal">
          031-3114118</p>
        </td>
    </tr>
  </tbody>
</table>

<p><br>
</p>

<p class="MsoNormal"><strong>Thank you and kind regards</strong>,<br>
    Sinenhlanhla Tsekiso<br>
    Administrator: Organisational Performance Monitoring <br>
Performance Monitoring &amp; Evaluation Unit<br>
eThekwini Municipality<br>
Tel: 031-311 4123<br>
E-mail: <a
href="mailto:Sinenhlanhla.Tsekiso@durban.gov.za">Sinenhlanhla.Tsekiso@durban.gov.za</a></p>
</div>
</body>
</html>', N'#OUTSTANDINGACTUALS#,#USER#', 1, NULL, NULL, 1, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (54, 1, N'Open for Capture - Q1', N'Mail to notify users system open for capture', N'pma_open_for_capture', N'no-reply@durban.gov.za', N'EPM:Scorecard and SDBIP Capture', N'<html> <head> <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> <title></title> <style type="text/css"> body, table, td, tr { font-family: Verdana; font-size: smaller; } .header { background-color: #7d7dff; color: #ffffff; font-weight: bold; padding: 5px 5px 5px 5px; } .main { padding: 5px 5px 5px 5px; border-top: 1px solid grey; }  table { width: 70%; }  td { border: 1px solid black; padding: 2px; font-size: 1.2em; } </style> </head> <body> <div class="header"> EPMA - Quarterly Capture </div> <div class="main"> <strong>Dear Sir/ Madam,</strong> <p> 
The EPMA system is now open for capturing of quarter 1 information. Please note that the PME unit will be re-enforcing the 10 working day timeframe for reporting i.e. results not reported within 10 working days after the end of the quarter will not be accepted. Should we not receive information on time, we will be reporting as such and the relevant official will become accountable for any repercussions. These results can be retained and presented to the auditors when they are auditing your scorecards. Kindly also note that if there has been no reporting, the target will be considered as not achieved. Once the reporting period is closed, changes to results reported will then only be accepted from the auditors. Requests received from the Units for changes to statistics will no longer be actioned </p> 
<p> Please note that if you are experiencing problems with the EPMA system, kindly advise us immediately (within the 10 day period) so that we may rectify the problem/ assist. Kindly proceed to capture your statistics for quarter 1. The system will close for capturing on 14th October 2015. 

Further, please note the following: 
</p>
<ol> <li>If there is under-achievement, a reason and a measure to improve is COMPULSORY. </li> 
	<li>Reasons and measures must be relevant i.e. the reason should tell us why you have not achieved and the measure must tell us what corrective action you intend taking to remedy the under-performance. This corrective action should be in the form of an action plan and must be as comprehensive as possible, detailing steps that will be taken to achieve the target going forward. Per COGTA and audit committee requirements, brief comments/ explanations are no longer sufficient. Please capture this action plan in the measures to improve field or if required, attach a document which details these steps.</li> 
	<li>Please upload all your evidence into the system. If files are larger than 3mb, you will not be able to upload these. Should this be the case, please indicate in the system that the file is too large to upload and provide details of the person who has the evidence. Should this not be done, even if the target has been achieved, PME will change the status to not achieved.   </li> 
	<li>Please provide a reason for all over-achievements. This can be captured in the reason for under-achieving field for now. </li> 
	<li>Please also note that the wireless connection is slower than when you connect via the network cable. To enhance the speed, please use the network cable instead of the wireless connection. Do not forget to Press F11 for a full screen view. </li>
	<li>Finally, kindly ensure that evidence is available to support all results reported. Lack of evidence will impact on the overall performance.</li>
	
	</ol> </p> 
	
	<table> <tr> <td> <b>Plan number</b> </td> <td> <b>Name</b> </td> <td> <b>Telephone</b> </td> </tr> 
	<tr> <td> Plan 1 </td> <td> Ushantha Naidoo</td> <td> 031-3222927 </td> </tr> 
	<td> Plan 2 & Moses Mahbida Stadium </td> <td> Philani Mpofana </td> <td> 031-3227217</td> </tr> 
	<tr> <td> Plan 3 </td> <td> Senzo Ngcobo </td>  <td> 031-3227209 </td> </tr> 
<tr> <td> Plan 4 </td> <td> Ayanda Ndlovu </td>  <td> 031-32222848 </td> </tr> 
<tr> <td> Plan 5 </td> <td> Nontobeko Nkosi </td>  <td> 031-3227217 </td> </tr> 
<tr> <td> Plan 6 </td> <td> Ayanda Ndlovu </td>  <td> 031-3227217 </td> </tr> 
<tr> <td> Plan 7 </td> <td> Nevana Srikissoon</td>  <td> 031-3227209</td> </tr> 
<tr> <td> Plan 8 </td> <td> Sambulo Ndwandwe </td>  <td> 031-3227209 </td> </tr> 
<tr> <td> Plan ICC & Ushaka</td> <td> Ushantha Naidoo </td>  <td> 031-3222927 </td> </tr> 

</table> 
<p>
All co-ordinators can also be contacted via Outlook.
</p>

Regards<br>
PME Unit
</div> </body> </html> 
 ', N'FALSE', 1, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (59, 1, N'Delegatees who have not captured', N'Mail to notify delegatees to capture', N'pma_actuals_delegatees', N'no-reply@durban.gov.za', N'EPM:Scorecard and SDBIP Capture', N'<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
  <title></title>
  <style type="text/css">
body {font-family: "Helvetica Neue" , "Lucida Grande" , "Segoe UI" , Arial, Helvetica, Verdana, sans-serif;font-size: smaller;}.header{background-color: #7d7dff;color: #ffffff;font-weight: bold;padding: 5px 5px 5px 5px;text-align: center;}.main{padding: 5px 5px 5px 5px;border-top: 1px solid grey;}
  </style>
</head>

<body>

<div class="header">
EPMA - Quarterly Capture</div>

<div class="main">
Dear <b>#USER#</b>,<br>
<br>
You are reminded that the system will lock on Monday, 14 October 2013. 

<p>As a delegatee please ensure that actuals for delegators''&nbsp; KPIs/Projects 
    have been updated<br>
<br>
</p>

<div style="font-size: 0.9em;">
    </div>
<br>
Should you have any queries, please contact your co-ordinators as follows: 

<p></p>

<table class="MsoNormalTable" border="0" cellspacing="0" cellpadding="0"
style="border-collapse:collapse">
  <tbody>
    <tr>
      <td width="213" valign="top"
      
            style="width:159.6pt; border:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" 
            ><p
        class="MsoNormal"><u><b>Plan number</b></u></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><b><u>Name</u></b></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><b><u>E-mail</u></b></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border:solid windowtext 1.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><b><u>Telephone</u></b></p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      
            style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" 
            class="style1"><p
        class="MsoNormal">Plan 3</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">Sne Tsekiso</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><a
        href="mailto:Zandile.mdletshe@durban.gov.za">Sinenhlanhla.Tsekiso@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">031-3114123</p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      
            style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" 
            class="style1"><p
        class="MsoNormal">Plan 5;8 and Ushaka</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">Precious Hlongwane</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><a
        href="mailto:Precious.hlongwane@durban.gov.za">Precious.Hlongwane@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">031-3114208</p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      
            style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" 
            class="style1"><p
        class="MsoNormal">Plan2;7 </p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">Sibusiso Radebe</p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal"><a
        href="mailto:Sibusiso.Radebe@durban.gov.za">Sibusiso.Radebe@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt"><p
        class="MsoNormal">031-3227217</p>
      </td>
    </tr>
    <tr>
      <td width="213" valign="top"
      
            style="width:159.6pt; border:solid windowtext 1.0pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" 
            class="MsoNormal">
          <p  class="MsoNormal">
              Plan1;4;6 &amp; ICC</p>
        </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt">
          <p class="MsoNormal">
          Sli Mthiyane</p>
        </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt">
          <p class="MsoNormal"><a
        href="mailto:Slindile.Mthiyane@durban.gov.za">Slindile.Mthiyane@durban.gov.za</a></p>
      </td>
      <td width="213" valign="top"
      style="width:159.6pt; border-top:none; border-left:none; border-bottom:solid windowtext 1.0pt; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt">
          <p class="MsoNormal">
          031-3114118</p>
        </td>
    </tr>
  </tbody>
</table>

<p><br>
</p>

<p class="MsoNormal"><strong>Thank you and kind regards</strong>,<br>
    Sinenhlanhla Tsekiso<br>
    Administrator: Organisational Performance Monitoring <br>
Performance Monitoring &amp; Evaluation Unit<br>
eThekwini Municipality<br>
Tel: 031-311 4123<br>
E-mail: <a
href="mailto:Sinenhlanhla.Tsekiso@durban.gov.za">Sinenhlanhla.Tsekiso@durban.gov.za</a></p>
</div>
</body>
</html>', N'#USER#', 1, NULL, NULL, 1, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (60, 1, N'Open for Capture - Q2', N'Mail to notify users system open for capture', N'pma_open_for_capture', N'no-reply@durban.gov.za', N'EPM:Scorecard and SDBIP Capture', N'<html> <head> <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> 
<title></title> 
<style type="text/css"> 
body, table, td, tr { font-family: Verdana; font-size: smaller; } 
.header { background-color: #7d7dff; color: #ffffff; font-weight: bold; padding: 5px 5px 5px 5px; } 
.main { padding: 5px 5px 5px 5px; border-top: 1px solid grey; }  table { width: 70%; }  td { border: 1px solid black; padding: 2px; font-size: 1.2em; } 
</style> 
</head> 
<body> 
<div class="header"> EPMA - Quarterly Capture </div> <div class="main"> <strong>Dear Sir/ Madam,</strong> 
<p> 
The EPMA system is now open for capturing of quarter 2 information. Please note that the PME unit will be re-enforcing the 10 working day timeframe for reporting i.e. results not reported within 10 working days after the end of the quarter will not be accepted. Should we not receive information on time, we will be reporting as such and the relevant official will become accountable for any repercussions. These results can be retained and presented to the auditors when they are auditing your scorecards. Kindly also note that if there has been no reporting, the target will be considered as not achieved. Once the reporting period is closed, changes to results reported will then only be accepted from the auditors. Requests received from the Units for changes to statistics will no longer be actioned. 
</p> 

<p> Please note that if you are experiencing problems with the EPMA system, kindly advise us immediately (within the 10 day period) so that we may rectify the problem/ assist. There may be some issues related to the capture of the draft MTA’s into the system – kindly advise us accordingly and we will correct these. 
Kindly proceed to capture your statistics for quarter 2. The system will close for capturing on 15th January 2015.
</p> 

<p> Further, please note the following:
</p> 


	<ol> <li>If there is under-achievement, a reason and a measure to improve is COMPULSORY. </li> 
		<li>Reasons and measures must be relevant i.e. the reason should tell us why you have not 
		achieved and the measure must tell us what corrective action you intend taking to remedy 
		the under-performance. This corrective action should be in the form of an action plan and 
		must be as comprehensive as possible, detailing steps that will be taken to achieve the target 
		going forward. Per COGTA and audit committee requirements, brief comments/ explanations are no 
		longer sufficient. Please capture this action plan in the measures to improve field or if required, 
		attach a document which details these steps.</li> 
		<li>Please upload all your evidence into the system. 
		If files are larger than 3mb, you will not be able to upload these. Should this be the case, please indicate 
		in the system that the file is too large to upload and provide details of the person who has the evidence. Should this not be done, 
		even if the target has been achieved, PME will change the status to not achieved.  </li> 
		<li>If there is a significant over-achievement i.e. in excess of 5% of the target, please provide a reason for the over-achievement. 
		This can be captured in the reason for under-achieving field for now. Please also note that the wireless connection is slower than when you connect via the network cable.
		To enhance the speed, please use the network cable instead of the wireless connection. Do not forget to Press F11 for a full screen view.</li> 
	</ol> 
</p> 
	<p> Should you have any queries, please contact your co-ordinators as follows:</p> 
	
	<table> 
		<tr> 
			<td> <b>Plan number</b> </td> 
			<td> <b>Name</b> </td> 
			<td> <b>Telephone</b> </td> 
		</tr> 
		<tr> 
			<td> Plan 1,ICC & Ushaka </td> 
			<td> Ushantha Naidoo </td> 
			<td> 031-3114123 </td> 
		</tr>
		<tr>
			<td> Plan 2 & Moses Mabhida Stadium </td> 
			<td> Sibusiso Radebe/ Ushantha Naidoo </td> 
			<td> 031-3227217</td> 
		</tr> 
		<tr> 
			<td> Plan 3 & 8 </td> 
			<td> Claudelle Dunn </td> 
			<td> 031-3227220 </td> 
		</tr> 
		<tr> 
			<td> Plan 4 & 6 </td> 
			<td> Charmaine Magwaza </td> 
			<td> 031-3114118 </td> 
		</tr> 
		<tr> 
			<td> Plan 5 & 7 </td> 
			<td> Mfana Ngcobo </td> 
			<td> 031-3114123 </td> 
		</tr> 
		
	</table> 
</div> 
</body> 
</html> 
', N'FALSE', 1, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (65, 1, N'Quarterly Capture - 1 day reminder to capture', N'Mail to notify users 1 day before system closes', N'pma_one_day_reminder', N'no-reply@durban.gov.za', N'EPM:Scorecard and SDBIP Capture', N'<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
</head>


<style type="text/css"> body, table, td, tr { font-family: Verdana; font-size: smaller; } .header { background-color: #7d7dff; color: #ffffff; font-weight: bold; padding: 5px 5px 5px 5px; } .main { padding: 5px 5px 5px 5px; border-top: 1px solid grey; }  table { width: 70%; }  td { border: 1px solid black; padding: 2px; font-size: 1.2em; } </style>
<body>
<p>Dear Plan Stakeholder.</p>

<p></p>

<p>Kindly note that the Enterprise Monitoring Monitoring system will lock for capture at the close of business Thursday 15 January 2015. </p>

<p>Please note that if you do not provide evidence or give an indication of where it can be obtained, the target will be considered as not achieved for reporting purposes.
 Therefore, it is critical that evidence is provided.</p>

<p>Kindly email: <a href="mailto:Nevana.Srikissoon@durban.gov.za">Nevana.Srikissoon@durban.gov.za</a>&nbsp; should you have any queries.</p>

<p></p>

<p>Kind regards,</p>

<p></p>

<p>Organisational Performance Monitoring and Evaluation.</p>

<p></p>

<p></p>
</body>
</html>', N'FALSE', 1, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (66, 1, N'Improvements to EPMA', N'Improvements to EPMA', N'pma_improvements_to_system', N'no-reply@durban.gov.za', N'Improvements to EPMA', N'<html> <head> <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> 
<title></title> 
<style type="text/css"> 
body, table, td, tr { font-family: Verdana; font-size: smaller; } 
.header { background-color: #7d7dff; color: #ffffff; font-weight: bold; padding: 5px 5px 5px 5px; } 
.main { padding: 5px 5px 5px 5px; border-top: 1px solid grey; }  table { width: 70%; }  td { border: 1px solid black; padding: 2px; font-size: 1.2em; } 
</style> 
</head> 
<body> 
<div class="header"> Improvements to EPMA </div> <div class="main"> <strong>Good day,</strong> 
<p> 
The PME Unit is excited to announce the following enhancements to the EPMA system commencing with the quarter 1 reporting:
</p> 

	<ol> <li>There will now be a facility that imports evidence, comments/ reasons and measures from the SDBIP to the KPI for directly linked KPI’s. 
		You may then select which evidence, comments/reasons and measures are applicable and import these instead of retyping. If none are applicable 
		and you would like to capture a new comment/reason and measure or upload new evidence, you may still do that. This facility is available for 
		directly linked KPI’s only and only content from projects/ sub-projects which are used to calculate the scorecard results will be available for selection. </li> 
		<li>For all directly linked KPI’s, you are now able to view the projects/sub projects that are linked at the bottom of the screen when you are viewing the KPI.</li> 
	</ol> 
</p> 
	<p> In addition, we will be re-introducing the MTA capture facility which will allow you to capture your mid term amendments into the system yourself,
	thereby eradicating any errors when we capture on your behalf. This facility will be available once we commence with the mid term amendments. You will now be required to capture changes only into the system and no manual/ spreadsheet submissions will be required/ accepted. We will work with all submissions from the EPMA system.</p> 
	<p> Should you require any assistance/ clarity, please advise. We are also available to provide refresher training if required – please contact us in this regard.</p> 
	
Regards<br>
Nevana Srikissoon<br>
Manager: Organisational Performance Monitoring<br> 
Performance Monitoring & Evaluation Unit<br>
E''Thekwini Municipality<br>
Tel: 031-322 7209<br>
E-mail: <a href="mailto:Nevana.Srikissoon@durban.gov.za">Nevana.Srikissoon@durban.gov.za </a> 
</div> 
</body> 
</html> 
', N'FALSE', 1, NULL, NULL, 0, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (68, 10, N'TLS: EmailTemplate', N'Default Email Template ', N'tls_email_template', N'no-reply@durban.gov.za', N'Trade License System', N'<html>
<head>
    <title></title>
    <style type="text/css">
        body {
            font-family: "Helvetica Neue", "Lucida Grande", "Segoe UI", Arial, Helvetica, Verdana, sans-serif;
            font-size: 0.9em;
        }

        .header {
            background-color: #1849D9;
            color: #ffffff;
            font-weight: bold;
            font-size: 14px;
            padding: 5px 5px 5px 5px;
        }

        .main {
            padding: 5px 5px 5px 5px;
            border-top: 1px solid grey;
        }
    </style>
</head>
<body>
    <div class="header">TRADE LICENSING SYSTEM</div>
    <div class="main">
        <div style="font-family: Arial; font-size: 10pt">
            Dear <b>#NAME#</b>,<br />
            <br />
            #BODYTEXT#
            <br />
            <br />
            <a href="http://gis.durban.gov.za/tradelicense">Click to login.</a>
            <br />
            <br />
            Regards,<br />
            <b>TLS Administrator</b>
            <br />
            <hr />
            <br />
        </div>
    </div>
</body>
</html>
', N'#NAME#, #BODYTEXT#', 1, NULL, NULL, 1, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (69, 11, N'PTMIS:EmailTemplate', N'Default Email Template', N'ptmis_email_template', N'no-reply@durban.gov.za', N'Public Transport Management Information System', N'<html>
<head>
    <title></title>
    <style type="text/css">
        body {
            font-family: "Helvetica Neue", "Lucida Grande", "Segoe UI", Arial, Helvetica, Verdana, sans-serif;
            font-size: 0.9em;
        }

        .header {
            background-color: #1849D9;
            color: #ffffff;
            font-weight: bold;
            font-size: 14px;
            padding: 5px 5px 5px 5px;
        }

        .main {
            padding: 5px 5px 5px 5px;
            border-top: 1px solid grey;
        }
    </style>
</head>
<body>
    <div class="header">ETHEKWINI PUBLIC TRANSPORT MANAGEMENT INFORMATION SYSTEM</div>
    <div class="main">
        <div style="font-family: Arial; font-size: 10pt">
            Dear <b>#NAME#</b>,<br />
            <br />
            #BODYTEXT#
            <br />
            <br />
            <a href="http://gis.durban.gov.za/ptmis">Click to login.</a>
            <br />
            <br />
            Regards,<br />
            <b>Administrator</b>
            <br />
            <hr />
            <br />
        </div>
    </div>
</body>
</html>
', N'#NAME#,#BODYTEXT#', 1, NULL, NULL, 1, 0, 1, 0)
INSERT [dbo].[tb_EmailTemplates] ([EmailTemplateID], [ApplicationID], [EmailTemplateName], [EmailTemplateDescription], [EmailTemplateKey], [EmailFrom], [EmailSubject], [EmailBody], [Variables], [IsHTML], [ToVariable], [CcVariable], [HasVariables], [SendAsOneEmail], [IsActive], [IsDeleted]) VALUES (71, 10, N'TLS: ClientEmailTemplate', N'Client Email Template', N'tls_client_email_template', N'no-reply@durban.gov.za', N'Trade License System', N'<html>
<head>
    <title></title>
    <style type="text/css">
        body {
            font-family: "Helvetica Neue", "Lucida Grande", "Segoe UI", Arial, Helvetica, Verdana, sans-serif;
            font-size: 0.9em;
        }

        .header {
            background-color: #1849D9;
            color: #ffffff;
            font-weight: bold;
            font-size: 14px;
            padding: 5px 5px 5px 5px;
        }

        .main {
            padding: 5px 5px 5px 5px;
            border-top: 1px solid grey;
        }
    </style>
</head>
<body>
    <div class="header">TRADE LICENSING SYSTEM</div>
    <div class="main">
        <div style="font-family: Arial; font-size: 10pt">
            Dear <b>#NAME#</b>,<br />
            <br />
            #BODYTEXT#
            <br />
            <br />
            Regards,<br />
            <b>TLS Administrator</b>
            <br />
            <hr />
            <br />
        </div>
    </div>
</body>
</html>
', N'#NAME#,#BODYTEXT#', 1, NULL, NULL, 1, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[tb_EmailTemplates] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ReferenceTypes] ON 

GO
INSERT [dbo].[tb_ReferenceTypes] ([ReferenceTypeId], [ReferenceTypeName], [ReferenceTypeDescription], [ReferenceTypeKey], [IsActive], [IsDeleted], [IsLocked]) VALUES (1, N'Identity Number', N'Client''s Identity Number', N'eservices_identity_number', 1, 0, 0)
GO
INSERT [dbo].[tb_ReferenceTypes] ([ReferenceTypeId], [ReferenceTypeName], [ReferenceTypeDescription], [ReferenceTypeKey], [IsActive], [IsDeleted], [IsLocked]) VALUES (2, N'Account Number', N'Client''s Account Number', N'eservices_account_number', 1, 0, 0)
GO
INSERT [dbo].[tb_ReferenceTypes] ([ReferenceTypeId], [ReferenceTypeName], [ReferenceTypeDescription], [ReferenceTypeKey], [IsActive], [IsDeleted], [IsLocked]) VALUES (3, N'Bill Email', N'eServices Bill Email', N'eservices_bill_email', 1, 0, 0)
GO
INSERT [dbo].[tb_ReferenceTypes] ([ReferenceTypeId], [ReferenceTypeName], [ReferenceTypeDescription], [ReferenceTypeKey], [IsActive], [IsDeleted], [IsLocked]) VALUES (4, N'Activation Email', N'eServices Activation Email', N'eservices_activation_email', 1, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[tb_ReferenceTypes] OFF
GO