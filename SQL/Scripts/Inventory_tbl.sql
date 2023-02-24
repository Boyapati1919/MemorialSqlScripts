IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Inventory_tbl' and xtype='U')
BEGIN
CREATE TABLE [dbo].[Inventory_tbl] (
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [cemeteryId] [int] NOT NULL,
	[Section] [varchar](100) NOT NULL,
	[AREA] [varchar](15) NULL,
	[RangeId] int NOT NULL,
	[Plot] [varchar](50) NOT NULL,
	[TypeId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Notes] [varchar](100) NOT NULL,
	[PurchaseId] [int] NOT NULL,
	[RightsHolderId] [int] NOT NULL,
	[CreatedOn] [DateTime] NOT NULL DEFAULT(GETDATE()),
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [DateTime],
	[UpdateBy] [int], 
CONSTRAINT [PK_Inventory_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END


IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME = 'FK_Inventory_tbl_cemetery_tbl')
    BEGIN
   ALTER TABLE [dbo].[Inventory_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_tbl_cemetery_tbl] FOREIGN KEY([cemeteryId])
REFERENCES [dbo].[cemetery_tbl] ([Id])
    END

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME = 'FK_Inventory_tbl_Range_tbl')
    BEGIN
   ALTER TABLE [dbo].[Inventory_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_tbl_Range_tbl] FOREIGN KEY([RangeId])
REFERENCES [dbo].[Range_tbl] ([Id])
    END

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME = 'FK_Inventory_tbl_Type_tbl')
    BEGIN
   ALTER TABLE [dbo].[Inventory_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_tbl_Type_tbl] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Type_tbl] ([Id])
    END

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME = 'FK_Inventory_tbl_status_tbl')
    BEGIN
   ALTER TABLE [dbo].[Inventory_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_tbl_status_tbl] FOREIGN KEY([StatusId])
REFERENCES [dbo].[status_tbl] ([Id])
    END

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME = 'FK_Inventory_tbl_Purchase_tbl')
    BEGIN
   ALTER TABLE [dbo].[Inventory_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_tbl_Purchase_tbl] FOREIGN KEY([PurchaseId])
REFERENCES [dbo].[Purchase_tbl] ([Id])
    END

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME = 'FK_Inventory_tbl_rightsholders_tbl')
    BEGIN
   ALTER TABLE [dbo].[Inventory_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_tbl_rightsholders_tbl] FOREIGN KEY([RightsHolderId])
REFERENCES [dbo].[rightsholders_tbl] ([Id])
    END