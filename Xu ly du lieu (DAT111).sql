use DAT111_Nhom3_Staging

create table Clean(
	ID	varchar(50),
	Year_Birth	varchar(50),
	Education	varchar(50),
	Marital_Status	varchar(50),
	Income	varchar(50),
	Kidhome	varchar(50),
	Teenhome	varchar(50),
	Dt_Customer	varchar(50),
	Recency	varchar(50),
	MntWines	varchar(50),
	MntFruits	varchar(50),
	MntMeatProducts	varchar(50),
	MntFishProducts	varchar(50),
	MntSweetProducts	varchar(50),
	MntGoldProds	varchar(50),
	NumDealsPurchases	varchar(50),
	NumWebPurchases	varchar(50),
	NumCatalogPurchases	varchar(50),
	NumStorePurchases	varchar(50),
	NumWebVisitsMonth	varchar(50),
	AcceptedCmp3	varchar(50),
	AcceptedCmp4	varchar(50),
	AcceptedCmp5	varchar(50),
	AcceptedCmp1	varchar(50),
	AcceptedCmp2	varchar(50),
	Complain	varchar(50),
	Z_CostContact	varchar(50),
	Z_Revenue	varchar(50),
	Response	varchar(50))

insert into Clean
select *
from [Customer Personality Analysis];

alter table Clean
drop column
	[AcceptedCmp3]
	,[AcceptedCmp4]
	,[AcceptedCmp5]
	,[AcceptedCmp1]
	,[AcceptedCmp2]
	,[Z_CostContact]
	,[Z_Revenue]
	,[Response]

select * from Clean

update Clean
set Income = 0
where Income = ' '