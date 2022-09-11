--Student(id, name)
--Department(id, name, office) --name is considered the major
--Room(id, name, capacity)
--Course(crn, name, start_time, end_time, room_id)
--MajorsIn(student_id, dept_id)
--Enrolled(student_id, course_crn, credit_status)



--pt1
--Find all rooms that can seat at least 100 people
select *
from room
where capacity >= 100;
