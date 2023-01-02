create database easymed;
use easymed;

create table Shop (
	shopname varchar(20) primary key,
	shopimg varchar(300),
    maps varchar(1000),
    address varchar(200)
);
create table Medicine (
	medname varchar(20) primary key,
	medimg varchar(300),
    medDesc varchar(300)
);

create table HealthIssue (
	issue varchar(20) primary key,
    issueimg varchar(100),
    issueDesc varchar(300)
);

create table Soldin (
    shopname varchar(25),
	medname varchar(25),
    foreign key (medname) references Medicine(medname),
    foreign key (shopname) references Shop(shopname)
);

create table treatment (
	issue varchar(20),
    medname varchar(20),
    foreign key (issue) references HealthIssue(issue),
    foreign key (medname) references Medicine(medname)
);

INSERT INTO `Shop` (`shopname`, `shopimg`, `maps`, `address`) VALUES
('Apollo Pharmacy', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d323.0559490681992!2d83.30753395022545!3d17.741114967727622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a394333c164dafd%3A0xb478b5c47d7fc8df!2sApollo%20Pharmacy%20NRI%20Vizag!5e0!3m2!1sen!2sin!4v1672666202431!5m2!1sen!2sin', 'Balaya sastri layout,Seethammadhara,Visakhapatnam -13', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d323.0559490681992!2d83.30753395022545!3d17.741114967727622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a394333c164dafd%3A0xb478b5c47d7fc8'),
('United Medicals', 'https://www.tringcity.in/oc-content/uploads/38/34185.jpg', 'Eenadu Road, KSR Complex, Seethammadhara, Visakhapatnam.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15200.426872652737!2d83.29688570781246!3d17.739610100000025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a394335c3226071%3A0x2b79dcbbaec23b1c!2sUnited%20Medicals!5e0!3m2!1sen!2sin!4v1672666258357!5m2!1sen!2sin'),
('Gita Medicals', 'https://www.tringcity.in/oc-content/uploads/38/34189.jpg', 'Seethammdhara, Opposite to SFS school road, Visakhapatnam-13', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3800.066157039576!2d83.31213671405617!3d17.741521697166377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a39433315555555%3A0x8aa9363845e7af26!2sGita%20Medicals!5e0!3m2!1sen!2sin!4v1672666288841!5m2!1sen!2sin'),
('Andhra Medicals', 'https://www.tringcity.in/oc-content/uploads/15/11207.jpg', '13-29-1, Opp.prahlada Kalyana Mandapam, KGH Uproad, Maharanipeta, Vizag.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3800.7259722739514!2d83.30267001405572!3d17.710400598071953!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a394310149dc66d%3A0x8ac5373c3309ccac!2sAndhra%20Medicals!5e0!3m2!1sen!2sin!4v1672666362258!5m2!1sen!2sin'),
('Gupta Medicals', 'https://www.bing.com/th?id=A9dhsWLi%2fgy%2bSDA480x360&w=234&h=110&c=8&rs=1&qlt=90&dpr=1.5&pid=3.1&rm=2', '49-34-20, Sridevis Br Enclave, Akkayapalem Bus Stop, Opp Saibaba Temple, Visakhapatnam, Andhra Pradesh 530016', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30401.359101313654!2d83.26718861562499!3d17.736632600000007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a39431685279d25%3A0x144514b056f5ad26!2sGupta%20Medicals!5e0!3m2!1sen!2sin!4v1672666415187!5m2!1sen!2sin'),
('Medplus India', 'https://www.theindianwire.com/wp-content/uploads/2018/01/medplus.jpg', '49-34-20, Sridevis Br Enclave, D No 58/1/84/3, Main Road, Marripalem, Visakhapatnam, Andhra Pradesh 530018', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30405.067825301776!2d83.27925221562498!3d17.714766400000013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a3943137f1da3bd%3A0x56a310731522fca2!2sMedplus%20Maharanipeta!5e0!3m2!1sen!2sin!4v1672667450352!5m2!1sen!2sin');

INSERT INTO `Medicine` (`medname`, `medimg`, `medDesc`) VALUES
('Bakson B26', 'https://i0.wp.com/homeomart.net/wp-content/uploads/2016/07/dr-bakshis-b26-drops-bakb2630-e1471867107106.jpg?fit=630%2C630&ssl=1', 'helps to treat after traumatic injuries, overuse of any organ, strains.'),
('Inflamyar', 'https://adelindia.com/media/catalog/product/cache/c97bbd44d03ee14a98672f025f3be71e/a/d/adel_27_1.jpg', 'treats rheumatic, arthritic and inflammatory conditions topically to greatly ease pain and bring quick relief to afflicted patients all without the side effects of chemical drugs.'),
('Benadryl Cough', 'https://4.imimg.com/data4/EQ/DM/MY-33400885/cough-medicine-500x500.jpg', 'It is used for the treatment of dry cough.'),
('Cofsils', 'https://m.media-amazon.com/images/I/71qO6uqDSGL._SY450_.jpg', 'Cofsils Lemon Ginger Lozenges are?used to relieve sore throat.'),
('Vicks Syrup', 'https://images.ctfassets.net/sabbecbbwaz3/U0Tpdf5tM4o4460wUYre0/70e35576a3b0c5793af25a3bc8eea6fa/Vicks_AU_1550x1550_Cough_A.jpg?w=293', 'it is used for the temporary relief of cough, sneezing, or runny nose due to the common cold, hay fever or other upper respiratory allergies.'),
('Codral', 'https://www.thewarehouse.co.nz/dw/image/v2/BDMG_PRD/on/demandware.static/-/Sites-twl-master-catalog/default/dwecd70974/images/hi-res/F1/1E/R1593946_30.jpg?sw=765&sh=765', 'Codral relieves runny nose, blocked nose, headache, body aches and pains, and fever. '),
('Crocin-650', 'https://newassets.apollo247.com/pub/media/catalog/product/c/r/cro0023.jpg', 'Crocin-650 is used to reduce fever and treat mild to moderate pain.'),
('ColdCalm', 'https://target.scene7.com/is/image/Target/GUEST_e1be3bac-c143-4c6a-a7a1-71772845cce6', 'Coldcalm Tablets address symptoms at every stage of a cold.'),
('Strepsils', 'https://cdn01.pharmeasy.in/dam/products_otc/164080/strepsils-orange-lozenges-strip-of-8-1-1669619514.jpg', 'it is used for the relief of mouth and throat infections, dry, irritating cough associated with the common cold and nasal congestion.'),
('Dolo-650', 'https://www.practostatic.com/practopedia-images/v3/res-750/dolo-650mg-tablet-cold-cough-covid-essentials-15-s_6fbd3435-bffd-428d-9288-ec74ad6a94ef.JPG', 'Dolo 650 Tablet is a medicine used to relieve pain and reduce fever.?'),
('Paracetamol', 'https://integratedlaboratories.in/wp-content/uploads/2022/08/Paracetamol-500mg-Tablets-Intemol-500-2.jpeg', 'Paracetamol is a commonly used medicine that can help treat pain and reduce a high temperature (fever).'),
('Combiflam', 'https://5.imimg.com/data5/SELLER/Default/2021/5/MJ/PD/DW/39688399/combiflam-tablet-500x500.jpg', 'It is commonly used for the diagnosis or treatment of Joint pain, Migraine, Dental pain, Menstrual pain, Nerve pain.'),
('Excedrin', 'https://pics.drugstore.com/prodimg/383004/450.jpg', 'It works by reducing substances in the body that cause pain, fever, and inflammation.'),
('Panadol', 'https://www.binsina.ae/media/catalog/product/m/64885_1.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=600&width=600&canvas=600:600', 'it is recommended for the treatment of most painful and febrile conditions'),
('Buscogast', 'https://www.practostatic.com/practopedia-images/v3/res-750/buscogast-10mg-tablet-10-s_c1d9b183-5a71-435c-83c7-8ee106b7ed4d.JPG', 'it is used to relieve abdominal cramps that cause pain and discomfort associated with irritable bowel syndrome (IBS).'),
('Gastro', 'https://i0.wp.com/homeomart.net/wp-content/uploads/2017/09/hevert-gastro-germany-intestinal-relief-tablets.jpg?fit=542%2C470&ssl=1', 'it treat the diseases and disorders of the esophagus, stomach, intestines, liver, biliary tract, and pancreas.'),
('Arnicare', 'https://images-na.ssl-images-amazon.com/images/I/71Iq1UuGN6L._AC_UL600_SR600,600_.jpg', 'Arnica is used topically for a wide range of conditions, including bruises, sprains, muscle aches, wound healing'),
('Moov', 'https://3.imimg.com/data3/DB/DI/MY-4289864/moov-spray-pain-reliever-250x250.jpg', 'Moov is an analgesic ointment and is made using 100% ayurvedic ingredients.'),
('Volini', 'https://5.imimg.com/data5/KN/VE/WE/SELLER-23618296/volini-50gm-gel-500x500.jpg', 'Volini Spray is a pain relief spray which provides instant relief from muscle pain, sprain and pain in the joints.?'),
('Iodex', 'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/voltaren-delta/en_IN/desktop/products/product-images/Our_Products_1_493x493_v2.jpg?auto=format', 'Iodex is used on the skin to treat or prevent skin infection in minor cuts, scrapes, or burns.'),
('Benadryl Allergy', 'https://www.benadryl.com/sites/benadryl_us/files/styles/product_image/public/files/header-images/ben_es_allergy_tablet_24ct_front.jpg', 'it is used for rash, itching, watery eyes, itchy eyes/nose/throat, cough, runny nose, and sneezing.'),
('Moxilase', 'https://5.imimg.com/data5/PB/SJ/MY-4925890/allergy-relief-tablets-500x500.jpg', 'it is used to treat a variety of bacterial infections.'),
('Heb allergy relief', 'https://images.heb.com/is/image/HEBGrocery/001134194?fit=constrain,1&wid=800&hei=800&fmt=jpg&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0', 'Quickly battles indoor or outdoor allergies so you can get back to enjoying life more fully.'),
('BBetter', 'https://m.media-amazon.com/images/I/617pt0P7EfL._SX679_.jpg', 'It helps boost your immunity, metabolism and cellular growth while reducing stress, inflammation and free radicals.'),
('HK Vitals', 'https://m.media-amazon.com/images/I/61fC0jP2BTL._SY450_PIbundle-2,TopRight,0,0_AA450SH20_.jpg', 'helps maintain your skin health, hair growth, and supports immunity.'),
('Carbamide', 'https://m.media-amazon.com/images/I/511xit35gQL._SY450_.jpg', 'used to?loosen ear wax, whiten teeth, and clean oral wounds'),
('Enhertu', 'https://mimsshst.blob.core.windows.net/drug-resources/HK/packshot/Enhertu6001PPS0.JPG', 'used in adults?to treat very specific types of breast cancer, stomach cancer and non-small cell lung cancer (NSCLC).'),
('Xbira', 'https://5.imimg.com/data5/BV/LE/MY-3966282/abiraterone-acetate-tablets-500x500.jpg', 'It is used?to treat prostate cancer in adult men that has spread to other parts of the body.'),
('Zecyte', 'https://5.imimg.com/data5/SELLER/Default/2021/8/JX/ZV/BZ/131552548/250-mg-abiraterone-acetate-tablets-250x250.jpg', 'it is used in the treatment of cancer of the prostate gland. '),
('G-plet', 'https://5.imimg.com/data5/SELLER/Default/2022/11/ZX/CU/BT/58629100/malaria-medicine-tablets-500x500.jpeg', 'It is highly useful in?managing gastrointestinal diseases and reduces the risk of cancer and tumour.'),
('Repl 107', 'https://www.emedicinehub.com/storage/potency_images/thumb/060722072306-repl107.jpg', 'REPL 107 is a very effective remedy in?lowering mild to high temperature, body ache, pain in joints and bones, itching skin.'),
('R-118', 'https://cdn.sehat.com.pk/product_images/n/231/R118__07271_zoom.jpg', 'used for Burning Behaviour and/or the Capability to Repel Fuel or Lubricant.'),
('Paxlovid', 'https://images.newscientist.com/wp-content/uploads/2022/05/18154734/SEI_104443769.jpg?crop=4:3,smart&width=1200&height=900&upscale=true', 'Paxlovid is?an antiviral therapy that consists of two separate medications packaged together.'),
('Hydroxychloroquine', 'https://www.gannett-cdn.com/presto/2020/04/08/USAT/a9f573ae-976c-4f78-9047-45e313a52a64-AP_Virus_Outbreak_Drug.JPG?width=660&height=441&fit=crop&format=pjpg&auto=webp', 'Hydroxychloroquine is in a class of drugs called antimalarials.?It works by killing the organisms that cause malaria.');

INSERT INTO `HealthIssue` (`issue`, `issueimg`, `issueDesc`) VALUES
('Fever', 'https://cdn-icons-png.flaticon.com/512/2853/2853865.png', 'A fever is?a temporary rise in body temperature. It\'s one part of an overall response from the body\'s immune system. A fever is usually caused by an infection.'),
('Cold', 'https://cdn-icons-png.flaticon.com/512/3782/3782091.png', 'Cold symptoms are usually milder than the symptoms of flu. People with colds are more likely to have a runny or stuffy nose.'),
('Cough', 'https://cdn-icons-png.flaticon.com/512/4380/4380411.png', 'A cough is?your body\'s way of responding when something irritates your throat or airways. An irritant stimulates nerves that send a message to your brain.'),
('Injury', 'https://cdn-icons-png.flaticon.com/512/4310/4310748.png', 'An injury is?damage to your body. It is a general term that refers to harm caused by accidents, falls, hits, weapons, and more.'),
('Headache', 'https://cdn-icons-png.flaticon.com/512/4843/4843993.png', 'Headaches may occur on one or both sides of the head, be isolated to a certain location, radiate across the head from one point, or have a viselike quality.'),
('Bellyache', 'https://cdn-icons-png.flaticon.com/512/3194/3194951.png', 'Abdominal pain is felt anywhere in the area between the bottom of the ribs and the pelvis. Pain in the abdomen may be?aching, stabbing, burning, twisting, cramping, dull, or gnawing.'),
('BodyPains', 'https://cdn-icons-png.flaticon.com/512/3782/3782094.png', 'Pain is?an unpleasant sensation in the body that is triggered by the nervous system. The onset of body pain can occur suddenly or slowly, depending on many factors'),
('Allergy', 'https://cdn-icons-png.flaticon.com/512/4033/4033855.png', 'Allergy occurs when a person reacts to substances in the environment that are harmless to most people. These substances are known as allergens.'),
('Vitamins', 'https://cdn-icons-png.flaticon.com/512/8885/8885328.png', 'Vitamin deficiency is?the condition of a long-term lack of a vitamin. When caused by not enough vitamin intake'),
('Cancer', 'https://cdn-icons-png.flaticon.com/512/1488/1488119.png', 'Cancer is?a disease in which some of the body\'s cells grow uncontrollably and spread to other parts of the body.?'),
('Dengue', 'https://cdn-icons-png.flaticon.com/512/8968/8968116.png', 'Dengue virus is transmitted by female mosquitoes mainly of the species Aedes aegypti and, to a lesser extent'),
('Virus', 'https://cdn-icons-png.flaticon.com/512/2895/2895722.png', 'Virus is?an extremely small entity which contains either RNA or DNA as the genetic material. They are also smaller than most bacteria.');

insert into Soldin values('Apollo Pharmacy','Paracetamol');
insert into Soldin values('Apollo Pharmacy','Dolo-650');
insert into Soldin values('Apollo Pharmacy','Strepsils');
insert into Soldin values('Apollo Pharmacy','ColdCalm');
insert into Soldin values('Apollo Pharmacy','Crocin-650');
insert into Soldin values('Apollo Pharmacy','Arnicare');
insert into Soldin values('Apollo Pharmacy','Codral');
insert into Soldin values('Apollo Pharmacy','Cofsils');
insert into Soldin values('Apollo Pharmacy','Vicks Syrup');
insert into Soldin values('Apollo Pharmacy','Benadryl Cough');
insert into Soldin values('Apollo Pharmacy','Inflamyar');
insert into Soldin values('Apollo Pharmacy','Bakson B26');
insert into Soldin values('Apollo Pharmacy','Moov');
insert into Soldin values('Apollo Pharmacy','Volini');
insert into Soldin values('Apollo Pharmacy','Iodex');
insert into Soldin values('Apollo Pharmacy','Benadryl Allergy');
insert into Soldin values('Apollo Pharmacy','Moxilase');
insert into Soldin values('Apollo Pharmacy','BBetter');
insert into Soldin values('Apollo Pharmacy','Hydroxychloroquine');
insert into Soldin values('United Medicals','Paracetamol');
insert into Soldin values('United Medicals','Strepsils');
insert into Soldin values('United Medicals','ColdCalm');
insert into Soldin values('United Medicals','Crocin-650');
insert into Soldin values('United Medicals','Cofsils');
insert into Soldin values('United Medicals','Vicks Syrup');
insert into Soldin values('United Medicals','Inflamyar');
insert into Soldin values('United Medicals','Combiflam');
insert into Soldin values('United Medicals','Panadol');
insert into Soldin values('United Medicals','Buscogast');
insert into Soldin values('United Medicals','Gastro');
insert into Soldin values('United Medicals','Arnicare');
insert into Soldin values('United Medicals','Moov');
insert into Soldin values('United Medicals','Iodex');
insert into Soldin values('United Medicals','Benadryl Allergy');
insert into Soldin values('United Medicals','Volini');
insert into Soldin values('United Medicals','Heb allergy relief');
insert into Soldin values('United Medicals','HK Vitals');
insert into Soldin values('United Medicals','Carbamide');
insert into Soldin values('United Medicals','Xbira');
insert into Soldin values('United Medicals','G-plet');
insert into Soldin values('United Medicals','Repl 107');
insert into Soldin values('United Medicals','Paxlovid');
insert into Soldin values('United Medicals','R-118');
insert into Soldin values('Gita Medicals','Dolo-650');
insert into Soldin values('Gita Medicals','Paracetamol');
insert into Soldin values('Gita Medicals','Crocin-650');
insert into Soldin values('Gita Medicals','Cofsils');
insert into Soldin values('Gita Medicals','Vicks Syrup');
insert into Soldin values('Gita Medicals','Benadryl Cough');
insert into Soldin values('Gita Medicals','Inflamyar');
insert into Soldin values('Gita Medicals','Combiflam');
insert into Soldin values('Gita Medicals','Panadol');
insert into Soldin values('Gita Medicals','Buscogast');
insert into Soldin values('Gita Medicals','Gastro');
insert into Soldin values('Gita Medicals','Arnicare');
insert into Soldin values('Gita Medicals','Volini');
insert into Soldin values('Gita Medicals','Benadryl Allergy');
insert into Soldin values('Gita Medicals','Repl 107');
insert into Soldin values('Gita Medicals','HK Vitals');
insert into Soldin values('Gita Medicals','BBetter');
insert into Soldin values('Gita Medicals','Moxilase');
insert into Soldin values('Gita Medicals','Heb allergy relief');
insert into Soldin values('Gita Medicals','Carbamide');
insert into Soldin values('Gita Medicals','Enhertu');
insert into Soldin values('Gita Medicals','Xbira');
insert into Soldin values('Gita Medicals','Zecyte');
insert into Soldin values('Gita Medicals','G-plet');
insert into Soldin values('Andhra Medicals','Dolo-650');
insert into Soldin values('Andhra Medicals','ColdCalm');
insert into Soldin values('Andhra Medicals','Crocin-650');
insert into Soldin values('Andhra Medicals','Codral');
insert into Soldin values('Andhra Medicals','Cofsils');
insert into Soldin values('Andhra Medicals','Vicks Syrup');
insert into Soldin values('Andhra Medicals','Inflamyar');
insert into Soldin values('Andhra Medicals','Bakson B26');
insert into Soldin values('Andhra Medicals','Combiflam');
insert into Soldin values('Andhra Medicals','Excedrin');
insert into Soldin values('Andhra Medicals','Panadol');
insert into Soldin values('Andhra Medicals','Arnicare');
insert into Soldin values('Andhra Medicals','Heb allergy relief');
insert into Soldin values('Andhra Medicals','BBetter');
insert into Soldin values('Andhra Medicals','HK Vitals');
insert into Soldin values('Andhra Medicals','Carbamide');
insert into Soldin values('Andhra Medicals','Enhertu');
insert into Soldin values('Andhra Medicals','Xbira');
insert into Soldin values('Andhra Medicals','Zecyte');
insert into Soldin values('Andhra Medicals','Repl 107');
insert into Soldin values('Andhra Medicals','Moxilase');
insert into Soldin values('Andhra Medicals','Hydroxychloroquine');
insert into Soldin values('Andhra Medicals','Paxlovid');
insert into Soldin values('Gupta Medicals','Strepsils');
insert into Soldin values('Gupta Medicals','Crocin-650');
insert into Soldin values('Gupta Medicals','Paracetamol');
insert into Soldin values('Gupta Medicals','Codral');
insert into Soldin values('Gupta Medicals','HK Vitals');
insert into Soldin values('Gupta Medicals','Vicks Syrup');
insert into Soldin values('Gupta Medicals','Benadryl Cough');
insert into Soldin values('Gupta Medicals','Bakson B26');
insert into Soldin values('Gupta Medicals','Excedrin');
insert into Soldin values('Gupta Medicals','Panadol');
insert into Soldin values('Gupta Medicals','Buscogast');
insert into Soldin values('Gupta Medicals','Gastro');
insert into Soldin values('Gupta Medicals','Arnicare');
insert into Soldin values('Gupta Medicals','Moov');
insert into Soldin values('Gupta Medicals','Iodex');
insert into Soldin values('Gupta Medicals','Benadryl Allergy');
insert into Soldin values('Gupta Medicals','Moxilase');
insert into Soldin values('Gupta Medicals','Heb allergy relief');
insert into Soldin values('Gupta Medicals','ColdCalm');
insert into Soldin values('Gupta Medicals','Cofsils');
insert into Soldin values('Gupta Medicals','Vicks Syrup');
insert into Soldin values('Gupta Medicals','Inflamyar');
insert into Soldin values('Gupta Medicals','Combiflam');
insert into Soldin values('Gupta Medicals','Excedrin');
insert into Soldin values('Gupta Medicals','Enhertu');
insert into Soldin values('Gupta Medicals','BBetter');
insert into Soldin values('Gupta Medicals','Panadol');
insert into Soldin values('Medplus India','Paracetamol');
insert into Soldin values('Medplus India','Dolo-650');
insert into Soldin values('Medplus India','Strepsils');
insert into Soldin values('Medplus India','Crocin-650');
insert into Soldin values('Medplus India','Codral');
insert into Soldin values('Medplus India','Benadryl Cough');
insert into Soldin values('Medplus India','Combiflam');
insert into Soldin values('Medplus India','Excedrin');
insert into Soldin values('Medplus India','Panadol');
insert into Soldin values('Medplus India','Arnicare');
insert into Soldin values('Medplus India','Moxilase');
insert into Soldin values('Medplus India','BBetter');
insert into Soldin values('Medplus India','HK Vitals');
insert into Soldin values('Medplus India','Enhertu');
insert into Soldin values('Medplus India','Xbira');
insert into Soldin values('Medplus India','Zecyte');
insert into Soldin values('Medplus India','Repl 107');
insert into Soldin values('Medplus India','Paxlovid');
insert into Soldin values('Medplus India','G-plet');
insert into Soldin values('Medplus India','Hydroxychloroquine');

insert into treatment values('Fever','Paracetamol');
insert into treatment values('Fever','Dolo-650');
insert into treatment values('Fever','Crocin-650');
insert into treatment values('Fever','Combiflam');
insert into treatment values('Cold','Strepsils');
insert into treatment values('Cold','ColdCalm');
insert into treatment values('Cold','Crocin-650');
insert into treatment values('Cold','Codral');
insert into treatment values('Cough','Strepsils');
insert into treatment values('Cough','Crocin-650');
insert into treatment values('Cough','Cofsils');
insert into treatment values('Cough','Vicks Syrup');
insert into treatment values('Cough','Benadryl Cough');
insert into treatment values('Injury','Inflamyar');
insert into treatment values('Injury','Bakson B26');
insert into treatment values('Headache','Paracetamol');
insert into treatment values('Headache','Dolo-650');
insert into treatment values('Headache','Crocin-650');
insert into treatment values('Headache','Excedrin');
insert into treatment values('Headache','Combiflam');
insert into treatment values('Headache','Panadol');
insert into treatment values('Bellyache','Crocin-650');
insert into treatment values('Bellyache','Buscogast');
insert into treatment values('Bellyache','Combiflam');
insert into treatment values('Bellyache','Gastro');
insert into treatment values('Bellyache','Arnicare');
insert into treatment values('BodyPains','Paracetamol');
insert into treatment values('BodyPains','Combiflam');
insert into treatment values('BodyPains','Moov');
insert into treatment values('BodyPains','Volini');
insert into treatment values('BodyPains','Iodex');
insert into treatment values('Allergy','Benadryl Allergy');
insert into treatment values('Allergy','Moxilase');
insert into treatment values('Allergy','Heb allergy relief');
insert into treatment values('Vitamins','BBetter');
insert into treatment values('Vitamins','HK Vitals');
insert into treatment values('Vitamins','Carbamide');
insert into treatment values('Cancer','Enhertu');
insert into treatment values('Cancer','Xbira');
insert into treatment values('Cancer','Zecyte');
insert into treatment values('Cancer','G-plet');
insert into treatment values('Dengue','Repl 107');
insert into treatment values('Dengue','R-118');
insert into treatment values('Virus','Paxlovid');
insert into treatment values('Virus','Hydroxychloroquine');

select * from Shop;
select * from Medicine;
select * from Healthissue;
select * from Soldin;
select * from treatment;