
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2026 12:32:25
-- Generated from EDMX file: C:\Users\opilane\source\repos\SpordiKlubModel\SpordiKlubModel\andmebaasSpordiklubmodel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SportKlub];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_LiikmeLiikmelisuePaketti]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LiikmelisuePakettiSet] DROP CONSTRAINT [FK_LiikmeLiikmelisuePaketti];
GO
IF OBJECT_ID(N'[dbo].[FK_TreenerTreening]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TreeningSet] DROP CONSTRAINT [FK_TreenerTreening];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[LiikmeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LiikmeSet];
GO
IF OBJECT_ID(N'[dbo].[LiikmelisuePakettiSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LiikmelisuePakettiSet];
GO
IF OBJECT_ID(N'[dbo].[TreenerSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TreenerSet];
GO
IF OBJECT_ID(N'[dbo].[SaalSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SaalSet];
GO
IF OBJECT_ID(N'[dbo].[TreeningSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TreeningSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'LiikmeSet'
CREATE TABLE [dbo].[LiikmeSet] (
    [LiikmeId] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perekonnanimi] nvarchar(max)  NOT NULL,
    [sunniaeg] nvarchar(max)  NOT NULL,
    [epost] nvarchar(max)  NOT NULL,
    [telefon] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LiikmelisuePakettiSet'
CREATE TABLE [dbo].[LiikmelisuePakettiSet] (
    [PaketID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [kuutasu] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [Liikme_LiikmeId] int  NOT NULL
);
GO

-- Creating table 'TreenerSet'
CREATE TABLE [dbo].[TreenerSet] (
    [TreenerId] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [epost] nvarchar(max)  NOT NULL,
    [telefon] nvarchar(max)  NOT NULL,
    [eriala] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SaalSet'
CREATE TABLE [dbo].[SaalSet] (
    [SaalID] int IDENTITY(1,1) NOT NULL,
    [number] nvarchar(max)  NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [maksimaalnemahutavus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TreeningSet'
CREATE TABLE [dbo].[TreeningSet] (
    [TreeningID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [raskusaste] nvarchar(max)  NOT NULL,
    [TreenerId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [LiikmeId] in table 'LiikmeSet'
ALTER TABLE [dbo].[LiikmeSet]
ADD CONSTRAINT [PK_LiikmeSet]
    PRIMARY KEY CLUSTERED ([LiikmeId] ASC);
GO

-- Creating primary key on [PaketID] in table 'LiikmelisuePakettiSet'
ALTER TABLE [dbo].[LiikmelisuePakettiSet]
ADD CONSTRAINT [PK_LiikmelisuePakettiSet]
    PRIMARY KEY CLUSTERED ([PaketID] ASC);
GO

-- Creating primary key on [TreenerId] in table 'TreenerSet'
ALTER TABLE [dbo].[TreenerSet]
ADD CONSTRAINT [PK_TreenerSet]
    PRIMARY KEY CLUSTERED ([TreenerId] ASC);
GO

-- Creating primary key on [SaalID] in table 'SaalSet'
ALTER TABLE [dbo].[SaalSet]
ADD CONSTRAINT [PK_SaalSet]
    PRIMARY KEY CLUSTERED ([SaalID] ASC);
GO

-- Creating primary key on [TreeningID] in table 'TreeningSet'
ALTER TABLE [dbo].[TreeningSet]
ADD CONSTRAINT [PK_TreeningSet]
    PRIMARY KEY CLUSTERED ([TreeningID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Liikme_LiikmeId] in table 'LiikmelisuePakettiSet'
ALTER TABLE [dbo].[LiikmelisuePakettiSet]
ADD CONSTRAINT [FK_LiikmeLiikmelisuePaketti]
    FOREIGN KEY ([Liikme_LiikmeId])
    REFERENCES [dbo].[LiikmeSet]
        ([LiikmeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LiikmeLiikmelisuePaketti'
CREATE INDEX [IX_FK_LiikmeLiikmelisuePaketti]
ON [dbo].[LiikmelisuePakettiSet]
    ([Liikme_LiikmeId]);
GO

-- Creating foreign key on [TreenerId] in table 'TreeningSet'
ALTER TABLE [dbo].[TreeningSet]
ADD CONSTRAINT [FK_TreenerTreening]
    FOREIGN KEY ([TreenerId])
    REFERENCES [dbo].[TreenerSet]
        ([TreenerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TreenerTreening'
CREATE INDEX [IX_FK_TreenerTreening]
ON [dbo].[TreeningSet]
    ([TreenerId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------