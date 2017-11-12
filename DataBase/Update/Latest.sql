CREATE TABLE [dbo].[ProductCategoryTag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryId] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[ParentId] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreatebyName] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdateBy] [nvarchar](50) NULL,
	[LastUpdateByName] [nvarchar](100) NULL,
	[LastUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_ProductCategoryTag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProductTag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[TagId] [int] NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductTag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProductImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[Title] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreatebyName] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdateBy] [nvarchar](50) NULL,
	[LastUpdateByName] [nvarchar](100) NULL,
	[LastUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT [dbo].[Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES (N'ProductEntity@ProductImages', N'zh-CN', N'展示图', N'ProductEntity', N'EntityProperty')
INSERT [dbo].[Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES (N'ProductEntity@ProductTags', N'zh-CN', N'标签', N'ProductEntity', N'EntityProperty')
INSERT [dbo].[Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES (N'ProductImage@CreatebyName', N'zh-CN', N'创建人', N'ProductImage', N'EntityProperty')
INSERT [dbo].[Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES (N'ProductImage@CreateDate', N'zh-CN', N'创建日期', N'ProductImage', N'EntityProperty')
INSERT [dbo].[Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES (N'ProductImage@Description', N'zh-CN', N'描述', N'ProductImage', N'EntityProperty')
INSERT [dbo].[Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES (N'ProductImage@ImageUrl', N'zh-CN', N'图片', N'ProductImage', N'EntityProperty')
INSERT [dbo].[Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES (N'ProductImage@LastUpdateByName', N'zh-CN', N'更新人', N'ProductImage', N'EntityProperty')
INSERT [dbo].[Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES (N'ProductImage@LastUpdateDate', N'zh-CN', N'更新日期', N'ProductImage', N'EntityProperty')
INSERT [dbo].[Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES (N'ProductImage@Status', N'zh-CN', N'状态', N'ProductImage', N'EntityProperty')
INSERT [dbo].[Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES (N'ProductImage@Title', N'zh-CN', N'标题', N'ProductImage', N'EntityProperty')
GO
INSERT [dbo].[Permission] ([PermissionKey], [RoleId], [Title], [Description], [Module], [Status], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (N'ProductCategoryTag_Manage', 1, N'管理产品标签', NULL, N'产品', NULL, N'admin', N'ZKEASOFT', CAST(N'2017-11-11T15:43:52.953' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2017-11-11T15:43:52.953' AS DateTime))
INSERT [dbo].[Permission] ([PermissionKey], [RoleId], [Title], [Description], [Module], [Status], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (N'ProductCategoryTag_View', 1, N'查看产品标签', NULL, N'产品', NULL, N'admin', N'ZKEASOFT', CAST(N'2017-11-11T15:43:52.947' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2017-11-11T15:43:52.947' AS DateTime))
