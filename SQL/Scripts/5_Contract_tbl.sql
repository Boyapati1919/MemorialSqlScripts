IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Contract_tbl' and xtype='U')
BEGIN
CREATE TABLE [dbo].[Contract_tbl] (
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Contract_document] VARBINARY NOT NULL,
	[CreatedOn] [DateTime] NOT NULL DEFAULT(GETDATE()),
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [DateTime],
	[UpdateBy] [int], 
CONSTRAINT [PK_Contract_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END

