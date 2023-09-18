-- Begin transaction
BEGIN;

-- Insert states
INSERT INTO states (name) VALUES
    ('Oyo'),
    ('Abuja'),
    ('Abia'),
    ('Adamawa'),
    ('Akwa Ibom'),
    ('Anambra'),
    ('Bauchi'),
    ('Bayelsa'),
    ('Benue'),
    ('Borno'),
    ('Cross River'),
    ('Delta'),
    ('Ebonyi'),
    ('Edo'),
    ('Ekiti'),
    ('Enugu'),
    ('Gombe'),
    ('Imo'),
    ('Jigawa'),
    ('Kaduna'),
    ('Kano'),
    ('Katsina'),
    ('Kebbi'),
    ('Kogi'),
    ('Kwara'),
    ('Lagos'),
    ('Nasarawa'),
    ('Niger'),
    ('Ogun'),
    ('Ondo'),
    ('Osun'),
    ('Plateau'),
    ('Rivers'),
    ('Sokoto'),
    ('Taraba'),
    ('Yobe'),
    ('Zamfara');

-- Insert LGAs
INSERT INTO lgas (name, state_id) VALUES
    ('Afijio', 1),
    ('Akinyele', 1),
    ('Atiba', 1),
    ('Atisbo', 1),
    ('Egbeda', 1),
    ('Ibadan North', 1),
    ('Ibadan North-East', 1),
    ('Ibadan North-West', 1),
    ('Ibadan South-East', 1),
    ('Ibadan South-West', 1),
    ('Ibarapa Central', 1),
    ('Ibarapa East', 1),
    ('Ibarapa North', 1),
    ('Ido', 1),
    ('Irepo', 1),
    ('Iseyin', 1),
    ('Itesiwaju', 1),
    ('Iwajowa', 1),
    ('Kajola', 1),
    ('Lagelu', 1),
    ('Ogbomoso North', 1),
    ('Ogbomoso South', 1),
    ('Ogo Oluwa', 1),
    ('Oluyole', 1),
    ('Ona Ara', 1),
    ('Orelope', 1),
    ('Ori Ire', 1),
    ('Oyo East', 1),
    ('Oyo West', 1),
    ('Saki East', 1),
    ('Saki West', 1),
    ('Surulere', 1),
    ('Central Business District', 2),
    ('Garki', 2),
    ('Wuse', 2),
    ('Maitama', 2),
    ('Asokoro', 2),
    ('Utako', 2),
    ('Jabi', 2),
    ('Gwarimpa', 2),
    ('Karu', 2),
    ('Kubwa', 2),
    ('Nyanya', 2),
    ('Aba North', 3),
    ('Aba South', 3),
    ('Arochukwu', 3),
    ('Bende', 3),
    ('Ikwuano', 3),
    ('Isiala Ngwa North', 3),
    ('Isiala Ngwa South', 3),
    ('Isuikwuato', 3),
    ('Obingwa', 3),
    ('Ohafia', 3),
    ('Osisioma Ngwa', 3),
    ('Ugwunagbo', 3),
    ('Ukwa East', 3),
    ('Ukwa West', 3),
    ('Umuahia North', 3),
    ('Umuahia South', 3),
    ('Umu Nneochi', 3),
    ('Demsa', 4),
    ('Fufore', 4),
    ('Ganye', 4),
    ('Girei', 4),
    ('Gombi', 4),
    ('Guyuk', 4),
    ('Hong', 4),
    ('Jada', 4),
    ('Lamurde', 4),
    ('Madagali', 4),
    ('Maiha', 4),
    ('Mayo-Belwa', 4),
    ('Michika', 4),
    ('Mubi North', 4),
    ('Mubi South', 4),
    ('Numan', 4),
    ('Shelleng', 4),
    ('Song', 4),
    ('Toungo', 4),
    ('Yola North', 4),
    ('Yola South', 4),
    ('Abak', 5),
    ('Eastern Obolo', 5),
    ('Eket', 5),
    ('Esit Eket', 5),
    ('Essien Udim', 5),
    ('Etim Ekpo', 5),
    ('Etinan', 5),
    ('Ibeno', 5),
    ('Ibesikpo Asutan', 5),
    ('Ibiono Ibom', 5),
    ('Ika', 5),
    ('Ikono', 5),
    ('Ikot Abasi', 5),
    ('Ikot Ekpene', 5),
    ('Ini', 5),
    ('Itu', 5),
    ('Mbo', 5),
    ('Mkpat Enin', 5),
    ('Nsit Atai', 5),
    ('Nsit Ibom', 5),
    ('Nsit Ubium', 5),
    ('Obot Akara', 5),
    ('Okobo', 5),
    ('Onna', 5),
    ('Oron', 5),
    ('Oruk Anam', 5),
    ('Ukanafun', 5),
    ('Udung Uko', 5),
    ('Uruan', 5),
    ('Urue-Offong/Oruko', 5),
    ('Uyo', 5),
     ('Aguata', 6),
    ('Anambra East', 6),
    ('Anambra West', 6),
    ('Anaocha', 6),
    ('Awka North', 6),
    ('Awka South', 6),
    ('Ayamelum', 6),
    ('Dunukofia', 6),
    ('Ekwusigo', 6),
    ('Idemili North', 6),
    ('Idemili South', 6),
    ('Ihiala', 6),
    ('Njikoka', 6),
    ('Nnewi North', 6),
    ('Nnewi South', 6),
    ('Ogbaru', 6),
    ('Onitsha North', 6),
    ('Onitsha South', 6),
    ('Orumba North', 6),
    ('Orumba South', 6),
    ('Oyi', 6),
     ('Alkaleri', 7),
    ('Bauchi', 7),
    ('Bogoro', 7),
    ('Darazo', 7),
    ('Dass', 7),
    ('Gamawa', 7),
    ('Ganjuwa', 7),
    ('Giade', 7),
    ('Itas/Gadau', 7),
    ('Jamaare', 7),
    ('Katagum', 7),
    ('Kirfi', 7),
    ('Misau', 7),
    ('Ningi', 7),
    ('Shira', 7),
    ('Tafawa Balewa', 7),
    ('Toro', 7),
    ('Warji', 7),
    ('Zaki', 7),
    ('Brass', 8),
    ('Ekeremor', 8),
    ('Kolokuma/Opokuma', 8),
    ('Nembe', 8),
    ('Ogbia', 8),
    ('Sagbama', 8),
    ('Southern Ijaw', 8),
    ('Yenagoa', 8),
    ('Ado', 9),
    ('Agatu', 9),
    ('Apa', 9),
    ('Buruku', 9),
    ('Gboko', 9),
    ('Guma', 9),
    ('Gwer East', 9),
    ('Gwer West', 9),
    ('Katsina-Ala', 9),
    ('Konshisha', 9),
    ('Kwande', 9),
    ('Logo', 9),
    ('Makurdi', 9),
    ('Obi', 9),
    ('Ogbadibo', 9),
    ('Ohimini', 9),
    ('Oju', 9),
    ('Okpokwu', 9),
    ('Otukpo', 9),
    ('Tarka', 9),
    ('Ukum', 9),
    ('Ushongo', 9),
    ('Vandeikya', 9),
     ('Abadam', 10),
    ('Askira/Uba', 10),
    ('Bama', 10),
    ('Bayo', 10),
    ('Biu', 10),
    ('Chibok', 10),
    ('Damboa', 10),
    ('Dikwa', 10),
    ('Gubio', 10),
    ('Guzamala', 10),
    ('Gwoza', 10),
    ('Hawul', 10),
    ('Jere', 10),
    ('Kaga', 10),
    ('Kala/Balge', 10),
    ('Konduga', 10),
    ('Kukawa', 10),
    ('Kwaya Kusar', 10),
    ('Mafa', 10),
    ('Magumeri', 10),
    ('Maiduguri', 10),
    ('Marte', 10),
    ('Mobbar', 10),
    ('Monguno', 10),
    ('Ngala', 10),
    ('Nganzai', 10),
    ('Shani', 10),
    ('Abi', 11),
    ('Akamkpa', 11),
    ('Akpabuyo', 11),
    ('Bakassi', 11),
    ('Bekwarra', 11),
    ('Biase', 11),
    ('Boki', 11),
    ('Calabar Municipal', 11),
    ('Calabar South', 11),
    ('Etung', 11),
    ('Ikom', 11),
    ('Obanliku', 11),
    ('Obubra', 11),
    ('Obudu', 11),
    ('Odukpani', 11),
    ('Ogoja', 11),
    ('Yakuur', 11),
    ('Yakurr', 11),
    ('Yala', 11),
    ('Aniocha North', 12),
    ('Aniocha South', 12),
    ('Bomadi', 12),
    ('Burutu', 12),
    ('Ethiope East', 12),
    ('Ethiope West', 12),
    ('Ika North East', 12),
    ('Ika South', 12),
    ('Isoko North', 12),
    ('Isoko South', 12),
    ('Ndokwa East', 12),
    ('Ndokwa West', 12),
    ('Okpe', 12),
    ('Oshimili North', 12),
    ('Oshimili South', 12),
    ('Patani', 12),
    ('Sapele', 12),
    ('Udu', 12),
    ('Ughelli North', 12),
    ('Ughelli South', 12),
    ('Ukwuani', 12),
    ('Uvwie', 12),
    ('Warri North', 12),
    ('Warri South', 12),
    ('Warri South West', 12),
    ('Abakaliki', 13),
    ('Afikpo North', 13),
    ('Afikpo South', 13),
    ('Ebonyi', 13),
    ('Ezza North', 13),
    ('Ezza South', 13),
    ('Ikwo', 13),
    ('Ishielu', 13),
    ('Ivo', 13),
    ('Izzi', 13),
    ('Ohaozara', 13),
    ('Ohaukwu', 13),
    ('Onicha', 13),
    ('Akoko-Edo', 14),
    ('Egor', 14),
    ('Esan Central', 14),
    ('Esan North-East', 14),
    ('Esan South-East', 14),
    ('Esan West', 14),
    ('Etsako Central', 14),
    ('Etsako East', 14),
    ('Etsako West', 14),
    ('Igueben', 14),
    ('Ikpoba-Okha', 14),
    ('Oredo', 14),
    ('Orhionmwon', 14),
    ('Ovia North-East', 14),
    ('Ovia South-West', 14),
    ('Owan East', 14),
    ('Owan West', 14),
    ('Uhunmwonde', 14),
    ('Ado Ekiti', 15),
    ('Efon', 15),
    ('Ekiti East', 15),
    ('Ekiti South-West', 15),
    ('Ekiti West', 15),
    ('Emure', 15),
    ('Ido-Osi', 15),
    ('Ijero', 15),
    ('Ikere', 15),
    ('Ikole', 15),
    ('Ilejemeje', 15),
    ('Irepodun/Ifelodun', 15),
    ('Ise/Orun', 15),
    ('Moba', 15),
    ('Oye', 15),
    ('Aninri', 16),
    ('Awgu', 16),
    ('Enugu East', 16),
    ('Enugu North', 16),
    ('Enugu South', 16),
    ('Ezeagu', 16),
    ('Igbo-Etiti', 16),
    ('Igbo-Eze North', 16),
    ('Igbo-Eze South', 16),
    ('Isi-Uzo', 16),
    ('Nkanu East', 16),
    ('Nkanu West', 16),
    ('Nsukka', 16),
    ('Oji River', 16),
    ('Udenu', 16),
    ('Udi', 16),
    ('Uzo-Uwani', 16),
    ('Akko', 17),
    ('Balanga', 17),
    ('Billiri', 17),
    ('Dukku', 17),
    ('Funakaye', 17),
    ('Gombe', 17),
    ('Kaltungo', 17),
    ('Kwami', 17),
    ('Nafada', 17),
    ('Shongom', 17),
    ('Yamaltu/Deba', 17),
    ('Aboh-Mbaise', 18),
    ('Ahiazu-Mbaise', 18),
    ('Ehime-Mbano', 18),
    ('Ezinihitte', 18),
    ('Ideato North', 18),
    ('Ideato South', 18),
    ('Ihitte/Uboma', 18),
    ('Ikeduru', 18),
    ('Isiala Mbano', 18),
    ('Isu', 18),
    ('Mbaitoli', 18),
    ('Ngor Okpala', 18),
    ('Njaba', 18),
    ('Nkwerre', 18),
    ('Nwangele', 18),
    ('Obowo', 18),
    ('Oguta', 18),
    ('Ohaji/Egbema', 18),
    ('Okigwe', 18),
    ('Onuimo', 18),
    ('Orlu', 18),
    ('Orsu', 18),
    ('Oru East', 18),
    ('Oru West', 18),
    ('Owerri Municipal', 18),
    ('Owerri North', 18),
    ('Owerri West', 18),
    ('Auyo', 19),
    ('Babura', 19),
    ('Biriniwa', 19),
    ('Birnin Kudu', 19),
    ('Buji', 19),
    ('Dutse', 19),
    ('Gagarawa', 19),
    ('Garki', 19),
    ('Gumel', 19),
    ('Guri', 19),
    ('Gwaram', 19),
    ('Gwiwa', 19),
    ('Hadejia', 19),
    ('Jahun', 19),
    ('Kafin Hausa', 19),
    ('Kaugama', 19),
    ('Kazaure', 19),
    ('Kiri Kasama', 19),
    ('Kiyawa', 19),
    ('Maigatari', 19),
    ('Malam Madori', 19),
    ('Miga', 19),
    ('Ringim', 19),
    ('Roni', 19),
    ('Sule Tankarkar', 19),
    ('Taura', 19),
    ('Yankwashi', 19),
    ('Birnin Gwari', 20),
    ('Chikun', 20),
    ('Giwa', 20),
    ('Igabi', 20),
    ('Ikara', 20),
    ('Jaba', 20),
    ('Jemaa', 20),
    ('Kachia', 20),
    ('Kaduna North', 20),
    ('Kaduna South', 20),
    ('Kagarko', 20),
    ('Kajuru', 20),
    ('Kaura', 20),
    ('Kauru', 20),
    ('Kubau', 20),
    ('Kudan', 20),
    ('Lere', 20),
    ('Makarfi', 20),
    ('Sabon Gari', 20),
    ('Sanga', 20),
    ('Soba', 20),
    ('Zangon Kataf', 20),
    ('Zaria', 20),
    ('Ajingi', 21),
    ('Albasu', 21),
    ('Bagwai', 21),
    ('Bebeji', 21),
    ('Bichi', 21),
    ('Bunkure', 21),
    ('Dala', 21),
    ('Dambatta', 21),
    ('Dawakin Kudu', 21),
    ('Dawakin Tofa', 21),
    ('Doguwa', 21),
    ('Fagge', 21),
    ('Gabasawa', 21),
    ('Garko', 21),
    ('Garun Mallam', 21),
    ('Gaya', 21),
    ('Gezawa', 21),
    ('Gwale', 21),
    ('Gwarzo', 21),
    ('Kabo', 21),
    ('Kano Municipal', 21),
    ('Karaye', 21),
    ('Kibiya', 21),
    ('Kiru', 21),
    ('Kumbotso', 21),
    ('Kunchi', 21),
    ('Kura', 21),
    ('Madobi', 21),
    ('Makoda', 21),
    ('Minjibir', 21),
    ('Nasarawa', 21),
    ('Rano', 21),
    ('Rimin Gado', 21),
    ('Rogo', 21),
    ('Shanono', 21),
    ('Sumaila', 21),
    ('Takai', 21),
    ('Tarauni', 21),
    ('Tofa', 21),
    ('Tsanyawa', 21),
    ('Tudun Wada', 21),
    ('Ungogo', 21),
    ('Warawa', 21),
    ('Wudil', 21),
    ('Bakori', 22),
    ('Batagarawa', 22),
    ('Batsari', 22),
    ('Baure', 22),
    ('Bindawa', 22),
    ('Charanchi', 22),
    ('Danja', 22),
    ('Dandume', 22),
    ('Danmusa', 22),
    ('Daura', 22),
    ('Dutsi', 22),
    ('Dutsin-Ma', 22),
    ('Faskari', 22),
    ('Funtua', 22),
    ('Ingawa', 22),
    ('Jibia', 22),
    ('Kafur', 22),
    ('Kaita', 22),
    ('Kankara', 22),
    ('Kankia', 22),
    ('Katsina', 22),
    ('Kurfi', 22),
    ('Kusada', 22),
    ('MaiAdua', 22),
    ('Malumfashi', 22),
    ('Mani', 22),
    ('Mashi', 22),
    ('Matazu', 22),
    ('Musawa', 22),
    ('Rimi', 22),
    ('Sabuwa', 22),
    ('Safana', 22),
    ('Sandamu', 22),
    ('Zango', 22),
    ('Aleiro', 23),
    ('Arewa Dandi', 23),
    ('Argungu', 23),
    ('Augie', 23),
    ('Bagudo', 23),
    ('Birnin Kebbi', 23),
    ('Bunza', 23),
    ('Dandi', 23),
    ('Danko/Wasagu', 23),
    ('Fakai', 23),
    ('Gwandu', 23),
    ('Jega', 23),
    ('Kalgo', 23),
    ('Koko/Besse', 23),
    ('Maiyama', 23),
    ('Ngaski', 23),
    ('Sakaba', 23),
    ('Shanga', 23),
    ('Suru', 23),
    ('Danko/Wasagu', 23),
    ('Yauri', 23),
    ('Adavi', 24),
    ('Ajaokuta', 24),
    ('Ankpa', 24),
    ('Bassa', 24),
    ('Dekina', 24),
    ('Ibaji', 24),
    ('Idah', 24),
    ('Igalamela-Odolu', 24),
    ('Ijumu', 24),
    ('Kabba/Bunu', 24),
    ('Koton Karfe', 24),
    ('Lokoja', 24),
    ('Mopa-Muro', 24),
    ('Ofu', 24),
    ('Ogori/Magongo', 24),
    ('Okehi', 24),
    ('Okene', 24),
    ('Olamaboro', 24),
    ('Omala', 24),
    ('Yagba East', 24),
    ('Yagba West', 24),
    ('Asa', 25),
    ('Baruten', 25),
    ('Edu', 25),
    ('Ekiti', 25),
    ('Ifelodun', 25),
    ('Ilorin East', 25),
    ('Ilorin South', 25),
    ('Ilorin West', 25),
    ('Irepodun', 25),
    ('Isin', 25),
    ('Kaiama', 25),
    ('Moro', 25),
    ('Offa', 25),
    ('Oke Ero', 25),
    ('Oyun', 25),
    ('Pategi', 25),
    ('Agege', 26),
    ('Ajeromi-Ifelodun', 26),
    ('Alimosho', 26),
    ('Amuwo-Odofin', 26),
    ('Apapa', 26),
    ('Badagry', 26),
    ('Epe', 26),
    ('Eti-Osa', 26),
    ('Ibeju-Lekki', 26),
    ('Ifako-Ijaiye', 26),
    ('Ikeja', 26),
    ('Ikorodu', 26),
    ('Kosofe', 26),
    ('Lagos Island', 26),
    ('Lagos Mainland', 26),
    ('Mushin', 26),
    ('Ojo', 26),
    ('Oshodi-Isolo', 26),
    ('Shomolu', 26),
    ('Surulere', 26),
    ('Akwanga', 27),
    ('Awe', 27),
    ('Doma', 27),
    ('Karu', 27),
    ('Keana', 27),
    ('Keffi', 27),
    ('Kokona', 27),
    ('Lafia', 27),
    ('Nasarawa', 27),
    ('Nassarawa-Eggon', 27),
    ('Obi', 27),
    ('Toto', 27),
    ('Wamba', 27),
    ('Agaie', 28),
    ('Agwara', 28),
    ('Bida', 28),
    ('Borgu', 28),
    ('Bosso', 28),
    ('Chanchaga', 28),
    ('Edati', 28),
    ('Gbako', 28),
    ('Gurara', 28),
    ('Katcha', 28),
    ('Kontagora', 28),
    ('Lapai', 28),
    ('Lavun', 28),
    ('Magama', 28),
    ('Mariga', 28),
    ('Mashegu', 28),
    ('Mokwa', 28),
    ('Munya', 28),
    ('Paikoro', 28),
    ('Rafi', 28),
    ('Rijau', 28),
    ('Shiroro', 28),
    ('Suleja', 28),
    ('Tafa', 28),
    ('Wushishi', 28),
    ('Abeokuta North', 29),
    ('Abeokuta South', 29),
    ('Ado-Odo/Ota', 29),
    ('Ewekoro', 29),
    ('Ifo', 29),
    ('Ijebu East', 29),
    ('Ijebu North', 29),
    ('Ijebu North East', 29),
    ('Ijebu Ode', 29),
    ('Ikenne', 29),
    ('Imeko Afon', 29),
    ('Ipokia', 29),
    ('Obafemi Owode', 29),
    ('Odeda', 29),
    ('Odogbolu', 29),
    ('Remo North', 29),
    ('Sagamu', 29),
    ('Yewa North', 29),
    ('Yewa South', 29),
    ('Ogun Waterside', 29),
    ('Akoko North-East', 30),
    ('Akoko North-West', 30),
    ('Akoko South-East', 30),
    ('Akoko South-West', 30),
    ('Akure North', 30),
    ('Akure South', 30),
    ('Ese Odo', 30),
    ('Idanre', 30),
    ('Ifedore', 30),
    ('Ilaje', 30),
    ('Ile Oluji/Okeigbo', 30),
    ('Irele', 30),
    ('Odigbo', 30),
    ('Okitipupa', 30),
    ('Ondo East', 30),
    ('Ondo West', 30),
    ('Ose', 30),
    ('Owo', 30),
    ('Atakumosa East', 31),
    ('Atakumosa West', 31),
    ('Ayedaade', 31),
    ('Ayedire', 31),
    ('Boluwaduro', 31),
    ('Boripe', 31),
    ('Ede North', 31),
    ('Ede South', 31),
    ('Egbedore', 31),
    ('Ejigbo', 31),
    ('Ife Central', 31),
    ('Ife East', 31),
    ('Ife North', 31),
    ('Ife South', 31),
    ('Ifedayo', 31),
    ('Ifelodun', 31),
    ('Ila', 31),
    ('Ilesa East', 31),
    ('Ilesa West', 31),
    ('Irepodun', 31),
    ('Irewole', 31),
    ('Isokan', 31),
    ('Iwo', 31),
    ('Obokun', 31),
    ('Odo Otin', 31),
    ('Ola Oluwa', 31),
    ('Olorunda', 31),
    ('Oriade', 31),
    ('Orolu', 31),
    ('Osogbo', 31),
    ('Barkin Ladi', 32),
    ('Bassa', 32),
    ('Bokkos', 32),
    ('Jos East', 32),
    ('Jos North', 32),
    ('Jos South', 32),
    ('Kanam', 32),
    ('Kanke', 32),
    ('Langtang North', 32),
    ('Langtang South', 32),
    ('Mangu', 32),
    ('Mikang', 32),
    ('Pankshin', 32),
    ('Quaan Pan', 32),
    ('Riyom', 32),
    ('Shendam', 32),
    ('Wase', 32),
    ('Abua/Odual', 33),
    ('Ahoada East', 33),
    ('Ahoada West', 33),
    ('Akuku-Toru', 33),
    ('Andoni', 33),
    ('Asari-Toru', 33),
    ('Bonny', 33),
    ('Degema', 33),
    ('Eleme', 33),
    ('Emohua', 33),
    ('Etche', 33),
    ('Gokana', 33),
    ('Ikwerre', 33),
    ('Khana', 33),
    ('Obio/Akpor', 33),
    ('Ogba/Egbema/Ndoni', 33),
    ('Ogu/Bolo', 33),
    ('Okrika', 33),
    ('Omuma', 33),
    ('Opobo/Nkoro', 33),
    ('Oyigbo', 33),
    ('Port Harcourt', 33),
    ('Tai', 33),
    ('Binji', 34),
    ('Bodinga', 34),
    ('Dange Shuni', 34),
    ('Gada', 34),
    ('Goronyo', 34),
    ('Gudu', 34),
    ('Gwadabawa', 34),
    ('Illela', 34),
    ('Isa', 34),
    ('Kebbe', 34),
    ('Kware', 34),
    ('Rabah', 34),
    ('Sabon Birni', 34),
    ('Shagari', 34),
    ('Silame', 34),
    ('Sokoto North', 34),
    ('Sokoto South', 34),
    ('Tambuwal', 34),
    ('Tangaza', 34),
    ('Tureta', 34),
    ('Wamako', 34),
    ('Wurno', 34),
    ('Yabo', 34),
    ('Ardo Kola', 35),
    ('Bali', 35),
    ('Donga', 35),
    ('Gashaka', 35),
    ('Gassol', 35),
    ('Ibi', 35),
    ('Jalingo', 35),
    ('Karim Lamido', 35),
    ('Kurmi', 35),
    ('Lau', 35),
    ('Sardauna', 35),
    ('Takum', 35),
    ('Ussa', 35),
    ('Wukari', 35),
    ('Yorro', 35),
    ('Zing', 35),
    ('Bade', 36),
    ('Bursari', 36),
    ('Damaturu', 36),
    ('Fika', 36),
    ('Fune', 36),
    ('Geidam', 36),
    ('Gujba', 36),
    ('Gulani', 36),
    ('Jakusko', 36),
    ('Karasuwa', 36),
    ('Machina', 36),
    ('Nangere', 36),
    ('Nguru', 36),
    ('Potiskum', 36),
    ('Tarmuwa', 36),
    ('Yunusari', 36),
    ('Yusufari', 36),
    ('Anka', 37),
    ('Bakura', 37),
    ('Birnin Magaji/Kiyaw', 37),
    ('Bukkuyum', 37),
    ('Bungudu', 37),
    ('Chafe', 37),
    ('Gummi', 37),
    ('Gusau', 37),
    ('Kaura Namoda', 37),
    ('Maradun', 37),
    ('Maru', 37),
    ('Shinkafi', 37),
    ('Talata Mafara', 37),
    ('Zurmi', 37);

-- Commit transaction
COMMIT;