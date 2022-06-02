-- Setsuna_VOL
-- Author: shigure
-- DateCreated: 5/18/2022 11:40:43 AM
--------------------------------------------------------------
--√‚“ﬂª…Ω--
INSERT OR REPLACE INTO TraitModifiers (TraitType, ModifierId)
SELECT			'TRAIT_LEADER_SETSUNA_ABILITY1', 'MODFEAT_SETSUNA_AVOID'||RandomEventType		FROM RandomEvent_Presentation WHERE Sound = 'Play_Disaster_Volcano_Movie_Loop'
UNION SELECT	'TRAIT_LEADER_SETSUNA_ABILITY1', 'MODFEAT_SETSUNA_PREVENTION'||RandomEventType	FROM RandomEvent_Presentation WHERE Sound = 'Play_Disaster_Volcano_Movie_Loop';

INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType)
SELECT			'MODFEAT_SETSUNA_AVOID'||RandomEventType, 'MODIFIER_PLAYER_ADJUST_AVOID_RANDOM_EVENT'				FROM RandomEvent_Presentation WHERE Sound = 'Play_Disaster_Volcano_Movie_Loop'
UNION SELECT	'MODFEAT_SETSUNA_PREVENTION'||RandomEventType, 'MODIFIER_PLAYER_ADJUST_RANDOM_EVENT_NO_UNIT_DAMAGE'	FROM RandomEvent_Presentation WHERE Sound = 'Play_Disaster_Volcano_Movie_Loop';


INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value)
SELECT			'MODFEAT_SETSUNA_AVOID'||RandomEventType, 'RandomEventType', RandomEventType		FROM RandomEvent_Presentation WHERE Sound = 'Play_Disaster_Volcano_Movie_Loop'
UNION SELECT	'MODFEAT_SETSUNA_PREVENTION'||RandomEventType, 'RandomEventType', RandomEventType	FROM RandomEvent_Presentation WHERE Sound = 'Play_Disaster_Volcano_Movie_Loop'
UNION SELECT	'MODFEAT_SETSUNA_PREVENTION'||RandomEventType, 'NoDamage', 'true'					FROM RandomEvent_Presentation WHERE Sound = 'Play_Disaster_Volcano_Movie_Loop';