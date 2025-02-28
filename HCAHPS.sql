--select * from "postgres"."Hospital_Data".hcahps_data;

create table "postgres"."Hospital_Data".Tableau_File as 

-- hospital beds data
with hospital_beds_prep as 
(
select lpad(cast(provider_ccn as text), 6, '0') as provider_ccn, --cast as text, pad 0 if not 6 char
		hospital_name, 
		to_date(fiscal_year_begin_date, 'MM/DD/YYYY') as fiscal_year_begin_date, --format date to be read
		to_date(fiscal_year_end_date, 'MM/DD/YYYY') as fiscal_year_end_date,
		number_of_beds,
		row_number() over (partition by provider_ccn order by to_date(fiscal_year_end_date, 'MM/DD/YYYY') desc) as nth_row --partioning statement, assign 1 to most recent value if >1 data input
from "postgres"."Hospital_Data".hospital_beds
)

-- hcahps data
select lpad(cast(facility_id as text), 6, '0') as provider_ccn,
		to_date(start_date, 'MM/DD/YYYY') as start_date_converted, --format date to be read
		to_date(end_date, 'MM/DD/YYYY') as end_date_converted,
		hcahps.*,
		beds.number_of_beds,
		beds.fiscal_year_begin_date as beds_start_report_period,
		beds.fiscal_year_end_date as beds_end_report_period
from "postgres"."Hospital_Data".hcahps_data as hcahps

--join 2 tables together 
left join hospital_beds_prep as beds 
	on lpad(cast(facility_id as text), 6, '0') = beds.provider_ccn 
	and beds.nth_row = 1
