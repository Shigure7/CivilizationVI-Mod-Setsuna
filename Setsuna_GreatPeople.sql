-- Setsuna_GreatPeople
-- Author: shigure
-- DateCreated: 5/18/2022 11:24:08 PM
--------------------------------------------------------------
INSERT INTO Types
	(Type, Kind)
VALUES
	('GREAT_PERSON_CLASS_SCHOOL_IDOL', 'KIND_GREAT_PERSON_CLASS'),
	('UNIT_GREAT_PERSON_SCHOOL_IDOL', 'KIND_UNIT'),
	('PSEUDOYIELD_GPP_SETSUNA', 'KIND_PSEUDOYIELD');

INSERT INTO PseudoYields
	(PseudoYieldType, DefaultValue)
VALUES
	('PSEUDOYIELD_GPP_SETSUNA', 0.5);

INSERT INTO GreatPersonClasses
	(GreatPersonClassType, Name, UnitType, DistrictType, PseudoYieldType, IconString, ActionIcon)
VALUES
	('GREAT_PERSON_CLASS_SCHOOL_IDOL', 'LOC_GREAT_PERSON_CLASS_SCHOOL_IDOL_NAME', 'UNIT_GREAT_PERSON_SCHOOL_IDOL', 'DISTRICT_CAMPUS', 'PSEUDOYIELD_GPP_SETSUNA', '[ICON_GreatMusician]', 'ICON_UNITOPERATION_MUSICIAN_ACTION');

INSERT INTO UnitAiInfos
	(UnitType, AiType)
VALUES
    ('UNIT_GREAT_PERSON_SCHOOL_IDOL','UNITTYPE_CIVILIAN'),
	('UNIT_GREAT_PERSON_SCHOOL_IDOL','UNITAI_BUILD');

INSERT INTO Units
	(UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion, DisasterCharges, UseMaxMeleeTrainedStrength, ImmediatelyName, CanEarnExperience)
SELECT
	'UNIT_GREAT_PERSON_SCHOOL_IDOL', 'LOC_UNIT_GREAT_PERSON_SCHOOL_IDOL_NAME', BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, 1, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, 2 , ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_UNIT_GREAT_PERSON_SCHOOL_IDOL_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion, DisasterCharges, UseMaxMeleeTrainedStrength, ImmediatelyName, CanEarnExperience
FROM Units WHERE UnitType='UNIT_GREAT_MUSICIAN';