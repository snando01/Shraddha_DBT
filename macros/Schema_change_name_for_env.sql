{% macro generate_schema_name_for_env(custom_DB_name,custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if target.name == 'Deployment' and custom_DB_name is not none and custom_schema_name is not none -%}

        {{ custom_DB_name.custom_schema_name | trim }}

    {%- else -%}

        {{ default_schema }}

    {%- endif -%}

{%- endmacro %}