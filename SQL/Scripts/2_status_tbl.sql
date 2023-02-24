IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='status_tbl' and xtype='U')
BEGIN
CREATE TABLE [dbo].[status_tbl] (
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Status] [varchar](50) NOT NULL,
	[CreatedOn] [DateTime] NOT NULL DEFAULT(GETDATE()),
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [DateTime],
	[UpdateBy] [int], 
CONSTRAINT [PK_status_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
