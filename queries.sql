
--query returns 256 results
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 250 AND ra < 270 AND dec > -5 AND dec < 0;

--returns 274
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 10 AND ra < 14 AND dec > -5 AND dec < 0;

--returns 456
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 10 AND ra < 15 AND dec > -5 AND dec < 0;

--returns 288
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 10 AND ra < 14 AND dec > 0 AND dec < 5;

--returns 463
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 350 AND ra < 354 AND dec > 60 AND dec < 70;
--at this dec, ra is highly skewed upwards, between 350 and 360, which is why we also choose the below
--query to compare

--returns 463
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 100 AND ra < 354 AND dec > 60 AND dec < 70;

--returns 361
--skewed towards -5 and 0 for dec
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 355 AND ra < 360 AND dec > -9 AND dec < 0;

--returns 120
--note the jump in results from changing ra
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 1 AND ra < 355 AND dec > 20 AND dec < 60;

--returns 502
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 1 AND ra < 356 AND dec > 20 AND dec < 60;

--returns 473
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 33 AND ra < 350 AND dec > 10 AND dec < 20;

--returns 242
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 50 AND ra < 100 AND dec > 4 AND dec < 70;

--returns 690
--count grows exponentially as dec lower boundary decreases, for this ra range
--(for dec 0 to 10)
--ra is also concentrated around 70 to 90
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 50 AND ra < 100 AND dec > 3 AND dec < 70;

--returns 514
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 200 AND ra < 205 AND dec > 0 AND dec < 1;

--returns 249
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 250 AND ra < 300 AND dec > 0 AND dec < 1;

--returns 307
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 250 AND ra < 251 AND dec > -5 AND dec < 1;

--returns 178
--for this dec, there are pretty much no samples
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 1 AND ra < 360 AND dec > 40 AND dec < 50;

--returns 848
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 100 AND ra < 103 AND dec > 0 AND dec < 10;

--returns 784
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 150 AND ra < 160 AND dec > 0 AND dec < 10;

--returns 694
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 300 AND ra < 315 AND dec > 0 AND dec < 10;

--returns 602
select ra,dec from sdss_sampledb_point4_percent WHERE ra > 140 AND ra < 149 AND dec > -1 AND dec < 10;





--table to get ranges
-->= lower bound, < upper bound + 1

--select count(*) as tally,
--	floor(ra/10) AS num,
--	concat(10*floor(ra/10), '-', 10*floor(ra/10)+9) AS range
--from sdss_sampledb_point4_percent
--group by num;



--select count(*) as tally,
--	floor(dec/10) AS num,
--	concat(10*floor(dec/10), '-', 10*floor(dec/10)+9) AS range
--from sdss_sampledb_point4_percent
--group by num;


--bins of size 5
--select count(*) as tally,
--	floor(dec/5) AS num,
--	concat(5*floor(dec/5), '-', 5*floor(dec/5)+4) AS range
--from sdss_sampledb_point4_percent
--group by num;


--bins of size 2
--select count(*) as tally,
--	floor(dec/2) AS num,
--	concat(2*floor(dec/2), '-', 2*floor(dec/2)+1) AS range
--from sdss_sampledb_point4_percent
--group by num;

--note that there is nothing in dec > 17 and dec < 48:
--select count(*) from sdss_sampledb_point4_percent where dec > 17 and dec < 48;





