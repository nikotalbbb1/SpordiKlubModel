
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/22/2026 10:27:38
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
IF OBJECT_ID(N'[dbo].[FK_LiikVoistlusesOsalemine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OsalemineSet] DROP CONSTRAINT [FK_LiikVoistlusesOsalemine];
GO
IF OBJECT_ID(N'[dbo].[FK_OstOsturida]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OsturidaSet] DROP CONSTRAINT [FK_OstOsturida];
GO
IF OBJECT_ID(N'[dbo].[FK_ToodeOsturida]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OsturidaSet] DROP CONSTRAINT [FK_ToodeOsturida];
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
IF OBJECT_ID(N'[dbo].[OsalemineSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OsalemineSet];
GO
IF OBJECT_ID(N'[dbo].[OstSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OstSet];
GO
IF OBJECT_ID(N'[dbo].[ToodeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ToodeSet];
GO
IF OBJECT_ID(N'[dbo].[OsturidaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OsturidaSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'LiikmeSet'
CREATE TABLE [dbo].[LiikmeSet] (
    [LiikmeId] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perekonnanimi] nvarchar(max)  NOT NULL,
    [sunniaeg] datetime  NOT NULL,
    [epost] nvarchar(max)  NOT NULL,
    [telefon] int  NOT NULL
);
GO

-- Creating table 'LiikmelisuePakettiSet'
CREATE TABLE [dbo].[LiikmelisuePakettiSet] (
    [PaketID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [kuutasu] int  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [Liikme_LiikmeId] int  NOT NULL
);
GO

-- Creating table 'TreenerSet'
CREATE TABLE [dbo].[TreenerSet] (
    [TreenerId] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [epost] nvarchar(max)  NOT NULL,
    [telefon] int  NOT NULL,
    [eriala] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SaalSet'
CREATE TABLE [dbo].[SaalSet] (
    [SaalID] int IDENTITY(1,1) NOT NULL,
    [number] int  NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [maksimaalnemahutavus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RegistreerimineSet'
CREATE TABLE [dbo].[RegistreerimineSet] (
    [RegistreerimineId] int IDENTITY(1,1) NOT NULL,
    [registreerimisekuupaev] datetime  NOT NULL,
    [status] bit  NOT NULL,
    [Liikme_LiikmeId] int  NOT NULL
);
GO

-- Creating table 'VoistlusSet'
CREATE TABLE [dbo].[VoistlusSet] (
    [VoistlusId] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [kuupaev] datetime  NOT NULL,
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
    [kestus] int  NOT NULL,
    [raskusaste] nvarchar(max)  NOT NULL,
    [aeg] datetime  NOT NULL,
    [Saal_SaalID] int  NOT NULL,
    [Treener_TreenerId] int  NOT NULL,
    [Registreerimine_RegistreerimineId] int  NOT NULL
);
GO

-- Creating table 'OsalemineSet'
CREATE TABLE [dbo].[OsalemineSet] (
    [OsalemineId] int IDENTITY(1,1) NOT NULL,
    [tulemus] nvarchar(max)  NOT NULL,
    [koht] int  NOT NULL,
    [LiikVoistluses_LiikVoistlusesID] int  NOT NULL
);
GO

-- Creating table 'OstSet'
CREATE TABLE [dbo].[OstSet] (
    [OstID] int IDENTITY(1,1) NOT NULL,
    [ostuskuupaev] datetime  NOT NULL,
    [kogus] int  NOT NULL
);
GO

-- Creating table 'ToodeSet'
CREATE TABLE [dbo].[ToodeSet] (
    [ToodeID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [hind] int  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [laoseis] bit  NOT NULL
);
GO

-- Creating table 'OsturidaSet'
CREATE TABLE [dbo].[OsturidaSet] (
    [OsturidaID] int IDENTITY(1,1) NOT NULL,
    [kogus] int  NOT NULL,
    [Ost_OstID] int  NOT NULL,
    [Toode_ToodeID] int  NOT NULL
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

-- Creating primary key on [OsalemineId] in table 'OsalemineSet'
ALTER TABLE [dbo].[OsalemineSet]
ADD CONSTRAINT [PK_OsalemineSet]
    PRIMARY KEY CLUSTERED ([OsalemineId] ASC);
GO

-- Creating primary key on [OstID] in table 'OstSet'
ALTER TABLE [dbo].[OstSet]
ADD CONSTRAINT [PK_OstSet]
    PRIMARY KEY CLUSTERED ([OstID] ASC);
GO

-- Creating primary key on [ToodeID] in table 'ToodeSet'
ALTER TABLE [dbo].[ToodeSet]
ADD CONSTRAINT [PK_ToodeSet]
    PRIMARY KEY CLUSTERED ([ToodeID] ASC);
GO

-- Creating primary key on [OsturidaID] in table 'OsturidaSet'
ALTER TABLE [dbo].[OsturidaSet]
ADD CONSTRAINT [PK_OsturidaSet]
    PRIMARY KEY CLUSTERED ([OsturidaID] ASC);
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

-- Creating foreign key on [LiikVoistluses_LiikVoistlusesID] in table 'OsalemineSet'
ALTER TABLE [dbo].[OsalemineSet]
ADD CONSTRAINT [FK_LiikVoistlusesOsalemine]
    FOREIGN KEY ([LiikVoistluses_LiikVoistlusesID])
    REFERENCES [dbo].[LiikVoistlusesSet]
        ([LiikVoistlusesID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LiikVoistlusesOsalemine'
CREATE INDEX [IX_FK_LiikVoistlusesOsalemine]
ON [dbo].[OsalemineSet]
    ([LiikVoistluses_LiikVoistlusesID]);
GO

-- Creating foreign key on [Ost_OstID] in table 'OsturidaSet'
ALTER TABLE [dbo].[OsturidaSet]
ADD CONSTRAINT [FK_OstOsturida]
    FOREIGN KEY ([Ost_OstID])
    REFERENCES [dbo].[OstSet]
        ([OstID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OstOsturida'
CREATE INDEX [IX_FK_OstOsturida]
ON [dbo].[OsturidaSet]
    ([Ost_OstID]);
GO

-- Creating foreign key on [Toode_ToodeID] in table 'OsturidaSet'
ALTER TABLE [dbo].[OsturidaSet]
ADD CONSTRAINT [FK_ToodeOsturida]
    FOREIGN KEY ([Toode_ToodeID])
    REFERENCES [dbo].[ToodeSet]
        ([ToodeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToodeOsturida'
CREATE INDEX [IX_FK_ToodeOsturida]
ON [dbo].[OsturidaSet]
    ([Toode_ToodeID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------