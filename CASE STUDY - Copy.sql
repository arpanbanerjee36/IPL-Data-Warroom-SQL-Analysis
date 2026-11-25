create 	database ipl;
use ipl;
select *
from 2018_batsmen;
select *
from 2018_bowlers;
select *
from 2019_batsmen;
select *
from 2019_bowlers;

# 1.Which bowler took the most wickets in the 2018 season?

select Player, Wkts
from 2018_bowlers
order by Wkts DESC
limit 1;

# 2.Which batsmen scored the most runs in the 2018 season while maintaining an average strike rate of at least 130?
select Player, Runs
from 2018_batsmen
where SR >= 130
order by Runs desc
limit 1;

# 3.Which bowlers took the most wickets in the 2018 season while maintaining an economy rate of less than 7 runs per over?

select Player, Wkts, ER
from 2018_bowlers
where ER <=7
order by Wkts desc
limit 1;

# 4.Which batsmen scored the most runs across both 2018 and 2019 seasons?

select batsman.Player, sum(batsman.Runs) as Most_runs
from (
	select Player, Runs
    from 2018_batsmen
    union all
    select Player, Runs
    from 2019_batsmen
    ) as batsman
group by Player
order by Most_runs desc
limit 1;

# 5.Which batsmen has hit the maximum number of boundaries in 2018, combining 4s and 6s?

select Player, sum( Fours + Sixs) as boundaries
from 2018_batsmen
group by Player
order by boundaries desc
limit 1;


# 6.Name the bowlers who have got 4 wickets haul in 2019.

select Player, SUM(FourWs) AS TotalFourWicketHauls
from 2019_bowlers
where FourWs > 0 
GROUP BY Player 
ORDER BY TotalFourWicketHauls DESC;


# 7.Name 5 such bowlers who bowled the least number of overs in 2018.

select Player, sum(Overs) as Strike_bowler 
from 2018_bowlers
group by Player
order by Strike_bowler asc
limit 5;

# 8.Which team scored the maximum number of runs in 2019?

select Team, sum(Runs) as Max_run
from 2019_batsmen
group by Team
order by Max_run desc
limit 1;

# 9.Name the Batsmen who has hit maximum half centuries, both the years combined

select batsmen.Player, sum(batsmen.Fifties) as Total_fifties
from(
  select Player, Fifties
  from 2018_batsmen
  union all
  select Player, Fifties
  from 2019_batsmen
) as batsmen
group by Player
order by Total_fifties desc
limit 1;

# 10. Which 5 teams scored the highest total runs in IPL 2018?

select Team, sum(Runs) as Total_runs
from  2018_batsmen
group by Team
order by Total_runs desc
limit 5;

# 11. Which teams hit the most sixes in IPL 2019? 

select Team, sum(Sixs) as Most_sixes
from 2019_batsmen
group by Team
order by Most_sixes desc
limit 1;

# 12. How many batsmen from each team scored more than 300 runs in IPL 2018? 

select count(Player) as batsmen,Team
from 2018_batsmen 
where Runs >300
group by Team
order by batsmen desc;

# 13. Which 10 batsmen had the highest batting average in IPL 2019?

select Player, Avg
from 2019_batsmen
order by Avg desc
limit 10;

# 14. What is the average strike rate of batsmen for each team in IPL 2018? 
 
 select Team, Avg 
 from 2018_batsmen
 order by Avg desc;

# 15. Which 5 teams took the highest total wickets in IPL 2018?

select Team, sum(Wkts) as Total_wickets
from 2018_bowlers
group by Team 
order by Total_wickets desc
limit 5;

# 16. How many bowlers from each team maintained an economy rate below 8 in IPL 2018?

select Team,count(Player) as bowlers
from 2018_bowlers
where ER <8 
group by Team;

# 17. Which 10 bowlers conceded the fewest runs in IPL 2018? 

select Player,Runs
from 2018_bowlers
order by Runs asc
limit 10;

# 18. What is the highest individual batting score recorded by each team in IPL 2019? 

select Team,Player,Runs
from 2019_batsmen
order by Runs desc;

# 19. Which teams had the highest total number of half-centuries in IPL 2019? 

select Team,sum(Fifties) as Half_centuries
from 2019_batsmen
group by Team
order by Half_centuries desc
limit 1;
