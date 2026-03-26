/****** Object:  Table [dbo].[Sales]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[sale_id] [varchar](10) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[sale_date] [date] NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[unit_price] [decimal](10, 2) NOT NULL,
	[quantity] [int] NOT NULL,
	[discount_applied] [decimal](5, 2) NULL,
	[total_amount] [decimal](10, 2) NOT NULL,
	[payment_method] [varchar](50) NOT NULL,
	[subscription_plan] [varchar](50) NULL,
	[sales_channel] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[sales_rep_id] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO




/****** Object:  Table [dbo].[Customers]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[user_id] [varchar](10) NOT NULL,
	[age] [int] NOT NULL,
	[gender] [char](1) NOT NULL,
	[occupation] [varchar](100) NULL,
	[income_bracket] [varchar](20) NULL,
	[registration_date] [date] NOT NULL,
	[subscription_type] [varchar](50) NOT NULL,
	[location_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[HealthMetrics]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HealthMetrics](
	[record_id] [varchar](10) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[month_date] [date] NOT NULL,
	[avg_heart_rate] [int] NOT NULL,
	[avg_resting_heart_rate] [int] NOT NULL,
	[avg_daily_steps] [int] NOT NULL,
	[avg_sleep_hours] [decimal](3, 1) NOT NULL,
	[avg_deep_sleep_hours] [decimal](3, 1) NOT NULL,
	[avg_daily_calories] [int] NOT NULL,
	[avg_exercise_minutes] [int] NOT NULL,
	[avg_stress_level] [decimal](3, 1) NULL,
	[avg_blood_oxygen] [decimal](4, 1) NOT NULL,
	[total_active_days] [int] NOT NULL,
	[workout_frequency] [int] NOT NULL,
	[achievement_rate] [decimal](3, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Coach_Customer]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach_Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[coach_id] [varchar](10) NULL,
	[user_id] [varchar](10) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Coaches]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coaches](
	[coach_id] [varchar](10) NOT NULL,
	[first_name] [varchar](50) NULL,
	[Last_name] [varchar](50) NULL,
	[specialization] [varchar](50) NULL,
	[experience_years] [int] NULL,
	[certification] [varchar](100) NULL,
	[reigon] [varchar](50) NULL,
	[contact_email] [varchar](100) NULL,
	[contact_number] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[coach_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Devices]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devices](
	[device_id] [varchar](10) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[device_type] [varchar](100) NOT NULL,
	[purchase_date] [date] NOT NULL,
	[last_sync_date] [date] NOT NULL,
	[firmware_version] [varchar](10) NOT NULL,
	[battery_life_days] [decimal](3, 1) NOT NULL,
	[sync_frequency_daily] [int] NOT NULL,
	[active_hours_daily] [decimal](3, 1) NOT NULL,
	[total_steps_recorded] [bigint] NOT NULL,
	[total_workouts_recorded] [int] NOT NULL,
	[sleep_tracking_enabled] [bit] NOT NULL,
	[heart_rate_monitoring_enabled] [bit] NOT NULL,
	[gps_enabled] [bit] NOT NULL,
	[notification_enabled] [bit] NOT NULL,
	[device_status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[device_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[GeoLocation]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeoLocation](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[city] [varchar](100) NOT NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_GeoLocation_Location] UNIQUE NONCLUSTERED 
(
	[city] ASC,
	[state] ASC,
	[country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HealthMetricsAudit]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HealthMetricsAudit](
	[audit_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](10) NULL,
	[old_value] [int] NULL,
	[new_value] [int] NULL,
	[updated_on] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[audit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_key] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [varchar](20) NULL,
	[product_name] [varchar](100) NOT NULL,
	[product_category] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Products_ProductID] UNIQUE NONCLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Service_Tickets]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Tickets](
	[ticket_id] [varchar](10) NOT NULL,
	[user_id] [varchar](10) NULL,
	[device_id] [varchar](10) NULL,
	[issue_description] [varchar](255) NULL,
	[ticket_status] [varchar](50) NULL,
	[creation_date] [date] NULL,
	[resolution_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO