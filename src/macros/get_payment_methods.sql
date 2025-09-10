{% macro get_payment_methods() -%}
  {% set payment_methods_query %}
    select distinct payment_method from {{ source('source', 'orders') }}
    order by 1
  {% endset %}

  {% if execute %}
    {% set results = run_query(payment_methods_query) %}
    {% set payment_methods = results.columns[0].values() %}
    {{ return(payment_methods) }}
  {% else %}
    {{ return([]) }}
  {% endif %}
{%- endmacro %}
