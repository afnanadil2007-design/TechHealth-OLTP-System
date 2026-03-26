/****** Object:  Index [IDX_MultinationalSales]    Script Date: 25-03-2026 13:39:13 ******/
CREATE UNIQUE CLUSTERED INDEX [IDX_MultinationalSales] ON [dbo].[MultinationalSalesSummary]
(
	[region] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

/****** Object:  Index [idx_active_coaching]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_active_coaching] ON [dbo].[Coach_Customer]
(
	[user_id] ASC
)
WHERE ([end_date] IS NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_Coach_Customer_coach_id_user_id]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_Coach_Customer_coach_id_user_id] ON [dbo].[Coach_Customer]
(
	[coach_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [IX_Coach_Customer_user_id]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [IX_Coach_Customer_user_id] ON [dbo].[Coach_Customer]
(
	[user_id] ASC,
	[coach_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [IX_Coaches_coach_id]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [IX_Coaches_coach_id] ON [dbo].[Coaches]
(
	[coach_id] ASC,
	[first_name] ASC,
	[Last_name] ASC,
	[specialization] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_customers_retention]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_customers_retention] ON [dbo].[Customers]
(
	[user_id] ASC,
	[registration_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_Customers_Subscription]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_Customers_Subscription] ON [dbo].[Customers]
(
	[subscription_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_device_lastsync]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_device_lastsync] ON [dbo].[Devices]
(
	[user_id] ASC
)
INCLUDE([last_sync_date]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_Devices_Status]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_Devices_Status] ON [dbo].[Devices]
(
	[device_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_Devices_status_user_type]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_Devices_status_user_type] ON [dbo].[Devices]
(
	[device_status] ASC
)
INCLUDE([user_id],[device_type]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_Devices_user]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_Devices_user] ON [dbo].[Devices]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_GeoLocation_country]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_GeoLocation_country] ON [dbo].[GeoLocation]
(
	[country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_HealthMetrics_Achievement80]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_HealthMetrics_Achievement80] ON [dbo].[HealthMetrics]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_healthmetrics_activity]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_healthmetrics_activity] ON [dbo].[HealthMetrics]
(
	[user_id] ASC
)
INCLUDE([total_active_days]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

/****** Object:  Index [idx_HealthMetrics_Steps]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_HealthMetrics_Steps] ON [dbo].[HealthMetrics]
(
	[avg_daily_steps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_HealthMetrics_user_steps]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_HealthMetrics_user_steps] ON [dbo].[HealthMetrics]
(
	[user_id] ASC,
	[avg_daily_steps] ASC
)
INCLUDE([total_active_days]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [IX_HealthMetrics_user_id_achievement_rate]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [IX_HealthMetrics_user_id_achievement_rate] ON [dbo].[HealthMetrics]
(
	[user_id] ASC,
	[achievement_rate] ASC,
	[avg_exercise_minutes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [IX_Sales_user_id_sale_date]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [IX_Sales_user_id_sale_date] ON [dbo].[Sales]
(
	[user_id] ASC,
	[sale_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_ServiceTickets_status]    Script Date: 25-03-2026 13:39:13 ******/
CREATE NONCLUSTERED INDEX [idx_ServiceTickets_status] ON [dbo].[Service_Tickets]
(
	[ticket_status] ASC
)
INCLUDE([creation_date],[user_id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO