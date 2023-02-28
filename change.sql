O
SQL SYNTAXS

1.SELECT * FROM EPY;
2.SELECT DISTINCT(JOB) FROM EMPY;
3.SELECT * FROM EMPY ORDER BY ASC;
5.SELECT * FROM EMPY ORDER BY DEPTNO ASC,JOB DSC;
6.SELECT DISTINCT(JOB) FROM EMPY GROUP BY JOB ORDER BY JOB DESC;
7.SELECT * FROM EMPY WHERE HIREDATE <= '1981-01-01';
8.SELECT EMPNO,ENAME,SAL FROM EMPY ORDER BY SAL ASC;
9.SELECT EMPNO,ENAME,JOB,HIREDATE, ROUND(DATEDIFF(CURDATE(),HIREDATE)/365) FROM EMPY WHERE JOB='MANAGE R';
7. select * from empy where job='manager';
10select  empno,ename,sal,round(datediff(curdate(),hiredate)/365) as exp_mgr from naresh.empy where mgr='7369';
11.select * from empy where comm>sal;
12,select ename from empy where hiredate>='1981-07-01' order by job;
13. select ename,round(datediff(curdate(),hiredate)/365) as exp_emp from empy where sal>100;
14.select * from empy where job in ('clerk','analyst') order by ename;
15. select ename,round(datediff(curdate(),hiredate)/365) as exp from naresh.empy where hiredate in ('1981-06-01','1981-12-03','1981-12-17','1980-01-19') order by exp;
16.select ename from empy where deptno in(10,20);
17.select * from empy where year(hiredate)=1981;
18.select * from empy where year(hiredate)=1980 and month(hiredate)=8;
19.select ename from empy where sal*12 between 22000 and 45000;
20.select * from empy where ename like "_____";
21select * from empy where ename like 's_____';
22.select ename from empy where ename like '__r_';name
23.select ename from empy where ename like 's___h';
24.select * from empy where month(hiredate) =1;
25.select ename from empy where monthname(hiredate) like "_a%";
26.select ename from empy where sal like '___0';
27. select * from empy where ename like '%ll%'; 
28.select * from empy where year(hiredate) between 1980 and 1989;
29. select * from empy where deptno !=20;
30. select * from empy where job not in('president','manager') order by sal;
31.select * from empy where year(hiredate) !=1981; 
32.
33.select e.ename from empy as e join empy as t on e.empno=t.mgr;
34. select * from empy where month(hiredate)!=3;
35.select * from empy where job='clerk' and deptno = 20;
36.select * from empy where deptno in(10,30) and year(hiredate)=1981;
37. select * from empy where ename='smith';
38.select * from empy inner join dept on empy.deptno=dept.deptno where empy.deptno=20 and empy.ename='smith';
39. select empno,ename,job,mgr,hiredate,sal,comm,empy.deptno,grade,d.dname from empy left join dept as d on empy.deptno=d.deptno where d.dname in ('accounting','research') order by empy.deptno asc;
40. select e.empno,e.ename,sal,d.dname from empy as e  join dept as d on e.deptno=d.deptno where job in (('manager','analyst') and in('newyork','dallas)) and (round(datediff( curdate(),hiredate)/365)>7) and comm is null order by loc;
41.
42.select * from empy order by grade;
43.select * from empy where grade in (2,3);
44.select * from empy where grade in (4,5) and job='analyst' and job = 'manager';
45. select empno,ename,sal,dname,grade,round(datediff(curdate(),hiredate)/365) as exp,sal*12 as annsal_sal from empy inner join dept on empy.deptno = dept.deptno where dept.deptno in (10,20);
46.
47.select empno,ename,dname from dept inner join empy on dept.deptno = empy.deptno;
48.select * from empy where sal >2850 ;
49. select ename from empy where job=(select job from empy where ename='allen');
50.select ename from empy where hiredate<(select hiredate from empy where ename='king');
51. select e.ename from empy e,empy d where e.mgr=d.empno and e.hiredate < d.hiredate;
52.select ename from empy where deptno=20 and job in (select job from empy where deptno=10);
53.select ename,sal from empy where ename ='smith' or sal = (select sal from empy where ename='ford') order by sal;53.
54 select * from empy where job = (select job from empy where ename='miller') or sal> (select sal from empy where ename='allen');
55.select * from empy where sal > (select sum(sal) from empy where job='salesman');
56. select ename from empy join dept on empy.deptno=dept.deptno where hiredate > (select hiredate from empy where ename='blake') and  dept.loc in ('chicago','boston');
57.select ename from empy join dept on empy.deptno=dept.deptno where grade in (3,4) and dname in ('accounting','research') and sal > (select sal from empy where ename ='allen') and hiredate < (select hiredate from empy where ename ='smith') order by hiredate;
58.select * from empy where job=(select job from empy where ename like 'smith') or job= (select job from empy where ename like 'allen');

61.select ename,max(sal) as max_sal from empy group by ename order by max_sal desc limit 1;
62.select *, sal as highest_sal from empy  order by highest_sal desc limit 1;
63.select ename,max(sal) as highest_paid from empy where job = 'salesman' group by ename order by highest_paid desc limit 1;
64. 
65.select * from empy where hiredate < (select max(hiredate) from empy where mgr in (select empno from empy where ename='king')) and mgr =7839;
67.select * from empy where hiredate in (select min(hiredate) from empy where year(hiredate)='1981') ;
68.select * from empy where year(hiredate)='1981' and job in (select job from empy where hiredate in (select min(hiredate) from empy));

select * 




















82. select *from empy where (sal*20/100+sal) >3000;






89.select e.ename,e.empno,e.job,e.mgr,e.hiredate,e.sal,e.deptno,d.ename from empy e,empy d where e.mgr=d.empno and d.ename like 'jones';	


















