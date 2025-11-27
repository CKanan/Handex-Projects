--1. Son 3 ayda ümumilikdə ən çox əməliyyat edən müştəri (Musteri adi) və bu müştərinin əməliyyatlarının ümumi məbləğini göstərən sorğu yazın.   

select cus.first_name, count(tr.transaction_id) as emeliyyat_sayi, sum(tr.amount) as umumi_mebleg
from customers cus
inner join accounts ac
on cus.customer_id = ac.customer_id
inner join transactions tr
on ac.account_id = tr.account_id
--where months_between(sysdate,tr.transaction_date)<=3
where tr.transaction_date>= add_months(sysdate, -3)
group by cus.first_name
order by emeliyyat_sayi desc
fetch next 1 rows only;

--2. Hər müştəri üçün son 1 ildə kart hesabından edilən çıxarışların sayını və bu çıxarışların ümumi məbləğini göstərin.

select cus.first_name, count(tr.transaction_id) as cixaris_sayi, sum(amount) as umumi_mebleg
from customers cus
inner join accounts ac
on cus.customer_id = ac.customer_id
inner join transactions tr
on ac.account_id = tr.account_id
where ac.account_type = 'Card Account' and tr.transaction_type='Withdrawal' and tr.transaction_date>= add_months(sysdate, -12)
group by cus.first_name;

--3. Hər müştəri üçün son 6 ay ərzində edilən əməliyyatların sayına görə, ən çox əməliyyat edən hesab növünü müəyyən edin.

select t.ad, t.hesab
from( select cus.first_name as ad, ac.account_type as hesab, count(tr.transaction_id) as emeliyyat_sayi,
      row_number() over (partition by cus.first_name order by count(tr.transaction_id) desc) as rn
      from customers cus
      inner join accounts ac
      on cus.customer_id = ac.customer_id
      inner join transactions tr
      on ac.account_id = tr.account_id
      where tr.transaction_date>= add_months(sysdate, -6)
      group by cus.first_name, ac.account_type )t
where t.rn=1; 

--4. Müştərilərin son 1 ildə yalnız depozit hesabları ilə bağlı etdikləri əməliyyatların ümumi məbləğini təhlil edin.

select cus.first_name, sum(amount) as umumi_mebleg
from customers cus
inner join accounts ac
on cus.customer_id = ac.customer_id
inner join transactions tr
on ac.account_id = tr.account_id
where ac.account_type = 'Deposit Account' and tr.transaction_date>= add_months(sysdate, -12)
group by cus.first_name;

--5. Hər müştəri üçün son 3 ayda, ən çox kart əməliyyatlarını həyata keçirən tarixləri göstərin.     

select t.ad, t.tarix
     from (select cus.first_name as ad, tr.transaction_date as tarix, count(tr.transaction_id) as emeliyyat_sayi,
            row_number() over (partition by cus.first_name order by count(tr.transaction_id) desc) as rn
            from customers cus
            inner join accounts ac
            on cus.customer_id = ac.customer_id
            inner join transactions tr
            on ac.account_id = tr.account_id
            where tr.transaction_type = 'Transfer' and tr.transaction_date>= add_months(sysdate, -3)
            group by cus.first_name, tr.transaction_date) t
where t.rn=1;        

--6. Aktiv depoziti olan müştərilərin depozit və kredit məlumatlarının siyahısını çıxarmaq:

select *
from customers c
inner join deposits d
on c.customer_id=d.customer_id
inner join loans l
on c.customer_id = l.customer_id
inner join credit_lines cl
on c.customer_id = cl.customer_id
where d.end_date>sysdate;

--7. Hər müştəri üçün son 1 il ərzində hər ay üzrə ümumi balans və depozit məbləğini göstərmək üçün sorğu yazın:

select cus.customer_id, cus.first_name, to_char(m.month_start, 'yyyy-mm') as aylar, 
        sum(ac.balance) as umumi_balans, sum(d.deposit_amount) as depozit_meblegi
from customers cus
cross join (select add_months(trunc(sysdate, 'mm'), -level + 1) as month_start from dual connect by level <= 12) m
inner join accounts ac
on cus.customer_id = ac.customer_id 
and ac.date_opened <= m.month_start and ac.date_closed >= m.month_start
inner join deposits d
on cus.customer_id =d.customer_id 
and d.start_date <= m.month_start and d.end_date >= m.month_start
group by cus.customer_id, cus.first_name, to_char(m.month_start, 'yyyy-mm')
order by cus.customer_id, aylar desc;

--8. Son 6 ayda ən yüksək kredit məbləğinə sahib olan müştəri haqqında məlumatlar və kredit məbləğini göstərmək.

select cus.*, l.loan_type, l.loan_amount 
from customers cus
inner join loans l
on cus.customer_id = l.customer_id
where l.start_date >= add_months(sysdate, -6)
order by l.loan_amount desc
fetch next 1 rows only;

--9. Hər müştərinin son 6 ay ərzində etdiyi ən yüksək məbləğli əməliyyatla bağlı məlumatları (əməliyyat növü, tarix, balans) göstərin.

select t.ad, t.emeliyyat_novu, t.tarix, t.yuksek_mebleg
from (select cus.first_name as ad, tr.transaction_type as emeliyyat_novu, tr.transaction_date as tarix, max(tr.amount) as yuksek_mebleg,
      row_number() over (partition by cus.first_name order by max(tr.amount) desc) as rn
      from customers cus
      inner join accounts ac
      on cus.customer_id = ac.customer_id
      inner join transactions tr
      on ac.account_id = tr.account_id
      where tr.transaction_date>= add_months(sysdate, -6)
      group by cus.first_name, tr.transaction_type, tr.transaction_date) t
where t.rn=1;
    
--10. Müştəri ən çox hansı növ kreditlərə müraciət edir və bu kreditlərin növü ilə müştəriyə təklif olunan ortalama faiz dərəcəsi nə qədər təşkil edir?  

select loan_type as kredit_novu, count(*) as kredit_sayi, round(avg(interest_rate),2) as ortalama_faiz
from loans
group by loan_type
order by kredit_sayi desc;

--11. Hər müştərinin son 1 ildə açdığı bütün hesabları və bu hesablara görə edilən əməliyyatların ümumi məbləğini göstərmək:

select cus.first_name, ac.account_type, sum(tr.amount)
from customers cus
inner join accounts ac
on cus.customer_id = ac.customer_id
inner join transactions tr
on ac.account_id = tr.account_id
where ac.date_opened >= add_months(sysdate, -12)
group by cus.first_name, ac.account_type
order by cus.first_name;

--12. Hər müştəri üçün son 1 ildə hər ay üzrə ümumi balans və depozit məbləğini göstərən sorğu:

select cus.customer_id, cus.first_name, to_char(m.month_start, 'yyyy-mm') as aylar, 
        sum(ac.balance) as umumi_balans, sum(d.deposit_amount) as depozit_meblegi
from customers cus
cross join (select add_months(trunc(sysdate, 'mm'), -level + 1) as month_start from dual connect by level <= 12) m
inner join accounts ac
on cus.customer_id = ac.customer_id 
and ac.date_opened <= m.month_start and ac.date_closed >= m.month_start
inner join deposits d
on cus.customer_id =d.customer_id 
and d.start_date <= m.month_start and d.end_date >= m.month_start
group by cus.customer_id, cus.first_name, to_char(m.month_start, 'yyyy-mm')
order by cus.customer_id, aylar desc;

--13. Hər bir müştəri üçün son 1 ildə ən yüksək depozit məbləği ilə saxlanılan hesab növünü və bu hesabın açılış tarixini tapın.

select t.ad, t.deposit_novu, t.acilis_tarixi, t.mebleg
from (select cus.first_name as ad, d.deposit_type as deposit_novu, d.start_date as acilis_tarixi, max(d.deposit_amount) as mebleg,
        row_number() over(partition by cus.first_name order by max(d.deposit_amount) desc) as rn
    from customers cus
    inner join deposits d
    on cus.customer_id = d.customer_id
--    where d.start_date >= add_months(sysdate, -12)
    group by cus.first_name, d.deposit_type, d.start_date) t
where t.rn=1;    

--14. Hər müştərinin son 3 ayda kartlar ilə edilən əməliyyatların sayına görə ən aktiv kart növünü müəyyən edin.

select cus.first_name as ad, c.card_type as kart_novu, count(tr.transaction_id) as emeliyyat_sayi
from customers cus
inner join cards c
on cus.customer_id = c.customer_id
inner join accounts ac
on cus.customer_id = ac.customer_id
inner join transactions tr
on ac.account_id=tr.account_id
where ac.account_type='Card Account'
and tr.transaction_date >= add_months(sysdate,-3)
group by cus.first_name, c.card_type
order by emeliyyat_sayi desc
fetch next 1 rows only;

--15. Müştəri statusu aktiv olanların içərisində Müddət bölgüsü üzrə ümumi kredit məbləğlərini hesablayın.

'''(Müddət bölgüsü dedikdə kreditin verilmə müddəti nəzərdə tutulur (start_date və end_date). Müddət bölgü aşağıdakı kimi olmalıdır.
0-12 ay
13-24 ay
25-48 ay
48 ay+)'''

select case when months_between(l.end_date,l.start_date) between 0 and 12 then  '0-12 ay'
            when months_between(l.end_date,l.start_date) between 13 and 24 then '13-24 ay'
            when months_between(l.end_date,l.start_date) between 25 and 48 then '25-48 ay'
            else '48 ay+' end as muddet_bolgusu,
       sum(l.loan_amount) as umumi_kredit_meblegi
from loans l
inner join customers cus
on cus.customer_id = l.customer_id and cus.status = 'ACTIVE'
group by (case when months_between(l.end_date,l.start_date) between 0 and 12 then  '0-12 ay'
            when months_between(l.end_date,l.start_date) between 13 and 24 then '13-24 ay'
            when months_between(l.end_date,l.start_date) between 25 and 48 then '25-48 ay'
            else '48 ay+' end);