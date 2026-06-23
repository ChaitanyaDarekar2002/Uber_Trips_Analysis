select * from UberDataset

select COUNT(*) as Totalcount from UberDataset

-- Check missing values
select * from UberDataset where START is null or STOP is null

--Trips by location
select START,count(*) as total_trips from UberDataset
group by START
order by total_trips desc

--Trips by date
select CAST(Start_date as date) as Trip_date,COUNT(*) as Total_Trips from UberDataset
group by CAST(Start_date as date)
order by Total_Trips desc

--Trip Summary Table
select START,COUNT(*) as Total_trips,AVG(MILES) as avg_Miles into TripSummary from UberDataset
group by START

--vw_TripSummary automatically updates

CREATE VIEW vw_TripSummary
AS

SELECT Start,
COUNT(*) AS TotalTrips,
AVG(MILES) AS AverageFare

FROM UberDataset
GROUP BY START;

Select * from vw_TripSummary