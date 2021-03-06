USE [master]
GO
/****** Object:  Database [HealthCare_DB]    Script Date: 1/16/2017 9:32:45 AM ******/
CREATE DATABASE [HealthCare_DB] ON  PRIMARY 
( NAME = N'HealthCare_DB', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HealthCare_DB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HealthCare_DB_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HealthCare_DB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HealthCare_DB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HealthCare_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HealthCare_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HealthCare_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HealthCare_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HealthCare_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HealthCare_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HealthCare_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HealthCare_DB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HealthCare_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HealthCare_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HealthCare_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HealthCare_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HealthCare_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HealthCare_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HealthCare_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HealthCare_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HealthCare_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HealthCare_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HealthCare_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HealthCare_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HealthCare_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HealthCare_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HealthCare_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HealthCare_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HealthCare_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HealthCare_DB] SET  MULTI_USER 
GO
ALTER DATABASE [HealthCare_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HealthCare_DB] SET DB_CHAINING OFF 
GO
USE [HealthCare_DB]
GO
/****** Object:  Table [dbo].[tbl_Demo_Bill]    Script Date: 1/16/2017 9:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Demo_Bill](
	[Bill_Id] [int] IDENTITY(1,1) NOT NULL,
	[Bill_Addr1] [varchar](50) NOT NULL,
	[Bill_Addr2] [varchar](50) NOT NULL,
	[Bill_City] [varchar](50) NOT NULL,
	[Bill_State] [varchar](50) NOT NULL,
	[Bill_Zipcode] [varchar](50) NOT NULL,
	[Patient_Id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Demo_Bill] PRIMARY KEY CLUSTERED 
(
	[Bill_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Demo_EmergyCnt1]    Script Date: 1/16/2017 9:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Demo_EmergyCnt1](
	[Emrcnt1_id] [int] IDENTITY(1,1) NOT NULL,
	[Emrcnt1_Name] [varchar](50) NULL,
	[Emrcnt1_Addr1] [varchar](50) NULL,
	[Emrcnt1_Addr2] [varchar](50) NULL,
	[Emrcnt1_City] [varchar](50) NULL,
	[Emrcnt1_State] [varchar](50) NULL,
	[Emrcnt1_Zipcode] [varchar](50) NULL,
	[Emrcnt1_Homeph] [varchar](50) NULL,
	[Emrcnt1_Cellph] [varchar](50) NULL,
	[Emrcnt1_Workph] [varchar](50) NULL,
	[Emrcnt1_Relpatient] [varchar](50) NULL,
	[Patient_Id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Demo_EmergyCnt1] PRIMARY KEY CLUSTERED 
(
	[Emrcnt1_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Demo_EmergyCnt3]    Script Date: 1/16/2017 9:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Demo_EmergyCnt3](
	[Emrcnt3_id] [int] IDENTITY(1,1) NOT NULL,
	[Emrcnt3_Name] [varchar](50) NULL,
	[Emrcnt3_Addr1] [varchar](50) NULL,
	[Emrcnt3_Addr2] [varchar](50) NULL,
	[Emrcnt3_City] [varchar](50) NULL,
	[Emrcnt3_State] [varchar](50) NULL,
	[Emrcnt3_Zipcode] [varchar](50) NULL,
	[Emrcnt3_Homeph] [varchar](50) NULL,
	[Emrcnt3_Cellph] [varchar](50) NULL,
	[Emrcnt3_Workph] [varchar](50) NULL,
	[Emrcnt3_Relpatient] [varchar](50) NULL,
	[Patient_Id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Demo_EmergyCnt3] PRIMARY KEY CLUSTERED 
(
	[Emrcnt3_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Demo_Emp]    Script Date: 1/16/2017 9:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Demo_Emp](
	[Emp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Emp_Name] [varchar](50) NULL,
	[Emp_Addr1] [varchar](50) NULL,
	[Emp_Addr2] [varchar](50) NULL,
	[Emp_City] [varchar](50) NULL,
	[Emp_State] [varchar](50) NULL,
	[Emp_Zipcode] [varchar](50) NULL,
	[Patient_Id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Demo_Emp] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Demo_EmrgyCnt2]    Script Date: 1/16/2017 9:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Demo_EmrgyCnt2](
	[Emrcnt2_id] [int] IDENTITY(1,1) NOT NULL,
	[Emrcnt2_Name] [varchar](50) NULL,
	[Emrcnt2_Addr1] [varchar](50) NULL,
	[Emrcnt2_Addr2] [varchar](50) NULL,
	[Emrcnt2_City] [varchar](50) NULL,
	[Emrcnt2_State] [varchar](50) NULL,
	[Emrcnt2_Zipcode] [varchar](50) NULL,
	[Emrcnt2_Homeph] [varchar](50) NULL,
	[Emrcnt2_Cellph] [varchar](50) NULL,
	[Emrcnt2_Workph] [varchar](50) NULL,
	[Emrcnt2_Relpatient] [varchar](50) NULL,
	[Patient_Id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Demo_EmrgyCnt2] PRIMARY KEY CLUSTERED 
(
	[Emrcnt2_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Demogrphy_Main]    Script Date: 1/16/2017 9:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Demogrphy_Main](
	[P_Demoghy] [int] IDENTITY(1,1) NOT NULL,
	[P_Gender] [varchar](50) NOT NULL,
	[Race] [varchar](50) NOT NULL,
	[Ethnicity] [varchar](50) NOT NULL,
	[Language] [varchar](50) NOT NULL,
	[HomePhone] [varchar](50) NOT NULL,
	[CellPhone] [varchar](50) NOT NULL,
	[WorkPhone] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[DirectAddress] [varchar](50) NULL,
	[Phy_Addr1] [varchar](50) NOT NULL,
	[Phy_Addr2] [varchar](50) NOT NULL,
	[Phy_ACity] [varchar](50) NOT NULL,
	[Phy_AState] [varchar](50) NOT NULL,
	[Phy_AZipcode] [varchar](50) NOT NULL,
	[Insurance] [varchar](50) NULL,
	[HearAboutus] [varchar](50) NULL,
	[Provider] [varchar](50) NULL,
	[Patient_Id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Demogrphy_Main] PRIMARY KEY CLUSTERED 
(
	[P_Demoghy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Medical_History]    Script Date: 1/16/2017 9:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Medical_History](
	[Medical_Id] [int] IDENTITY(1,1) NOT NULL,
	[Medical_History] [varchar](max) NULL,
	[Other_Medical_Cond] [varchar](max) NULL,
	[Parent_Marital_Status] [varchar](50) NULL,
	[Allergy] [varchar](50) NULL,
	[Pharmacy] [varchar](50) NULL,
	[Lives_with] [varchar](50) NULL,
	[Occupation] [varchar](50) NULL,
	[Pets] [varchar](50) NULL,
	[Smoke_Detector] [varchar](50) NULL,
	[Smoking_Status] [varchar](50) NULL,
	[Comment] [varchar](max) NULL,
	[Start_Smoking_Date] [varchar](50) NULL,
	[Quit_Smoking_Date] [varchar](50) NULL,
	[Smoke_Exposure] [varchar](50) NULL,
	[CO_Detector] [varchar](50) NULL,
	[Firearms] [varchar](50) NULL,
	[Type_Day_Care] [varchar](50) NULL,
	[Day_Care_days_per_week] [varchar](50) NULL,
	[Current_school_level] [varchar](50) NULL,
	[Average_Grades] [varchar](50) NULL,
	[Activities] [varchar](50) NULL,
	[Bike_Helmet_usage] [varchar](50) NULL,
	[Seat_Helmet_usage] [varchar](50) NULL,
	[Car_Helemet_usage] [varchar](50) NULL,
	[Average_diet] [varchar](50) NULL,
	[Milk_usage] [varchar](50) NULL,
	[No_of_oz_per_day] [varchar](50) NULL,
	[Water_usage] [varchar](50) NULL,
	[Sleeping_location] [varchar](50) NULL,
	[Sleeping_frequency] [varchar](50) NULL,
	[Patient_Id] [int] NULL,
 CONSTRAINT [PK_tbl_Medical_History] PRIMARY KEY CLUSTERED 
(
	[Medical_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Medication]    Script Date: 1/16/2017 9:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Medication](
	[Medication_Id] [int] IDENTITY(1,1) NOT NULL,
	[Medication] [varchar](50) NULL,
	[strength] [varchar](50) NULL,
	[doseform] [varchar](50) NULL,
	[Patient_Id] [int] NULL,
 CONSTRAINT [PK_tbl_Medication] PRIMARY KEY CLUSTERED 
(
	[Medication_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Patient]    Script Date: 1/16/2017 9:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Patient](
	[Patient_Id] [int] IDENTITY(1,1) NOT NULL,
	[Patient_FName] [varchar](50) NOT NULL,
	[Patient_LName] [varchar](50) NOT NULL,
	[Patient_DOB] [date] NOT NULL,
	[Patient_Age] [varchar](50) NOT NULL,
	[Patient_CPwd] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Patient] PRIMARY KEY CLUSTERED 
(
	[Patient_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SurgeryMedication]    Script Date: 1/16/2017 9:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SurgeryMedication](
	[Surgery_Id] [int] IDENTITY(1,1) NOT NULL,
	[Surgery_Year] [varchar](50) NULL,
	[Surgery_Name] [varchar](50) NULL,
	[Surgery_Location] [varchar](50) NULL,
	[Patient_Id] [int] NULL,
 CONSTRAINT [PK_tbl_SurgeryMedication] PRIMARY KEY CLUSTERED 
(
	[Surgery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Demo_Bill] ON 

INSERT [dbo].[tbl_Demo_Bill] ([Bill_Id], [Bill_Addr1], [Bill_Addr2], [Bill_City], [Bill_State], [Bill_Zipcode], [Patient_Id]) VALUES (2, N'Shantinagar', N'wanawari', N'Pune', N'Maharshtra', N'411045', 2)
SET IDENTITY_INSERT [dbo].[tbl_Demo_Bill] OFF
SET IDENTITY_INSERT [dbo].[tbl_Demo_EmergyCnt1] ON 

INSERT [dbo].[tbl_Demo_EmergyCnt1] ([Emrcnt1_id], [Emrcnt1_Name], [Emrcnt1_Addr1], [Emrcnt1_Addr2], [Emrcnt1_City], [Emrcnt1_State], [Emrcnt1_Zipcode], [Emrcnt1_Homeph], [Emrcnt1_Cellph], [Emrcnt1_Workph], [Emrcnt1_Relpatient], [Patient_Id]) VALUES (2, N'Seema', N'Shantinagar', N'wanawari', N'Pune', N'Maharshtra', N'411045', N'9685741230', N'9685320147', N'8596741023', N'Mother', 2)
SET IDENTITY_INSERT [dbo].[tbl_Demo_EmergyCnt1] OFF
SET IDENTITY_INSERT [dbo].[tbl_Demo_EmergyCnt3] ON 

INSERT [dbo].[tbl_Demo_EmergyCnt3] ([Emrcnt3_id], [Emrcnt3_Name], [Emrcnt3_Addr1], [Emrcnt3_Addr2], [Emrcnt3_City], [Emrcnt3_State], [Emrcnt3_Zipcode], [Emrcnt3_Homeph], [Emrcnt3_Cellph], [Emrcnt3_Workph], [Emrcnt3_Relpatient], [Patient_Id]) VALUES (2, N'Nik', N'Shantinagar', N'wanawari', N'Pune', N'Maharshtra', N'411045', N'9685741230', N'9685320147', N'8596741023', N'Brother', 2)
SET IDENTITY_INSERT [dbo].[tbl_Demo_EmergyCnt3] OFF
SET IDENTITY_INSERT [dbo].[tbl_Demo_Emp] ON 

INSERT [dbo].[tbl_Demo_Emp] ([Emp_Id], [Emp_Name], [Emp_Addr1], [Emp_Addr2], [Emp_City], [Emp_State], [Emp_Zipcode], [Patient_Id]) VALUES (2, N'Anu', N'M.G.Road', N'Camp', N'Pune', N'Maharshtra', N'411038', 2)
SET IDENTITY_INSERT [dbo].[tbl_Demo_Emp] OFF
SET IDENTITY_INSERT [dbo].[tbl_Demo_EmrgyCnt2] ON 

INSERT [dbo].[tbl_Demo_EmrgyCnt2] ([Emrcnt2_id], [Emrcnt2_Name], [Emrcnt2_Addr1], [Emrcnt2_Addr2], [Emrcnt2_City], [Emrcnt2_State], [Emrcnt2_Zipcode], [Emrcnt2_Homeph], [Emrcnt2_Cellph], [Emrcnt2_Workph], [Emrcnt2_Relpatient], [Patient_Id]) VALUES (2, N'Raj', N'Shantinagar', N'wanawari', N'Pune', N'Maharshtra', N'411045', N'9685741230', N'9685320147', N'8596741023', N'Father', 2)
SET IDENTITY_INSERT [dbo].[tbl_Demo_EmrgyCnt2] OFF
SET IDENTITY_INSERT [dbo].[tbl_Demogrphy_Main] ON 

INSERT [dbo].[tbl_Demogrphy_Main] ([P_Demoghy], [P_Gender], [Race], [Ethnicity], [Language], [HomePhone], [CellPhone], [WorkPhone], [EmailAddress], [DirectAddress], [Phy_Addr1], [Phy_Addr2], [Phy_ACity], [Phy_AState], [Phy_AZipcode], [Insurance], [HearAboutus], [Provider], [Patient_Id]) VALUES (2, N'Female', N'IN', N'Indian', N'English(eng)', N'9685741230', N'9685320147', N'8596741023', N'anu@gmail.com', N'anuroy@gmail.com', N'Shantinagar', N'wanawari', N'Pune', N'Maharshtra', N'411045', N'1.UNITED HEALTHCARE (Policy #946960564)', N'Consultant', N'India', 2)
SET IDENTITY_INSERT [dbo].[tbl_Demogrphy_Main] OFF
SET IDENTITY_INSERT [dbo].[tbl_Medical_History] ON 

INSERT [dbo].[tbl_Medical_History] ([Medical_Id], [Medical_History], [Other_Medical_Cond], [Parent_Marital_Status], [Allergy], [Pharmacy], [Lives_with], [Occupation], [Pets], [Smoke_Detector], [Smoking_Status], [Comment], [Start_Smoking_Date], [Quit_Smoking_Date], [Smoke_Exposure], [CO_Detector], [Firearms], [Type_Day_Care], [Day_Care_days_per_week], [Current_school_level], [Average_Grades], [Activities], [Bike_Helmet_usage], [Seat_Helmet_usage], [Car_Helemet_usage], [Average_diet], [Milk_usage], [No_of_oz_per_day], [Water_usage], [Sleeping_location], [Sleeping_frequency], [Patient_Id]) VALUES (2, N'AAA,High Cholesterol,ADHD,Hyperlipidemia,', N'Normal', N'Married', N'Dust', N'MedicalMediance', N'Mother & Father', N'AS', N'Dog', N'Yes', N'Sometimes', N'NAS', N'01/15/2016', N'01/15/2017', N'No', N'No', N'Yes', N'Doctor checkup', N'Doctor checkup', N'Complted', N'A', N'Running', N'Daily', N'Daily', N'Daily', N'As required', N'Daily drinking', N'ABC', N'Daily as Required', N'Cot', N'8hr', 2)
SET IDENTITY_INSERT [dbo].[tbl_Medical_History] OFF
SET IDENTITY_INSERT [dbo].[tbl_Patient] ON 

INSERT [dbo].[tbl_Patient] ([Patient_Id], [Patient_FName], [Patient_LName], [Patient_DOB], [Patient_Age], [Patient_CPwd]) VALUES (2, N'Anu', N'Roy', CAST(0x68160B00 AS Date), N'26', N'anu1234')
SET IDENTITY_INSERT [dbo].[tbl_Patient] OFF
ALTER TABLE [dbo].[tbl_Demo_Bill]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Demo_Bill_tbl_Patient] FOREIGN KEY([Patient_Id])
REFERENCES [dbo].[tbl_Patient] ([Patient_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Demo_Bill] CHECK CONSTRAINT [FK_tbl_Demo_Bill_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Demo_EmergyCnt1]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Demo_EmergyCnt1_tbl_Patient] FOREIGN KEY([Patient_Id])
REFERENCES [dbo].[tbl_Patient] ([Patient_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Demo_EmergyCnt1] CHECK CONSTRAINT [FK_tbl_Demo_EmergyCnt1_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Demo_EmergyCnt3]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Demo_EmergyCnt3_tbl_Patient] FOREIGN KEY([Patient_Id])
REFERENCES [dbo].[tbl_Patient] ([Patient_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Demo_EmergyCnt3] CHECK CONSTRAINT [FK_tbl_Demo_EmergyCnt3_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Demo_Emp]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Demo_Emp_tbl_Patient] FOREIGN KEY([Patient_Id])
REFERENCES [dbo].[tbl_Patient] ([Patient_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Demo_Emp] CHECK CONSTRAINT [FK_tbl_Demo_Emp_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Demo_EmrgyCnt2]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Demo_EmrgyCnt2_tbl_Patient] FOREIGN KEY([Patient_Id])
REFERENCES [dbo].[tbl_Patient] ([Patient_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Demo_EmrgyCnt2] CHECK CONSTRAINT [FK_tbl_Demo_EmrgyCnt2_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Demogrphy_Main]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Demogrphy_Main_tbl_Patient] FOREIGN KEY([Patient_Id])
REFERENCES [dbo].[tbl_Patient] ([Patient_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Demogrphy_Main] CHECK CONSTRAINT [FK_tbl_Demogrphy_Main_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Medical_History]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Medical_History_tbl_Patient] FOREIGN KEY([Patient_Id])
REFERENCES [dbo].[tbl_Patient] ([Patient_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Medical_History] CHECK CONSTRAINT [FK_tbl_Medical_History_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Medication]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Medication_tbl_Patient] FOREIGN KEY([Patient_Id])
REFERENCES [dbo].[tbl_Patient] ([Patient_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Medication] CHECK CONSTRAINT [FK_tbl_Medication_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_SurgeryMedication]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SurgeryMedication_tbl_Patient] FOREIGN KEY([Patient_Id])
REFERENCES [dbo].[tbl_Patient] ([Patient_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_SurgeryMedication] CHECK CONSTRAINT [FK_tbl_SurgeryMedication_tbl_Patient]
GO
USE [master]
GO
ALTER DATABASE [HealthCare_DB] SET  READ_WRITE 
GO
