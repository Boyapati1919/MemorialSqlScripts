IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Purchase_tbl' and xtype='U')
BEGIN
CREATE TABLE [dbo].[Purchase_tbl] (
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Name] [varchar](100) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Contract_date] [varchar](50) NOT NULL,
	[ContractId] [int] NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[CreatedOn] [DateTime] NOT NULL DEFAULT(GETDATE()),
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [DateTime],
	[UpdateBy] [int], 
CONSTRAINT [PK_Purchase_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME = 'FK_Purchase_tbl_Contract_tbl')
    BEGIN
   ALTER TABLE [dbo].[Purchase_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_tbl_Contract_tbl] FOREIGN KEY([ContractId])
REFERENCES [dbo].[Contract_tbl] ([Id])
    END

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME = 'FK_Purchase_tbl_Invoice_tbl')
    BEGIN
   ALTER TABLE [dbo].[Purchase_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_tbl_Invoice_tbl] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice_tbl] ([Id])
    END

