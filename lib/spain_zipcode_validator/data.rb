module SpainZipcodeValidator
  module Codes
    PROVINCES = [
      {
        name: 'Araba/Álava',
        unofficial_names: %w[Araba/Álava Araba Álava],
        code: '01'
      },
      {
        name: 'Albacete',
        unofficial_names: %w[Albacete],
        code: '02'
      },
      {
        name: 'Alicante/Alacant',
        unofficial_names: %w[Alicante/Alacant Alicante Alacant],
        code: '03'
      },
      {
        name: 'Almería',
        unofficial_names: %w[Almería],
        code: '04'
      },
      {
        name: 'Ávila',
        unofficial_names: %w[Ávila],
        code: '05'
      },
      {
        name: 'Badajoz',
        unofficial_names: %w[Badajoz],
        code: '06'
      },
      {
        name: 'Balears, Illes',
        unofficial_names: [
          'Balears, Illes', 'Baleares', 'Illes Balears', 'Islas Baleares', 'Balearic Islands'
        ],
        code: '07'
      },
      {
        name: 'Barcelona',
        unofficial_names: %w[Barcelona],
        code: '08'
      },
      {
        name: 'Burgos',
        unofficial_names: %w[Burgos],
        code: '09'
      },
      {
        name: 'Cáceres',
        unofficial_names: %w[Cáceres],
        code: '10'
      },
      {
        name: 'Cádiz',
        unofficial_names: %w[Cádiz],
        code: '11'
      },
      {
        name: 'Castellón/Castelló',
        unofficial_names: %w[Castellón/Castelló Castellón Castelló],
        code: '12'
      },
      {
        name: 'Ciudad Real',
        unofficial_names: ['Ciudad Real'],
        code: '13'
      },
      {
        name: 'Córdoba',
        unofficial_names: %w[Córdoba],
        code: '14'
      },
      {
        name: 'Coruña, A',
        unofficial_names: ['Coruña, A', 'A Coruña', 'Corunna', 'La Coruña'],
        code: '15'
      },
      {
        name: 'Cuenca',
        unofficial_names: %w[Cuenca],
        code: '16'
      },
      {
        name: 'Girona',
        unofficial_names: %w[Girona Gerona],
        code: '17'
      },
      {
        name: 'Granada',
        unofficial_names: %w[Granada],
        code: '18'
      },
      {
        name: 'Guadalajara',
        unofficial_names: %w[Guadalajara],
        code: '19'
      },
      {
        name: 'Gipuzkuoa',
        unofficial_names: %w[Gipuzkoa Guipúzcoa],
        code: '20'
      },
      {
        name: 'Huelva',
        unofficial_names: %w[Huelva],
        code: '21'
      },
      {
        name: 'Huesca',
        unofficial_names: %w[Huesca],
        code: '22'
      },
      {
        name: 'Jaén',
        unofficial_names: %w[Jaén],
        code: '23'
      },
      {
        name: 'León',
        unofficial_names: %w[León],
        code: '24'
      },
      {
        name: 'Lleida',
        unofficial_names: %w[Lleida Lérida],
        code: '25'
      },
      {
        name: 'La Rioja',
        unofficial_names: ['La Rioja', 'Rioja'],
        code: '26'
      },
      {
        name: 'Lugo',
        unofficial_names: %w[Lugo],
        code: '27'
      },
      {
        name: 'Madrid',
        unofficial_names: %w[Madrid],
        code: '28'
      },
      {
        name: 'Málaga',
        unofficial_names: %w[Málaga],
        code: '29'
      },
      {
        name: 'Murcia',
        unofficial_names: %w[Murcia],
        code: '30'
      },
      {
        name: 'Navarra',
        unofficial_names: %w[Navarra Navarre],
        code: '31'
      },
      {
        name: 'Ourense',
        unofficial_names: %w[Ourense Orense],
        code: '32'
      },
      {
        name: 'Asturias',
        unofficial_names: %w[Asturias Oviedo],
        code: '33'
      },
      {
        name: 'Palencia',
        unofficial_names: %w[Palencia],
        code: '34'
      },
      {
        name: 'Palmas, Las',
        unofficial_names: ['Palmas, Las', 'Las Palmas', 'Las Palmas de Gran Canaria'],
        code: '35'
      },
      {
        name: 'Pontevedra',
        unofficial_names: %w[Pontevedra],
        code: '36'
      },
      {
        name: 'Salamanca',
        unofficial_names: %w[Salamanca],
        code: '37'
      },
      {
        name: 'Santa Cruz de Tenerife',
        unofficial_names: ['Santa Cruz de Tenerife', 'Tenerife'],
        code: '38'
      },
      {
        name: 'Cantabria',
        unofficial_names: %w[Cantabria Santander],
        code: '39'
      },
      {
        name: 'Segovia',
        unofficial_names: %w[Segovia],
        code: '40'
      },
      {
        name: 'Sevilla',
        unofficial_names: %w[Sevilla],
        code: '41'
      },
      {
        name: 'Soria',
        unofficial_names: %w[Soria],
        code: '42'
      },
      {
        name: 'Tarragona',
        unofficial_names: %w[Tarragona],
        code: '43'
      },
      {
        name: 'Teruel',
        unofficial_names: %w[Teruel],
        code: '44'
      },
      {
        name: 'Toledo',
        unofficial_names: ['Toledo'],
        code: '45'
      },
      {
        name: 'Valencia/València',
        unofficial_names: ['Valencia/València', 'Valencia', 'València'],
        code: '46'
      },
      {
        name: 'Valladolid',
        unofficial_names: %w[Valladolid],
        code: '47'
      },
      {
        name: 'Bizkaia',
        unofficial_names: %w[Bizkaia Vizcaya],
        code: '48'
      },
      {
        name: 'Zamora',
        unofficial_names: ['Zamora'],
        code: '49'
      },
      {
        name: 'Zaragoza',
        unofficial_names: ['Zaragoza'],
        code: '50'
      },
      {
        name: 'Ceuta',
        unofficial_names: %w[Ceuta Sebta],
        code: '51'
      },
      {
        name: 'Mélilla',
        unofficial_names: %w[Melilla],
        code: '52'
      }
    ]
  end
end
