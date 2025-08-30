select a.machine_id,round(avg(a.timestamp-b.timestamp),3) as processing_time from activity a
join activity b on a.machine_id=b.machine_id and  b.activity_type='start' and
a.activity_type='end' group by machine_id;