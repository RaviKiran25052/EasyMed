create database easymed;
use easymed;

create table Shop (
	shopname varchar(20) primary key,
	shopimg varchar(300),
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
	medname varchar(20),
    shopname varchar(20),
    foreign key (medname) references Medicine(medname),
    foreign key (shopname) references Shop(shopname)
);

create table treatment (
	issue varchar(20),
    medname varchar(20),
    foreign key (issue) references HealthIssue(issue),
    foreign key (medname) references Medicine(medname)
);

select * from Shop;
select * from Medicine;
select * from Healthissue;
select * from Soldin;
select * from treatment;

INSERT INTO `easymed`.`Shop` (`shopname`, `shopimg`, `address`) VALUES ('Apollo Pharmacy', 'https://www.tringcity.in/oc-content/uploads/38/34165.jpg', 'Balaya sastri layout,Seethammadhara,Visakhapatnam -13');
INSERT INTO `easymed`.`Shop` (`shopname`, `shopimg`, `address`) VALUES ('United Medicals', 'https://www.tringcity.in/oc-content/uploads/38/34185.jpg', 'Eenadu Road, KSR Complex, Seethammadhara, Visakhapatnam.');
INSERT INTO `easymed`.`Shop` (`shopname`, `shopimg`, `address`) VALUES ('Gita Medicals', 'https://www.tringcity.in/oc-content/uploads/38/34189.jpg', 'Seethammdhara, Opposite to SFS school road, Visakhapatnam-13');
INSERT INTO `easymed`.`Shop` (`shopname`, `shopimg`, `address`) VALUES ('Andhra Medicals', 'https://www.tringcity.in/oc-content/uploads/15/11207.jpg', '13-29-1, Opp.prahlada Kalyana Mandapam, KGH Uproad, Maharanipeta, Vizag.');
INSERT INTO `easymed`.`Shop` (`shopname`, `shopimg`, `address`) VALUES ('Gupta Medicals', 'https://www.bing.com/th?id=A9dhsWLi%2fgy%2bSDA480x360&w=234&h=110&c=8&rs=1&qlt=90&dpr=1.5&pid=3.1&rm=2', '49-34-20, Sridevis Br Enclave, Akkayapalem Bus Stop, Opp Saibaba Temple, Visakhapatnam, Andhra Pradesh 530016');
INSERT INTO `easymed`.`Shop` (`shopname`, `shopimg`, `address`) VALUES ('Medplus India', 'https://www.theindianwire.com/wp-content/uploads/2018/01/medplus.jpg', '49-34-20, Sridevis Br Enclave, D No 58/1/84/3, Main Road, Marripalem, Visakhapatnam, Andhra Pradesh 530018');
--
-- evi cheyyadhu
INSERT INTO `easymed`.`Medicine` (`medname`, `medimg`) VALUES ('Paracetamol', 'https://integratedlaboratories.in/wp-content/uploads/2022/08/Paracetamol-500mg-Tablets-Intemol-500-2.jpeg');
INSERT INTO `easymed`.`Medicine` (`medname`, `medimg`) VALUES ('Dolo-650', 'https://www.practostatic.com/practopedia-images/v3/res-750/dolo-650mg-tablet-cold-cough-covid-essentials-15-s_6fbd3435-bffd-428d-9288-ec74ad6a94ef.JPG');
INSERT INTO `easymed`.`Medicine` (`medname`, `medimg`) VALUES ('Strepsils', 'https://cdn01.pharmeasy.in/dam/products_otc/164080/strepsils-orange-lozenges-strip-of-8-1-1669619514.jpg');
INSERT INTO `easymed`.`Medicine` (`medname`, `medimg`) VALUES ('Aspirin', 'https://5.imimg.com/data5/SELLER/Default/2022/6/IA/WU/HJ/21276273/aspirin-tablet-500x500.jpg');
INSERT INTO `easymed`.`Medicine` (`medname`, `medimg`) VALUES ('B-complex', 'https://m.media-amazon.com/images/I/71on3py+QFL._SY450_.jpg');
INSERT INTO `easymed`.`Medicine` (`medname`, `medimg`) VALUES ('Crocin-650', 'https://newassets.apollo247.com/pub/media/catalog/product/c/r/cro0023.jpg');

INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Fever', 'https://cdn-icons-png.flaticon.com/512/2853/2853865.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Cold', 'https://cdn-icons-png.flaticon.com/512/3782/3782091.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Cough', 'https://cdn-icons-png.flaticon.com/512/4380/4380411.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Injury', 'https://cdn-icons-png.flaticon.com/512/4310/4310748.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Headache', 'https://cdn-icons-png.flaticon.com/512/4843/4843993.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Bellyache', 'https://cdn-icons-png.flaticon.com/512/3194/3194951.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('BodyPains', 'https://cdn-icons-png.flaticon.com/512/3782/3782094.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Allergy', 'https://cdn-icons-png.flaticon.com/512/4033/4033855.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Vitamins', 'https://cdn-icons-png.flaticon.com/512/8885/8885328.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Cancer', 'https://cdn-icons-png.flaticon.com/512/1488/1488119.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Dengue', 'https://cdn-icons-png.flaticon.com/512/8968/8968116.png');
INSERT INTO `easymed`.`HealthIssue` (`issue`, `issueimg`) VALUES ('Virus', 'https://cdn-icons-png.flaticon.com/512/2895/2895722.png');
--
-- csv files lonchi import chesuko

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