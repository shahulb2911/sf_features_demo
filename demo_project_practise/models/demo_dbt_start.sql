{{config(materialized = 'table')}}


select * from demo
order by uuid_string()
limit 1