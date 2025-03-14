select quantity,
    case 
        when quantity > 10 then 'more sale'
        when quantity < 5 then 'low sale'
        else 'Average sale'
    end as sale_label
from sales;


select quantity,
    case 
        when quantity >= 10 then 'more sale'
        when quantity between 5 and 9 then 'low sale'
        else 'Average sale'
    end as sale_label
from sales;