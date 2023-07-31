
{{ config(materialized='view'        
) }}

with final as (
  select * from DEV_COMX_GLOBAL.DIGSHELF_INTEGRATION.NADL_CORE_IMS_POLLEN
)

select * from final