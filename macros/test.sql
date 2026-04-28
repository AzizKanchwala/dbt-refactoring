{% macro random_macro() %}
{% set query %}
select
distinct
token_address
from {{ref('stg_token_transfers')}}
{% endset %}

{% if execute %}
{% set results = run_query(query) %} 
{% set result_list = results.columns[0].values() %}
{% else %}
{% set result_lits = [] %}
{% endif %}

{{ log(result_list, info = True ) }}
{% endmacro %}