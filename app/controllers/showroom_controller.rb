class ShowroomController < ApplicationController
  def index
    @cars = [
      {make: 'Volkswagen', model: 'Golf',              engine: '1.0 MPI 60 S',              details: 'Manual, Petrol',    image_name: 'volkswagen-golf',      has_new_offer: true },
      {make: 'Mercedes',   model: 'C-Class Cabriolet', engine: '1.6 TDI CR 110 DSG S',      details: 'Automatic, Diesel', image_name: 'mercedes-c-class',     has_new_offer: false},
      {make: 'Toyota',     model: 'Avensis',           engine: '2.0 SE',                    details: 'Manual, Petrol',    image_name: 'toyota-avensis',       has_new_offer: true },
      {make: 'Volvo',      model: 'V40',               engine: '1.5 Nav SE-L',              details: 'Automatic Diesel',  image_name: 'volvo-v40',            has_new_offer: false},
      {make: 'Land Rover', model: 'Discovery',         engine: '3.0 SCV6 Auto Graphite',    details: 'Manual, Petrol',    image_name: 'land-rover-discovery', has_new_offer: false},
      {make: 'Jaguar',     model: 'F-Pace',            engine: '2.0d Prestige',             details: 'Automatic, Diesel', image_name: 'jaguar-f-pace',        has_new_offer: false},
      {make: 'Dacia',      model: 'Duster',            engine: '1.6 SCe 115 Access',        details: 'Manual, Petrol',    image_name: 'dacia-duster',         has_new_offer: true },
      {make: 'Mercedes',   model: 'SL',                engine: 'SL 500 9G-Tronic AMG Line', details: 'Automatic, Diesel', image_name: 'mercedes-sl',          has_new_offer: false},
    ]
  end
end
