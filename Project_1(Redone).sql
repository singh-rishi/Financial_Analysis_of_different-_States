create database Project_1;

use Project_1;

select * from Aggregate_expediture;
select * from Capital_Expenditure;
select * from Gross_Fiscal_Deficits;
select * from Nominal_GSDP_Series;
select * from Own_Tax_Revenues;
select * from Revenue_Deficits;
select * from Revenue_Expenditure;
select * from Social_Sector_Expenditure;

---1
select * from Aggregate_expediture;
select * into Aggregate_expediture1 from
(select*,
case when rank between 1 and 5 then '1980-84'
when rank between 6 and 10 then '1985-89' 
when rank between 11 and 15 then '1990-94'
when rank between 16 and 20 then '1995-99'
when rank between 21 and 25 then '2000-04' 
when rank between 26 and 30 then '2005-09'
when rank between 31 and 35 then '2010-14'
when rank between 36 and 36 then '2015-00' end as year_range
from  
(select *, ROW_NUMBER() over(order by state) as rank 
from Aggregate_expediture) as n) as l ;

select *  from Aggregate_expediture1;
select * into Aggregate_expediture2 from
(select distinct(year_range),
sum(arunachal_pradesh) over(partition by year_range) as Arunachal_pradesh, 
sum(andhra_pradesh) over(partition by year_range) as andhra_pradesh,
sum(assam)  over(partition by year_range) as assam,
sum(bihar)  over(partition by year_range) as bihar, 
sum(chhattisgarh)  over(partition by year_range) as chhattisgarh, 
sum(goa)  over(partition by year_range) as goa, 
sum(gujarat)  over(partition by year_range) as gujarat,
sum(haryana)  over(partition by year_range) as haryana, 
sum(himachal_pradesh)  over(partition by year_range) as himachal_pradesh,
sum(jammu_kashmir)  over(partition by year_range) as jammu_kashmir,
sum(jharkhand)  over(partition by year_range) as jharkhand,
sum(karnataka)  over(partition by year_range) as karnataka,
sum(kerala)  over(partition by year_range) as kerala,
sum(madhya_pradesh)  over(partition by year_range) as madhya_pradesh,
sum(maharashtra)  over(partition by year_range) as maharashtra,
sum(manipur)  over(partition by year_range) as manipur,
sum(meghalaya)  over(partition by year_range) as meghalaya, 
sum(mizoram)  over(partition by year_range) as mizoram,
sum(nagaland)  over(partition by year_range) as nagaland,
sum(odisha)  over(partition by year_range) as odisha, 
sum(punjab)  over(partition by year_range) as punjab,
sum(rajasthan)  over(partition by year_range) as rajasthan,
sum(sikkim)  over(partition by year_range) as sikkim,
sum(tamil_nadu)  over(partition by year_range) as tamil_nadu,
sum(telangana)  over(partition by year_range) as telangana ,
sum(tripura)  over(partition by year_range) as tripura,
sum(uttar_pradesh)  over(partition by year_range) as uttar_pradesh, 
sum(uttarakhand) over(partition by year_range) as uttarakhand,
sum(west_bengal)  over(partition by year_range) as west_bengal,
sum(delhi)  over(partition by year_range) as delhi,
sum(puducherry)  over(partition by year_range) as puducherry
from Aggregate_expediture1) as b;

select * from Aggregate_expediture2;





---2
select * from Capital_Expenditure;
select * into Capital_Expenditure1 from
(select*,
case when rank between 1 and 5 then '1980-84'
when rank between 6 and 10 then '1985-89' 
when rank between 11 and 15 then '1990-94'
when rank between 16 and 20 then '1995-99'
when rank between 21 and 25 then '2000-04' 
when rank between 26 and 30 then '2005-09'
when rank between 31 and 35 then '2010-14'
when rank between 36 and 36 then '2015-00' end as year_range
from  
(select *, ROW_NUMBER() over(order by state) as rank 
from Capital_Expenditure) as n) as l ;

select *  from Capital_Expenditure1;

select * into Capital_Expenditure2 from
(select distinct(year_range),
sum(arunachal_pradesh) over(partition by year_range) as Arunachal_pradesh, 
sum(andhra_pradesh) over(partition by year_range) as andhra_pradesh,
sum(assam)  over(partition by year_range) as assam,
sum(bihar)  over(partition by year_range) as bihar, 
sum(chhattisgarh)  over(partition by year_range) as chhattisgarh, 
sum(goa)  over(partition by year_range) as goa, 
sum(gujarat)  over(partition by year_range) as gujarat,
sum(haryana)  over(partition by year_range) as haryana, 
sum(himachal_pradesh)  over(partition by year_range) as himachal_pradesh,
sum(jammu_kashmir)  over(partition by year_range) as jammu_kashmir,
sum(jharkhand)  over(partition by year_range) as jharkhand,
sum(karnataka)  over(partition by year_range) as karnataka,
sum(kerala)  over(partition by year_range) as kerala,
sum(madhya_pradesh)  over(partition by year_range) as madhya_pradesh,
sum(maharashtra)  over(partition by year_range) as maharashtra,
sum(manipur)  over(partition by year_range) as manipur,
sum(meghalaya)  over(partition by year_range) as meghalaya, 
sum(mizoram)  over(partition by year_range) as mizoram,
sum(nagaland)  over(partition by year_range) as nagaland,
sum(odisha)  over(partition by year_range) as odisha, 
sum(punjab)  over(partition by year_range) as punjab,
sum(rajasthan)  over(partition by year_range) as rajasthan,
sum(sikkim)  over(partition by year_range) as sikkim,
sum(tamil_nadu)  over(partition by year_range) as tamil_nadu,
sum(telangana)  over(partition by year_range) as telangana ,
sum(tripura)  over(partition by year_range) as tripura,
sum(uttar_pradesh)  over(partition by year_range) as uttar_pradesh, 
sum(uttarakhand) over(partition by year_range) as uttarakhand,
sum(west_bengal)  over(partition by year_range) as west_bengal,
sum(delhi)  over(partition by year_range) as delhi,
sum(puducherry)  over(partition by year_range) as puducherry
from Capital_Expenditure1) as b;

select * from Capital_Expenditure2;





---3
select * from Gross_Fiscal_Deficits;
select * into Gross_Fiscal_Deficits1 from
(select*,
case when rank between 1 and 5 then '1980-84'
when rank between 6 and 10 then '1985-89' 
when rank between 11 and 15 then '1990-94'
when rank between 16 and 20 then '1995-99'
when rank between 21 and 25 then '2000-04' 
when rank between 26 and 30 then '2005-09'
when rank between 31 and 35 then '2010-14'
when rank between 36 and 36 then '2015-00' end as year_range
from  
(select *, ROW_NUMBER() over(order by year) as rank 
from Gross_Fiscal_Deficits) as n) as l ;

select *  from Gross_Fiscal_Deficits1;

select * into Gross_Fiscal_Deficits2 from
(select distinct(year_range),
sum(arunachal_pradesh) over(partition by year_range) as Arunachal_pradesh, 
sum(andhra_pradesh) over(partition by year_range) as andhra_pradesh,
sum(assam)  over(partition by year_range) as assam,
sum(bihar)  over(partition by year_range) as bihar, 
sum(chhattisgarh)  over(partition by year_range) as chhattisgarh, 
sum(goa)  over(partition by year_range) as goa, 
sum(gujarat)  over(partition by year_range) as gujarat,
sum(haryana)  over(partition by year_range) as haryana, 
sum(himachal_pradesh)  over(partition by year_range) as himachal_pradesh,
sum(jammu_kashmir)  over(partition by year_range) as jammu_kashmir,
sum(jharkhand)  over(partition by year_range) as jharkhand,
sum(karnataka)  over(partition by year_range) as karnataka,
sum(kerala)  over(partition by year_range) as kerala,
sum(madhya_pradesh)  over(partition by year_range) as madhya_pradesh,
sum(maharashtra)  over(partition by year_range) as maharashtra,
sum(manipur)  over(partition by year_range) as manipur,
sum(meghalaya)  over(partition by year_range) as meghalaya, 
sum(mizoram)  over(partition by year_range) as mizoram,
sum(nagaland)  over(partition by year_range) as nagaland,
sum(odisha)  over(partition by year_range) as odisha, 
sum(punjab)  over(partition by year_range) as punjab,
sum(rajasthan)  over(partition by year_range) as rajasthan,
sum(sikkim)  over(partition by year_range) as sikkim,
sum(tamil_nadu)  over(partition by year_range) as tamil_nadu,
sum(telangana)  over(partition by year_range) as telangana ,
sum(tripura)  over(partition by year_range) as tripura,
sum(uttar_pradesh)  over(partition by year_range) as uttar_pradesh, 
sum(uttarakhand) over(partition by year_range) as uttarakhand,
sum(west_bengal)  over(partition by year_range) as west_bengal,
sum(delhi)  over(partition by year_range) as delhi,
sum(puducherry)  over(partition by year_range) as puducherry
from Gross_Fiscal_Deficits1) as b;

select * from Gross_Fiscal_Deficits2;





---4
select * from Nominal_GSDP_Series;
select * into Nominal_GSDP_Series1 from
(select*,
case when rank between 1 and 5 then '1980-84'
when rank between 6 and 10 then '1985-89' 
when rank between 11 and 15 then '1990-94'
when rank between 16 and 20 then '1995-99'
when rank between 21 and 25 then '2000-04' 
when rank between 26 and 30 then '2005-09'
when rank between 31 and 35 then '2010-14'
when rank between 36 and 36 then '2015-00' end as year_range
from  
(select *, ROW_NUMBER() over(order by state) as rank 
from Nominal_GSDP_Series) as n) as l ;

select *  from Nominal_GSDP_Series1;

select * into Nominal_GSDP_Series2 from
(select distinct(year_range),
sum(arunachal_pradesh) over(partition by year_range) as Arunachal_pradesh, 
sum(andhra_pradesh) over(partition by year_range) as andhra_pradesh,
sum(assam)  over(partition by year_range) as assam,
sum(bihar)  over(partition by year_range) as bihar, 
sum(chhattisgarh)  over(partition by year_range) as chhattisgarh, 
sum(goa)  over(partition by year_range) as goa, 
sum(gujarat)  over(partition by year_range) as gujarat,
sum(haryana)  over(partition by year_range) as haryana, 
sum(himachal_pradesh)  over(partition by year_range) as himachal_pradesh,
sum(jammu_kashmir)  over(partition by year_range) as jammu_kashmir,
sum(jharkhand)  over(partition by year_range) as jharkhand,
sum(karnataka)  over(partition by year_range) as karnataka,
sum(kerala)  over(partition by year_range) as kerala,
sum(madhya_pradesh)  over(partition by year_range) as madhya_pradesh,
sum(maharashtra)  over(partition by year_range) as maharashtra,
sum(manipur)  over(partition by year_range) as manipur,
sum(meghalaya)  over(partition by year_range) as meghalaya, 
sum(mizoram)  over(partition by year_range) as mizoram,
sum(nagaland)  over(partition by year_range) as nagaland,
sum(odisha)  over(partition by year_range) as odisha, 
sum(punjab)  over(partition by year_range) as punjab,
sum(rajasthan)  over(partition by year_range) as rajasthan,
sum(sikkim)  over(partition by year_range) as sikkim,
sum(tamil_nadu)  over(partition by year_range) as tamil_nadu,
sum(telangana)  over(partition by year_range) as telangana ,
sum(tripura)  over(partition by year_range) as tripura,
sum(uttar_pradesh)  over(partition by year_range) as uttar_pradesh, 
sum(uttarakhand) over(partition by year_range) as uttarakhand,
sum(west_bengal)  over(partition by year_range) as west_bengal,
sum(delhi)  over(partition by year_range) as delhi,
sum(puducherry)  over(partition by year_range) as puducherry
from Nominal_GSDP_Series1) as b;

select * from Nominal_GSDP_Series2;






---5
select * from Own_Tax_Revenues;
select * into Own_Tax_Revenues1 from
(select*,
case when rank between 1 and 5 then '1980-84'
when rank between 6 and 10 then '1985-89' 
when rank between 11 and 15 then '1990-94'
when rank between 16 and 20 then '1995-99'
when rank between 21 and 25 then '2000-04' 
when rank between 26 and 30 then '2005-09'
when rank between 31 and 35 then '2010-14'
when rank between 36 and 36 then '2015-00' end as year_range
from  
(select *, ROW_NUMBER() over(order by state) as rank 
from Own_Tax_Revenues) as n) as l ;

select *  from Own_Tax_Revenues1;

select * into Own_Tax_Revenues2 from
(select distinct(year_range),
sum(arunachal_pradesh) over(partition by year_range) as Arunachal_pradesh, 
sum(andhra_pradesh) over(partition by year_range) as andhra_pradesh,
sum(assam)  over(partition by year_range) as assam,
sum(bihar)  over(partition by year_range) as bihar, 
sum(chhattisgarh)  over(partition by year_range) as chhattisgarh, 
sum(goa)  over(partition by year_range) as goa, 
sum(gujarat)  over(partition by year_range) as gujarat,
sum(haryana)  over(partition by year_range) as haryana, 
sum(himachal_pradesh)  over(partition by year_range) as himachal_pradesh,
sum(jammu_kashmir)  over(partition by year_range) as jammu_kashmir,
sum(jharkhand)  over(partition by year_range) as jharkhand,
sum(karnataka)  over(partition by year_range) as karnataka,
sum(kerala)  over(partition by year_range) as kerala,
sum(madhya_pradesh)  over(partition by year_range) as madhya_pradesh,
sum(maharashtra)  over(partition by year_range) as maharashtra,
sum(manipur)  over(partition by year_range) as manipur,
sum(meghalaya)  over(partition by year_range) as meghalaya, 
sum(mizoram)  over(partition by year_range) as mizoram,
sum(nagaland)  over(partition by year_range) as nagaland,
sum(odisha)  over(partition by year_range) as odisha, 
sum(punjab)  over(partition by year_range) as punjab,
sum(rajasthan)  over(partition by year_range) as rajasthan,
sum(sikkim)  over(partition by year_range) as sikkim,
sum(tamil_nadu)  over(partition by year_range) as tamil_nadu,
sum(telangana)  over(partition by year_range) as telangana ,
sum(tripura)  over(partition by year_range) as tripura,
sum(uttar_pradesh)  over(partition by year_range) as uttar_pradesh, 
sum(uttarakhand) over(partition by year_range) as uttarakhand,
sum(west_bengal)  over(partition by year_range) as west_bengal,
sum(delhi)  over(partition by year_range) as delhi,
sum(puducherry)  over(partition by year_range) as puducherry
from Own_Tax_Revenues1) as b;

select * from Own_Tax_Revenues2;





---6
select * from Revenue_Deficits;
select * into Revenue_Deficits1 from
(select*,
case when rank between 1 and 5 then '1980-84'
when rank between 6 and 10 then '1985-89' 
when rank between 11 and 15 then '1990-94'
when rank between 16 and 20 then '1995-99'
when rank between 21 and 25 then '2000-04' 
when rank between 26 and 30 then '2005-09'
when rank between 31 and 35 then '2010-14'
when rank between 36 and 36 then '2015-00' end as year_range
from  
(select *, ROW_NUMBER() over(order by state) as rank 
from Revenue_Deficits) as n) as l ;

select *  from Revenue_Deficits1;

select * into Revenue_Deficits2 from
(select distinct(year_range),
sum(arunachal_pradesh) over(partition by year_range) as Arunachal_pradesh, 
sum(andhra_pradesh) over(partition by year_range) as andhra_pradesh,
sum(assam)  over(partition by year_range) as assam,
sum(bihar)  over(partition by year_range) as bihar, 
sum(chhattisgarh)  over(partition by year_range) as chhattisgarh, 
sum(goa)  over(partition by year_range) as goa, 
sum(gujarat)  over(partition by year_range) as gujarat,
sum(haryana)  over(partition by year_range) as haryana, 
sum(himachal_pradesh)  over(partition by year_range) as himachal_pradesh,
sum(jammu_kashmir)  over(partition by year_range) as jammu_kashmir,
sum(jharkhand)  over(partition by year_range) as jharkhand,
sum(karnataka)  over(partition by year_range) as karnataka,
sum(kerala)  over(partition by year_range) as kerala,
sum(madhya_pradesh)  over(partition by year_range) as madhya_pradesh,
sum(maharashtra)  over(partition by year_range) as maharashtra,
sum(manipur)  over(partition by year_range) as manipur,
sum(meghalaya)  over(partition by year_range) as meghalaya, 
sum(mizoram)  over(partition by year_range) as mizoram,
sum(nagaland)  over(partition by year_range) as nagaland,
sum(odisha)  over(partition by year_range) as odisha, 
sum(punjab)  over(partition by year_range) as punjab,
sum(rajasthan)  over(partition by year_range) as rajasthan,
sum(sikkim)  over(partition by year_range) as sikkim,
sum(tamil_nadu)  over(partition by year_range) as tamil_nadu,
sum(telangana)  over(partition by year_range) as telangana ,
sum(tripura)  over(partition by year_range) as tripura,
sum(uttar_pradesh)  over(partition by year_range) as uttar_pradesh, 
sum(uttarakhand) over(partition by year_range) as uttarakhand,
sum(west_bengal)  over(partition by year_range) as west_bengal,
sum(delhi)  over(partition by year_range) as delhi,
sum(puducherry)  over(partition by year_range) as puducherry
from Revenue_Deficits1) as b;

select * from Revenue_Deficits2;






---7
select * from Revenue_Expenditure;
select * into Revenue_Expenditure1 from
(select*,
case when rank between 1 and 5 then '1980-84'
when rank between 6 and 10 then '1985-89' 
when rank between 11 and 15 then '1990-94'
when rank between 16 and 20 then '1995-99'
when rank between 21 and 25 then '2000-04' 
when rank between 26 and 30 then '2005-09'
when rank between 31 and 35 then '2010-14'
when rank between 36 and 36 then '2015-00' end as year_range
from  
(select *, ROW_NUMBER() over(order by state) as rank 
from Revenue_Expenditure) as n) as l ;

select *  from Revenue_Expenditure1;

select * into Revenue_Expenditure2 from
(select distinct(year_range),
sum(arunachal_pradesh) over(partition by year_range) as Arunachal_pradesh, 
sum(andhra_pradesh) over(partition by year_range) as andhra_pradesh,
sum(assam)  over(partition by year_range) as assam,
sum(bihar)  over(partition by year_range) as bihar, 
sum(chhattisgarh)  over(partition by year_range) as chhattisgarh, 
sum(goa)  over(partition by year_range) as goa, 
sum(gujarat)  over(partition by year_range) as gujarat,
sum(haryana)  over(partition by year_range) as haryana, 
sum(himachal_pradesh)  over(partition by year_range) as himachal_pradesh,
sum(jammu_kashmir)  over(partition by year_range) as jammu_kashmir,
sum(jharkhand)  over(partition by year_range) as jharkhand,
sum(karnataka)  over(partition by year_range) as karnataka,
sum(kerala)  over(partition by year_range) as kerala,
sum(madhya_pradesh)  over(partition by year_range) as madhya_pradesh,
sum(maharashtra)  over(partition by year_range) as maharashtra,
sum(manipur)  over(partition by year_range) as manipur,
sum(meghalaya)  over(partition by year_range) as meghalaya, 
sum(mizoram)  over(partition by year_range) as mizoram,
sum(nagaland)  over(partition by year_range) as nagaland,
sum(odisha)  over(partition by year_range) as odisha, 
sum(punjab)  over(partition by year_range) as punjab,
sum(rajasthan)  over(partition by year_range) as rajasthan,
sum(sikkim)  over(partition by year_range) as sikkim,
sum(tamil_nadu)  over(partition by year_range) as tamil_nadu,
sum(telangana)  over(partition by year_range) as telangana ,
sum(tripura)  over(partition by year_range) as tripura,
sum(uttar_pradesh)  over(partition by year_range) as uttar_pradesh, 
sum(uttarakhand) over(partition by year_range) as uttarakhand,
sum(west_bengal)  over(partition by year_range) as west_bengal,
sum(delhi)  over(partition by year_range) as delhi,
sum(puducherry)  over(partition by year_range) as puducherry
from Revenue_Expenditure1) as b;

select * from Revenue_Expenditure2;






---8
select * from Social_Sector_Expenditure;
select * into Social_Sector_Expenditure1 from
(select*,
case when rank between 1 and 5 then '1980-84'
when rank between 6 and 10 then '1985-89' 
when rank between 11 and 15 then '1990-94'
when rank between 16 and 20 then '1995-99'
when rank between 21 and 25 then '2000-04' 
when rank between 26 and 30 then '2005-09'
when rank between 31 and 35 then '2010-14'
when rank between 36 and 36 then '2015-00' end as year_range
from  
(select *, ROW_NUMBER() over(order by state) as rank 
from Social_Sector_Expenditure) as n) as l ;

select *  from Social_Sector_Expenditure1;

select * into Social_Sector_Expenditure2 from
(select distinct(year_range),
sum(arunachal_pradesh) over(partition by year_range) as Arunachal_pradesh, 
sum(andhra_pradesh) over(partition by year_range) as andhra_pradesh,
sum(assam)  over(partition by year_range) as assam,
sum(bihar)  over(partition by year_range) as bihar, 
sum(chhattisgarh)  over(partition by year_range) as chhattisgarh, 
sum(goa)  over(partition by year_range) as goa, 
sum(gujarat)  over(partition by year_range) as gujarat,
sum(haryana)  over(partition by year_range) as haryana, 
sum(himachal_pradesh)  over(partition by year_range) as himachal_pradesh,
sum(jammu_kashmir)  over(partition by year_range) as jammu_kashmir,
sum(jharkhand)  over(partition by year_range) as jharkhand,
sum(karnataka)  over(partition by year_range) as karnataka,
sum(kerala)  over(partition by year_range) as kerala,
sum(madhya_pradesh)  over(partition by year_range) as madhya_pradesh,
sum(maharashtra)  over(partition by year_range) as maharashtra,
sum(manipur)  over(partition by year_range) as manipur,
sum(meghalaya)  over(partition by year_range) as meghalaya, 
sum(mizoram)  over(partition by year_range) as mizoram,
sum(nagaland)  over(partition by year_range) as nagaland,
sum(odisha)  over(partition by year_range) as odisha, 
sum(punjab)  over(partition by year_range) as punjab,
sum(rajasthan)  over(partition by year_range) as rajasthan,
sum(sikkim)  over(partition by year_range) as sikkim,
sum(tamil_nadu)  over(partition by year_range) as tamil_nadu,
sum(telangana)  over(partition by year_range) as telangana ,
sum(tripura)  over(partition by year_range) as tripura,
sum(uttar_pradesh)  over(partition by year_range) as uttar_pradesh, 
sum(uttarakhand) over(partition by year_range) as uttarakhand,
sum(west_bengal)  over(partition by year_range) as west_bengal,
sum(delhi)  over(partition by year_range) as delhi,
sum(puducherry)  over(partition by year_range) as puducherry
from Social_Sector_Expenditure1) as b;

select * from Social_Sector_Expenditure2;


--- Final All 8 Tables Ready

select * from Aggregate_expediture2;
select * from Capital_Expenditure2;
select * from Gross_Fiscal_Deficits2;
select * from Nominal_GSDP_Series2;
select * from Own_Tax_Revenues2;
select * from Revenue_Deficits2;
select * from Revenue_Expenditure2;
select * from Social_Sector_Expenditure2;








