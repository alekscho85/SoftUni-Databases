USE [master]
GO
/****** Object:  Database [University]    Script Date: 6/26/2015 10:17:09 PM ******/
CREATE DATABASE [University]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'University', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\University.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'University_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\University_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [University] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [University].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [University] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [University] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [University] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [University] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [University] SET ARITHABORT OFF 
GO
ALTER DATABASE [University] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [University] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [University] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [University] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [University] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [University] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [University] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [University] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [University] SET  DISABLE_BROKER 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [University] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [University] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [University] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [University] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [University] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [University] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [University] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [University] SET  MULTI_USER 
GO
ALTER DATABASE [University] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [University] SET DB_CHAINING OFF 
GO
ALTER DATABASE [University] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [University] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [University] SET DELAYED_DURABILITY = DISABLED 
GO
USE [University]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CoursesStudents]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoursesStudents](
	[CourseId] [int] NOT NULL,
	[StudentId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DepartmentFaculties]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentFaculties](
	[IdFaculty] [int] NOT NULL,
	[IdDepartment] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DepartmentsCourses]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentsCourses](
	[DepartmentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DepartmentsProfessors]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentsProfessors](
	[DepartmentId] [int] NOT NULL,
	[ProfessorId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proffesors]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proffesors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Proffesors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProffesorsCourses]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProffesorsCourses](
	[IdProffesor] [int] NOT NULL,
	[IdCourse] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProffesorsTitles]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProffesorsTitles](
	[IdProffesor] [int] NOT NULL,
	[IdTitle] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](25) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL,
	[FacultyId] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Titles]    Script Date: 6/26/2015 10:17:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CoursesStudents]  WITH CHECK ADD  CONSTRAINT [FK_CoursesStudents_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[CoursesStudents] CHECK CONSTRAINT [FK_CoursesStudents_Courses]
GO
ALTER TABLE [dbo].[CoursesStudents]  WITH CHECK ADD  CONSTRAINT [FK_CoursesStudents_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[CoursesStudents] CHECK CONSTRAINT [FK_CoursesStudents_Students]
GO
ALTER TABLE [dbo].[DepartmentFaculties]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentFaculties_Departments] FOREIGN KEY([IdDepartment])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[DepartmentFaculties] CHECK CONSTRAINT [FK_DepartmentFaculties_Departments]
GO
ALTER TABLE [dbo].[DepartmentFaculties]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentFaculties_Faculties] FOREIGN KEY([IdFaculty])
REFERENCES [dbo].[Faculties] ([Id])
GO
ALTER TABLE [dbo].[DepartmentFaculties] CHECK CONSTRAINT [FK_DepartmentFaculties_Faculties]
GO
ALTER TABLE [dbo].[DepartmentsCourses]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentsCourses_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[DepartmentsCourses] CHECK CONSTRAINT [FK_DepartmentsCourses_Courses]
GO
ALTER TABLE [dbo].[DepartmentsCourses]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentsCourses_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[DepartmentsCourses] CHECK CONSTRAINT [FK_DepartmentsCourses_Departments]
GO
ALTER TABLE [dbo].[DepartmentsProfessors]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentsProfessors_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[DepartmentsProfessors] CHECK CONSTRAINT [FK_DepartmentsProfessors_Departments]
GO
ALTER TABLE [dbo].[DepartmentsProfessors]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentsProfessors_Proffesors] FOREIGN KEY([ProfessorId])
REFERENCES [dbo].[Proffesors] ([Id])
GO
ALTER TABLE [dbo].[DepartmentsProfessors] CHECK CONSTRAINT [FK_DepartmentsProfessors_Proffesors]
GO
ALTER TABLE [dbo].[ProffesorsCourses]  WITH CHECK ADD  CONSTRAINT [FK_ProffesorsCourses_Courses] FOREIGN KEY([IdCourse])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[ProffesorsCourses] CHECK CONSTRAINT [FK_ProffesorsCourses_Courses]
GO
ALTER TABLE [dbo].[ProffesorsCourses]  WITH CHECK ADD  CONSTRAINT [FK_ProffesorsCourses_Proffesors] FOREIGN KEY([IdProffesor])
REFERENCES [dbo].[Proffesors] ([Id])
GO
ALTER TABLE [dbo].[ProffesorsCourses] CHECK CONSTRAINT [FK_ProffesorsCourses_Proffesors]
GO
ALTER TABLE [dbo].[ProffesorsTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProffesorsTitles_Proffesors] FOREIGN KEY([IdProffesor])
REFERENCES [dbo].[Proffesors] ([Id])
GO
ALTER TABLE [dbo].[ProffesorsTitles] CHECK CONSTRAINT [FK_ProffesorsTitles_Proffesors]
GO
ALTER TABLE [dbo].[ProffesorsTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProffesorsTitles_Titles] FOREIGN KEY([IdTitle])
REFERENCES [dbo].[Titles] ([Id])
GO
ALTER TABLE [dbo].[ProffesorsTitles] CHECK CONSTRAINT [FK_ProffesorsTitles_Titles]
GO
USE [master]
GO
ALTER DATABASE [University] SET  READ_WRITE 
GO
