
{{ config(materialized='table'        
) }}

with final as (
  select * exclude(value) from DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_CORE_IMS_FLU
)

select * from final