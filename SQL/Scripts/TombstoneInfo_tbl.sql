IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='TombstoneInfo_tbl' and xtype='U')
BEGIN
CREATE TABLE [dbo].[TombstoneInfo_tbl] (
    [Id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NOT NULL,
    [lastName] [varchar](50) NOT NULL,
	[Age] int NOT NULL,
	[Area] [varchar](50) NOT NULL,
	[Section] [varchar](50) NOT NULL,
	[Row] [varchar](50) NOT NULL,
	[Sex] [varchar](50) NOT NULL,
	[funeralHome] int NOT NULL,
	[Grave] int NOT NULL, -- foreign Key
	[Reserve] bit NOT NULL,
	[Comment] int NOT NULL,
	[Preneed] [varchar](50) NOT NULL,
	[crypt] [varchar](50) NOT NULL,
	[Level] int NOT NULL,
	[Type] [varchar](50) NOT NULL, -- foreign Key
	[Unit] int NOT NULL, 
	[InvoiceId] int NOT NULL,  -- foreign key
	[GraveDepth] int NOT NULL,
	[Price] int NOT NULL, 
	[PurchaseDate] [DateTime] NOT NULL,
	[BurialDate] [DateTime] NOT NULL,
	[CreatedOn] [DateTime] NOT NULL DEFAULT(GETDATE()),
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [DateTime],
	[UpdateBy] [int], 
CONSTRAINT [PK_TombstoneInfo_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
