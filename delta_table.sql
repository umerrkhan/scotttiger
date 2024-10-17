DROP TABLE 00_tempdb_01.sampleemp ;
create table 00_tempdb_01.sampleemp 
USING DELTA
AS
  Select Empno,ename,job,mgr,hiredate,	sal,	bonus,	deptno, current_timestamp() as ins_ts FROM 
  (
  Select 7839 as Empno, 'KING'  as ename,   'PRESIDENT' as job, null as mgr ,  to_date('17-11-1981','dd-mm-yyyy')  as hiredate,5000 as sal, null as bonus, 10 as deptno  union all
  select 7698 as Empno, 'BLAKE'  as ename,  'MANAGER'    as job,   7839 as mgr, to_date('01-05-1981','dd-mm-yyyy') as hiredate,2850 as sal, null as bonus, 30 as deptno  union all
  select 7782 as Empno, 'CLARK'  as ename,  'MANAGER'    as job,   7839 as mgr, to_date('09-06-1981','dd-mm-yyyy') as hiredate,2450 as sal, null as bonus, 10 as deptno  union all
  select 7566 as Empno, 'JONES'  as ename,  'MANAGER'    as job,   7839 as mgr, to_date('02-04-1981','dd-mm-yyyy') as hiredate,2975 as sal, null as bonus, 20 as deptno   union all
  select 7788 as Empno, 'SCOTT'  as ename,  'ANALYST'    as job,   7566 as mgr, to_date('13-07-1987','dd-mm-yyyy') as hiredate, 3000 as sal, null as bonus, 20 as deptno   union all
  select 7902 as Empno, 'FORD'   as ename,   'ANALYST'   as job,   7566 as mgr, to_date('03-12-1981','dd-mm-yyyy') as hiredate,3000 as sal, null as bonus, 20 as deptno   union all
  select 7369 as Empno, 'SMITH'  as ename,  'CLERK'      as job,   7902 as mgr, to_date('17-12-1980','dd-mm-yyyy') as hiredate,800 as sal, null as bonus, 20 as deptno   union all
  select 7499 as Empno, 'ALLEN'  as ename,  'SALESMAN'   as job,  7698  as mgr, to_date('20-02-1981','dd-mm-yyyy') as hiredate,1600 as sal,  300 as bonus, 30 as deptno   union all
  select 7521 as Empno, 'WARD'   as ename,   'SALESMAN'  as job,  7698  as mgr, to_date('22-02-1981','dd-mm-yyyy') as hiredate,1250 as sal,  500 as bonus, 30 as deptno   union all
  select 7654 as Empno, 'MARTIN' as ename, 'SALESMAN'    as job,  7698  as mgr, to_date('28-09-1981','dd-mm-yyyy') as hiredate,1250 as sal, 1400 as bonus, 30 as deptno   union all
  select 7844 as Empno, 'TURNER' as ename, 'SALESMAN'    as job,  7698  as mgr, to_date('08-09-1981','dd-mm-yyyy') as hiredate,1500 as sal,    0 as bonus, 30 as deptno   union all
  select 7876 as Empno, 'ADAMS'  as ename,  'CLERK'      as job,  7788  as mgr, to_date('13-07-1987','dd-mm-yyyy') as hiredate,1100 as sal, null as bonus, 20 as deptno   union all
  select 7900 as Empno, 'JAMES'  as ename,  'CLERK'      as job,  7698  as mgr, to_date('03-12-1981','dd-mm-yyyy') as hiredate,950 as sal, null as bonus, 30 as deptno  union all
  select 7934 as Empno, 'MILLER' as ename, 'CLERK'       as job,  7782  as mgr, to_date('23-01-1982','dd-mm-yyyy') as hiredate,1300 as sal, null as bonus, 10 as deptno 
  ) src;
