IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Agreement_tbl' and xtype='U')
BEGIN
CREATE TABLE [dbo].[Agreement_tbl] (
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Agreement] VARBINARY NOT NULL,
	[ServiceDate] [DateTime] NOT NULL,
	[CreatedOn] [DateTime] NOT NULL DEFAULT(GETDATE()),
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [DateTime],
	[UpdateBy] [int], 
CONSTRAINT [PK_Agreement_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END