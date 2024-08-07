
select * from crime_scene_report
where date = '20180115'
  and type = 'murder'
  and city = 'SQL City'
select max(address_number) from person
where address_street_name = 'Northwestern Dr'

select * from person
where address_street_name = 'Northwestern Dr'
  and address_number = 4919
    
select * from person
where address_street_name = 'Franklin Ave'
  and name like 'Annabel%'


select * from person
where address_street_name = 'Northwestern Dr'
  and address_number = ( select max(address_number) from person
							where address_street_name = 'Northwestern Dr'
						)
    

select * from person
where (address_street_name = 'Northwestern Dr'
  and address_number = ( select max(address_number) from person
							where address_street_name = 'Northwestern Dr'
						))
OR (address_street_name = 'Franklin Ave'
  and name like 'Annabel%')	


select * from person
where (address_street_name = 'Northwestern Dr'
  and address_number = ( select max(address_number) from person p2 where person.address_street_name = p2.address_street_name)
						)
OR (address_street_name = 'Franklin Ave'
  and name like 'Annabel%')	

				
select * from person
where (address_street_name = 'Northwestern Dr'
  and address_number = ( select max(address_number) from person p2
                         where person.address_street_name = p2.address_street_name)
				        )
OR (address_street_name = 'Franklin Ave'
  and name like 'Annabel%')	

select * from interview where person_id IN (16371, 14887)


