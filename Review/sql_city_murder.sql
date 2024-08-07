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
