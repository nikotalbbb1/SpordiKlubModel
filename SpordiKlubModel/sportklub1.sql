
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2026 12:54:02
-- Generated from EDMX file: C:\Users\opilane\source\repos\SpordiKlubModel\SpordiKlubModel\andmebaasSpordiklubmodel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SportKlub1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_LiikmeLiikmelisuePaketti]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LiikmelisuePakettiSet] DROP CONSTRAINT [FK_LiikmeLiikmelisuePaketti];
GO
IF OBJECT_ID(N'[dbo].[FK_LiikmeRegistreerimine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RegistreerimineSet] DROP CONSTRAINT [FK_LiikmeRegistreerimine];
GO
IF OBJECT_ID(N'[dbo].[FK_SpordialaVoistlus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VoistlusSet] DROP CONSTRAINT [FK_SpordialaVoistlus];
GO
IF OBJECT_ID(N'[dbo].[FK_LiikmeLiikVoistluses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LiikVoistlusesSet] DROP CONSTRAINT [FK_LiikmeLiikVoistluses];
GO
IF OBJECT_ID(N'[dbo].[FK_VoistlusLiikVoistluses]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LiikVoistlusesSet] DROP CONSTRAINT [FK_VoistlusLiikVoistluses];
GO
IF OBJECT_ID(N'[dbo].[FK_SaalTreening]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TreeningSet] DROP CONSTRAINT [FK_SaalTreening];
GO
IF OBJECT_ID(N'[dbo].[FK_TreenerTreening]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TreeningSet] DROP CONSTRAINT [FK_TreenerTreening];
GO
IF OBJECT_ID(N'[dbo].[FK_RegistreerimineTreening]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TreeningSet] DROP CONSTRAINT [FK_RegistreerimineTreening];
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
IF OBJECT_ID(N'[dbo].[RegistreerimineSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RegistreerimineSet];
GO
IF OBJECT_ID(N'[dbo].[VoistlusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VoistlusSet];
GO
IF OBJECT_ID(N'[dbo].[SpordialaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SpordialaSet];
GO
IF OBJECT_ID(N'[dbo].[LiikVoistlusesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LiikVoistlusesSet];
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

-- Creating table 'RegistreerimineSet'
CREATE TABLE [dbo].[RegistreerimineSet] (
    [RegistreerimineId] int IDENTITY(1,1) NOT NULL,
    [registreerimisekuupaev] nvarchar(max)  NOT NULL,
    [status] nvarchar(max)  NOT NULL,
    [Liikme_LiikmeId] int  NOT NULL
);
GO

-- Creating table 'VoistlusSet'
CREATE TABLE [dbo].[VoistlusSet] (
    [VoistlusId] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [kuupaev] nvarchar(max)  NOT NULL,
    [asukoht] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [Spordiala_SporidalaID] int  NOT NULL
);
GO

-- Creating table 'SpordialaSet'
CREATE TABLE [dbo].[SpordialaSet] (
    [SporidalaID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LiikVoistlusesSet'
CREATE TABLE [dbo].[LiikVoistlusesSet] (
    [LiikVoistlusesID] int IDENTITY(1,1) NOT NULL,
    [Liikme_LiikmeId] int  NOT NULL,
    [Voistlus_VoistlusId] int  NOT NULL
);
GO

-- Creating table 'TreeningSet'
CREATE TABLE [dbo].[TreeningSet] (
    [TreeningID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [kestus] nvarchar(max)  NOT NULL,
    [raskusaste] nvarchar(max)  NOT NULL,
    [aeg] nvarchar(max)  NOT NULL,
    [Saal_SaalID] int  NOT NULL,
    [Treener_TreenerId] int  NOT NULL,
    [Registreerimine_RegistreerimineId] int  NOT NULL
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

-- Creating primary key on [RegistreerimineId] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [PK_RegistreerimineSet]
    PRIMARY KEY CLUSTERED ([RegistreerimineId] ASC);
GO

-- Creating primary key on [VoistlusId] in table 'VoistlusSet'
ALTER TABLE [dbo].[VoistlusSet]
ADD CONSTRAINT [PK_VoistlusSet]
    PRIMARY KEY CLUSTERED ([VoistlusId] ASC);
GO

-- Creating primary key on [SporidalaID] in table 'SpordialaSet'
ALTER TABLE [dbo].[SpordialaSet]
ADD CONSTRAINT [PK_SpordialaSet]
    PRIMARY KEY CLUSTERED ([SporidalaID] ASC);
GO

-- Creating primary key on [LiikVoistlusesID] in table 'LiikVoistlusesSet'
ALTER TABLE [dbo].[LiikVoistlusesSet]
ADD CONSTRAINT [PK_LiikVoistlusesSet]
    PRIMARY KEY CLUSTERED ([LiikVoistlusesID] ASC);
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

-- Creating foreign key on [Liikme_LiikmeId] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [FK_LiikmeRegistreerimine]
    FOREIGN KEY ([Liikme_LiikmeId])
    REFERENCES [dbo].[LiikmeSet]
        ([LiikmeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LiikmeRegistreerimine'
CREATE INDEX [IX_FK_LiikmeRegistreerimine]
ON [dbo].[RegistreerimineSet]
    ([Liikme_LiikmeId]);
GO

-- Creating foreign key on [Spordiala_SporidalaID] in table 'VoistlusSet'
ALTER TABLE [dbo].[VoistlusSet]
ADD CONSTRAINT [FK_SpordialaVoistlus]
    FOREIGN KEY ([Spordiala_SporidalaID])
    REFERENCES [dbo].[SpordialaSet]
        ([SporidalaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SpordialaVoistlus'
CREATE INDEX [IX_FK_SpordialaVoistlus]
ON [dbo].[VoistlusSet]
    ([Spordiala_SporidalaID]);
GO

-- Creating foreign key on [Liikme_LiikmeId] in table 'LiikVoistlusesSet'
ALTER TABLE [dbo].[LiikVoistlusesSet]
ADD CONSTRAINT [FK_LiikmeLiikVoistluses]
    FOREIGN KEY ([Liikme_LiikmeId])
    REFERENCES [dbo].[LiikmeSet]
        ([LiikmeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LiikmeLiikVoistluses'
CREATE INDEX [IX_FK_LiikmeLiikVoistluses]
ON [dbo].[LiikVoistlusesSet]
    ([Liikme_LiikmeId]);
GO

-- Creating foreign key on [Voistlus_VoistlusId] in table 'LiikVoistlusesSet'
ALTER TABLE [dbo].[LiikVoistlusesSet]
ADD CONSTRAINT [FK_VoistlusLiikVoistluses]
    FOREIGN KEY ([Voistlus_VoistlusId])
    REFERENCES [dbo].[VoistlusSet]
        ([VoistlusId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VoistlusLiikVoistluses'
CREATE INDEX [IX_FK_VoistlusLiikVoistluses]
ON [dbo].[LiikVoistlusesSet]
    ([Voistlus_VoistlusId]);
GO

-- Creating foreign key on [Saal_SaalID] in table 'TreeningSet'
ALTER TABLE [dbo].[TreeningSet]
ADD CONSTRAINT [FK_SaalTreening]
    FOREIGN KEY ([Saal_SaalID])
    REFERENCES [dbo].[SaalSet]
        ([SaalID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SaalTreening'
CREATE INDEX [IX_FK_SaalTreening]
ON [dbo].[TreeningSet]
    ([Saal_SaalID]);
GO

-- Creating foreign key on [Treener_TreenerId] in table 'TreeningSet'
ALTER TABLE [dbo].[TreeningSet]
ADD CONSTRAINT [FK_TreenerTreening]
    FOREIGN KEY ([Treener_TreenerId])
    REFERENCES [dbo].[TreenerSet]
        ([TreenerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TreenerTreening'
CREATE INDEX [IX_FK_TreenerTreening]
ON [dbo].[TreeningSet]
    ([Treener_TreenerId]);
GO

-- Creating foreign key on [Registreerimine_RegistreerimineId] in table 'TreeningSet'
ALTER TABLE [dbo].[TreeningSet]
ADD CONSTRAINT [FK_RegistreerimineTreening]
    FOREIGN KEY ([Registreerimine_RegistreerimineId])
    REFERENCES [dbo].[RegistreerimineSet]
        ([RegistreerimineId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegistreerimineTreening'
CREATE INDEX [IX_FK_RegistreerimineTreening]
ON [dbo].[TreeningSet]
    ([Registreerimine_RegistreerimineId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------