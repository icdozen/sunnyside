# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.create(name:'testCustomer',address:'Boca Raton, FL',scope:'Duplex, Triplex, Quadraplex',email:'test@example.com',username:'exampleUser',password:'asdf',Lat:26.65,Lan:-80.113431)
Customer.create(name:'testCustomer2',address:'testAddress',scope:'Duplex, Triplex, Quadraplex',email:'test@example.com',username:'exampleUser',password:'asdf',Lat:26.6,Lan:-80.113431)

  Contractor.create(name:'Sunrise Solartech' , scope:'Single Family',email:'sunrisesolar@sunnyside.com', Lat: 26.6035, Lng: -80.16531, phone: 9546587634 ,password:'a', address: '300 Jog Road, West Palm Beach FL, 33413')
  Contractor.create(name:'Red Hot Solar',scope:'Duplex, Triplex, Quadraplex',email:'RHS@sunnyside.com', password:'a', phone: 5617906685,Lat: 26.674565, Lng: -80.0931, address:'2414 E Sunrise Blvd, Fort Lauderdale, FL 33304')
  Contractor.create(name:'All Solar Solutions', scope:'Duplex, Triplex, Quadraplex',email:'allsolar@sunnyside.com', Lat: 26.65456, Lng: -80.213431, phone: 8885163076 , password:'a', address:'244 SW 30th St, Fort Lauderdale, FL 33315')
  Contractor.create(name:'A Great Day for Solar', scope:'Duplex, Triplex, Quadraplex', email:'AGDSolar@sunnyside.com', Lat: 26.63, Lng: -80.123431,phone: 9546587634 , password:'a', address:'3020 NE 32nd Ave, Fort Lauderdale, FL 33308')
  Contractor.create(name:'Sunshine Solar', scope:'Duplex, Triplex, Quadraplex',email:'SunshineSolar@sunnyside.com', Lat: 26.1677402, Lng:	-80.1783216, phone: 9545684876 , password:'a', address:'2805 E Oakland Park Blvd #422, Fort Lauderdale, FL 33306')
  Contractor.create(name:'Florida Solar One', scope:'Duplex, Triplex, Quadraplex',email:'FSone@sunnyside.com', Lat: 26.880269, Lng:	-80.133393, phone: 9543346547 , password:'a', address:'1030 NE 43rd Ct, Fort Lauderdale, FL 33334')
  Contractor.create(name:'Sunnyside Solar Contractor ', scope:'Duplex, Triplex, Quadraplex',email:'sssolar@sunnyside.com', Lat: 26.4802643, Lng:	-80.1335778,phone: 5167426431 , password:'a', address:'1024 NE 43rd Ct, Oakland Park, FL 33334')
  Contractor.create(name:'Advanced Solar', scope:'Duplex, Triplex, Quadraplex',email:'AdvanceSolar@sunnyside.com', Lat: 26.3919383, Lng:	-80.2071622,phone: 5168976411 , password:'a', address:'990 NW 53rd St, Fort Lauderdale, FL 33309')
  Contractor.create(name:'Broward Solar', scope:'Duplex, Triplex, Quadraplex',email:'Browardsolar@sunnyside.com', Lat: 26.1870068, Lng:	-80.8328931,  phone: 9548790121 , password:'a', address:'1090 NE 48th Ct, Fort Lauderdale, FL 33334')
  Contractor.create(name:'Bright Solar Solutions', scope:'Duplex, Triplex, Quadraplex',email:'BrightSolarSolutions@sunnyside.com', Lat: 26.0849181, Lng:	-80.5870155, phone: 9545530991 , password:'a', address:'3051 FL-84, Fort Lauderdale, FL 33312')
