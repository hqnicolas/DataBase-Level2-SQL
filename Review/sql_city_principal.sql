SELECT *
FROM drivers_license
WHERE car_model LIKE "Model S%" and gender="female"

SELECT *
FROM person
WHERE license_id IN (202298, 291182, 918773)

SELECT *
FROM facebook_event_checkin
WHERE date LIKE "2017%" 
and event_name LIKE "SQL Symphony Concert%"
WHERE person_id IN (78881, 90700, 99716)


from (select p.* from person p inner join drivers_license d
       on p.license_id = d.id
where height between 65 and 67
   and gender = 'female'
   and hair_color = 'red'
   and car_make = 'Tesla'
   and car_model = 'Model S') A INNER JOIN (select person_id from facebook_event_checkin
                                                where date between '20171201' and '20171231'
                                                  and event_name = 'SQL Symphony Concert'
                                             group by person_id  
                                               having count(*) = 3) B
   ON A.id = B.person_id


insert into solution 
select 1, p.name
from person p inner join drivers_license d
       on p.license_id = d.id
where height between 65 and 67
   and gender = 'female'
   and hair_color = 'red'
   and car_make = 'Tesla'
   and car_model = 'Model S'
   and p.id in (select person_id from facebook_event_checkin
                     where date between '20171201' and '20171231'
                       and event_name = 'SQL Symphony Concert'
                     group by person_id  
                     having count(*) = 3);
