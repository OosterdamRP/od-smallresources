function AddTextEntry(key, value)
    Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
    -- AddTextEntryByHash(0x00280626, 'Hollywood Hills')
    -- AddTextEntryByHash(0x00A55D60, 'Lemoyne St')
    -- AddTextEntryByHash(0x00CC5CA0, 'Vermont Ave')
    -- AddTextEntryByHash(0x01609BDA, '2868 Hillcrest Ave')
    -- AddTextEntryByHash(0x01946715, '1984 Senora Way')
    -- AddTextEntryByHash(0x01D80573, 'Lincoln Blvd')
    -- AddTextEntryByHash(0x0567BBAD, 'Apt: 2866 Hillcrest Ave')
    -- AddTextEntryByHash(0x05EFF99A, 'Colorado Ave')
    -- AddTextEntryByHash(0x072580D7, 'South Sepulveda Blvd')
    -- AddTextEntryByHash(0x0797DC34, 'Selma Ave')
    -- AddTextEntryByHash(0x0798837A, 'South Los Angeles St')
    -- AddTextEntryByHash(0x07999837, 'Route 86')
    -- AddTextEntryByHash(0x07AB9391, 'Tesla Ave')
    -- AddTextEntryByHash(0x08B9CC73, 'Figueroa St')
    -- AddTextEntryByHash(0x09503B1F, 'Tesla Ave')
    -- AddTextEntryByHash(0x097D1470, 'Sky Way')
    -- AddTextEntryByHash(0x09A04736, 'Paloma Ct')
    -- AddTextEntryByHash(0x0A5BFF42, 'Harrison St')
    -- AddTextEntryByHash(0x0A66FF8E, 'Spanish Ave, Apt 1')
    -- AddTextEntryByHash(0x0D5F14E6, 'Dell Ave')
    -- AddTextEntryByHash(0x1C9EC441, 'Hollywood Sign')
    -- AddTextEntryByHash(0x1DD9FD11, '1905 Davis Ave')
    -- AddTextEntryByHash(0x1DD59743, 'Chestnut')
    -- AddTextEntryByHash(0x2ABB43A8, 'Garage: 4531 Dry Dock St')
    -- AddTextEntryByHash(0x2C04B669, '1001 Panorama Drive')
    -- AddTextEntryByHash(0x2D2F954C, '23rd')
    -- AddTextEntryByHash(0x2D6F23FB, '2045 North Conker Ave')
    -- AddTextEntryByHash(0x2F26BBD7, '2nd St')
    -- AddTextEntryByHash(0x3A82547D, 'Pier S Ave')
    -- AddTextEntryByHash(0x3AFEB5CC, '14th')
    -- AddTextEntryByHash(0x3B546C19, '29th')
    -- AddTextEntryByHash(0x3D7A8076, 'Echandia St')
    -- AddTextEntryByHash(0x4A3712C2, 'Mulholland Dr')
    -- AddTextEntryByHash(0x4B7B2734, 'Bel Air Crest Rd')
    -- AddTextEntryByHash(0x4C9260C4, 'Culver Blvd')
    -- AddTextEntryByHash(0x4D520ED4, '13th')
    -- AddTextEntryByHash(0x4DCE72D8, 'Barbara St')
    -- AddTextEntryByHash(0x4E853514, 'West 102th St')
    -- AddTextEntryByHash(0x4F69F80D, 'Aliso St')
    -- AddTextEntryByHash(0x5AA123E0, 'Old Coast Rd')
    -- AddTextEntryByHash(0x5BC57277, '20th')
    -- AddTextEntryByHash(0x5C3E7D79, 'Mateo St')
    -- AddTextEntryByHash(0x5C483E1D, 'Cherokee Dr')
    -- AddTextEntryByHash(0x5DCE4604, 'Barbara St')
    -- AddTextEntryByHash(0x5E4F2EE7, 'Montlake Dr')
    -- AddTextEntryByHash(0x5E315A37, 'Hartford Way')
    -- AddTextEntryByHash(0x5E962B61, '4531 Dry Dock St')
    -- AddTextEntryByHash(0x5E743118, '14th')
    -- AddTextEntryByHash(0x6A914A6E, '20th')
    -- AddTextEntryByHash(0x6E7B4FDA, '5th')
    -- AddTextEntryByHash(0x6EC04118, '3rd')
    -- AddTextEntryByHash(0x6F927644, 'Pacific Ave')
    -- AddTextEntryByHash(0x7A64EE9E, '331 Supply St')
    -- AddTextEntryByHash(0x7AF8EA21, '12th')
    -- AddTextEntryByHash(0x7BCF327F, 'Electric Ave')
    -- AddTextEntryByHash(0x7C0F330E, '29th')
    -- AddTextEntryByHash(0x7C2C9FA4, 'Integrity Way, 35')
    -- AddTextEntryByHash(0x7D75C728, 'Rodeo Dr')
    -- AddTextEntryByHash(0x7D92FF5A, 'Roselin Pl')
    -- AddTextEntryByHash(0x7E0A4184, 'Las Lagunas Blvd, 9')
    -- AddTextEntryByHash(0x7E8446DD, 'Dudley Ave')
    -- AddTextEntryByHash(0x7EC39AE2, 'Mountain View Dr')
    -- AddTextEntryByHash(0x7EFD9AFE, 'Hurricane St')
    -- AddTextEntryByHash(0x7FADF1B2, 'East Willow St')
    -- AddTextEntryByHash(0x8A00A702, 'Easter St')
    -- AddTextEntryByHash(0x8A21BD3B, 'Fridgit Annexe')
    -- AddTextEntryByHash(0x8CCFEA79, 'Windward Ave')
    -- AddTextEntryByHash(0x8CD2E019, 'Pico Ave')
    -- AddTextEntryByHash(0x8D6FDC93, 'Mesquit St')
    -- AddTextEntryByHash(0x9A95814F, 'Beachcomber Dr')
    -- AddTextEntryByHash(0x9ACC3D68, 'Glen Way')
    -- AddTextEntryByHash(0x9C3E2B5F, '4th')
    -- AddTextEntryByHash(0x17A6EF25, '16th')
    -- AddTextEntryByHash(0x17B4A396, '10th')
    -- AddTextEntryByHash(0x21CFAEFC, 'Shore View Dr')
    -- AddTextEntryByHash(0x22F73EE4, 'Unit 1 Olympic Fwy')
    -- AddTextEntryByHash(0x26FB4367, '28th')
    -- AddTextEntryByHash(0x28B0DAC2, '3655 Wild Oats Dr')
    -- AddTextEntryByHash(0x28C91161, '13th')
    -- AddTextEntryByHash(0x32D92D45, 'Palm Dr')
    -- AddTextEntryByHash(0x34C9DC74, '8th')
    -- AddTextEntryByHash(0x36A6BE4B, 'Palo Verde Dr')
    -- AddTextEntryByHash(0x40D0731C, 'West 17th St')
    -- AddTextEntryByHash(0x42DBBBF2, 'Integrity Way, 28')
    -- AddTextEntryByHash(0x45B1CA3D, 'Century Blvd')
    -- AddTextEntryByHash(0x48A8C62C, '4 Hangman Ave')
    -- AddTextEntryByHash(0x50AD143E, '2nd')
    -- AddTextEntryByHash(0x50D116EE, '21st')
    -- AddTextEntryByHash(0x62CF3882, '3rd')
    -- AddTextEntryByHash(0x62E6DB9D, 'Rodeo Dr')
    -- AddTextEntryByHash(0x63AB52DE, 'South Central Ave')
    -- AddTextEntryByHash(0x63F44C25, 'Monterey Ave')
    -- AddTextEntryByHash(0x65F9C023, '11th')
    -- AddTextEntryByHash(0x67F082C9, 'Las Lagunas Blvd, 4')
    -- AddTextEntryByHash(0x68DF3909, 'South Central Ave')
    -- AddTextEntryByHash(0x73F16A64, 'Cavalry Blvd')
    -- AddTextEntryByHash(0x75E5EA92, 'East 6th St')
    -- AddTextEntryByHash(0x78B17CF6, 'Imperial Blvd')
    -- AddTextEntryByHash(0x80CBFBCF, 'West Arbor Vitae St')
    -- AddTextEntryByHash(0x84B5FCB9, 'Venice Blvd')
    -- AddTextEntryByHash(0x92D6E099, '24th')
    -- AddTextEntryByHash(0x92E1C090, 'Scott Dr')
    -- AddTextEntryByHash(0x96B2B85F, 'West 104th St')
    -- AddTextEntryByHash(0x177CEEC9, '12th')
    -- AddTextEntryByHash(0x261C80DB, 'Gilbert St')
    -- AddTextEntryByHash(0x284CD97B, 'Charles E Young Dr')
    -- AddTextEntryByHash(0x378CE1FA, '9th')
    -- AddTextEntryByHash(0x410A49CD, 'Dayton Way')
    -- AddTextEntryByHash(0x410EAEB9, 'Seminole Dr')
    -- AddTextEntryByHash(0x413E0C79, 'Segrell Way')
    -- AddTextEntryByHash(0x434CC15C, 'Temple St')
    -- AddTextEntryByHash(0x452F38AC, 'Ewing St')
    -- AddTextEntryByHash(0x534D8027, 'Sawtelle Blvd')
    -- AddTextEntryByHash(0x538A9910, 'Brawley Ave')
    -- AddTextEntryByHash(0x605D416C, 'Melrose Ave')
    -- AddTextEntryByHash(0x897BB935, 'Ocean Blvd')
    -- AddTextEntryByHash(0x906B3D92, 'Newport Ave')
    -- AddTextEntryByHash(0x909B5591, 'Massachusetts Ave')
    -- AddTextEntryByHash(0x909DDC27, '25th')
    -- AddTextEntryByHash(0x917FD2AB, 'Fountain Ave')
    -- AddTextEntryByHash(0x941C42F1, 'Elevado Ave')
    -- AddTextEntryByHash(0x946FDCC9, 'Griffith Park Dr')
    -- AddTextEntryByHash(0x975A1B54, 'Lake Vinewood Est')
    -- AddTextEntryByHash(0x983A7D65, 'Sunset Blvd')
    -- AddTextEntryByHash(0x994DC842, '2862 Hillcrest Ave')
    -- AddTextEntryByHash(0x995C30AA, 'Eden Dr')
    -- AddTextEntryByHash(0x1494C805, '140 Zancudo Ave')
    -- AddTextEntryByHash(0x1642DF21, '4584 Procopio Dr')
    -- AddTextEntryByHash(0x1919AEB5, 'Lexington Rd')
    -- AddTextEntryByHash(0x4900EAFD, 'Woolsey Canyon Rd')
    -- AddTextEntryByHash(0x5434BC79, 'Santa Fe Ave')
    -- AddTextEntryByHash(0x5970A42E, 'Imperial Hwy')
    -- AddTextEntryByHash(0x6327FA4A, '12 Sustancia Rd')
    -- AddTextEntryByHash(0x6398B275, 'Sand Canyon Rd')
    -- AddTextEntryByHash(0x6418F6FE, 'Sunset Blvd')
    -- AddTextEntryByHash(0x20101F69, 'Alpine St')
    -- AddTextEntryByHash(0x22198C67, 'Cesar E Chavez Ave')
    -- AddTextEntryByHash(0x24349A67, 'Bali Way')
    -- AddTextEntryByHash(0x34627A5F, 'Jesse St')
    -- AddTextEntryByHash(0x40468D03, 'Alden Dr')
    -- AddTextEntryByHash(0x54978CC7, '9th')
    -- AddTextEntryByHash(0x60781F08, '1200 Route 68')
    -- AddTextEntryByHash(0x90963D6A, 'Naomi Ave')
    -- AddTextEntryByHash(0x245499BF, 'Brown Ave')
    -- AddTextEntryByHash(0x287710C5, '17th')
    -- AddTextEntryByHash(0x594944F9, 'Travertine Dr')
    -- AddTextEntryByHash(0x639007F6, 'Talmage St')
    -- AddTextEntryByHash(0x822874BD, 'Culver Blvd')
    -- AddTextEntryByHash(0x840847DE, '10th')
    -- AddTextEntryByHash(0x6437035A, '27th')
    -- AddTextEntryByHash(0x6705124C, 'South Holt Ave')
    -- AddTextEntryByHash(0x7727141A, 'West Broadway')
    -- AddTextEntryByHash(0x9735407C, 'Bora Bora Way')
    -- AddTextEntryByHash(0x10089346, '1st')
    -- AddTextEntryByHash(0x14653947, 'Hilltop')
    -- AddTextEntryByHash(0x19641124, '100 Marina Drive')
    -- AddTextEntryByHash(0x30810231, '4401 Procopio Dr')
    -- AddTextEntryByHash(0x46299390, '3rd')
    -- AddTextEntryByHash(0x56563954, 'Sandalwood Ave')
    -- AddTextEntryByHash(0x62261708, 'Backlot Blvd')
    -- AddTextEntryByHash(0x78905544, 'Bait St')
    -- AddTextEntryByHash(0x97805066, 'Applan Way')
    -- AddTextEntryByHash(0x98295423, 'East Hill St')
    -- AddTextEntryByHash(0xA01EB58C, '23rd')
    -- AddTextEntryByHash(0xA1F822A2, 'Heather Rd')
    -- AddTextEntryByHash(0xA2F6CA31, 'La Presa Dr')
    -- AddTextEntryByHash(0xA78F42ED, '18th')
    -- AddTextEntryByHash(0xA3207BA0, '2113 Mad Wayne T Dr')
    -- AddTextEntryByHash(0xA5883BDE, 'Dewop Rd')
    -- AddTextEntryByHash(0xA6761DA3, 'Montebello Blvd')
    -- AddTextEntryByHash(0xA12925E9, '6th')
    -- AddTextEntryByHash(0xA2854172, 'Alameda St')
    -- AddTextEntryByHash(0xAA8D30DD, '197 Route 68')
    -- AddTextEntryByHash(0xAD028A90, '2866 Hillcrest Ave')
    -- AddTextEntryByHash(0xAE259C62, 'Runway 1 Unit 5')
    -- AddTextEntryByHash(0xAE282D43, '8754 Route 68')
    -- AddTextEntryByHash(0xB0B7559D, '15th')
    -- AddTextEntryByHash(0xB4A79707, 'Wyton Dr')
    -- AddTextEntryByHash(0xB4BB47B3, 'Gould Ave')
    -- AddTextEntryByHash(0xB9BCE8C8, '22nd')
    -- AddTextEntryByHash(0xB9D0E770, '19th')
    -- AddTextEntryByHash(0xB44C8E74, 'Lincoln Ave')
    -- AddTextEntryByHash(0xB87FAA60, 'Atlantic Ave')
    -- AddTextEntryByHash(0xBAA5E797, 'Prosperity St, 21')
    -- AddTextEntryByHash(0xBC44B852, '19th')
    -- AddTextEntryByHash(0xBCA2379F, '30th')
    -- AddTextEntryByHash(0xBCD75B2A, 'Harbor Scenic Dr')
    -- AddTextEntryByHash(0xBD3412B2, '2044 North Conker Ave')
    -- AddTextEntryByHash(0xC7A93BB0, 'Seminole Dr')
    -- AddTextEntryByHash(0xC69ECC4C, 'S Mo Milton Dr')
    -- AddTextEntryByHash(0xC122D85F, 'Westwood Blvd')
    -- AddTextEntryByHash(0xC431BCEE, 'Boyle Ave')
    -- AddTextEntryByHash(0xC824B6E3, '2117 Milton Rd')
    -- AddTextEntryByHash(0xC99154C3, 'Middle Rd')
    -- AddTextEntryByHash(0xC5438966, 'Cherry Ave')
    -- AddTextEntryByHash(0xCA99824B, '1st')
    -- AddTextEntryByHash(0xCAFCD454, '31st')
    -- AddTextEntryByHash(0xCB000216, 'El Gordo Dr')
    -- AddTextEntryByHash(0xCB537A3D, '5th')
    -- AddTextEntryByHash(0xCC6E9206, 'North Crescent Dr')
    -- AddTextEntryByHash(0xCC9893E2, 'Lindacrest Dr')
    -- AddTextEntryByHash(0xCC628804, 'Getty Center Dr')
    -- AddTextEntryByHash(0xCD357E0E, 'Malibu Rd')
    -- AddTextEntryByHash(0xCDBE566B, '28th')
    -- AddTextEntryByHash(0xCFB6ABB7, '0432 Davis Ave')
    -- AddTextEntryByHash(0xD0B11243, 'Lomitas Ave')
    -- AddTextEntryByHash(0xD0F42F52, 'Alameda St')
    -- AddTextEntryByHash(0xD1E84405, '0232 Paleto Blvd')
    -- AddTextEntryByHash(0xD3B0504A, '3677 Whispymound Dr')
    -- AddTextEntryByHash(0xD3CD9C6E, 'Mt Lee Dr')
    -- AddTextEntryByHash(0xD5A607F8, 'Marmont Ln')
    -- AddTextEntryByHash(0xD5B59F5D, '17th')
    -- AddTextEntryByHash(0xD9B72921, 'East 27th St')
    -- AddTextEntryByHash(0xD16ED5C8, '2874 Hillcrest Ave')
    -- AddTextEntryByHash(0xD39FE932, 'Malibu Ave')
    -- AddTextEntryByHash(0xD83D2419, 'Silver Lake Blvd')
    -- AddTextEntryByHash(0xD513F002, 'Cahuenga Blvd')
    -- AddTextEntryByHash(0xD631D46B, 'Alameda St')
    -- AddTextEntryByHash(0xD13460A6, 'South Los Santos')
    -- AddTextEntryByHash(0xDA9DCCFB, 'San Vicente Blvd')
    -- AddTextEntryByHash(0xDFE0734D, 'Apt: 12 Sustancia Rd')
    -- AddTextEntryByHash(0xE0D4A5CB, 'Loma Vista Dr')
    -- AddTextEntryByHash(0xE9D7AF42, 'North El Rancho Blvd')
    -- AddTextEntryByHash(0xE94A6DDC, 'Coliseum St')
    -- AddTextEntryByHash(0xE105D935, 'Darien Ave')
    -- AddTextEntryByHash(0xE657DF40, 'Franklin Ave')
    -- AddTextEntryByHash(0xE7073C86, 'Broadway')
    -- AddTextEntryByHash(0xE7932A4B, 'Pacific Coast Hwy')
    -- AddTextEntryByHash(0xE34603F3, 'North Western Ave')
    -- AddTextEntryByHash(0xE67489E0, 'Glenn Anderson Fwy')
    -- AddTextEntryByHash(0xE8673047, 'Power St, Apt 3')
    -- AddTextEntryByHash(0xEA41FBE8, 'Palm Dr')
    -- AddTextEntryByHash(0xEB031938, '0325 S Rockford Dr')
    -- AddTextEntryByHash(0xEB32CA00, 'Garage: 0897 Mirror Park Blvd')
    -- AddTextEntryByHash(0xEB4921D4, '~1~st')
    -- AddTextEntryByHash(0xEB858515, 'Bay City Ave, Apt 45')
    -- AddTextEntryByHash(0xEC91B5E5, '870 Route 68')
    -- AddTextEntryByHash(0xEC763725, 'Apt: 3 Alta St 10')
    -- AddTextEntryByHash(0xED5E581D, 'Palo Verde Dr')
    -- AddTextEntryByHash(0xED9B0A83, 'Integrity Way, 30')
    -- AddTextEntryByHash(0xED9DCF06, 'Cougar Ave, Apt 19')
    -- AddTextEntryByHash(0xED13B4BC, 'Formosa St')
    -- AddTextEntryByHash(0xEDEB73E4, 'North Vermont Canyon Rd')
    -- AddTextEntryByHash(0xEF33BDE4, 'Apt: Power St 3')
    -- AddTextEntryByHash(0xF0089E63, 'La Cienega Blvd')
    -- AddTextEntryByHash(0xF03BD5E9, '24th')
    -- AddTextEntryByHash(0xF1AC2C76, 'Garage: 2045 N Conker Ave')
    -- AddTextEntryByHash(0xF3B2BE94, 'Highland Ave')
    -- AddTextEntryByHash(0xF5C37F6E, 'Route 68')
    -- AddTextEntryByHash(0xF5DE6511, 'Corona Fwy')
    -- AddTextEntryByHash(0xF5EFE777, 'Laurel Canyon Blvd')
    -- AddTextEntryByHash(0xF7EA09F7, 'Marmont Ave')
    -- AddTextEntryByHash(0xF8A4FD07, 'Apt: Eclipse Towers PH 3')
    -- AddTextEntryByHash(0xF8D909E5, 'Sandalwood Ave')
    -- AddTextEntryByHash(0xF9EA9501, 'Apt: 4401 Procopio Dr')
    -- AddTextEntryByHash(0xF37C05D8, 'Garage: 140 Zancudo Ave')
    -- AddTextEntryByHash(0xF59D092E, '1893 Grapeseed Ave')
    -- AddTextEntryByHash(0xF94B1F1B, 'Garage East Los Santos')
    -- AddTextEntryByHash(0xF652FC3F, 'Garage: Del Perro Heights 7')
    -- AddTextEntryByHash(0xF787B6C1, '0112 S Rockford Dr, 13')
    -- AddTextEntryByHash(0xF959D26E, 'Grand Ave')
    -- AddTextEntryByHash(0xF5274AE7, 'Del Perro Hts, Apt 20')
    -- AddTextEntryByHash(0xF641831C, 'Airfield Rd')
    -- AddTextEntryByHash(0xF700434A, 'Yellow Sweatband')
    -- AddTextEntryByHash(0xF5196793, 'Mary Ave')
    -- AddTextEntryByHash(0xFA7BAFE5, '21st')
    -- AddTextEntryByHash(0xFA6022ED, 'Weazel Plaza, 26')
    -- AddTextEntryByHash(0xFF357E7B, 'North Canon Dr')
    -- AddTextEntryByHash(0xFFFC76B4, 'Kirkwood Dr')

    -- AddTextEntryByHash(0xC527457D, 'Hollywood Blvd')
    -- AddTextEntryByHash(0x5F27252E, 'Vernon Ave')
    -- AddTextEntryByHash(0x56F28308, 'Figueroa St') -- Carson Ave
    -- AddTextEntryByHash(0x661AA779, 'Compton Ave') -- Willow Ave
    -- AddTextEntryByHash(0xBEA2B02D, 'West 43rd St') -- West Caldwell St
    -- AddTextEntryByHash(0x1FA2C931, 'Glendale Blvd') -- Mirror Park Blvd
    -- AddTextEntryByHash(0xF2C73716, 'Santa Monica Blvd') -- San Andreas Ave
    -- AddTextEntryByHash(0x2581C8F2, 'Montana Ave') -- Santa Monica Blvd

    -- -- Zone Names
    -- AddTextEntry('ACCNA_ARMS', 'McKenzie Field Hangar')
    -- AddTextEntry('ACCNA_BAHAMA', 'Bahama Mamas West')
    -- AddTextEntry('ACCNA_GOLF', 'Los Angeles Golf Club')
    -- AddTextEntry('ACCNA_GOL_CLU', 'Los Angeles Golf Club')
    -- AddTextEntry('ACCNA_H_DT', 'Downtown LA Hospital')
    -- AddTextEntry('ACCNA_H_PB', 'Morro Bay Hospital')
    -- AddTextEntry('ACCNA_H_RH', 'Beverly Hills Hospital')
    -- AddTextEntry('ACCNA_H_SC', 'South Central Hospital')
    -- AddTextEntry('ACCNA_H_SS', 'Desert Shores Hospital')
    -- AddTextEntry('ACCNA_LSANH', 'Los Angeles Hospital')
    -- AddTextEntry('ACCNA_PD_DT', 'Downtown PD Bail')
    -- AddTextEntry('ACCNA_PD_RH', 'Rockford Hills PD Bail')
    -- AddTextEntry('ACCNA_PD_SC', 'South Central PD Bail')
    -- AddTextEntry('ALAMO', 'Salton Sea')
    -- AddTextEntry('ALTA', 'Chinatown')
    -- AddTextEntry('BHAMCA', 'Topanga Canyon')
    -- AddTextEntry('BANNING', 'Wilmington')
    -- AddTextEntry('JAIL', 'Victorville Federal Prison')
    -- AddTextEntry('BRADP', 'Gaviota Pass')
    -- AddTextEntry('BRADT', 'Gaviota Tunnel')
    -- AddTextEntry('BURTON', 'Beverly Grove')
    -- AddTextEntry('BUS', 'LA Metro Bus')
    -- AddTextEntry('CALAFB', 'Bixby Creek')
    -- AddTextEntry('CCREAK', 'Bixby Creek')
    -- AddTextEntry('CHAMH', 'Baldwin Hills')
    -- AddTextEntry('CMSW', 'San Gorgonio Wilderness')
    -- AddTextEntry('CHU', 'Malibu')
    -- AddTextEntry('CYPRE', 'Long Beach')
    -- AddTextEntry('DAVIS', 'South Central') -- Previously Compton
    -- AddTextEntry('DELPE', 'Santa Monica')
    -- AddTextEntry('DELBE', 'Santa Monica Beach')
    -- AddTextEntry('DOWNT', 'Downtown LA')
    -- AddTextEntry('DTVINE', 'Hollywood')
    -- AddTextEntry('EAST_V', 'East Hollywood')
    -- AddTextEntry('EBURO', 'Faircrest Heights') -- Previously Signal Hill
    -- AddTextEntry('ELSANT', 'East Los Angeles')
    -- AddTextEntry('ELGORL', 'Point Vicente Lighthouse')
    -- AddTextEntry('ELYSIAN', 'Terminal Island')
    -- AddTextEntry('ARMYB', 'Vandenberg Air Force Base')
    -- AddTextEntry('GALFISH', 'Niland')
    -- AddTextEntry('DESRT', 'Sonoran Desert')
    -- AddTextEntry('GRAPES', 'Calipatria')
    -- AddTextEntry('GREATC', 'Santa Monica Mountains')
    -- AddTextEntry('GOLF', 'Bel-Air Country Club')
    -- AddTextEntry('HARMO', 'Victorville')
    -- AddTextEntry('HAWICK', 'Melrose District')
    -- AddTextEntry('HUMLAB', 'Santa Susana Field Laboratory')
    -- AddTextEntry('LMESA', 'Arts District')
    -- AddTextEntry('LOSPFY', 'Harbor Fwy')
    -- AddTextEntry('LOSPUER', 'San Pedro')
    -- AddTextEntry('LOSSF', 'Arroyo Seco Pkwy')
    -- AddTextEntry('LAGO', 'Mugu Lagoon')
    -- AddTextEntry('LDAM', 'Morris Dam')
    -- AddTextEntry('LACT', 'Morris Reservoir')
    -- AddTextEntry('LEGSQU', 'Pershing Square')
    -- AddTextEntry('KOREAT', 'Koreatown')
    -- AddTextEntry('AIRP', 'Los Angeles International Airport')
    -- AddTextEntry('STAD', 'Los Angeles Memorial Coliseum')
    -- AddTextEntry('MIRR', 'Echo Park')
    -- AddTextEntry('SKID', 'Skid Row')
    -- AddTextEntry('MORN', 'Westwood')
    -- AddTextEntry('MTCHIL', 'Mount San Gorgonio')
    -- AddTextEntry('MTGORDO', 'Toro Peak')
    -- AddTextEntry('MTJOSE', 'Mount San Jacinto')
    -- AddTextEntry('MURRI', 'Boyle Heights')
    -- AddTextEntry('NOOSE', 'Twin Towers Correctional Facility')
    -- AddTextEntry('NCHU', 'Port Hueneme')
    -- AddTextEntry('PBLUFF', 'Pacific Palisades')
    -- AddTextEntry('OCEANA', 'Pacific Ocean')
    -- AddTextEntry('PALETO', 'Morro Bay')
    -- AddTextEntry('PALCOV', 'Port Hueneme')
    -- AddTextEntry('PALFOR', 'San Bernandino National Forest')
    -- AddTextEntry('PALMPOW', 'Ormond Beach Gas Power Plant')
    -- AddTextEntry('PALHIGH', 'San Jacinto Mountains')
    -- AddTextEntry('PBOX', 'Bunker Hill')
    -- AddTextEntry('ZP_ORT', 'Port of South Los Angeles')
    -- AddTextEntry('PROCOB', 'Morro Strand State Beach')
    -- AddTextEntry('DELSOL', 'San Pedro')
    -- AddTextEntry('RANCHO', 'Watts')
    -- AddTextEntry('CANNY', 'Big Sur')
    -- AddTextEntry('RTRAK', 'LACR MX')
    -- AddTextEntry('MOVIE', 'Century City')
    -- AddTextEntry('RICHM', 'Bel Air')
    -- AddTextEntry('RGLEN', 'Encino')
    -- AddTextEntry('ROCKF', 'Beverly Hills')
    -- AddTextEntry('WINDF', 'San Gorgonio Pass Wind Farm')
    -- AddTextEntry('SANAND', 'California')
    -- AddTextEntry('SANCHIA', 'San Jacinto Mountains')
    -- AddTextEntry('SANDY', 'Desert Shores')
    -- AddTextEntry('SLAB', 'Slab City')
    -- AddTextEntry('STRAW', 'Inglewood')
    -- AddTextEntry('TATAMO', 'San Gabriel Mountains')
    -- AddTextEntry('TERMINA', 'Port of Long Beach')
    -- AddTextEntry('TEXTI', 'Fashion District')
    -- AddTextEntry('TONGVAH', 'Temecula Valley')
    -- AddTextEntry('TONGVAV', 'Topanga Canyon')
    -- AddTextEntry('VESP', 'Venice')
    -- AddTextEntry('BEACH', 'Venice Beach')
    -- AddTextEntry('VCANA', 'Venice Canals')
    -- AddTextEntry('VINE', 'Hollywood')
    -- AddTextEntry('CHIL', 'Hollywood Hills')
    -- AddTextEntry('HORS', 'Hollywood Park Racetrack')
    -- AddTextEntry('WVINE', 'West Hollywood')
    -- AddTextEntry('ZANCUDO', 'Santa Clara River')
end)

Citizen.CreateThread(function() while true do Citizen.Wait(30000) collectgarbage() end end) -- Prevents RAM LEAKS :)