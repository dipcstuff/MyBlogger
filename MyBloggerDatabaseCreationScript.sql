USE [master]
GO

Create Database MyBlogger

GO

Use MyBlogger

GO

CREATE TABLE Users (
  Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
  Username varchar(255) NOT NULL,
  Email varchar(255) NOT NULL,
  UserRoleId int NOT NULL,
  Password varchar(255) NOT NULL,
  CreatedOn datetime NULL DEFAULT CURRENT_TIMESTAMP,
  UpdatedOn datetime NULL DEFAULT NULL
)

CREATE TABLE UserRole (
  Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
  UserRole varchar(255) NOT NULL,
)

CREATE TABLE Posts (
 Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
 UserId int DEFAULT NULL,
 Title varchar(255) NOT NULL,
 Slug varchar(255) NOT NULL UNIQUE,
 NoOfViews int NOT NULL DEFAULT 0,
 Image varchar(255) NOT NULL,
 Body text NOT NULL,
 Published bit NOT NULL DEFAULT 0,
 CreatedOn datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
 UpdatedOn datetime NULL
)

GO

ALTER TABLE Users  WITH NOCHECK ADD FOREIGN KEY(UserRoleId)
REFERENCES UserRole (Id)

GO

ALTER TABLE Posts  WITH NOCHECK ADD FOREIGN KEY(UserId)
REFERENCES Users (Id)

GO