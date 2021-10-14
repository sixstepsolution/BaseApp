using System;
using System.Collections.Generic;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Http;
using Unity;
using Unity.WebApi;
using C8.eServices.Mvc.Models;
using C8.eServices.Mvc.Models.Mapings;
using C8.eServices.Mvc.Models.Repository;
using C8.eServices.Mvc.Models.Services;
using AutoMapper;

namespace C8.eServices.Mvc
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
            var container = new UnityContainer();

            // register all your components with the container here
            // it is NOT necessary to register your controllers

            // e.g. container.RegisterType<ITestService, TestService>();
            container.RegisterType<ISudent, SudentRepo>();
            container.RegisterType<IApplicationForm, ApplicationFormRepo>();
            container.RegisterType<IWayleave, WayleaveRepo>();
            container.RegisterType<ISeriviceTypes, SeriviceTypesRepo>();
            container.RegisterType<ISeriviceSubTypes, SeriviceSubTypesRepo>();
            container.RegisterType<IMasterStatusTypes, MasterStatusTypesRepo>();
            container.RegisterType<IApplicationStatus, ApplicationStatusRepo>();
            container.RegisterType<IWlAccount, WlAccountRepo>();
            container.RegisterType<IWlAccountContact, WlAccount_ContactRepo>();
            container.RegisterType<IServiceDocument, ServiceDocumentRepo>();
            container.RegisterType<IWorkLocations, WorkLocationRepo>();
            container.RegisterType<IContactPersons, ContactPersonRepo>();
            container.RegisterType<IRegion, RegionRepo>();
            container.RegisterType<ISupportingDocument, SupportingDocumentRepo>();
            container.RegisterType<IMasterDepartments, MasterDepartmentsRepo>();
            container.RegisterType<IDepartments, DepartmentsRepo>();
            container.RegisterType<IMasterInspections, MasterInspectionRepo>();
            container.RegisterType<IWLInspectionList, WLInspectionListRepo>();
            container.RegisterType<IMasterCustomerCareCenters, MasterCustomerCareCentersRepo>();
            container.RegisterType<IMasterDeclarations, MasterDeclarationsRepo>();
            container.RegisterType<IWLDeclarations, WLDeclarationsRepo>();

            container.RegisterInstance<IMapper>(new MapperConfiguration(cfg =>
            {
                //cfg.AddMemberConfiguration();
                //cfg.DestinationMemberNamingConvention();

                cfg.CreateMap<Student, StudentView>()
                 .ReverseMap();

                cfg.CreateMap<WL_APPLICATIONFORM, ApplicationFormDashboardView>()
                .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.APP_ID))
                .ForMember(dest => dest.applicationNumber, opt => opt.MapFrom(src => src.APPLICATION_NUMBER))
                .ForMember(dest => dest.first_name, opt => opt.MapFrom(src => src.PROPERTYOWNER_NAME))
                .ForMember(dest => dest.last_name, opt => opt.MapFrom(src => src.PROPERTYOWNER_SURNAME))
                .ForMember(dest => dest.full_name, opt => opt.MapFrom(src => src.PROPERTYOWNER_NAME + " " + src.PROPERTYOWNER_SURNAME))
                .ForMember(dest => dest.serviceType, opt => opt.MapFrom(src => src.SERVICE_TYPE==null?0:1))
                //.ForMember(dest => dest.serviceTypeName, opt => opt.MapFrom(src => src.MASTER_SERVICE_TYPES.DESCRIPTION))
                .ForMember(dest => dest.serviceSubType, opt => opt.MapFrom(src => src.SERVICE_SUB_TYPE == null ? 0 : 1))
                //.ForMember(dest => dest.serviceSubTypeName, opt => opt.MapFrom(src => src.MASTER_SERVICE_SUB_TYPES.DESCRIPTION))
                ///.ForMember(dest => dest.wayleaveAttention, opt => opt.MapFrom(src => src.WAYLEAVE_ATTENTION))
                .ForMember(dest => dest.createdDate, opt => opt.MapFrom(src => src.CREATED_DATE != null ? Convert.ToDateTime(src.CREATED_DATE).ToString("yyyy-MM-dd") : ""))
                .ForMember(dest => dest.applicationStatus, opt => opt.MapFrom(src => src.APPLICATION_STEP_DESCRIPTION))
                .ForMember(dest => dest.applicationStepStatus, opt => opt.MapFrom(src => src.APPLICATION_STEP_DESCRIPTION))
                .ForMember(dest => dest.statusId, opt => opt.MapFrom(src => src.STATUS_ID))
                .ReverseMap();


                cfg.CreateMap<WL_APPLICATIONFORM, AccountsView>()
               .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.APP_ID))
               .ForMember(dest => dest.account_no, opt => opt.MapFrom(src => src.PROPERTYOWNER_ACCOUNT_NO))
               .ForMember(dest => dest.description, opt => opt.MapFrom(src => src.APPLICATION_STEP_DESCRIPTION))
               .ForMember(dest => dest.pic, opt => opt.MapFrom(src => src.PROPERTYOWNER_ACCOUNT_NO))
               .ReverseMap();

                cfg.CreateMap<MASTER_STATUS_TYPES, ApplicationInputModel>()
              .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.STATUS_ID))
              .ForMember(dest => dest.name, opt => opt.MapFrom(src => src.DESCRIPTION))
              .ForMember(dest => dest.sequenceId, opt => opt.MapFrom(src => src.SEQUENCE_ID))
              .ReverseMap();




                cfg.CreateMap<MASTER_SERVICE_TYPES, MasterInputCalimsModel>()
            .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.SERVICE_ID))
            .ForMember(dest => dest.description, opt => opt.MapFrom(src => src.DESCRIPTION)).ReverseMap();


                cfg.CreateMap<MASTER_SERVICE_SUB_TYPES, MasterInputCalimsModel>()
              .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.SUB_ID))
              .ForMember(dest => dest.description, opt => opt.MapFrom(src => src.DESCRIPTION)).ReverseMap();


                cfg.CreateMap<MASTER_STATUS_TYPES, MasterInputCalimsModel>()
              .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.STATUS_ID))
              .ForMember(dest => dest.description, opt => opt.MapFrom(src => src.DESCRIPTION)).ReverseMap();


                cfg.CreateMap<MASTER_SERVICE_DOCUMENTS, MasterInputCalimsModel>()
              .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.SD_ID))
              .ForMember(dest => dest.description, opt => opt.MapFrom(src => src.DESCRIPTION)).ReverseMap();

                cfg.CreateMap<MASTER_DEPARTMENTS, MasterInputCalimsModel>()
          .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.DPT_ID))
          .ForMember(dest => dest.description, opt => opt.MapFrom(src => src.DEPARTMENT_NAME)).ReverseMap();

                cfg.CreateMap<MASTER_DECLARATIONS, MasterInputCalimsModel>()
          .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.MD_ID))
          .ForMember(dest => dest.description, opt => opt.MapFrom(src => src.DESCRIPTION)).ReverseMap();

                cfg.CreateMap<MASTER_CUSTOMERCARE_CENTERS_REGIONS, MasterCustomercareCentersModel>()
              .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.CCC_ID))
              .ForMember(dest => dest.code, opt => opt.MapFrom(src => src.CCC_CODE))
              .ForMember(dest => dest.name, opt => opt.MapFrom(src => src.CCC_NAME))
              .ForMember(dest => dest.road, opt => opt.MapFrom(src => src.ROAD_NUMBER)).ReverseMap();

                cfg.CreateMap<WLAccountsModel, WL_ACCOUNT>()
               .ForMember(dest => dest.ACCOUNT_ID, opt => opt.Ignore())
               .ForMember(dest => dest.COMPANY_ID, opt => opt.MapFrom(src => src.company_id))
               .ForMember(dest => dest.TYPE_USER, opt => opt.MapFrom(src => src.userType))
               .ForMember(dest => dest.COMPANY_NAME, opt => opt.MapFrom(src => src.companyName))
               .ForMember(dest => dest.COMPANY_FULL_NAME, opt => opt.MapFrom(src => src.companyFullName))
               .ForMember(dest => dest.COMPANY_REGISTRATION_NUMBER, opt => opt.MapFrom(src => src.companyRegistrationNumber))
               .ForMember(dest => dest.TRADE_LICENSE_EXPIRE_DATE, opt => opt.MapFrom(src => src.tradeLicenseExpirationDate))
               .ForMember(dest => dest.TRADE_LICENSE_FILE, opt => opt.MapFrom(src => src.tradeLicenseFile))
               .ForMember(dest => dest.CONTACT_PERSON_FIRST_NAME, opt => opt.MapFrom(src => src.contactPersonFirstName))
               .ForMember(dest => dest.CONTACT_PERSON_LAST_NAME, opt => opt.MapFrom(src => src.contactPersonLastName))
               .ForMember(dest => dest.DESIGNATION, opt => opt.MapFrom(src => src.designation))
               .ForMember(dest => dest.TELEPHONE_NUMBER, opt => opt.MapFrom(src => src.telephoneNumber))
               .ForMember(dest => dest.MOBILE, opt => opt.MapFrom(src => src.mobileNumber))
               .ForMember(dest => dest.EMAIL, opt => opt.MapFrom(src => src.email))
               .ForMember(dest => dest.FAX, opt => opt.MapFrom(src => src.fax))
               .ForMember(dest => dest.STREET_NAME, opt => opt.MapFrom(src => src.streetName))
               .ForMember(dest => dest.CITY, opt => opt.MapFrom(src => src.city))
               .ForMember(dest => dest.PROVINCE, opt => opt.MapFrom(src => src.province))
               .ForMember(dest => dest.COUNTRY, opt => opt.MapFrom(src => src.country))
               .ForMember(dest => dest.POST_CODE, opt => opt.MapFrom(src => src.postCode))
               .ForMember(dest => dest.REGISTRATION_CERTIFICATE_NAME, opt => opt.MapFrom(src => src.registartionCertificate))
               .ForMember(dest => dest.TAX_CERTIFICATE_NAME, opt => opt.MapFrom(src => src.taxCertificate))
               .ForMember(dest => dest.IS_ACTIVE, opt => opt.MapFrom(src => src.isActive))
               .ForMember(dest => dest.STATUS_ID, opt => opt.MapFrom(src => src.statusId))
               .ForMember(dest => dest.PASSWORD, opt => opt.MapFrom(src => src.password))
               .ForMember(dest => dest.IDENTIFICATION_NUMBER, opt => opt.MapFrom(src => src.identificationNumber))
               .ForMember(dest => dest.GENDER, opt => opt.MapFrom(src => src.contactPersonGender))
               .ForMember(dest => dest.SUBURB, opt => opt.MapFrom(src => src.suburb))
               .ForMember(dest => dest.COMMENTS, opt => opt.MapFrom(src => src.comments))
               .ForMember(dest => dest.CREATED_BY, opt => opt.MapFrom(src => src.createdBy))
               .ForMember(dest => dest.CREATED_DATE, opt => opt.MapFrom(src => src.createdDate))
               .ForMember(dest => dest.MODIFIED_BY, opt => opt.MapFrom(src => src.modifiedBy))
             .ForMember(dest => dest.MODIFIED_DATE, opt => opt.MapFrom(src => src.modifiedDate))
               .ReverseMap();

                cfg.CreateMap<WL_ACCOUNT, WLAccountsModel>()
              .ForMember(dest => dest.account_id, opt => opt.MapFrom(src => src.ACCOUNT_ID))
              .ForMember(dest => dest.company_id, opt => opt.MapFrom(src => src.COMPANY_ID))
              .ForMember(dest => dest.userType, opt => opt.MapFrom(src => src.TYPE_USER))
              .ForMember(dest => dest.companyName, opt => opt.MapFrom(src => src.COMPANY_NAME))
              .ForMember(dest => dest.companyFullName, opt => opt.MapFrom(src => src.COMPANY_FULL_NAME))
              .ForMember(dest => dest.companyRegistrationNumber, opt => opt.MapFrom(src => src.COMPANY_REGISTRATION_NUMBER))
              .ForMember(dest => dest.tradeLicenseExpirationDate, opt => opt.MapFrom(src => src.TRADE_LICENSE_EXPIRE_DATE == null ? "" : Convert.ToDateTime(src.TRADE_LICENSE_EXPIRE_DATE).ToString("yyyy-MM-dd")))
              .ForMember(dest => dest.tradeLicenseFile, opt => opt.MapFrom(src => src.TRADE_LICENSE_FILE))
              .ForMember(dest => dest.contactPersonFirstName, opt => opt.MapFrom(src => src.CONTACT_PERSON_FIRST_NAME))
              .ForMember(dest => dest.contactPersonLastName, opt => opt.MapFrom(src => src.CONTACT_PERSON_LAST_NAME))
              .ForMember(dest => dest.designation, opt => opt.MapFrom(src => src.DESIGNATION))
              .ForMember(dest => dest.telephoneNumber, opt => opt.MapFrom(src => src.TELEPHONE_NUMBER))
              .ForMember(dest => dest.mobileNumber, opt => opt.MapFrom(src => src.MOBILE))
              .ForMember(dest => dest.email, opt => opt.MapFrom(src => src.EMAIL))
              .ForMember(dest => dest.fax, opt => opt.MapFrom(src => src.FAX))
              .ForMember(dest => dest.streetName, opt => opt.MapFrom(src => src.STREET_NAME))
              .ForMember(dest => dest.city, opt => opt.MapFrom(src => src.CITY))
              .ForMember(dest => dest.province, opt => opt.MapFrom(src => src.PROVINCE))
              .ForMember(dest => dest.country, opt => opt.MapFrom(src => src.COUNTRY))
              .ForMember(dest => dest.password, opt => opt.MapFrom(src => src.PASSWORD))
              .ForMember(dest => dest.postCode, opt => opt.MapFrom(src => src.POST_CODE))
              .ForMember(dest => dest.registartionCertificate, opt => opt.MapFrom(src => src.REGISTRATION_CERTIFICATE_NAME))
              .ForMember(dest => dest.taxCertificate, opt => opt.MapFrom(src => src.TAX_CERTIFICATE_NAME))
              .ForMember(dest => dest.isActive, opt => opt.MapFrom(src => src.IS_ACTIVE))
              .ForMember(dest => dest.statusId, opt => opt.MapFrom(src => src.STATUS_ID))
              .ForMember(dest => dest.comments, opt => opt.MapFrom(src => src.COMMENTS))
              .ForMember(dest => dest.identificationNumber, opt => opt.MapFrom(src => src.IDENTIFICATION_NUMBER))
               .ForMember(dest => dest.contactPersonGender, opt => opt.MapFrom(src => src.GENDER))
               .ForMember(dest => dest.suburb, opt => opt.MapFrom(src => src.SUBURB))

              .ForMember(dest => dest.status, opt => opt.MapFrom(src => src.MASTER_STATUS_TYPES.DESCRIPTION))
              .ForMember(dest => dest.createdDate, opt => opt.MapFrom(src => src.CREATED_DATE == null ? "" : Convert.ToDateTime(src.CREATED_DATE).ToString("yyyy-MM-dd")))
              .ForMember(dest => dest.createdBy, opt => opt.MapFrom(src => src.CREATED_BY))
              .ForMember(dest => dest.modifiedBy, opt => opt.MapFrom(src => src.MODIFIED_BY))
            .ForMember(dest => dest.modifiedDate, opt => opt.MapFrom(src => src.MODIFIED_DATE == null ? "" : Convert.ToDateTime(src.MODIFIED_DATE).ToString("yyyy-MM-dd")))
            .ForMember(dest => dest.accountContactModelDto, opt => opt.MapFrom(src => src.WL_ACCO_CONTACT))
              .ReverseMap();

                cfg.CreateMap<AccountContactModel, WL_ACCO_CONTACT>()
           .ForMember(dest => dest.CONTACT_ID, opt => opt.Ignore())
           .ForMember(dest => dest.ACCOUNT_ID, opt => opt.Ignore())
           .ForMember(dest => dest.FIRST_NAME, opt => opt.MapFrom(src => src.firstName))
           .ForMember(dest => dest.SURNAME, opt => opt.MapFrom(src => src.lastName))
           .ForMember(dest => dest.EMAIL, opt => opt.MapFrom(src => src.email))
           .ForMember(dest => dest.MOBILE, opt => opt.MapFrom(src => src.contactNumber))
           .ForMember(dest => dest.DESIGNIATION, opt => opt.MapFrom(src => src.designation))
             .ForMember(dest => dest.CREATED_BY, opt => opt.MapFrom(src => src.createdBy))
               .ForMember(dest => dest.CREATED_DATE, opt => opt.MapFrom(src => src.createdDate))
               .ForMember(dest => dest.MODIFIED_BY, opt => opt.MapFrom(src => src.modifiedBy))
             .ForMember(dest => dest.MODIFIED_DATE, opt => opt.MapFrom(src => src.modifiedDate))
           .ReverseMap();

                cfg.CreateMap<WL_ACCO_CONTACT, AccountContactModel>()
         .ForMember(dest => dest.contactId, opt => opt.MapFrom(src => src.CONTACT_ID))
         .ForMember(dest => dest.account_id, opt => opt.MapFrom(src => src.ACCOUNT_ID))
         .ForMember(dest => dest.firstName, opt => opt.MapFrom(src => src.SURNAME))
         .ForMember(dest => dest.lastName, opt => opt.MapFrom(src => src.FIRST_NAME))
         .ForMember(dest => dest.email, opt => opt.MapFrom(src => src.EMAIL))
         .ForMember(dest => dest.contactNumber, opt => opt.MapFrom(src => src.MOBILE))
         .ForMember(dest => dest.designation, opt => opt.MapFrom(src => src.DESIGNIATION))
           .ForMember(dest => dest.createdBy, opt => opt.MapFrom(src => src.CREATED_BY))
             .ForMember(dest => dest.createdDate, opt => opt.MapFrom(src => src.CREATED_DATE == null ? "" : Convert.ToDateTime(src.CREATED_DATE).ToString("yyyy-MM-dd")))
             .ForMember(dest => dest.modifiedBy, opt => opt.MapFrom(src => src.MODIFIED_BY))
           .ForMember(dest => dest.modifiedDate, opt => opt.MapFrom(src => src.MODIFIED_DATE == null ? "" : Convert.ToDateTime(src.MODIFIED_DATE).ToString("yyyy-MM-dd")))
         .ReverseMap();


                // cfg.CreateMap<WL_APPLICATIONFORM, ApplicationFormDashboardView>()
                //.ForMember(dest => dest.id, opt => opt.MapFrom(src => src.APP_ID))
                //.ForMember(dest => dest.applicationNumber, opt => opt.MapFrom(src => src.APPLICATION_NUMBER))
                //.ForMember(dest => dest.first_name, opt => opt.MapFrom(src => src.PROPERTYOWNER_NAME))
                //.ForMember(dest => dest.last_name, opt => opt.MapFrom(src => src.PROPERTYOWNER_SURNAME))
                //.ForMember(dest => dest.full_name, opt => opt.MapFrom(src => src.PROPERTYOWNER_NAME + " " + src.PROPERTYOWNER_SURNAME))
                //.ForMember(dest => dest.serviceType, opt => opt.MapFrom(src => src.SERVICE_TYPE))
                //.ForMember(dest => dest.serviceTypeName, opt => opt.MapFrom(src => src.MASTER_SERVICE_TYPES.DESCRIPTION))
                //.ForMember(dest => dest.serviceSubType, opt => opt.MapFrom(src => src.SERVICE_SUB_TYPE))
                //.ForMember(dest => dest.serviceSubTypeName, opt => opt.MapFrom(src => src.MASTER_SERVICE_SUB_TYPES.DESCRIPTION))
                //.ForMember(dest => dest.wayleaveAttention, opt => opt.MapFrom(src => src.WAYLEAVE_ATTENTION))
                //.ForMember(dest => dest.createdDate, opt => opt.MapFrom(src => src.CREATED_DATE != null ? Convert.ToDateTime(src.CREATED_DATE).ToString("yyyy-MM-dd") : ""))
                //.ForMember(dest => dest.applicationStatus, opt => opt.MapFrom(src => src.MASTER_STATUS_TYPES.DESCRIPTION))
                //.ForMember(dest => dest.statusId, opt => opt.MapFrom(src => src.STATUS_ID))
                //.ReverseMap();

                cfg.CreateMap<MASTER_STATUS_TYPES, WayleaveAccountDashboardModel>()
              .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.STATUS_ID))
              .ForMember(dest => dest.name, opt => opt.MapFrom(src => src.DESCRIPTION))
              .ForMember(dest => dest.sequenceId, opt => opt.MapFrom(src => src.SEQUENCE_ID))
              .ReverseMap();

                cfg.CreateMap<WL_ACCOUNT, WayleaveAccountInputModel>()
               .ForMember(dest => dest.account_id, opt => opt.MapFrom(src => src.ACCOUNT_ID))
               .ForMember(dest => dest.account_number, opt => opt.MapFrom(src => src.ACCOUNT_NUMBER))
               .ForMember(dest => dest.companyFullName, opt => opt.MapFrom(src => src.COMPANY_FULL_NAME))
               .ForMember(dest => dest.contactPersonName, opt => opt.MapFrom(src => src.CONTACT_PERSON_FIRST_NAME + " " + src.CONTACT_PERSON_LAST_NAME))
               .ForMember(dest => dest.designation, opt => opt.MapFrom(src => src.DESIGNATION))
               .ForMember(dest => dest.userType, opt => opt.MapFrom(src => src.TYPE_USER))
               .ForMember(dest => dest.email, opt => opt.MapFrom(src => src.EMAIL))
               .ForMember(dest => dest.mobileNumber, opt => opt.MapFrom(src => src.MOBILE))
               .ForMember(dest => dest.address, opt => opt.MapFrom(src => src.STREET_NAME + ", " + src.CITY + ", " + src.PROVINCE + ", " + src.COUNTRY + ", " + src.POST_CODE))
               .ForMember(dest => dest.status, opt => opt.MapFrom(src => src.MASTER_STATUS_TYPES.DESCRIPTION))
               .ForMember(dest => dest.comments, opt => opt.MapFrom(src => src.COMMENTS))
               .ForMember(dest => dest.statusId, opt => opt.MapFrom(src => src.STATUS_ID))
               //.ForMember(dest => dest.date_requested_from, opt => opt.MapFrom(src => src.CREATED_DATE))
               //.ForMember(dest => dest.date_requested_to, opt => opt.MapFrom(src => src.CREATED_DATE))
               //.ForMember(dest => dest.created_date, opt => opt.MapFrom(src => src.CREATED_DATE))
               .ForMember(dest => dest.createdDate, opt => opt.MapFrom(src => src.CREATED_DATE != null ? Convert.ToDateTime(src.CREATED_DATE).ToString("yyyy-MM-dd") : ""))

               .ReverseMap();

                cfg.CreateMap<User, UploadDepartmentSignature>()
               .ForMember(dest => dest.userId, opt => opt.MapFrom(src => src.userid))
               .ForMember(dest => dest.userName, opt => opt.MapFrom(src => src.username))
               .ForMember(dest => dest.password, opt => opt.MapFrom(src => src.password))
               .ForMember(dest => dest.departmentName, opt => opt.MapFrom(src => src.deptartmentname))
               .ForMember(dest => dest.firstName, opt => opt.MapFrom(src => src.firstName))
               .ForMember(dest => dest.lastName, opt => opt.MapFrom(src => src.lastName))
               .ForMember(dest => dest.emailAddress, opt => opt.MapFrom(src => src.emailAddress))
               .ForMember(dest => dest.cellPhone, opt => opt.MapFrom(src => src.cellPhone))
               .ForMember(dest => dest.isActiveDirectory, opt => opt.MapFrom(src => src.isActiveDirectory))
               .ForMember(dest => dest.createdDate, opt => opt.MapFrom(src => src.createdDate))              

               .ReverseMap();

                cfg.CreateMap<UploadDepartmentSignature, User>()
               .ForMember(dest => dest.userid, opt => opt.MapFrom(src => src.userId))
               .ForMember(dest => dest.username, opt => opt.MapFrom(src => src.userName))
               .ForMember(dest => dest.password, opt => opt.MapFrom(src => src.password))
               .ForMember(dest => dest.deptartmentname, opt => opt.MapFrom(src => src.departmentName))
               .ForMember(dest => dest.firstName, opt => opt.MapFrom(src => src.firstName))
               .ForMember(dest => dest.lastName, opt => opt.MapFrom(src => src.lastName))
               .ForMember(dest => dest.emailAddress, opt => opt.MapFrom(src => src.emailAddress))
               .ForMember(dest => dest.cellPhone, opt => opt.MapFrom(src => src.cellPhone))
               .ForMember(dest => dest.isActiveDirectory, opt => opt.MapFrom(src => src.isActiveDirectory))
               .ForMember(dest => dest.createdDate, opt => opt.MapFrom(src => src.createdDate))

               .ReverseMap();



                cfg.CreateMap<User, AddUserModal>()
               .ForMember(dest => dest.userid, opt => opt.MapFrom(src => src.userid))
               .ForMember(dest => dest.username, opt => opt.MapFrom(src => src.username))
               .ForMember(dest => dest.deptartmentname, opt => opt.MapFrom(src => src.deptartmentname))
               .ForMember(dest => dest.firstName, opt => opt.MapFrom(src => src.firstName))
               .ForMember(dest => dest.lastName, opt => opt.MapFrom(src => src.lastName))
               .ForMember(dest => dest.emailAddress, opt => opt.MapFrom(src => src.emailAddress))
               .ForMember(dest => dest.cellPhone, opt => opt.MapFrom(src => src.cellPhone))
               .ForMember(dest => dest.isActiveDirectory, opt => opt.MapFrom(src => src.isActiveDirectory))
               //.ForMember(dest => dest.createdDate, opt => opt.MapFrom(src => src.createdDate))

               .ReverseMap();

                cfg.CreateMap<AddUserModal, User>()
               .ForMember(dest => dest.userid, opt => opt.MapFrom(src => src.userid))
               .ForMember(dest => dest.username, opt => opt.MapFrom(src => src.username))
               //.ForMember(dest => dest.password, opt => opt.MapFrom(src => src.password))
               .ForMember(dest => dest.deptartmentname, opt => opt.MapFrom(src => src.deptartmentname))
               .ForMember(dest => dest.firstName, opt => opt.MapFrom(src => src.firstName))
               .ForMember(dest => dest.lastName, opt => opt.MapFrom(src => src.lastName))
               .ForMember(dest => dest.emailAddress, opt => opt.MapFrom(src => src.emailAddress))
               .ForMember(dest => dest.cellPhone, opt => opt.MapFrom(src => src.cellPhone))
               .ForMember(dest => dest.isActiveDirectory, opt => opt.MapFrom(src => src.isActiveDirectory))
               //.ForMember(dest => dest.createdDate, opt => opt.MapFrom(src => src.createdDate))

               .ReverseMap();




                cfg.CreateMap<WL_APPLICATIONFORM, ApplicationModel>()
               .ForMember(dest => dest.APP_ID, opt => opt.MapFrom(src => src.APP_ID))
               .ForMember(dest => dest.COMPANY_ID, opt => opt.MapFrom(src => src.COMPANY_ID))
               .ForMember(dest => dest.APPLICATION_NUMBER, opt => opt.MapFrom(src => src.APPLICATION_NUMBER))
               .ForMember(dest => dest.PROPERTYOWNER_ACCOUNT_NO, opt => opt.MapFrom(src => src.PROPERTYOWNER_ACCOUNT_NO))
               .ForMember(dest => dest.PROPERTYOWNER_NAME, opt => opt.MapFrom(src => src.PROPERTYOWNER_NAME))
               .ForMember(dest => dest.PROPERTYOWNER_SURNAME, opt => opt.MapFrom(src => src.PROPERTYOWNER_SURNAME))
               .ForMember(dest => dest.PROPERTYOWNER_CONTACTNO, opt => opt.MapFrom(src => src.PROPERTYOWNER_CONTACTNO))
               .ForMember(dest => dest.PROPERTYOWNER_MOBILENO, opt => opt.MapFrom(src => src.PROPERTYOWNER_MOBILENO))
               .ForMember(dest => dest.PROPERTYOWNER_EMAIL, opt => opt.MapFrom(src => src.PROPERTYOWNER_EMAIL))

               .ForMember(dest => dest.CONSULTANT_NO, opt => opt.MapFrom(src => src.CONSULTANT_NO))
               .ForMember(dest => dest.CONSULTANT_COMPANYNAME, opt => opt.MapFrom(src => src.CONSULTANT_COMPANYNAME))
               .ForMember(dest => dest.CONSULTANT_NAME, opt => opt.MapFrom(src => src.CONSULTANT_NAME))
               .ForMember(dest => dest.CONSULTANT_SURNAME, opt => opt.MapFrom(src => src.CONSULTANT_SURNAME))
               .ForMember(dest => dest.CONSULTANT_CONTACTNO, opt => opt.MapFrom(src => src.CONSULTANT_CONTACTNO))
               .ForMember(dest => dest.CONSULTANT_MOBILENO, opt => opt.MapFrom(src => src.CONSULTANT_MOBILENO))
               .ForMember(dest => dest.CONSULTANT_EMAIL, opt => opt.MapFrom(src => src.CONSULTANT_EMAIL))
               .ForMember(dest => dest.CONSULTANT_ADDRESS, opt => opt.MapFrom(src => src.CONSULTANT_ADDRESS))

               .ForMember(dest => dest.CONTRACTOR_NAME, opt => opt.MapFrom(src => src.CONTRACTOR_NAME))
               .ForMember(dest => dest.CONTRACTOR_SURNAME, opt => opt.MapFrom(src => src.CONTRACTOR_SURNAME))
               .ForMember(dest => dest.CONTRACTOR_CONTACTNO, opt => opt.MapFrom(src => src.CONTRACTOR_CONTACTNO))
               .ForMember(dest => dest.CONTRACTOR_MOBILENO, opt => opt.MapFrom(src => src.CONTRACTOR_MOBILENO))
               .ForMember(dest => dest.CONTRACTOR_EMAIL, opt => opt.MapFrom(src => src.CONTRACTOR_EMAIL))
               .ForMember(dest => dest.CONTRACTOR_ADDRESS, opt => opt.MapFrom(src => src.CONTRACTOR_ADDRESS))

             //.ForMember(dest => dest.WAYLEAVE_ATTENTION, opt => opt.MapFrom(src => src.WAYLEAVE_ATTENTION))
             ///.ForMember(dest => dest.SERVICE_TYPE, opt => opt.MapFrom(src => src.SERVICE_TYPE))
             //.ForMember(dest => dest.SERVICE_SUB_TYPE, opt => opt.MapFrom(src => src.SERVICE_SUB_TYPE))
             //.ForMember(dest => dest.STAGE_TYPE, opt => opt.MapFrom(src => src.STAGE_TYPE))
             //.ForMember(dest => dest.MAP_SIZE, opt => opt.MapFrom(src => src.MAP_SIZE))
             .ForMember(dest => dest.PROJECT_NUMBER, opt => opt.MapFrom(src => src.PROJECT_NUMBER))
             .ForMember(dest => dest.IDENTIFICATION_NUMBER, opt => opt.MapFrom(src => src.IDENTIFICATION_NUMBER))
             .ForMember(dest => dest.GENDER, opt => opt.MapFrom(src => src.GENDER))
             //.ForMember(dest => dest.PROJECT_NAME, opt => opt.MapFrom(src => src.PROJECT_NAME))
             //.ForMember(dest => dest.APPLYING_ON_BEHALF, opt => opt.MapFrom(src => src.APPLYING_ON_BEHALF))
             //.ForMember(dest => dest.PROJECT_DESCRIPTION, opt => opt.MapFrom(src => src.PROJECT_DESCRIPTION))
             //.ForMember(dest => dest.ROAD_NUMBER, opt => opt.MapFrom(src => src.ROAD_NUMBER))
             //.ForMember(dest => dest.REGION_OR_AREA, opt => opt.MapFrom(src => src.REGION_OR_AREA))
             //.ForMember(dest => dest.AREA_DESCRIPTION, opt => opt.MapFrom(src => src.AREA_DESCRIPTION))
             //  .ForMember(dest => dest.CONTACT_PERSON_FIRSTNAME, opt => opt.MapFrom(src => src.CONTACT_PERSON_FIRSTNAME))
             //  .ForMember(dest => dest.CONTACT_PERSON_LASTNAME, opt => opt.MapFrom(src => src.CONTACT_PERSON_LASTNAME))
             //.ForMember(dest => dest.CONTACT_PERSON_REGISTRATION_NO, opt => opt.MapFrom(src => src.CONTACT_PERSON_REGISTRATION_NO))

             //.ForMember(dest => dest.CONTACT_PERSON_CONTACTNO, opt => opt.MapFrom(src => src.CONTACT_PERSON_CONTACTNO))
             //.ForMember(dest => dest.COVER_LETTER, opt => opt.MapFrom(src => src.COVER_LETTER))
             .ForMember(dest => dest.STATUS_ID, opt => opt.MapFrom(src => src.STATUS_ID))
             .ForMember(dest => dest.APPLICATION_STEP_NO, opt => opt.MapFrom(src => src.APPLICATION_STEP_NO))
             .ForMember(dest => dest.APPLICATION_STEP_DESCRIPTION, opt => opt.MapFrom(src => src.APPLICATION_STEP_DESCRIPTION))
             .ForMember(dest => dest.APPLICATION_COMMENTS, opt => opt.MapFrom(src => src.APPLICATION_COMMENTS))
             .ForMember(dest => dest.APPLICATION_GENERATION_DATE, opt => opt.MapFrom(src => src.APPLICATION_GENERATION_DATE))
             .ForMember(dest => dest.APPLICATION_DEADLINE_DATE, opt => opt.MapFrom(src => src.APPLICATION_DEADLINE_DATE))
             .ForMember(dest => dest.IS_ACTIVE, opt => opt.MapFrom(src => src.IS_ACTIVE))
             .ForMember(dest => dest.CREATED_BY, opt => opt.MapFrom(src => src.CREATED_BY))
             .ForMember(dest => dest.CREATED_DATE, opt => opt.MapFrom(src => src.CREATED_DATE))
             .ForMember(dest => dest.MODIFIED_BY, opt => opt.MapFrom(src => src.MODIFIED_BY))

             .ForMember(dest => dest.MODIFIED_DATE, opt => opt.MapFrom(src => src.MODIFIED_DATE))
             //.ForMember(dest => dest.APPLICATION_DATE, opt => opt.MapFrom(src => src.APPLICATION_DATE != null ? Convert.ToDateTime(src.APPLICATION_DATE).ToString("yyyy-MM-dd") : ""))
             .ForMember(dest => dest.STARTING_DATE, opt => opt.MapFrom(src => src.STARTING_DATE != null ? Convert.ToDateTime(src.STARTING_DATE).ToString("yyyy-MM-dd") : ""))
             .ForMember(dest => dest.COMPLETION_DATE, opt => opt.MapFrom(src => src.COMPLETION_DATE != null ? Convert.ToDateTime(src.COMPLETION_DATE).ToString("yyyy-MM-dd") : ""))
             //.ForMember(dest => dest.DRAWING_NUMBER, opt => opt.MapFrom(src => src.DRAWING_NUMBER))

             .ForMember(dest => dest.TYPE_OF_ROADCROSSING, opt => opt.MapFrom(src => src.TYPE_OF_ROADCROSSING))
             .ForMember(dest => dest.TYPE_OF_ROADCROSSING1, opt => opt.MapFrom(src => src.TYPE_OF_ROADCROSSING1))
             .ForMember(dest => dest.TYPE_OF_ROADCROSSING2, opt => opt.MapFrom(src => src.TYPE_OF_ROADCROSSING2))
             .ForMember(dest => dest.EXCAVATION_LENGTH, opt => opt.MapFrom(src => src.EXCAVATION_LENGTH))
             .ForMember(dest => dest.RIDING_SURFACE, opt => opt.MapFrom(src => src.RIDING_SURFACE))
             .ForMember(dest => dest.KERBS, opt => opt.MapFrom(src => src.KERBS))
             .ForMember(dest => dest.GPS_START_ADDRESS, opt => opt.MapFrom(src => src.GPS_START_ADDRESS))
             .ForMember(dest => dest.GPS_END_ADDRESS, opt => opt.MapFrom(src => src.GPS_END_ADDRESS))
             .ForMember(dest => dest.SERVICE_TYPE_NEW, opt => opt.MapFrom(src => src.SERVICE_TYPE_NEW))

             //.ForMember(dest => dest.ASPH_FOOTWAY, opt => opt.MapFrom(src => src.ASPH_FOOTWAY))
             //.ForMember(dest => dest.INTERL_BLOCK, opt => opt.MapFrom(src => src.INTERL_BLOCK))
             //.ForMember(dest => dest.UNPAVED_FOOTWAYS, opt => opt.MapFrom(src => src.UNPAVED_FOOTWAYS))
             //.ForMember(dest => dest.WL_CONTACT_PERSONS, opt => opt.MapFrom(src => src.WL_CONTACT_PERSONS))
             //.ForMember(dest => dest.WL_REGIONS, opt => opt.MapFrom(src => src.WL_REGIONS))
             //.ForMember(dest => dest.WL_WORK_LOCATIONS, opt => opt.MapFrom(src => src.WL_WORK_LOCATIONS))
             .ForMember(dest => dest.WL_SUPPORTING_DOCUMENTS, opt => opt.MapFrom(src => src.WL_SUPPORTING_DOCUMENTS))
             //.ForMember(dest => dest.wl, opt => opt.MapFrom(src => src.WL_SUPPORTING_DOCUMENTS))
             .ForMember(dest => dest.departments, opt => opt.MapFrom(src => src.WL_DEPARTMENTS))
               .ReverseMap();



                cfg.CreateMap<WL_CONTACT_PERSONS, WLApplicationContactPersonModel>()
             .ForMember(dest => dest.CID, opt => opt.MapFrom(src => src.CID))
             .ForMember(dest => dest.FIRST_NAME, opt => opt.MapFrom(src => src.FIRST_NAME))
             .ForMember(dest => dest.LAST_NAME, opt => opt.MapFrom(src => src.LAST_NAME))
             .ForMember(dest => dest.REGISTRATION_NUMBER, opt => opt.MapFrom(src => src.REGISTRATION_NUMBER))
             .ForMember(dest => dest.CONTACT_NUMBER, opt => opt.MapFrom(src => src.CONTACT_NUMBER))
             .ForMember(dest => dest.APP_ID, opt => opt.MapFrom(src => src.APP_ID))
             .ReverseMap();


                cfg.CreateMap<WL_REGIONS, WLregionsModel>()
             .ForMember(dest => dest.RID, opt => opt.MapFrom(src => src.RID))
             .ForMember(dest => dest.REGION_ID, opt => opt.MapFrom(src => src.REGION_ID))
             .ForMember(dest => dest.REGION_CODE, opt => opt.MapFrom(src => src.REGION_CODE))
             .ForMember(dest => dest.REGION_NAME, opt => opt.MapFrom(src => src.REGION_NAME))
             .ForMember(dest => dest.ROAD_NUMBER, opt => opt.MapFrom(src => src.ROAD_NUMBER))
             .ForMember(dest => dest.APP_ID, opt => opt.MapFrom(src => src.APP_ID))
             .ReverseMap();

                cfg.CreateMap<WL_WORK_LOCATIONS, WLworklocationModel>()
             .ForMember(dest => dest.WL_ID, opt => opt.MapFrom(src => src.WL_ID))
             .ForMember(dest => dest.GPS_START_LATITUDE, opt => opt.MapFrom(src => src.GPS_START_LATITUDE))
             .ForMember(dest => dest.GPS_START_LONGITUDE, opt => opt.MapFrom(src => src.GPS_START_LONGITUDE))
             .ForMember(dest => dest.GPS_END_LATITUDE, opt => opt.MapFrom(src => src.GPS_END_LATITUDE))
             .ForMember(dest => dest.GPS_END_LONGITUDE, opt => opt.MapFrom(src => src.GPS_END_LONGITUDE))
             .ForMember(dest => dest.WORK_LOCATION_TYPE, opt => opt.MapFrom(src => src.WORK_LOCATION_TYPE))
             .ForMember(dest => dest.GPS_START_ADDRESS, opt => opt.MapFrom(src => src.GPS_START_ADDRESS))
             .ForMember(dest => dest.GPS_END_ADDRESS, opt => opt.MapFrom(src => src.GPS_END_ADDRESS))
             .ForMember(dest => dest.APP_ID, opt => opt.MapFrom(src => src.APP_ID))
             .ReverseMap();

                cfg.CreateMap<WL_SUPPORTING_DOCUMENTS, WLApplicationDocumentsModel>()
            .ForMember(dest => dest.WSD_ID, opt => opt.MapFrom(src => src.WSD_ID))
            .ForMember(dest => dest.DOCUMENT_TYPE, opt => opt.MapFrom(src => src.DOCUMENT_TYPE))
            .ForMember(dest => dest.DOCUMENT_NAME, opt => opt.MapFrom(src => src.DOCUMENT_NAME))
            .ForMember(dest => dest.SD_ID, opt => opt.MapFrom(src => src.SD_ID))
            .ForMember(dest => dest.APP_ID, opt => opt.MapFrom(src => src.APP_ID))
            .ReverseMap();

                cfg.CreateMap<WL_DECLARATIONS, WLApplicationDeclarationModel>()
            .ForMember(dest => dest.DID, opt => opt.MapFrom(src => src.DID))
            .ForMember(dest => dest.DECLARATION_NAME, opt => opt.MapFrom(src => src.DECLARATION_NAME))
            .ForMember(dest => dest.MD_ID, opt => opt.MapFrom(src => src.MD_ID))
            .ForMember(dest => dest.APP_ID, opt => opt.MapFrom(src => src.APP_ID))
            .ReverseMap();


                cfg.CreateMap<WL_DEPARTMENTS, MasterInputCalimsModel>()
          .ForMember(dest => dest.id, opt => opt.MapFrom(src => src.DPT_ID))
          .ForMember(dest => dest.description, opt => opt.MapFrom(src => src.DEPARTMENT_NAME))
          .ForMember(dest => dest.applicationStatus, opt => opt.MapFrom(src => src.APPLICATION_STATUS))
          .ForMember(dest => dest.createdDate, opt => opt.MapFrom(src => src.CREATED_ON != null ? Convert.ToDateTime(src.CREATED_ON).ToString("yyyy-MM-dd") : ""))
          .ForMember(dest => dest.comment, opt => opt.MapFrom(src => src.APPROVE_OR_REJECT_COMMENTS)).ReverseMap();
            }).CreateMapper());


            GlobalConfiguration.Configuration.DependencyResolver = new UnityDependencyResolver(container);

            //DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}