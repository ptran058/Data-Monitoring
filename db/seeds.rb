# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# client
Client.create(name: 'Chris', surname: 'Lient',
              photo_url: 'http://www.google.nl/photos/chris_lient.jpg',
              date_of_birth: '1947-01-02',
              blood_type: '0', room: 'D18', institution: '1')

# sight
Sight.create(client_id: '1', activity_date: '2015-01-02 10:30:00', sight_left: '-3', sight_right: '-2,75', cilinder_left: '0,25', cilinder_right: '0.50',
             comments: 'Nieuwe glazen voor haar bril aangemeten', reason: 'Mevrouw heeft last van haar ogen en klaagt over een verminderd zicht')
Sight.create(client_id: '1', activity_date: '2015-06-02 10:30:00', sight_left: '-4', sight_right: '-3,25', cilinder_left: '0,50', cilinder_right: '0.50',
             comments: 'Nieuwe glazen voor haar bril aangemeten', reason: 'Mevrouw heeft last van haar ogen en klaagt over een verminderd zicht')
Sight.create(client_id: '1', activity_date: '2015-09-02 10:30:00', sight_left: '-4,50', sight_right: '-3,75', cilinder_left: '1,0', cilinder_right: '0.50',
             comments: 'Nieuwe glazen voor haar bril aangemeten', reason: 'Mevrouw heeft last van haar ogen en klaagt over een verminderd zicht')

# heartrate
Heartrate.create(client_id: '1', activity_date: '2015-01-01 10:30:00', pulse: '76')
Heartrate.create(client_id: '1', activity_date: '2015-04-01 10:30:00', pulse: '68')
Heartrate.create(client_id: '1', activity_date: '2015-07-01 10:30:00', pulse: '69')
Heartrate.create(client_id: '1', activity_date: '2015-10-01 10:30:00', pulse: '63')
Heartrate.create(client_id: '1', activity_date: '2016-01-01 10:30:00', pulse: '66')
HeartrateTarget.create(client_id: '1', pulse: '68')

# bloodpressure
BloodPressure.create(client_id: '1', sys: '160', dia: '90', activity_date: '2015-01-01')
BloodPressure.create(client_id: '1', sys: '155', dia: '88', activity_date: '2015-04-01')
BloodPressure.create(client_id: '1', sys: '130', dia: '80', activity_date: '2015-07-01')
BloodPressure.create(client_id: '1', sys: '150', dia: '92', activity_date: '2015-10-01')
BloodPressure.create(client_id: '1', sys: '165', dia: '94', activity_date: '2016-01-01')
BloodPressureTarget.create(sys: '110', dia: '70')

# allergies
Allergy.create(name: 'Noten allergie')
Allergy.create(name: 'Lactose intolerantie')

# weight
Weight.create(client_id: '1', activity_date: '2015-01-02 10:21:00', weight: '82kg')
Weight.create(client_id: '1', activity_date: '2015-06-02 10:40:00', weight: '81kg')
Weight.create(client_id: '1', activity_date: '2015-09-02 10:32:00', weight: '86kg')
WeightTarget.create(client_id: '1', weight: '66 kg', date: '2016-01-01')

# length
Length.create(client_id: '1', activity_date: '2015-01-02 10:22:00', length: '167cm')
Length.create(client_id: '1', activity_date: '2015-06-02 10:40:00', length: '167cm')
Length.create(client_id: '1', activity_date: '2015-09-02 10:32:00', length: '166cm')

# medication
Medication.create(name: 'Tysilopine', quantity: '2mg')

# institution
Institution.create(city: 'Leeuwarden', adress: 'Beukenlaan 21', zip: '7291ED', name: 'Tepias')

# HB1AC
Hba1c.create(activity_date: '2015-06-01', mmol: '64')
Hba1c.create(activity_date: '2016-01-01', mmol: '75')
Hba1cTarget.create(client_id: '1', mmol: '48')

# glucose
Glucose.create(client_id: '1', mmol: '5.2', activity_date: '2016-01-01 07:00:00')
Glucose.create(client_id: '1', mmol: '10.0', activity_date: '2016-01-01 19:00:00')
Glucose.create(client_id: '1', mmol: '8.0', activity_date: '2016-01-01 20:00:00')
Glucose.create(client_id: '1', mmol: '7.6', activity_date: '2016-01-01 22:00:00')
Glucose.create(client_id: '1', mmol: '5.3', activity_date: '2016-01-02 07:00:00')
Glucose.create(client_id: '1', mmol: '10.0', activity_date: '2016-01-02 19:00:00')
Glucose.create(client_id: '1', mmol: '6.3,', activity_date: '2016-01-02 20:00:00')
Glucose.create(client_id: '1', mmol: '5.8', activity_date: '2016-01-02 22:00:00')
Glucose.create(client_id: '1', mmol: '4.0', activity_date: '2016-01-03 07:00:00')
Glucose.create(client_id: '1', mmol: '4.9', activity_date: '2016-01-03 19:00:00')
Glucose.create(client_id: '1', mmol: '5.8', activity_date: '2016-01-03 22:00:00')
Glucose.create(client_id: '1', mmol: '4.3', activity_date: '2016-01-04 07:00:00')
Glucose.create(client_id: '1', mmol: '8.1', activity_date: '2016-01-04 12:00:00')
Glucose.create(client_id: '1', mmol: '10.9', activity_date: '2016-01-04 19:00:00')
Glucose.create(client_id: '1', mmol: '5.8', activity_date: '2016-01-04 22:00:00')
Glucose.create(client_id: '1', mmol: '5.3', activity_date: '2016-01-05 07:00:00')
Glucose.create(client_id: '1', mmol: '10.9', activity_date: '2016-01-05 12:00:00')
Glucose.create(client_id: '1', mmol: '8.5', activity_date: '2016-01-05 13:00:00')
Glucose.create(client_id: '1', mmol: '8.0', activity_date: '2016-01-05 19:00:00')
Glucose.create(client_id: '1', mmol: '5.8', activity_date: '2016-01-05 22:00:00')
Glucose.create(client_id: '1', mmol: '5.3', activity_date: '2016-01-06 07:00:00')
Glucose.create(client_id: '1', mmol: '10.9', activity_date: '2016-01-06 12:00:00')
Glucose.create(client_id: '1', mmol: '8.0', activity_date: '2016-01-06 19:00:00')
Glucose.create(client_id: '1', mmol: '5.8', activity_date: '2016-01-06 22:00:00')
Glucose.create(client_id: '1', mmol: '5.3', activity_date: '2016-01-07 07:00:00')
Glucose.create(client_id: '1', mmol: '8.0', activity_date: '2016-01-07 19:00:00')
Glucose.create(client_id: '1', mmol: '5.8', activity_date: '2016-01-07 22:00:00')
Glucose.create(client_id: '1', mmol: '5.3', activity_date: '2016-01-08 07:00:00')
Glucose.create(client_id: '1', mmol: '10.9', activity_date: '2016-01-08 12:00:00')
Glucose.create(client_id: '1', mmol: '8.0', activity_date: '2016-01-08 19:00:00')
Glucose.create(client_id: '1', mmol: '5.8', activity_date: '2016-01-08 22:00:00')
GlucoseTarget.create(client_id: '1', low: '4.0', high: '8.0')

ActivityType.create(name: 'medicatie')
ActivityType.create(name: 'beweging')
ActivityType.create(name: 'voeding')

# log activity
# week 1
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-01 19:10:00', end_time: '2016-01-01 19:30:00')
Log.create(client_id: '1', description: 'Zwemmen', activity_type_id: '2', start_time: '2016-01-01 20:00:00', end_time: '2016-01-01 21:00:00')
Log.create(client_id: '1', description: 'Oliebollen gegeten', activity_type_id: '3', start_time: '2016-01-02 17:00:00', end_time: '2016-01-02 17:30:00')
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-02 19:10:00', end_time: '2016-01-02 19:30:00')
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-04 19:10:00', end_time: '2016-01-04 19:20:00')
Log.create(client_id: '1', description: 'Appeltaart van kees', activity_type_id: '3', start_time: '2016-01-05 10:10:00', end_time: '2016-01-05 10:20:00')
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-05 12:10:00', end_time: '2016-01-05 12:20:00')
Log.create(client_id: '1', description: 'Appeltaart', activity_type_id: '3', start_time: '2016-01-06 09:10:00', end_time: '2016-01-06 10:00:00')
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-06 12:10:00', end_time: '2016-01-06 12:20:00')
Log.create(client_id: '1', description: 'Appeltaart', activity_type_id: '3', start_time: '2016-01-08 10:10:00', end_time: '2016-01-08 10:30:00')
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-08 12:10:00', end_time: '2016-01-08 12:20:00')

# week2
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-08 19:10:00', end_time: '2016-01-08 19:30:00')
Log.create(client_id: '1', description: 'Zwemmen', activity_type_id: '2', start_time: '2016-01-09 20:00:00', end_time: '2016-01-09 21:00:00')
Log.create(client_id: '1', description: 'Oliebollen gegeten', activity_type_id: '3', start_time: '2016-01-10 17:00:00', end_time: '2016-01-10 17:30:00')
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-11 19:10:00', end_time: '2016-01-11 19:30:00')
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-12 19:10:00', end_time: '2016-01-12 19:20:00')
Log.create(client_id: '1', description: 'Appeltaart van kees', activity_type_id: '3', start_time: '2016-01-13 10:10:00', end_time: '2016-01-13 10:20:00')
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-14 12:10:00', end_time: '2016-01-14 12:20:00')
Log.create(client_id: '1', description: 'Appeltaart', activity_type_id: '3', start_time: '2016-01-15 09:10:00', end_time: '2016-01-15 10:00:00')
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-16 12:10:00', end_time: '2016-01-16 12:20:00')
Log.create(client_id: '1', description: 'Appeltaart', activity_type_id: '3', start_time: '2016-01-17 10:10:00', end_time: '2016-01-17 10:30:00')
Log.create(client_id: '1', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-01-18 12:10:00', end_time: '2016-01-18 12:20:00')

# log activity id:5
# week 1
Log.create(client_id: '5', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-05-16 19:10:00', end_time: '2016-05-16 19:30:00')
Log.create(client_id: '5', description: 'Zwemmen', activity_type_id: '2', start_time: '2016-05-16 20:00:00', end_time: '2016-05-16 21:00:00')
Log.create(client_id: '5', description: 'Oliebollen gegeten', activity_type_id: '3', start_time: '2016-05-17 17:00:00', end_time: '2016-05-17 17:30:00')
Log.create(client_id: '5', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-05-17 19:10:00', end_time: '2016-05-17 19:30:00')
Log.create(client_id: '5', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-05-17 19:10:00', end_time: '2016-05-17 19:20:00')
Log.create(client_id: '5', description: 'Appeltaart van kees', activity_type_id: '3', start_time: '2016-05-18 10:10:00', end_time: '2016-05-18 10:20:00')
Log.create(client_id: '5', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-05-18 12:10:00', end_time: '2016-05-18 12:20:00')
Log.create(client_id: '5', description: 'Appeltaart', activity_type_id: '3', start_time: '2016-05-18 09:10:00', end_time: '2016-05-18 10:00:00')
Log.create(client_id: '5', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-05-18 12:10:00', end_time: '2016-05-18 12:20:00')
Log.create(client_id: '5', description: 'Appeltaart', activity_type_id: '3', start_time: '2016-05-19 10:10:00', end_time: '2016-05-19 10:30:00')
Log.create(client_id: '5', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-05-19 12:10:00', end_time: '2016-05-19 12:20:00')

# week2
Log.create(client_id: '5', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-05-19 19:10:00', end_time: '2016-05-19 19:30:00')
Log.create(client_id: '5', description: 'Zwemmen', activity_type_id: '2', start_time: '2016-05-20 20:00:00', end_time: '2016-05-20 21:00:00')
Log.create(client_id: '5', description: 'Oliebollen gegeten', activity_type_id: '3', start_time: '2016-05-20 17:00:00', end_time: '2016-05-20 17:30:00')
Log.create(client_id: '5', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-05-20 19:10:00', end_time: '2016-05-20 19:30:00')
Log.create(client_id: '5', description: 'Insuline ingespoten', activity_type_id: '1', start_time: '2016-05-21 19:10:00', end_time: '2016-05-21 19:20:00')
Log.create(client_id: '5', description: 'Appeltaart gegeten', activity_type_id: '3', start_time: '2016-05-21 10:10:00', end_time: '2016-05-21 10:20:00')
