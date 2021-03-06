USE [master]
GO
/****** Object:  Database [aspnet-Online_Questionnair-20180610074340]    Script Date: 6/13/2018 1:51:40 PM ******/
CREATE DATABASE [aspnet-Online_Questionnair-20180610074340] ON  PRIMARY 
( NAME = N'aspnet-Online_Questionnair-20180610074340', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\aspnet-Online_Questionnair-20180610074340.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'aspnet-Online_Questionnair-20180610074340_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\aspnet-Online_Questionnair-20180610074340_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-Online_Questionnair-20180610074340].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET RECOVERY FULL 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET DB_CHAINING OFF 
GO
USE [aspnet-Online_Questionnair-20180610074340]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/13/2018 1:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 6/13/2018 1:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[AnswerId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[AnswerText] [nvarchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsCorrectAnswer] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/13/2018 1:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/13/2018 1:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/13/2018 1:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/13/2018 1:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/13/2018 1:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
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
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterQuestion]    Script Date: 6/13/2018 1:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterQuestion](
	[MasterQuestionId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionValidFrom] [datetime] NOT NULL,
	[QuestionValidTo] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MasterQuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 6/13/2018 1:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionText] [nvarchar](100) NOT NULL,
	[MasterQuestionId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserWiseQuestionAnswer]    Script Date: 6/13/2018 1:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserWiseQuestionAnswer](
	[UserWiseQuestionAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](100) NULL,
	[QuestionId] [int] NOT NULL,
	[AnswerId] [int] NOT NULL,
	[IsSubmit] [bit] NOT NULL,
	[IsCorrect] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserWiseQuestionAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201806101631321_InitialCreate', N'Online_Questionnair.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A7738AD4CAE5EC621BD82D52276983B3B9749D2DCE5B404BB443AC44A912952628FACBFAD09F74FEC2194A942CF1A28BADD84EB1C0C22287DF0C874372381CE67F7FFE35FEFE39F0AD271C2724A413FB6874685B98BAA147E87262A76CF1CD07FBFBEFFEF1D5F8C20B9EAD5F0ABA134E072D6932B11F198B4E1D27711F7180925140DC384CC2051BB961E0202F748E0F0FBF758E8E1C0C10366059D6F8534A190970F6019FD390BA386229F2AF430FFB8928879A59866ADDA000271172F1C4BEA53EA1F8E1E714270C64A188C4A3BC956D9DF904814433EC2F6C0B511A32C4694E3F2778C6E2902E67111420FFFE25C240B7407E82453F4E57E45DBB7478CCBBE4AC1A16506E9AB030E80978742274E4C8CDD7D2B45DEA10B47801DA662FBCD7992627F69587B3A24FA10F0A90199E4EFD98134FECEB92C55912DD60362A1A8E72C8CB18E07E0BE32FA32AE281D5B9DD416953C7A343FEEFC09AA63E4B633CA1386531F20FACBB74EE13F73FF8E53EFC82E9E4E468BE38F9F0EE3DF24EDEFF1B9FBCABF614FA0A74B50228BA8BC308C7201B5E94FDB72DA7DECE911B96CD2A6D72AD802DC1F4B0AD6BF4FC11D3257B848973FCC1B62EC933F68A12615C9F2981D9048D589CC2E74DEAFB68EEE3B2DE69E4C9FF6FE07AFCEEFD205C6FD0135966432FF1878913C3BCFA84FDAC367924513EBD6AE3FD20C82EE330E0DF75FBCA6B1F66611ABBBC33A191E41EC54BCCEAD28D9D95F17632690E35BC5917A8FB6FDA5C52D5BCB5A4BC43EBCC8482C5B6674321EFEBF2ED6C7167510483979916D74893C19937AD91847260696857A674D4D5942874F1EFBC325E0488F8032C8D1DB88077B2207180CB5EFE10822122DA5BE63B9424B032783FA1E4B14174F83980E833ECA63118EC8CA1207A756E778F21C5376930E7F3607BBC061B9AFBDFC24BE4B230BEA0BCD5C6781F43F74B98B20BEA9D23863F33B700E49FF724E80E30883867AE8B93E4128C197BD3109CEF02F08AB293E3DE707CA1DAB56B32F51109F4BE89B4A43E14A42BFF444FA1F82806329D9FD224EAC770496837510B52B3A83945ABA882ACAFA81CAC9BA482D22C6846D02A674E3598E7978DD0F0AE5F06BBFFBEDF669BB7692DA8A871062B24FE11531CC332E6DD21C6704C5723D065DDD885B3900D1F67FAEA7B53C6E917E4A743B35A6B36648BC0F0B32183DDFFD9908909C54FC4E35E49870351410CF09DE8F567ADF6392749B6EDE950EBE6B6996F670D304D97B324095D92CD024D284C0432EAF2830F67B54735F2DEC89111E818183AE15B1E9440DF6CD9A86EE939F631C3D6999B870AA7287191A7AA113AE4F510ACD8513582AD222475E1BE567882A5E3983742FC1094C04C2594A9D382509744C86FD592D4B2E316C6FB5EF2906BCE71842967D8AA892ECCF501112E40C9471A94360D8D9D8AC5351BA2C16B358D799B0BBB1A77254EB1159B6CF19D0D7629FCB75731CC668D6DC1389B55D2450063706F17062ACE2A5D0D403EB8EC9B814A272683810A976A2B065AD7D80E0CB4AE923767A0F911B5EBF84BE7D57D33CFFA4179FBDB7AA3BA76609B357DEC9969E6BE27B461D002C7AA799ECF79257E669AC319C829CE678970756513E1E033CCEA219B95BFABF5439D6610D9889A005786D6022AAE0515206542F510AE88E5354A27BC881EB045DCAD1156ACFD126CC50654ECEAF56885D07C892A1B67A7D347D9B3D21A1423EF7458A8E0680C425EBCEA1DEFA014535C56554C175FB88F375CE998188C0605B578AE0625159D195C4B8569B66B49E790F571C936D292E43E19B4547466702D091B6D5792C629E8E1166CA4A2FA163ED0642B221DE56E53D68D9D3C7B4A148C1D439AD5F81A4511A1CB4ADA9528B16679CED5F49B59FF24A420C770DC44938B544A5B7262618C9658AA05D620E9258913768E189A231EE7997A8142A6DD5B0DCB7FC1B2BA7DAA8358EC030535FF9DB768B8CCAFEDB9AA5322B02EA1A701F76CB270BAC60EF4CD2D9E0E877C146B22F8D3D04F036A76B4CCADF37BBC6AFBBC4445183B92FC8A23A5684D7177EB43D06980D4C931F06095FECCFA03668630A9BDF046AB8A3779A86694226055453105B176368026C766AD41937DC7FE63D68AF03AF34C24AC540144514F8C4ACE830256A9EB8E5A4F4BA962D66BBA234AB9275548A9AA8794D50C939A90D58AB5F00C1AD55374E7A0E69454D1D5DAEEC89AEC922AB4A67A0D6C8DCC725D77544D024A155853DD1D7B958D222FA67BBC93194F341B6F65F9E177B3BDCC80F13A2BE3305B61E58EBF0A5429EE89256EF1153051BE9756653C016E6C5579EC6333AB32609857A2DA2D797D216ABCDA3763D6AEBE6B8B7DD3D5BF19AF9FEDBEAA8528074199A4E45E1E08A583DF581CC2DA1FE128A7B29CC4B60A35C246FF92301C8C38C168F6AB3FF509E6CB7A41708D285980C9E5E91EF6F1E1D1B1F47E677FDED23849E2F99A43ACE9414D7DCCB690B9459F50EC3EA258CDA3D8E0BDC90A5409515F510F3F4FECDFB356A759B483FFCA8A0FACABE43325BFA650711FA7D8FA43CD0B1D26FFBEF9F0B5A7AF25BA6BF5EABF0F79D303EB368619736A1D4ABA5C6784EB6F287A499337DD409AB55F56BCDD09557BA6A0459526C4FAAF12E6840DF222A190F29F017AFE575FD1B4AF0E3642D4BC2C180A6F10159A5E0EAC83657C35E0C127CB5E0DF4EBACFE15C13AA2195F1010DA1F4C7E3FD07D192A5AEE70ABD19C8DB6B124657A6ECDBFDE281973D77B9392A6BDD1445753B17BC06D906EBD8665BCB14CE5C176474D22F260D8BB34ED57CF3EDE9784E3552AC86EF38CB7995ADC705DF4B7CA28DE831C384D4ECFEEF386B76D6BA678EE9E275FF6CB0EDE336313995EBBCF01DEB6B199C2BC7B6E6CBD327DF7CCD676B57FEED8D23A6FA13BCFDB5553900CF732BA58705B5E6E1E388713FE3C0423C83DCAFC39A53E11AC2989B585E18AC4CCD49C81263356268EC257A16866DBAFAF62C36FECACA069666BC8DB6CE22DD6FF46DE82A699B7211B721719C5DA7C445D9677CB3AD6941CF59632886B3D6949586FF3591B2FD9DF52C2F0204AA9CD1EC31DF1DBC90F1E4425434E9D1EF9C0EA752FEC9D95BFCC08FB7742962B08FE771A29766BBB664973451761B1794B1215245284E61A33E4C1967A1633B2402E836A1E63CEDE8367713B7ED331C7DE15BD4D599432E8320EE67E2DE0C59D8026FE59D2735DE6F16DC4BF9221BA0062121E9BBFA53FA4C4F74AB92F3531210304F72E4444978F25E391DDE54B897413D28E40427DA553748F83C807B0E496CED0135E473630BF8F7889DC975504D004D23E1075B58FCF095AC6284804C6AA3D7C820D7BC1F377FF077B8EDE88A0540000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (1, 3, N'Answer 1', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (2, 4, N'Answer 2', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (3, 3, N'Answer 3', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (4, 4, N'Answer 4', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (5, 5, N'Answer 5', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (6, 5, N'Answer 6', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (7, 6, N'Answer 7', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (8, 6, N'Answer 8', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (9, 7, N'Answer 9', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (10, 7, N'Answer  10', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (11, 8, N'Answer 11', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (12, 8, N'Answer 12', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (13, 9, N'Answer 13', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (14, 9, N'Answer 14', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (15, 10, N'Answer 15', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (16, 10, N'Answer 16', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (17, 11, N'Answer 17', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (18, 11, N'Answer 18', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (19, 12, N'Answer 19', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (20, 12, N'Answer 20', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (22, 13, N'Answer 21', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (23, 13, N'Answer 22', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (24, 14, N'Answer 23', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (25, 14, N'Answer 24', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (27, 16, N'Answer 25', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (28, 16, N'Answer 26', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (29, 17, N'Answer 27', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (30, 17, N'Answer 28', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (31, 18, N'Answer 29', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (32, 18, N'Answer 30', 1, 0)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (33, 19, N'Answer 31', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (34, 21, N'Answer 32', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (35, 22, N'Answer 33', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (36, 23, N'Answer 34', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (37, 24, N'Answer 35', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (38, 25, N'Answer 36', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (39, 26, N'Answer 37', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (40, 27, N'Answer 38', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (41, 28, N'Answer 39', 1, 1)
INSERT [dbo].[Answers] ([AnswerId], [QuestionId], [AnswerText], [IsActive], [IsCorrectAnswer]) VALUES (42, 29, N'Answer 40', 1, 1)
SET IDENTITY_INSERT [dbo].[Answers] OFF
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'29f5fd68-e3d7-42db-ab51-39ebd7796135', N'Test@Tester.com', 0, N'AO7iHisnyFnG9nPUPFhwAa0bZ+CXo9Wj2mWPQ01aKTJlDrzHl76voNC9fyqP62b3nQ==', N'c9c55c4a-8eb2-4b56-8fec-23d0fc1ec173', NULL, 0, 0, NULL, 1, 0, N'Test@Tester.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'968edd45-f3c1-46b5-a8af-0615182d508d', N'er.himanshu.tewari@gmail.com', 0, N'AFp42+KkqPxdhilDNXuUK+xsZvKMwQcL+JQtZxYYbEasYfRoz7Q7KerFfGU4IuXXiQ==', N'5418d751-f8cb-46a0-90b7-5229773cf629', NULL, 0, 0, NULL, 1, 0, N'er.himanshu.tewari@gmail.com')
SET IDENTITY_INSERT [dbo].[MasterQuestion] ON 

INSERT [dbo].[MasterQuestion] ([MasterQuestionId], [QuestionValidFrom], [QuestionValidTo], [IsActive]) VALUES (1, CAST(N'2018-06-10T00:00:00.000' AS DateTime), CAST(N'2018-06-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[MasterQuestion] ([MasterQuestionId], [QuestionValidFrom], [QuestionValidTo], [IsActive]) VALUES (2, CAST(N'2018-06-10T00:00:00.000' AS DateTime), CAST(N'2018-06-30T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[MasterQuestion] OFF
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (3, N'Question 1', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (4, N'Question 2', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (5, N'Question 3', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (6, N'Question 4', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (7, N'Question 5', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (8, N'Question 6', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (9, N'Question 7', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (10, N'Question 8', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (11, N'Question 9', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (12, N'Question 10', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (13, N'Question 11', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (14, N'Question 12', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (16, N'Question 13', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (17, N'Question 14', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (18, N'Question 15', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (19, N'Question 16', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (21, N'Question 17', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (22, N'Question 18', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (23, N'Question 19', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (24, N'Question 20', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (25, N'Question 21', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (26, N'Question 22', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (27, N'Question 23', 1, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (28, N'Question 24', 2, 1)
INSERT [dbo].[Questions] ([QuestionId], [QuestionText], [MasterQuestionId], [IsActive]) VALUES (29, N'Question 25', 1, 1)
SET IDENTITY_INSERT [dbo].[Questions] OFF
SET IDENTITY_INSERT [dbo].[UserWiseQuestionAnswer] ON 

INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (1, N'968edd45-f3c1-46b5-a8af-0615182d508d', 4, 2, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (2, N'968edd45-f3c1-46b5-a8af-0615182d508d', 10, 16, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (3, N'968edd45-f3c1-46b5-a8af-0615182d508d', 18, 31, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (4, N'968edd45-f3c1-46b5-a8af-0615182d508d', 7, 10, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (5, N'968edd45-f3c1-46b5-a8af-0615182d508d', 9, 13, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (6, N'968edd45-f3c1-46b5-a8af-0615182d508d', 11, 17, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (7, N'968edd45-f3c1-46b5-a8af-0615182d508d', 12, 19, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (8, N'968edd45-f3c1-46b5-a8af-0615182d508d', 17, 30, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (9, N'968edd45-f3c1-46b5-a8af-0615182d508d', 6, 7, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (10, N'968edd45-f3c1-46b5-a8af-0615182d508d', 14, 25, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (11, N'968edd45-f3c1-46b5-a8af-0615182d508d', 5, 5, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (12, N'968edd45-f3c1-46b5-a8af-0615182d508d', 3, 3, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (13, N'968edd45-f3c1-46b5-a8af-0615182d508d', 8, 12, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (14, N'968edd45-f3c1-46b5-a8af-0615182d508d', 16, 27, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (15, N'968edd45-f3c1-46b5-a8af-0615182d508d', 22, 35, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (16, N'29f5fd68-e3d7-42db-ab51-39ebd7796135', 4, 4, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (17, N'29f5fd68-e3d7-42db-ab51-39ebd7796135', 6, 8, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (18, N'29f5fd68-e3d7-42db-ab51-39ebd7796135', 10, 15, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (19, N'29f5fd68-e3d7-42db-ab51-39ebd7796135', 9, 13, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (20, N'29f5fd68-e3d7-42db-ab51-39ebd7796135', 12, 19, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (21, N'29f5fd68-e3d7-42db-ab51-39ebd7796135', 18, 32, 1, 0)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (22, N'29f5fd68-e3d7-42db-ab51-39ebd7796135', 16, 27, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (23, N'29f5fd68-e3d7-42db-ab51-39ebd7796135', 17, 29, 1, 1)
INSERT [dbo].[UserWiseQuestionAnswer] ([UserWiseQuestionAnswerId], [UserId], [QuestionId], [AnswerId], [IsSubmit], [IsCorrect]) VALUES (24, N'29f5fd68-e3d7-42db-ab51-39ebd7796135', 13, 23, 1, 0)
SET IDENTITY_INSERT [dbo].[UserWiseQuestionAnswer] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/13/2018 1:51:40 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/13/2018 1:51:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/13/2018 1:51:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/13/2018 1:51:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/13/2018 1:51:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/13/2018 1:51:40 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Answers] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Answers] ADD  DEFAULT ((0)) FOR [IsCorrectAnswer]
GO
ALTER TABLE [dbo].[MasterQuestion] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Questions] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UserWiseQuestionAnswer] ADD  DEFAULT ((0)) FOR [IsSubmit]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [QuestionId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [MasterQuestionId] FOREIGN KEY([MasterQuestionId])
REFERENCES [dbo].[MasterQuestion] ([MasterQuestionId])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [MasterQuestionId]
GO
ALTER TABLE [dbo].[UserWiseQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_AnswerId] FOREIGN KEY([AnswerId])
REFERENCES [dbo].[Answers] ([AnswerId])
GO
ALTER TABLE [dbo].[UserWiseQuestionAnswer] CHECK CONSTRAINT [FK_AnswerId]
GO
ALTER TABLE [dbo].[UserWiseQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
GO
ALTER TABLE [dbo].[UserWiseQuestionAnswer] CHECK CONSTRAINT [FK_QuestionId]
GO
USE [master]
GO
ALTER DATABASE [aspnet-Online_Questionnair-20180610074340] SET  READ_WRITE 
GO
