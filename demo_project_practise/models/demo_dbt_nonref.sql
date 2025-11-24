{{config(materialized = 'table')}}

select * from {{source('demo_sources','demo_bank')}}