select
date,
token_address,
{{ conversion('value', '6') }} as total_usd_value

from {{ ref('stg_token_transfers') }}


where lower(token_address) in {{random_macro()}}

group by 
date,
token_address