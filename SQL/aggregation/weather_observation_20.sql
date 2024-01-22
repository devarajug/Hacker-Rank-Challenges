with ctx as (
    select
        *,
        ntile(2) over(order by lat_n desc) as mid
    from 
        station
)

select round(min(lat_n), 4) from ctx where ctx.mid = 1;