{% macro load_crime_data() %}
    {% set sql_cmd %}
        COPY INTO getwell_db.getwell_schema.crimedata
        from 
        (select $1, $2 
        from @GETWELL_STAGE/output/crimedata.txt) as t
        (file_format = (format = 'ff_csv'))
        
    {% endset %}
{% endmacro %}