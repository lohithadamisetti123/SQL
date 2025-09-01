# Write your MySQL query statement below
select p.project_id,case when e.employee_id=p.employee_id then
 round(avg(e.experience_years),2) else 0 end as average_years from project p
 join employee e on p.employee_id=e.employee_id group by project_id;