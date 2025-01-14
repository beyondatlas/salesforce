# Collection of all profit functions
# Calculate the beta for each profit function
    function beta(distance,i,j)
        0.1 + min(0.9,2*distance[i,j]/800)
    end

# Calculate the time that needs to be spend for the max profit
    function profit_time(mp,α,μ,people,β,b,h,g)
        ((h * β + g + mp)/(α * μ * people * (1-β)^(b) * b))^(1/(b-1))
    end

# Calculate the max profit of each area
    function profit_potential(α,μ,people,β,b,h,g,t)
        α * μ * people * ((1-β) * t)^b - (h * β + g) * t
    end

## 1 derivation of profit potential
    function profit_potential_der(mp,α,μ,people,β,b,h,g,t)
        α * μ * people * b * (1-β)^b * t^(b-1) - (h * β + g + mp)
    end
