select sum(duration) as total_duration 
from assignment_submissions
join students 
on students.id = student_id
join cohorts on cohorts.id = cohort_id
where cohorts.name = 'FEB12';