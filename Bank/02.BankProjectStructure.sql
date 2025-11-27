-- 1. Bankın müştəriləri haqqında informasiyanı özündə saxlayır.
create table customers 
(
  customer_id        number,
  first_name         varchar2(50),
  last_name          varchar2(50),
  patronymic         varchar2(50),
  birth_date         date,
  email              varchar2(100),
  phone_number       varchar2(15),
  national_id_seria  varchar2(20),
  national_id_number varchar2(20),
  status             varchar2(20) default 'ACTIVE',
  insert_date        date default sysdate,
  changed_date       date
);

-- Constraint   
alter table customers 
add constraint pk_customer_id primary key(customer_id); 
--DML(Insert)
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1001, 'John', 'Smith', 'Alexander', to_date('1985-01-15', 'YYYY-MM-DD'), 'john.smith@example.com', '1234567890', 'AA', '12345678', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1002, 'Michael', 'Johnson', 'Edward', to_date('1990-02-20', 'YYYY-MM-DD'), 'michael.johnson@example.com', '2345678901', 'BB', '23456789', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1003, 'William', 'Williams', 'James', to_date('1982-03-25', 'YYYY-MM-DD'), 'william.williams@example.com', '3456789012', 'CC', '34567890', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1004, 'David', 'Brown', 'Charles', to_date('1988-04-30', 'YYYY-MM-DD'), 'david.brown@example.com', '4567890123', 'DD', '45678901', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1005, 'Richard', 'Jones', 'Henry', to_date('1979-05-10', 'YYYY-MM-DD'), 'richard.jones@example.com', '5678901234', 'EE', '56789012', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1006, 'Joseph', 'Garcia', 'Andrew', to_date('1983-06-15', 'YYYY-MM-DD'), 'joseph.garcia@example.com', '6789012345', 'FF', '67890123', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1007, 'Thomas', 'Martinez', 'David', to_date('1991-07-20', 'YYYY-MM-DD'), 'thomas.martinez@example.com', '7890123456', 'GG', '78901234', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1008, 'Charles', 'Rodriguez', 'Joseph', to_date('1986-08-25', 'YYYY-MM-DD'), 'charles.rodriguez@example.com', '8901234567', 'HH', '89012345', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1009, 'Christopher', 'Wilson', 'Robert', to_date('1992-09-30', 'YYYY-MM-DD'), 'christopher.wilson@example.com', '9012345678', 'II', '90123456', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1010, 'Daniel', 'Lopez', 'Michael', to_date('1987-10-05', 'YYYY-MM-DD'), 'daniel.lopez@example.com', '0123456789', 'JJ', '01234567', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1011, 'Matthew', 'Harris', 'John', to_date('1993-11-10', 'YYYY-MM-DD'), 'matthew.harris@example.com', '1234567890', 'KK', '12345678', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1012, 'Anthony', 'Clark', 'Thomas', to_date('1989-12-15', 'YYYY-MM-DD'), 'anthony.clark@example.com', '2345678901', 'LL', '23456789', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1013, 'Mark', 'Lewis', 'Richard', to_date('1994-01-20', 'YYYY-MM-DD'), 'mark.lewis@example.com', '3456789012', 'MM', '34567890', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1014, 'Steven', 'Walker', 'Charles', to_date('1990-02-25', 'YYYY-MM-DD'), 'steven.walker@example.com', '4567890123', 'NN', '45678901', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1015, 'Paul', 'Hall', 'William', to_date('1984-03-30', 'YYYY-MM-DD'), 'paul.hall@example.com', '5678901234', 'OO', '56789012', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1016, 'Joshua', 'Young', 'James', to_date('1985-04-05', 'YYYY-MM-DD'), 'joshua.young@example.com', '6789012345', 'PP', '67890123', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1017, 'Andrew', 'King', 'David', to_date('1986-05-10', 'YYYY-MM-DD'), 'andrew.king@example.com', '7890123456', 'QQ', '78901234', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1018, 'Kevin', 'Wright', 'Joseph', to_date('1987-06-15', 'YYYY-MM-DD'), 'kevin.wright@example.com', '8901234567', 'RR', '89012345', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1019, 'Brian', 'Scott', 'Andrew', to_date('1988-07-20', 'YYYY-MM-DD'), 'brian.scott@example.com', '9012345678', 'SS', '90123456', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1020, 'George', 'Torres', 'Robert', to_date('1989-08-25', 'YYYY-MM-DD'), 'george.torres@example.com', '0123456789', 'TT', '01234567', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1021, 'Edward', 'Nguyen', 'Michael', to_date('1990-09-30', 'YYYY-MM-DD'), 'edward.nguyen@example.com', '1234567890', 'UU', '12345678', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1022, 'Ronald', 'Murphy', 'John', to_date('1991-10-05', 'YYYY-MM-DD'), 'ronald.murphy@example.com', '2345678901', 'VV', '23456789', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1023, 'Timothy', 'Rivera', 'Thomas', to_date('1992-11-10', 'YYYY-MM-DD'), 'timothy.rivera@example.com', '3456789012', 'WW', '34567890', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1024, 'Jason', 'Cox', 'Richard', to_date('1993-12-15', 'YYYY-MM-DD'), 'jason.cox@example.com', '4567890123', 'XX', '45678901', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1025, 'Jeffrey', 'Ward', 'Charles', to_date('1994-01-20', 'YYYY-MM-DD'), 'jeffrey.ward@example.com', '5678901234', 'YY', '56789012', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1026, 'Ryan', 'Gonzalez', 'William', to_date('1990-02-25', 'YYYY-MM-DD'), 'ryan.gonzalez@example.com', '6789012345', 'ZZ', '67890123', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1027, 'Jacob', 'Nelson', 'James', to_date('1984-03-30', 'YYYY-MM-DD'), 'jacob.nelson@example.com', '7890123456', 'AAA', '78901234', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1028, 'Gary', 'Perez', 'David', to_date('1985-04-05', 'YYYY-MM-DD'), 'gary.perez@example.com', '8901234567', 'BBB', '89012345', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1029, 'Nicholas', 'Roberts', 'Joseph', to_date('1986-05-10', 'YYYY-MM-DD'), 'nicholas.roberts@example.com', '9012345678', 'CCC', '90123456', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1030, 'Eric', 'Turner', 'Andrew', to_date('1987-06-15', 'YYYY-MM-DD'), 'eric.turner@example.com', '0123456789', 'DDD', '01234567', 'ACTIVE', sysdate, null);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1031, 'Emily', 'Taylor', 'Grace', to_date('1990-01-01', 'YYYY-MM-DD'), 'emily.taylor@example.com', '1234567890', 'PP', '12345678', 'PASSIVE', sysdate - 60, sysdate - 5);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1032, 'Jessica', 'Anderson', 'Nicole', to_date('1985-02-15', 'YYYY-MM-DD'), 'jessica.anderson@example.com', '2345678901', 'QQ', '23456789', 'PASSIVE', sysdate - 60, sysdate - 4);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1033, 'Amanda', 'Thomas', 'Marie', to_date('1988-03-20', 'YYYY-MM-DD'), 'amanda.thomas@example.com', '3456789012', 'RR', '34567890', 'PASSIVE', sysdate - 60, sysdate - 7);
insert into customers (customer_id, first_name, last_name, patronymic, birth_date, email, phone_number, national_id_seria, national_id_number, status, insert_date, changed_date) values (1034, 'Sarah', 'Garcia', 'Elizabeth', to_date('1992-04-25', 'YYYY-MM-DD'), 'sarah.garcia@example.com', '4567890123', 'SS', '45678901', 'PASSIVE', sysdate -60, sysdate - 9);

--Comment
comment on table customers is 'Bankın müştəriləri haqqında informasiyanı özündə saxlayır.';
comment on column customers.customer_id is 'Müştərinin unikal identifikatoru.';
comment on column customers.first_name is 'Müştərinin adı.';
comment on column customers.last_name is 'Müştərinin soyadı.';
comment on column customers.patronymic is 'Müştərinin ata adı.';
comment on column customers.birth_date is 'Müştərinin doğum tarixi.';
comment on column customers.email is 'Müştərinin elektron poçt ünvanı.';
comment on column customers.phone_number is 'Müştərinin telefon nömrəsi.';
comment on column customers.national_id_seria is 'Müştərinin şəxsiyyət vəsiqəsinin seriyası.';
comment on column customers.national_id_number is 'Müştərinin şəxsiyyət vəsiqəsinin nömrəsi.';
comment on column customers.status is 'Abonentin statusunu bildiri yəni aktiv və ya passiv olmasını bildirir. Aktiv - ACTIVE, passiv - PASSIVE.';
comment on column customers.insert_date is 'Sətirin cədvələ yazılma tarixini bildirir.';
comment on column customers.changed_date is 'Sətrin statusunun dəyişmə tarixini bildirir.';

-- 2. Ünvan tipləri haqqında məlumatlar saxlanılır.   
create table address_type
(
  type_id      number,
  type_name    varchar2(250 char),
  insert_date  date default sysdate,
  status       varchar2(20) default 'ACTIVE',
  changed_date date
);
-- Constraint     
alter table address_type 
add constraint pk_type_id primary key(type_id);
-- Comment   
comment on table address_type is 'Ünvan tipləri haqqında məlumatlar saxlanılır.';
comment on column address_type.type_id is 'Hər sətir üçün unikal dəyərləri özündə saxlayır';
comment on column address_type.type_name is 'Ünvan tipləri haqqında informasiyanı özündə saxlayır.';
comment on column address_type.insert_date is 'Sətirin cədvələ yazılma tarixini bildirir.';
comment on column address_type.status is 'Sətrin statusunu bildirir.';
comment on column address_type.changed_date is 'Sətrin statusunun dəyişmə tarixini bildirir.';
-- DML(Insert)  
insert into address_type(type_id,type_name) values(1,'Qeydiyyatda olduğu ünvan'); 
insert into address_type(type_id,type_name) values(2,'Daimi qeydiyyatda olduğu ünvan');
insert into address_type(type_id,type_name) values(3,'Faktiki yaşadığı ünvan');

-- 3. Abonent ünvanları haqqında məlumatlar saxlanılır.   
create table address
(
  customer_id  number(10),
  address_name varchar2(2000 char),
  type_id      number,
  insert_date  date default sysdate,
  status       varchar2(20) default 'ACTIVE',
  changed_date date
);   
-- Constraint
alter table address 
add constraint fk_customer_id_adrr foreign key(customer_id) references customers(customer_id);

alter table address 
add constraint fk_type_id foreign key(type_id) references address_type(type_id);

-- DML(Insert)
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1001, '123 Main St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1001, '456 Oak Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1001, '789 Pine Dr', 3, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1002, '101 Maple St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1002, '202 Elm Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1002, '303 Birch Dr', 3, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1003, '404 Cedar St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1003, '505 Walnut Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1003, '606 Spruce Dr', 3, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1004, '707 Fir St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1004, '808 Aspen Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1004, '909 Poplar Dr', 3, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1005, '111 Chestnut St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1005, '222 Hickory Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1005, '333 Redwood Dr', 3, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1006, '444 Willow St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1006, '555 Alder Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1006, '666 Cypress Dr', 3, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1007, '777 Palm St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1007, '888 Magnolia Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1007, '999 Sequoia Dr', 3, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1008, '123 Acacia St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1008, '456 Ash Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1008, '789 Basswood Dr', 3, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1009, '101 Banyan St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1009, '202 Beech Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1009, '303 Cedar Dr', 3, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1010, '404 Dogwood St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1010, '505 Elm Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1010, '606 Fig Dr', 3, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1011, '707 Ginkgo St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1011, '808 Hemlock Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1012, '909 Ironwood St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1012, '111 Juniper Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1013, '222 Larch St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1013, '333 Laurel Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1014, '444 Linden St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1014, '555 Locust Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1015, '666 Maple St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1015, '777 Mulberry Ave', 2, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1016, '888 Oak St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1017, '999 Palm Ave', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1018, '123 Pine St', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1019, '456 Redwood Ave', 1, 'ACTIVE', null);
insert into address (customer_id, address_name, type_id, status, changed_date)
values (1020, '789 Spruce St', 1, 'ACTIVE', null);
--Comment 
comment on table address is 'Abonent ünvanları haqqında məlumatlar saxlanılır.';
comment on column address.customer_id is 'customers cədvəlinin customer_id sütunundakı dəyərləri alır.';
comment on column address.address_name is 'Abonentlərin ünvanları haqqında informasiya saxlanılır.';
comment on column address.type_id is 'address_type cədvəlinin type_id sütunundakı dəyərləri alır.';
comment on column address.insert_date is 'Sətirin cədvələ yazılma tarixini bildirir.';
comment on column address.status is 'Sətrin statusunu bildirir.';
comment on column address.changed_date is 'Sətrin statusunun dəyişmə tarixini bildirir.';

-- 4. Hesablar haqqında informasiyanı özündə saxlayır.
create table accounts 
(
    account_id   number,
    customer_id  number,
    account_type varchar2(20),
    balance      number(15, 2),
    date_opened  date,
    date_closed  date
);

-- Constraint     
alter table accounts 
add constraint pk_account_id primary key(account_id);

alter table accounts 
add constraint fk_accounts_customer_id foreign key (customer_id) references customers(customer_id);
-- DML(Insert)
insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (1, 1001, 'Current Account', 0, sysdate, null);

insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (2, 1001, 'Deposit Account', 0, sysdate, null);
 
insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (3, 1001, 'Card Account', 0, sysdate, null);

insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (4, 1002, 'Current Account', 0, sysdate, null);

insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (5, 1002, 'Deposit Account', 0, sysdate, null);
 
insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (6, 1002, 'Card Account', 0, sysdate, null);
 
insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (7, 1003, 'Current Account', 0, sysdate, null);

insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (8, 1003, 'Deposit Account', 0, sysdate, null);
 
insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (9, 1003, 'Card Account', 0, sysdate, null);

insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (10, 1004, 'Card Account', 0, sysdate, null);

insert into accounts (account_id, customer_id, account_type, balance, date_opened, date_closed)
values (11, 1006, 'Deposit Account', 0, sysdate, null);
--Comment
comment on table accounts is 'Hesablar haqqında informasiyanı özündə saxlayır.';
comment on column accounts.account_id is 'Hesabın unikal identifikatoru.';
comment on column accounts.customer_id is 'Hesab sahibinin Müştəri identifikatoru(customers cədvəlinin customer_id sütunun dəyərini alır).';
comment on column accounts.account_type is 'Hesabın növü (məsələn, "Current Account - Cari Hesab", "Deposit Account - Depozit Hesabı","Card Account - Kart Hesabı")';
comment on column accounts.balance is 'Hesabın balansı';
comment on column accounts.date_opened is 'Hesabın açılış tarixi.';
comment on column accounts.date_closed is 'Hesabın bağlanma tarixi.';

-- 5. Əməliyyatlar (Transactions) haqqında informasiyanı özündə saxlayır.
create table transactions 
(
    transaction_id   number,
    account_id       number,
    transaction_date date,
    transaction_type varchar2(20),
    amount           number(15, 2),
    descriptions     varchar2(255)
);

-- Constraint     
alter table transactions 
add constraint pk_transaction_id primary key(transaction_id);

alter table transactions 
add constraint fk_tran_account_id foreign key (account_id) references accounts(account_id);
---
-- insert statements for transactions table
insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (1, 1, to_date('2025-02-26', 'YYYY-MM-DD'), 'Deposit', 500.00, 'Deposit from customer A');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (2, 1, to_date('2025-02-25', 'YYYY-MM-DD'), 'Withdrawal', 100.00, 'ATM withdrawal');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (3, 1, to_date('2025-02-24', 'YYYY-MM-DD'), 'Transfer', 200.00, 'Transfer to account 105');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (4, 2, to_date('2025-02-23', 'YYYY-MM-DD'), 'Deposit', 1000.00, 'Salary deposit');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (5, 2, to_date('2025-02-22', 'YYYY-MM-DD'), 'Withdrawal', 50.00, 'Grocery shopping');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (6, 3, to_date('2025-02-21', 'YYYY-MM-DD'), 'Transfer', 300.00, 'Transfer from account 107');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (7, 3, to_date('2025-02-20', 'YYYY-MM-DD'), 'Deposit', 700.00, 'Bonus deposit');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (8, 4, to_date('2025-02-19', 'YYYY-MM-DD'), 'Withdrawal', 75.00, 'Restaurant bill');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (9, 5, to_date('2025-02-18', 'YYYY-MM-DD'), 'Transfer', 400.00, 'Transfer to account 110');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (10, 6, to_date('2025-02-17', 'YYYY-MM-DD'), 'Deposit', 800.00, 'Investment deposit');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (11, 8, to_date('2025-02-16', 'YYYY-MM-DD'), 'Withdrawal', 120.00, 'Clothing purchase');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (12, 7, to_date('2025-02-15', 'YYYY-MM-DD'), 'Transfer', 250.00, 'Transfer from account 113');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (13, 7, to_date('2025-02-14', 'YYYY-MM-DD'), 'Deposit', 600.00, 'Gift deposit');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (14, 7, to_date('2025-02-13', 'YYYY-MM-DD'), 'Withdrawal', 80.00, 'Movie tickets');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (15, 3, to_date('2025-02-12', 'YYYY-MM-DD'), 'Transfer', 150.00, 'Transfer to account 116');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (16, 4, to_date('2025-02-11', 'YYYY-MM-DD'), 'Deposit', 300.00, 'Refund deposit');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (17, 9, to_date('2025-02-10', 'YYYY-MM-DD'), 'Withdrawal', 90.00, 'Fuel purchase');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (18, 9, to_date('2025-02-09', 'YYYY-MM-DD'), 'Transfer', 180.00, 'Transfer from account 119');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (19, 9, to_date('2025-02-08', 'YYYY-MM-DD'), 'Deposit', 400.00, 'Bonus deposit');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (20, 10, to_date('2025-02-07', 'YYYY-MM-DD'), 'Withdrawal', 60.00, 'Coffee shop bill');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (21, 10, to_date('2025-02-06', 'YYYY-MM-DD'), 'Transfer', 220.00, 'Transfer to account 122');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (22, 11, to_date('2025-02-05', 'YYYY-MM-DD'), 'Deposit', 500.00, 'Investment return');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (23, 11, to_date('2025-02-04', 'YYYY-MM-DD'), 'Withdrawal', 70.00, 'Bookstore purchase');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (24, 11, to_date('2025-02-03', 'YYYY-MM-DD'), 'Transfer', 300.00, 'Transfer from account 125');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (25, 8, to_date('2025-02-02', 'YYYY-MM-DD'), 'Deposit', 1000.00, 'Salary deposit');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (26, 5, to_date('2025-02-01', 'YYYY-MM-DD'), 'Withdrawal', 150.00, 'Electronics purchase');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (27, 5, to_date('2025-01-31', 'YYYY-MM-DD'), 'Transfer', 350.00, 'Transfer to account 128');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (28, 5, to_date('2025-01-30', 'YYYY-MM-DD'), 'Deposit', 600.00, 'Bonus deposit');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (29, 5, to_date('2025-01-29', 'YYYY-MM-DD'), 'Withdrawal', 85.00, 'Grocery shopping');

insert into transactions (transaction_id, account_id, transaction_date, transaction_type, amount, descriptions)
values (30, 5, to_date('2025-01-28', 'YYYY-MM-DD'), 'Transfer', 200.00, 'Transfer from account 131');


-- Comment 
comment on table transactions is 'Əməliyyatlar (Transactions) haqqında informasiyanı özündə saxlayır.';
comment on column transactions.transaction_id is 'Əməliyyatın unikal identifikatoru.';
comment on column transactions.account_id is 'Əməliyyatın aid olduğu Hesab identifikatoru(accounts cədvəlinin account_id sütunundakı dəyərləri alır).';
comment on column transactions.transaction_date is 'Əməliyyatın tarixi.';
comment on column transactions.transaction_type is 'Əməliyyatın növü (məsələn, "Current Account - Cari Hesab", "Deposit Account - Depozit Hesabı","Card Account - Kart Hesabı").';
comment on column transactions.amount is 'Əməliyyatın məbləği.';
comment on column transactions.descriptions is 'Əməliyyat haqqında qısa məlumat.';

-- 6. Kreditlər haqqında informasiyanı özündə saxlayır.
create table loans 
(
  loan_id       number,
  customer_id   number,
  loan_type     varchar2(20),
  loan_amount   number(15, 2),
  interest_rate number(5, 2),
  start_date    date,
  end_date      date
);
-- Constraint     
alter table loans 
add constraint pk_loan_id primary key(loan_id);

alter table loans 
add constraint fk_loans_customer_id foreign key (customer_id) references customers(customer_id);

-- DML(Insert)
insert into loans (loan_id, customer_id, loan_type, loan_amount, interest_rate, start_date, end_date)
select 1, 1001, 'Business Loan', 50000.00, 5.25, to_date('2024-06-01', 'YYYY-MM-DD'), to_date('2030-06-01', 'YYYY-MM-DD') from dual union all
select 2, 1002, 'Business Loan', 70000.00, 5.50, to_date('2024-05-15', 'YYYY-MM-DD'), to_date('2031-05-15', 'YYYY-MM-DD') from dual union all
select 3, 1003, 'Business Loan', 60000.00, 5.75, to_date('2024-04-20', 'YYYY-MM-DD'), to_date('2032-04-20', 'YYYY-MM-DD') from dual union all
select 4, 1004, 'Business Loan', 80000.00, 6.00, to_date('2024-03-10', 'YYYY-MM-DD'), to_date('2033-03-10', 'YYYY-MM-DD') from dual union all
select 5, 1005, 'Business Loan', 55000.00, 5.00, to_date('2024-02-05', 'YYYY-MM-DD'), to_date('2034-02-05', 'YYYY-MM-DD') from dual union all
select 6, 1006, 'Business Loan', 65000.00, 4.75, to_date('2024-01-15', 'YYYY-MM-DD'), to_date('2035-01-15', 'YYYY-MM-DD') from dual union all
select 7, 1007, 'Student Loan', 25000.00, 3.75, to_date('2024-06-10', 'YYYY-MM-DD'), to_date('2031-06-10', 'YYYY-MM-DD') from dual union all
select 8, 1008, 'Student Loan', 30000.00, 4.00, to_date('2024-05-20', 'YYYY-MM-DD'), to_date('2032-05-20', 'YYYY-MM-DD') from dual union all
select 9, 1009, 'Student Loan', 28000.00, 3.50, to_date('2024-04-25', 'YYYY-MM-DD'), to_date('2033-04-25', 'YYYY-MM-DD') from dual union all
select 10, 1002, 'Mortgage Loan', 150000.00, 4.25, to_date('2024-06-01', 'YYYY-MM-DD'), to_date('2044-06-01', 'YYYY-MM-DD') from dual union all
select 11, 1011, 'Mortgage Loan', 200000.00, 4.50, to_date('2024-05-15', 'YYYY-MM-DD'), to_date('2045-05-15', 'YYYY-MM-DD') from dual union all
select 12, 1012, 'Mortgage Loan', 180000.00, 4.75, to_date('2024-04-20', 'YYYY-MM-DD'), to_date('2046-04-20', 'YYYY-MM-DD') from dual union all
select 16, 1016, 'Auto Loan', 30000.00, 3.25, to_date('2024-06-10', 'YYYY-MM-DD'), to_date('2030-06-10', 'YYYY-MM-DD') from dual union all
select 17, 1017, 'Auto Loan', 35000.00, 3.50, to_date('2024-05-20', 'YYYY-MM-DD'), to_date('2031-05-20', 'YYYY-MM-DD') from dual union all
select 18, 1018, 'Auto Loan', 32000.00, 3.75, to_date('2024-04-25', 'YYYY-MM-DD'), to_date('2032-04-25', 'YYYY-MM-DD') from dual union all
select 19, 1003, 'Auto Loan', 38000.00, 4.00, to_date('2024-03-01', 'YYYY-MM-DD'), to_date('2033-03-01', 'YYYY-MM-DD') from dual;

-- Comment
comment on table loans is 'Kreditlər haqqında informasiyanı özündə saxlayır.'; 
comment on column loans.customer_id is 'Kredit götürənin Müştəri identifikatoru(customers cədvəlinin customer_id sütunun dəyərini alır)'; 
comment on column loans.loan_type is 'Kreditin növü (məsələn, "İpoteka Krediti- Mortgage Loan", "Avtomobil Krediti - Auto Loan","Tələbə Krediti-Student Loan","Biznes Krediti - Business Loan")';
comment on column loans.loan_amount is 'Kredit məbləği';
comment on column loans.interest_rate is 'Kreditin faiz dərəcəsi.';
comment on column loans.start_date is 'Kreditin başlama tarixi.';
comment on column loans.end_date is 'Kreditin bitmə tarixi';

-- 7. Kredit Xətləri haqqında informasiyanı özündə saxlayır. 
create table credit_lines 
(
    credit_line_id number,
    customer_id    number,
    credit_limit   number(15, 2),
    interest_rate  number(5, 2),
    start_date     date,
    end_date       date 
);

-- Constraint     
alter table credit_lines 
add constraint pk_credit_line_id primary key(credit_line_id);

alter table credit_lines 
add constraint fk_credit_lines_customer_id foreign key (customer_id) references customers(customer_id);
-- DML(Insert)
insert into credit_lines (credit_line_id, customer_id, credit_limit, interest_rate, start_date, end_date)
select 1, 1001, 20000.00, 7.50, to_date('2024-06-01', 'YYYY-MM-DD'), to_date('2025-06-01', 'YYYY-MM-DD') from dual union all
select 2, 1002, 15000.00, 6.75, to_date('2024-05-15', 'YYYY-MM-DD'), to_date('2024-12-15', 'YYYY-MM-DD') from dual union all
select 3, 1003, 25000.00, 8.00, to_date('2024-04-20', 'YYYY-MM-DD'), to_date('2025-04-20', 'YYYY-MM-DD') from dual union all
select 4, 1004, 18000.00, 6.25, to_date('2024-03-10', 'YYYY-MM-DD'), to_date('2024-09-10', 'YYYY-MM-DD') from dual union all
select 5, 1005, 30000.00, 7.25, to_date('2024-02-05', 'YYYY-MM-DD'), to_date('2025-02-05', 'YYYY-MM-DD') from dual union all
select 6, 1006, 22000.00, 6.50, to_date('2024-01-15', 'YYYY-MM-DD'), to_date('2024-07-15', 'YYYY-MM-DD') from dual union all
select 7, 1007, 28000.00, 7.75, to_date('2024-06-10', 'YYYY-MM-DD'), to_date('2025-06-10', 'YYYY-MM-DD') from dual union all
select 8, 1008, 17000.00, 6.00, to_date('2024-05-20', 'YYYY-MM-DD'), to_date('2024-11-20', 'YYYY-MM-DD') from dual union all
select 9, 1009, 32000.00, 8.25, to_date('2024-04-25', 'YYYY-MM-DD'), to_date('2025-04-25', 'YYYY-MM-DD') from dual union all
select 10, 1011, 25000.00, 7.00, to_date('2024-06-01', 'YYYY-MM-DD'), to_date('2024-12-01', 'YYYY-MM-DD') from dual union all
select 11, 1012, 20000.00, 6.75, to_date('2024-05-15', 'YYYY-MM-DD'), to_date('2025-05-15', 'YYYY-MM-DD') from dual;

-- Comment
comment on table credit_lines is 'Kredit Xətləri haqqında informasiyanı özündə saxlayır.'; 
comment on column credit_lines.credit_line_id is 'Kredit xəttinin unikal identifikatoru.';
comment on column credit_lines.customer_id is 'Kredit xəttinin sahibinin Müştəri identifikatoru(customers cədvəlinin customer_id sütunun dəyərini alır).';
comment on column credit_lines.credit_limit is 'Kredit xəttinin limiti.';
comment on column credit_lines.interest_rate is 'Kredit xəttinin faiz dərəcəsi.';
comment on column credit_lines.start_date is 'Kredit xəttinin başlama tarixi.';
comment on column credit_lines.end_date is 'Kredit xəttinin bitmə tarixi.';

-- 8. Depozitlər haqqında informasiyanı özündə saxlayır.
create table deposits 
(
  deposit_id     number,
  customer_id    number,
  deposit_type   varchar2(100),
  deposit_amount number(15, 2),
  interest_rate  number(5, 2),
  start_date     date,
  end_date       date
);

-- Constraint     
alter table deposits 
add constraint pk_deposit_id primary key(deposit_id);

alter table deposits 
add constraint fk_deposits_customer_id foreign key (customer_id) references customers(customer_id);
-- DML(INSERT)
-- insert statements for deposits table
insert into deposits (deposit_id, customer_id, deposit_type, deposit_amount, interest_rate, start_date, end_date)
select 1, 1001, 'Fixed Deposit', 5000.00, 4.00, to_date('2024-06-01', 'YYYY-MM-DD'), to_date('2025-06-01', 'YYYY-MM-DD') from dual union all
select 2, 1002, 'Fixed Deposit', 7000.00, 4.25, to_date('2024-05-15', 'YYYY-MM-DD'), to_date('2025-05-15', 'YYYY-MM-DD') from dual union all
select 3, 1003, 'Fixed Deposit', 6000.00, 3.75, to_date('2024-04-20', 'YYYY-MM-DD'), to_date('2025-04-20', 'YYYY-MM-DD') from dual union all
select 4, 1004, 'Fixed Deposit', 8000.00, 4.50, to_date('2024-03-10', 'YYYY-MM-DD'), to_date('2026-03-10', 'YYYY-MM-DD') from dual union all
select 5, 1001, 'Recurring Deposit', 3000.00, 3.50, to_date('2024-02-05', 'YYYY-MM-DD'), to_date('2026-08-05', 'YYYY-MM-DD') from dual union all
select 6, 1009, 'Recurring Deposit', 2500.00, 3.25, to_date('2024-01-15', 'YYYY-MM-DD'), to_date('2026-07-15', 'YYYY-MM-DD') from dual union all
select 7, 1007, 'Recurring Deposit', 4000.00, 3.75, to_date('2024-06-10', 'YYYY-MM-DD'), to_date('2025-12-10', 'YYYY-MM-DD') from dual union all
select 8, 1008, 'Current Account Deposit', 15000.00, 1.50, to_date('2024-05-20', 'YYYY-MM-DD'), to_date('2025-05-20', 'YYYY-MM-DD') from dual union all
select 9, 1009, 'Current Account Deposit', 12000.00, 1.25, to_date('2024-04-25', 'YYYY-MM-DD'), to_date('2025-04-25', 'YYYY-MM-DD') from dual union all
select 10, 1010, 'Current Account Deposit', 18000.00, 1.75, to_date('2024-06-01', 'YYYY-MM-DD'), to_date('2025-06-01', 'YYYY-MM-DD') from dual;

-- Comment
comment on table deposits is 'Depozitlər haqqında informasiyanı özündə saxlayır.'; 
comment on column deposits.deposit_id is 'Depozitin unikal identifikatoru.';
comment on column deposits.customer_id is 'Depozit sahibinin Müştəri identifikatoru(customers cədvəlinin customer_id sütunun dəyərini alır).';
comment on column deposits.deposit_type is 'Depozitin növü (məsələn, "Əmanət Depoziti - Fixed Deposit", "Gündəlik Əmanət Depoziti- Recurring Deposit","Cari Hesab Depoziti - Current Account Deposit").';
comment on column deposits.deposit_amount is 'Depozit məbləği.';
comment on column deposits.interest_rate is 'Depozitin faiz dərəcəsi.';
comment on column deposits.start_date is 'Depozitin başlama tarixi.';
comment on column deposits.end_date is 'Depozitin bitmə tarixi.';

-- 9. Kartlar haqqında informasiyanı özündə saxlayır.
create table cards 
(
  card_id     number,
  customer_id number,
  card_number varchar2(20),
  card_type   varchar2(10),
  start_date  date,
  expiry_date date,
  cvv varchar2(3) 
);

-- Constraint     
alter table cards 
add constraint pk_card_id primary key(card_id);

alter table cards 
add constraint fk_cards_customer_id foreign key (customer_id) references customers(customer_id);
-- DML(Insert)
insert into cards (card_id, customer_id, card_number, card_type, start_date, expiry_date, cvv)
select 1, 1001, '1234567812345678', 'Credit', to_date('2024-06-01', 'YYYY-MM-DD'), to_date('2027-06-01', 'YYYY-MM-DD'), '123' from dual union all
select 2, 1002, '2345678923456789', 'Credit', to_date('2024-05-15', 'YYYY-MM-DD'), to_date('2026-05-15', 'YYYY-MM-DD'), '234' from dual union all
select 3, 1003, '3456789034567890', 'Credit', to_date('2024-04-20', 'YYYY-MM-DD'), to_date('2025-04-20', 'YYYY-MM-DD'), '345' from dual union all
select 4, 1004, '4567890145678901', 'Credit', to_date('2024-03-10', 'YYYY-MM-DD'), to_date('2028-03-10', 'YYYY-MM-DD'), '456' from dual union all
select 5, 1005, '5678901256789012', 'Credit', to_date('2024-02-05', 'YYYY-MM-DD'), to_date('2029-02-05', 'YYYY-MM-DD'), '567' from dual union all
select 6, 1006, '6789012367890123', 'Debit', to_date('2024-01-15', 'YYYY-MM-DD'), to_date('2026-01-15', 'YYYY-MM-DD'), '678' from dual union all
select 7, 1031, '7890123478901234', 'Debit', to_date('2024-06-10', 'YYYY-MM-DD'), to_date('2027-06-10', 'YYYY-MM-DD'), '789' from dual union all
select 8, 1032, '8901234589012345', 'Debit', to_date('2024-05-20', 'YYYY-MM-DD'), to_date('2028-05-20', 'YYYY-MM-DD'), '890' from dual union all
select 9, 1009, '9012345690123456', 'Debit', to_date('2024-04-25', 'YYYY-MM-DD'), to_date('2029-04-25', 'YYYY-MM-DD'), '901' from dual;

-- Comment
comment on table cards is 'Kartlar haqqında informasiyanı özündə saxlayır.';
comment on column cards.card_id is 'Kartın unikal identifikatoru.';
comment on column cards.customer_id is 'Kart sahibinin Müştəri identifikatoru.';
comment on column cards.card_number is 'Kartın nömrəsi.';
comment on column cards.card_type is 'Kartın növü (məsələn, "Debit", "Credit").';
comment on column cards.start_date is 'Kartın aktiv edilmə tarixi.';
comment on column cards.expiry_date is 'Kartın son istifadə tarixi.';
comment on column cards.cvv  is 'Kartın təhlükəsizlik kodu (CVV).';

