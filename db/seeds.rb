  # This file should contain all the record creation needed to seed the database with its default values.
  # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
  #
  # Examples:
  #
  #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  #   Mayor.create(name: 'Emanuel', city: cities.first)
  #zicht 
  Sight.create(client_id: "1", activity_date: "2015-01-02 10:30:00", sight_left: "-2", sight_right: "-3", cilinder_left: "0.25", cilinder_right: "0.50", 
    comments: "Nieuwe glazen voor haar bril aangemeten", reason: "Mevrouw heeft last van haar ogen en klaagt over een verminderd zicht", )
  Sight.create(client_id: "1", activity_date: "2015-06-02 10:30:00", sight_left: "-2", sight_right: "-3", cilinder_left: "0.25", cilinder_right: "0.50", 
    comments: "Nieuwe glazen voor haar bril aangemeten", reason: "Mevrouw heeft last van haar ogen en klaagt over een verminderd zicht", )
  Sight.create(client_id: "1", activity_date: "2015-09-02 10:30:00", sight_left: "-2", sight_right: "-3", cilinder_left: "0.25", cilinder_right: "0.50", 
    comments: "Nieuwe glazen voor haar bril aangemeten", reason: "Mevrouw heeft last van haar ogen en klaagt over een verminderd zicht", )

  #client 
  Client.create(name: "Chris", surname: "Lient", 
  photo_url: "http://www.google.nl/photos/betty_de_graaf.jpg", 
  date_of_birth: "1947-01-02", 
  blood_type: "0", room: "D18", institution: "1")

  #allergies
  Allergy.create(name: "Noten allergie")

  #weight
  Weight.create(client_id: "1", activity_date: "2015-01-02 ", weight: "82kg")
  Weight.create(client_id: "1", activity_date: "2015-06-02 10:40:00", weight: "81kg")
  Weight.create(client_id: "1", activity_date: "2015-09-02 10:32:00", weight: "86kg")

  #length 
  Length.create(client_id: "1", activity_date: "2015-02-02 10:22:00", length: "180cm")
  Length.create(client_id: "1", activity_date: "2015-06-02 10:40:00", length: "179cm")
  Length.create(client_id: "1", activity_date: "2015-09-02 10:32:00", length: "178cm")



  #medication
  Medication.create(name: "Tysilopine", quantity: "2mg")

  #institution
  Institution.create(city: "Leeuwarden", adress: "Beukenlaan 21", zip: "7291ED", name: "Tepias") 
  #De diabetes patient behaald zijn/haar streefwaarden
  #De diabetes patient behaald zijn/haar streefwaarden
  #HB1AC
  Hba1c.create(activity_date: "2015-01-01", mmol: "53")
  Hba1c.create(activity_date: "2015-04-01", mmol: "58")
  Hba1c.create(activity_date: "2015-07-01", mmol: "47")
  Hba1c.create(activity_date: "2015-10-01", mmol: "53")
  Hba1c.create(activity_date: "2016-01-01", mmol: "53")
  Hba1cTarget.create(client_id: "1", mmol: "53")
  #De diabetes patient ondervindt te veel hypers
  #De diabetes patient heeft geen hulp gekregen bij een hyper
  #Glucose
  Glucose.create(client_id: "1", mmol: "5.2", activity_date: "2016-01-01 07:00:00")
  Glucose.create(client_id: "1", mmol: "10.0", activity_date: "2016-01-01 19:00:00")
  Glucose.create(client_id: "1", mmol: "8.0", activity_date: "2016-01-01 20:00:00")
  Glucose.create(client_id: "1", mmol: "7.6", activity_date: "2016-01-01 22:00:00")
  Glucose.create(client_id: "1", mmol: "5.3", activity_date: "2016-01-02 07:00:00")
  Glucose.create(client_id: "1", mmol: "10.0", activity_date: "2016-01-02 19:00:00")
  Glucose.create(client_id: "1", mmol: "6.3,", activity_date: "2016-01-02 20:00:00")
  Glucose.create(client_id: "1", mmol: "5.8", activity_date: "2016-01-02 22:00:00")
  Glucose.create(client_id: "1", mmol: "4.0", activity_date: "2016-01-03 07:00:00")
  Glucose.create(client_id: "1", mmol: "4.9", activity_date: "2016-01-03 19:00:00")
  Glucose.create(client_id: "1", mmol: "5.8", activity_date: "2016-01-03 22:00:00")
  Glucose.create(client_id: "1", mmol: "4.3", activity_date: "2016-01-04 07:00:00")
  Glucose.create(client_id: "1", mmol: "8.1", activity_date: "2016-01-04 12:00:00")
  Glucose.create(client_id: "1", mmol: "10.9", activity_date: "2016-01-04 19:00:00")
  Glucose.create(client_id: "1", mmol: "5.8", activity_date: "2016-01-04 22:00:00")
  Glucose.create(client_id: "1", mmol: "5.3", activity_date: "2016-01-05 07:00:00")
  Glucose.create(client_id: "1", mmol: "10.9", activity_date: "2016-01-05 12:00:00")
  Glucose.create(client_id: "1", mmol: "8.5", activity_date: "2016-01-05 13:00:00")
  Glucose.create(client_id: "1", mmol: "8.0", activity_date: "2016-01-05 19:00:00")
  Glucose.create(client_id: "1", mmol: "5.8", activity_date: "2016-01-05 22:00:00")
  Glucose.create(client_id: "1", mmol: "5.3", activity_date: "2016-01-06 07:00:00")
  Glucose.create(client_id: "1", mmol: "10.9", activity_date: "2016-01-06 12:00:00")
  Glucose.create(client_id: "1", mmol: "8.0", activity_date: "2016-01-06 19:00:00")
  Glucose.create(client_id: "1", mmol: "5.8", activity_date: "2016-01-06 22:00:00")
  Glucose.create(client_id: "1", mmol: "5.3", activity_date: "2016-01-07 07:00:00")
  Glucose.create(client_id: "1", mmol: "8.0", activity_date: "2016-01-07 19:00:00")
  Glucose.create(client_id: "1", mmol: "5.8", activity_date: "2016-01-07 22:00:00")
  Glucose.create(client_id: "1", mmol: "5.3", activity_date: "2016-01-08 07:00:00")
  Glucose.create(client_id: "1", mmol: "10.9", activity_date: "2016-01-08 12:00:00")
  Glucose.create(client_id: "1", mmol: "8.0", activity_date: "2016-01-08 19:00:00")
  Glucose.create(client_id: "1", mmol: "5.8", activity_date: "2016-01-08 22:00:00")
  GlucoseTarget.create(client_id: "1", low: "4.0", high: "8.0")
  ActivityType.create(name: "medicatie")
  ActivityType.create(name: "beweging")
  ActivityType.create(name: "voeding")

  #Log activity type start_time end_time comments client_id
  Log.create(client_id: "1", description: "Insuline ingespoten", activity_type_id: "1", start_time: "2016-01-01 19:10:00", end_time: "2016-01-01 19:30:00")
  Log.create(client_id: "1", description: "Zwemmen", activity_type_id: "2", start_time: "2016-01-01 20:00:00", end_time: "2016-01-01 21:00:00")
  Log.create(client_id: "1", description: "Oliebollen gegeten", activity_type_id: "3", start_time: "2016-01-02 17:00:00", end_time: "2016-01-02 17:30:00")
  Log.create(client_id: "1", description: "Insuline ingespoten", activity_type_id: "1", start_time: "2016-01-02 19:10:00", end_time: "2016-01-02 19:30:00")
  Log.create(client_id: "1", description: "Insuline ingespoten", activity_type_id: "1", start_time: "2016-01-04 19:10:00", end_time: "2016-01-04 19:20:00")
  Log.create(client_id: "1", description: "Appeltaart van kees", activity_type_id: "3", start_time: "2016-01-05 10:10:00", end_time: "2016-01-05 10:20:00")
  Log.create(client_id: "1", description: "Insuline ingespoten", activity_type_id: "1", start_time: "2016-01-05 12:10:00", end_time: "2016-01-05 12:20:00")
  Log.create(client_id: "1", description: "Appeltaart", activity_type_id: "3", start_time: "2016-01-06 09:10:00", end_time: "2016-01-06 10:00:00")
  Log.create(client_id: "1", description: "Insuline ingespoten", activity_type_id: "1", start_time: "2016-01-06 12:10:00", end_time: "2016-01-06 12:20:00")
  Log.create(client_id: "1", description: "Appeltaart", activity_type_id: "3", start_time: "2016-01-08 10:10:00", end_time: "2016-01-08 10:30:00")
  Log.create(client_id: "1", description: "Insuline gehad", activity_type_id: "1", start_time: "2016-01-08 12:10:00", end_time: "2016-01-08 12:20:00")