
{{ config(materialized='view',database='DEV_COMX_GLOBAL',schema='DIGSHELF_ACCESS'       
) }}

with final as (
  select *  from DEV_COMX_GLOBAL.DIGSHELF_INTEGRATION.NADL_CORE_IMS_FLU
)

select * from final