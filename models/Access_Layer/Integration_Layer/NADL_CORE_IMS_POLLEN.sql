
{{ config (materialized='table',database = 'DEV_COMX_GLOBAL',schema = 'DIGSHELF_INTEGRATION'       
) }}

with final as (
  select * exclude(value) from DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_CORE_IMS_POLLEN
)

select * from final