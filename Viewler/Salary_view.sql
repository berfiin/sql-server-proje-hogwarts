CREATE VIEW Salary
as
select e.[Employee_Name], e.[Employee_Surname], e.[Employee_Phone],d.[Department_Name]
FROM [dbo].[Employee] as e
inner join [dbo].[Department] as d on e.[Employee_Id] = d.[Department_Id]
where [Employee_Salary] > 3000

select *from Salary