ALTER TABLE [dbo].[Coach_Customer]  WITH CHECK ADD  CONSTRAINT [FK_CoachCustomer_Coach] FOREIGN KEY([coach_id])
REFERENCES [dbo].[Coaches] ([coach_id])
GO
ALTER TABLE [dbo].[Coach_Customer] CHECK CONSTRAINT [FK_CoachCustomer_Coach]
GO
ALTER TABLE [dbo].[Coach_Customer]  WITH CHECK ADD  CONSTRAINT [FK_CoachCustomer_Customer] FOREIGN KEY([user_id])
REFERENCES [dbo].[Customers] ([user_id])
GO
ALTER TABLE [dbo].[Coach_Customer] CHECK CONSTRAINT [FK_CoachCustomer_Customer]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_GeoLocation] FOREIGN KEY([location_id])
REFERENCES [dbo].[GeoLocation] ([location_id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_GeoLocation]
GO
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD  CONSTRAINT [FK_Devices_Customers] FOREIGN KEY([user_id])
REFERENCES [dbo].[Customers] ([user_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Devices] CHECK CONSTRAINT [FK_Devices_Customers]
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD  CONSTRAINT [FK_HealthMetrics_Customers] FOREIGN KEY([user_id])
REFERENCES [dbo].[Customers] ([user_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HealthMetrics] CHECK CONSTRAINT [FK_HealthMetrics_Customers]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Customers] FOREIGN KEY([user_id])
REFERENCES [dbo].[Customers] ([user_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Customers]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Products]
GO
ALTER TABLE [dbo].[Service_Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Customers] FOREIGN KEY([user_id])
REFERENCES [dbo].[Customers] ([user_id])
GO
ALTER TABLE [dbo].[Service_Tickets] CHECK CONSTRAINT [FK_Tickets_Customers]
GO
ALTER TABLE [dbo].[Service_Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Devices] FOREIGN KEY([device_id])
REFERENCES [dbo].[Devices] ([device_id])
GO
ALTER TABLE [dbo].[Service_Tickets] CHECK CONSTRAINT [FK_Tickets_Devices]

ALTER TABLE [dbo].[Service_Tickets] CHECK CONSTRAINT [FK_Tickets_Devices]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD CHECK  (([age]>=(0) AND [age]<=(120)))
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD CHECK  (([gender]='F' OR [gender]='M'))
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD CHECK  (([subscription_type]='Enterprise' OR [subscription_type]='Premium' OR [subscription_type]='Basic'))
GO
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD CHECK  (([active_hours_daily]>=(0) AND [active_hours_daily]<=(24)))
GO
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD CHECK  (([battery_life_days]>=(0)))
GO
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD CHECK  (([device_status]='Retired' OR [device_status]='Inactive' OR [device_status]='Active'))
GO
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD CHECK  (([sync_frequency_daily]>=(0)))
GO
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD CHECK  (([total_steps_recorded]>=(0)))
GO
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD CHECK  (([total_workouts_recorded]>=(0)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([achievement_rate]>=(0) AND [achievement_rate]<=(1)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([avg_blood_oxygen]>=(80) AND [avg_blood_oxygen]<=(100)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([avg_daily_steps]>=(0)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([avg_deep_sleep_hours]>=(0) AND [avg_deep_sleep_hours]<=(12)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([avg_daily_calories]>=(0)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([avg_exercise_minutes]>=(0)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([avg_heart_rate]>=(30) AND [avg_heart_rate]<=(200)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([avg_resting_heart_rate]>=(30) AND [avg_resting_heart_rate]<=(100)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([avg_sleep_hours]>=(0) AND [avg_sleep_hours]<=(24)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([avg_stress_level]>=(0) AND [avg_stress_level]<=(10)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([total_active_days]>=(0) AND [total_active_days]<=(31)))
GO
ALTER TABLE [dbo].[HealthMetrics]  WITH CHECK ADD CHECK  (([workout_frequency]>=(0) AND [workout_frequency]<=(7)))
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [CHK_ValidDiscount] CHECK  (([discount_applied]>=(0) AND [discount_applied]<=(100)))
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [CHK_ValidDiscount]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD CHECK  (([discount_applied]>=(0) AND [discount_applied]<=(100)))
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD CHECK  (([payment_method]='Bank Transfer' OR [payment_method]='PayPal' OR [payment_method]='Credit Card'))
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD CHECK  (([quantity]>(0)))
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD CHECK  (([sales_channel]='Direct Sales' OR [sales_channel]='Retail' OR [sales_channel]='Online'))
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD CHECK  (([total_amount]>=(0)))
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD CHECK  (([unit_price]>=(0)))
GO
ALTER TABLE [dbo].[Service_Tickets]  WITH CHECK ADD  CONSTRAINT [Chk_TicketStatus_ValidValues] CHECK  (([ticket_Status]='In Progress' OR [ticket_Status]='Resolved' OR [ticket_Status]='Open'))
GO
ALTER TABLE [dbo].[Service_Tickets] CHECK CONSTRAINT [Chk_TicketStatus_ValidValues]
GO