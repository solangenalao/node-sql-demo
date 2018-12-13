CREATE DATABASE Spotify;
GO

USE Spotify;

CREATE TABLE Singers (
  Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  Name NVARCHAR(20),
  Description NVARCHAR(300)
);
GO

CREATE TABLE Albums (
  Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  SingerId INT FOREIGN KEY REFERENCES Singers(Id),
  Name NVARCHAR(20),
  Year Int
);
GO

CREATE TABLE Songs (
  Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  AlbumId INT FOREIGN KEY REFERENCES Albums(Id),
  Name NVARCHAR(20),
  Composer NVARCHAR(50)
);
GO
