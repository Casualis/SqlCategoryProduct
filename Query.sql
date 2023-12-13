select p.Name as ProductName, c.Name as CategoryName from Product p
	join CategoryProduct cp on cp.ProductId = p.Id
	join Category c on cp.CategoryId = c.Id
union
select p.Name, '' from Product p
	where p.Id not in (select cp.ProductId from CategoryProduct cp)
order by c.Name

		 