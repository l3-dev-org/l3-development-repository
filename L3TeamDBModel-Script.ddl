CREATE TABLE Articles 
    (
     Id INTEGER NOT NULL , 
     Name VARCHAR , 
     Summary VARCHAR , 
     URL VARCHAR (300) , 
     Date DATE , 
     Languages_Id INTEGER NOT NULL 
    )
GO

ALTER TABLE Articles ADD CONSTRAINT Articles_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Awards 
    (
     Id INTEGER NOT NULL , 
     Name VARCHAR , 
     Description VARCHAR , 
     Date DATE , 
     Languages_Id INTEGER NOT NULL 
    )
GO

ALTER TABLE Awards ADD CONSTRAINT Awards_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Experience 
    (
     Id INTEGER NOT NULL , 
     Description VARCHAR , 
     Location VARCHAR , 
     StartDate DATE NOT NULL , 
     EndDate DATE , 
     Languages_Id INTEGER NOT NULL , 
     Person_Id BIGINT NOT NULL 
    )
GO

ALTER TABLE Experience ADD CONSTRAINT Experience_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Languages 
    (
     Id INTEGER NOT NULL , 
     Language VARCHAR (30) NOT NULL , 
     Code VARCHAR (5) 
    )
GO

ALTER TABLE Languages ADD CONSTRAINT Languages_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Person 
    (
     Id BIGINT NOT NULL , 
     Name VARCHAR (400) NOT NULL , 
     Email VARCHAR (600) NOT NULL , 
     Phone VARCHAR , 
     Picture IMAGE 
    )
GO

ALTER TABLE Person ADD CONSTRAINT Person_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO
ALTER TABLE Person ADD CONSTRAINT Person__UN UNIQUE NONCLUSTERED (Email)
GO

CREATE TABLE Proficiency 
    (
     Id INTEGER NOT NULL , 
     Description VARCHAR (30) NOT NULL 
    )
GO

ALTER TABLE Proficiency ADD CONSTRAINT Proficiency_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Skills 
    (
     Id INTEGER NOT NULL , 
     Name VARCHAR NOT NULL , 
     Description VARCHAR , 
     Type_Id INTEGER NOT NULL , 
     Languages_Id INTEGER NOT NULL 
    )
GO

ALTER TABLE Skills ADD CONSTRAINT Skills_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE SkillsXPerson 
    (
     Id INTEGER NOT NULL , 
     CreationDate DATETIME NOT NULL , 
     Person_Id BIGINT NOT NULL , 
     Skills_Id INTEGER NOT NULL , 
     Proficiency_Id INTEGER NOT NULL 
    )
GO

ALTER TABLE SkillsXPerson ADD CONSTRAINT SkillsXPerson_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE SocialMedia 
    (
     Id INTEGER NOT NULL , 
     Description VARCHAR NOT NULL , 
     Website VARCHAR NOT NULL , 
     Logo IMAGE 
    )
GO

ALTER TABLE SocialMedia ADD CONSTRAINT SocialMedia_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE SocialMediaXPerson 
    (
     Id INTEGER NOT NULL , 
     Handle VARCHAR , 
     CreationDate DATE , 
     Person_Id BIGINT NOT NULL , 
     SocialMedia_Id INTEGER NOT NULL 
    )
GO

ALTER TABLE SocialMediaXPerson ADD CONSTRAINT SocialMediaXPerson_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Type 
    (
     Id INTEGER NOT NULL , 
     Description VARCHAR 
    )
GO

ALTER TABLE Type ADD CONSTRAINT Types_PK PRIMARY KEY CLUSTERED (Id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE Articles 
    ADD CONSTRAINT Articles_Languages_FK FOREIGN KEY 
    ( 
     Languages_Id
    ) 
    REFERENCES Languages 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Awards 
    ADD CONSTRAINT Awards_Languages_FK FOREIGN KEY 
    ( 
     Languages_Id
    ) 
    REFERENCES Languages 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Experience 
    ADD CONSTRAINT Experience_Languages_FK FOREIGN KEY 
    ( 
     Languages_Id
    ) 
    REFERENCES Languages 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Experience 
    ADD CONSTRAINT Experience_Person_FK FOREIGN KEY 
    ( 
     Person_Id
    ) 
    REFERENCES Person 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Skills 
    ADD CONSTRAINT Skills_Languages_FK FOREIGN KEY 
    ( 
     Languages_Id
    ) 
    REFERENCES Languages 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Skills 
    ADD CONSTRAINT Skills_Type_FK FOREIGN KEY 
    ( 
     Type_Id
    ) 
    REFERENCES Type 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE SkillsXPerson 
    ADD CONSTRAINT SkillsXPerson_Person_FK FOREIGN KEY 
    ( 
     Person_Id
    ) 
    REFERENCES Person 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE SkillsXPerson 
    ADD CONSTRAINT SkillsXPerson_Proficiency_FK FOREIGN KEY 
    ( 
     Proficiency_Id
    ) 
    REFERENCES Proficiency 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE SkillsXPerson 
    ADD CONSTRAINT SkillsXPerson_Skills_FK FOREIGN KEY 
    ( 
     Skills_Id
    ) 
    REFERENCES Skills 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE SocialMediaXPerson 
    ADD CONSTRAINT SocialMediaXPerson_Person_FK FOREIGN KEY 
    ( 
     Person_Id
    ) 
    REFERENCES Person 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE SocialMediaXPerson 
    ADD CONSTRAINT SocialMediaXPerson_SocialMedia_FK FOREIGN KEY 
    ( 
     SocialMedia_Id
    ) 
    REFERENCES SocialMedia 
    ( 
     Id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

