-- Setsuna_Double damage
-- Author: shigure
-- DateCreated: 5/19/2022 10:47:00 PM
--------------------------------------------------------------
local m_CriticalRate = 0.5;

function onCombat(pCombatResult)
    local attacker = pCombatResult[CombatResultParameters.ATTACKER];
    local attInfo = attacker[CombatResultParameters.ID]
    local pPlayerConfig = PlayerConfigurations[attInfo.player]
    
    if (pPlayerConfig:GetCivilizationTypeName() ~= "CIVILIZATION_SETSUNA") then
        return
    end
    
    local defender = pCombatResult[CombatResultParameters.DEFENDER]
    local defInfo = defender[CombatResultParameters.ID]
    
    if  (attInfo.type == ComponentType.UNIT)
    and (defInfo.type == ComponentType.UNIT)
    and (math.random() < m_CriticalRate) then
        local location = pCombatResult[CombatResultParameters.LOCATION];
        local damage = defender[CombatResultParameters.DAMAGE_TO]        
        local pDefUnit = UnitManager.GetUnit(defInfo.player, defInfo.id)       
        pDefUnit:ChangeDamage(damage)
        Game.AddWorldViewText(0, "Critical!", location.x, location.y)
    end
    
end

Events.Combat.Add(onCombat)