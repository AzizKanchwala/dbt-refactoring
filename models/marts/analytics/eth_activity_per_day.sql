select
date,
transaction_category,
count(*) as tx_count,
{{ conversion('value', '18') }} as sum_eth_value_state

from {{ ref('stg_transactions_enriched') }}

group by 
date,
transaction_category