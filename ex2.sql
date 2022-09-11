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


--pt2
--Find the course or courses with the earliest start time
select *
from course
where start_time = (
    select min(start_time)
    from course
);


--pt 3 is cancelled
--Find the number of majors in each department