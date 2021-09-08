{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}

       {{ custom_schema_name | trim }} -- this line will change the PUBLIC_staging to only staging

    {%- endif -%}

{%- endmacro %}