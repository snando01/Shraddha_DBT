
{% macro Generate_external_tables() %}


 create or replace external table DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_CORE_IMS_FLU
(

recordid integer as (value:c1::int),

week_end date as (value:c2::date),

age_group varchar(50) as (value:c3::varchar),

division varchar(50) as (value:c4::varchar),

market varchar(50) as (value:c5::varchar),

tot_populatn integer as (value:c6::int),

afct_wk integer as (value:c7::int),

afct_wk_prcnt numeric(10,2) as (value:c8::numeric),

afct_wk_vs_lstwk_prcnt numeric(10,2) as (value:c9::numeric),

afct_wk_vs_lstseason_prcnt numeric(10,2) as (value:c10::numeric),

afct_season_vs_lstseason_prcnt numeric(10,2) as (value:c11::numeric),

afct_yr_vs_lstyr_prcnt numeric(10,2) as (value:c12::numeric),

overall_market_status varchar(50) as (value:c13::varchar),

no_of_weeks_on_status integer as (value:c14::int),

symptom varchar(100) as (value:c15::varchar),

month_id varchar(6) as (value:c16::varchar),

currentlyprocessedfilename varchar(255) as (value:c17::varchar),

sor_dtm timestamp as (value:c18::timestamp)

)

with location = @DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_DATA_LOAD
file_format = DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_LOAD_FORMAT
PATTERN = '.*core_ims_flu.csv.*'
REFRESH_ON_CREATE=TRUE
AUTO_REFRESH=TRUE;


create or replace external table DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_CORE_IMS_ALLERGY
(
recordid integer as (value:c1::int),
week_end date as (value:c2::date),
age_group varchar(20) as (value:c3::varchar),
division varchar(50) as (value:c4::varchar),
market varchar(20) as (value:c5::varchar),
tot_populatn integer as (value:c6::int),
afct_wk integer as (value:c7::int),
afct_wk_prcnt numeric(10,2) as (value:c8::numeric),
afct_wk_vs_lstwk_prcnt numeric(10,2) as (value:c9::numeric),
afct_wk_vs_lstseason_prcnt numeric(10,2) as (value:c10::numeric),
afct_season_vs_lstseason_prcnt numeric(10,2) as (value:c11::numeric),
overall_market_status varchar(20) as (value:c12::varchar),
no_of_weeks_on_status integer as (value:c13::int),
species varchar(100) as (value:c14::varchar),
month_id varchar(6) as (value:c15::varchar),
currentlyprocessedfilename varchar(255) as (value:c16::varchar),
sor_dtm timestamp as (value:c17::timestamp)

)
with location = @DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_DATA_LOAD
file_format = DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_LOAD_FORMAT
PATTERN = '.*core_ims_allergy.csv.*' 
REFRESH_ON_CREATE=TRUE
AUTO_REFRESH=TRUE
;

create or replace external table DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_CORE_IMS_POLLEN
(

recordid integer as (value:c1::int),
forecastdate date as (value:c2::date),
zip integer as (value:c3::int),
city varchar(255) as(value:c4::varchar),
state varchar(255) as (value:c5::varchar),
market varchar(255) as (value:c6::varchar),
mcity varchar(255) as (value:c7::varchar),
mstate varchar(255) as (value:c8::varchar),
ims_pollen_index numeric(15,3) as (value:c9::numeric),
currentlyprocessedfilename varchar(255) as (value:c10::varchar),
sor_dtm timestamp as (value:c11::timestamp)


)
with location = @DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_DATA_LOAD
file_format = DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_LOAD_FORMAT
PATTERN = '.*core_ims_pollen.csv.*' ---to write the patten use .* always to select the entended file 
REFRESH_ON_CREATE=TRUE
AUTO_REFRESH=TRUE
;


{% endmacro %}

