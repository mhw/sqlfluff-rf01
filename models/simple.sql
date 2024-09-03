select
    foo.created_at,
    bar.description
from {{ source('app', 'foo') }}
left join {{ source('app', 'bar') }}
    on foo.id = bar.foo_id
