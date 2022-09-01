#define PLASMA_HEAT_PENALTY 15     // Higher == Bigger heat and waste penalty from having the crystal surrounded by this gas. Negative numbers reduce penalty.
#define OXYGEN_HEAT_PENALTY 1
#define PLUOXIUM_HEAT_PENALTY -0.5 //Better then co2, worse then n2
#define TRITIUM_HEAT_PENALTY 10
#define CO2_HEAT_PENALTY 2
#define NITROGEN_HEAT_PENALTY -1.5
#define BZ_HEAT_PENALTY 5
#define H2O_HEAT_PENALTY 12 //This'll get made slowly over time, I want my spice rock spicy god damnit
#define FREON_HEAT_PENALTY -10 //very good heat absorbtion and less plasma and o2 generation
#define HYDROGEN_HEAT_PENALTY 10 // similar heat penalty as tritium (dangerous)
#define HEALIUM_HEAT_PENALTY 4
#define PROTO_NITRATE_HEAT_PENALTY -3
#define ZAUKER_HEAT_PENALTY 8
#define HYPERNOBLIUM_HEAT_PENALTY -13
#define ANTINOBLIUM_HEAT_PENALTY 15

//All of these get divided by 10-bzcomp * 5 before having 1 added and being multiplied with power to determine rads
//Keep the negative values here above -10 and we won't get negative rads
#define OXYGEN_TRANSMIT_MODIFIER 1.5   //Higher == Bigger bonus to power generation.
#define PLASMA_TRANSMIT_MODIFIER 4
#define BZ_TRANSMIT_MODIFIER -2
#define TRITIUM_TRANSMIT_MODIFIER 30 //We divide by 10, so this works out to 3
#define PLUOXIUM_TRANSMIT_MODIFIER -5 //Should halve the power output
#define H2O_TRANSMIT_MODIFIER 2
#define HYDROGEN_TRANSMIT_MODIFIER 25 //increase the radiation emission, but less than the trit (2.5)
#define HEALIUM_TRANSMIT_MODIFIER 2.4
#define PROTO_NITRATE_TRANSMIT_MODIFIER 15
#define ZAUKER_TRANSMIT_MODIFIER 20
#define ANTINOBLIUM_TRANSMIT_MODIFIER -5
#define HYPERNOBLIUM_TRANSMIT_MODIFIER 3
#define H20_TRANSMIT_MODIFIER -2.5
#define FREON_TRANSMIT_MODIFIER -30

#define N2O_HEAT_RESISTANCE 6          //Higher == Gas makes the crystal more resistant against heat damage.
#define HYDROGEN_HEAT_RESISTANCE 2 // just a bit of heat resistance to spice it up
#define PROTO_NITRATE_HEAT_RESISTANCE 5

/// The minimum portion of the miasma in the air that will be consumed. Higher values mean more miasma will be consumed be default.
#define MIASMA_CONSUMPTION_RATIO_MIN 0
/// The maximum portion of the miasma in the air that will be consumed. Lower values mean the miasma consumption rate caps earlier.
#define MIASMA_CONSUMPTION_RATIO_MAX 1
/// The minimum pressure for a pure miasma atmosphere to begin being consumed. Higher values mean it takes more miasma pressure to make miasma start being consumed. Should be >= 0
#define MIASMA_CONSUMPTION_PP (ONE_ATMOSPHERE*0.01)
/// How the amount of miasma consumed per tick scales with partial pressure. Higher values decrease the rate miasma consumption scales with partial pressure. Should be >0
#define MIASMA_PRESSURE_SCALING (ONE_ATMOSPHERE*0.5)
/// How much the amount of miasma consumed per tick scales with gasmix power ratio. Higher values means gasmix has a greater effect on the miasma consumed.
#define MIASMA_GASMIX_SCALING (0.3)
/// The amount of matter power generated for every mole of miasma consumed. Higher values mean miasma generates more power.
#define MIASMA_POWER_GAIN 10

/// The minimum portion of the CO2 in the air that will be consumed. Higher values mean more CO2 will be consumed be default.
#define CO2_CONSUMPTION_RATIO_MIN 0
/// The maximum portion of the CO2 in the air that will be consumed. Lower values mean the CO2 consumption rate caps earlier.
#define CO2_CONSUMPTION_RATIO_MAX 1
/// The minimum pressure for a pure CO2 atmosphere to begin being consumed. Higher values mean it takes more CO2 pressure to make CO2 be consumed. Should be >= 0
#define CO2_CONSUMPTION_PP (ONE_ATMOSPHERE*0.01)
/// How the amount of CO2 consumed per tick scales with partial pressure. Higher values decrease the rate CO2 consumption scales with partial pressure. Should be >0
#define CO2_PRESSURE_SCALING (ONE_ATMOSPHERE*0.25)
/// How much the amount of CO2 consumed per tick scales with gasmix power ratio. Higher values means gasmix has a greater effect on the CO2 consumed.
#define CO2_GASMIX_SCALING (0.1)

#define POWERLOSS_INHIBITION_GAS_THRESHOLD 0.20         //Higher == Higher percentage of inhibitor gas needed before the charge inertia chain reaction effect starts.
#define POWERLOSS_INHIBITION_MOLE_THRESHOLD 20        //Higher == More moles of the gas are needed before the charge inertia chain reaction effect starts.        //Scales powerloss inhibition down until this amount of moles is reached
#define POWERLOSS_INHIBITION_MOLE_BOOST_THRESHOLD 500  //bonus powerloss inhibition boost if this amount of moles is reached

#define MOLE_PENALTY_THRESHOLD 1800           //Above this value we can get lord singulo and independent mol damage, below it we can heal damage
#define MOLE_HEAT_PENALTY 350                 //Heat damage scales around this. Too hot setups with this amount of moles do regular damage, anything above and below is scaled
//Along with damage_penalty_point, makes flux anomalies.
/// The cutoff for the minimum amount of power required to trigger the crystal invasion delamination event.
#define EVENT_POWER_PENALTY_THRESHOLD 4500
#define POWER_PENALTY_THRESHOLD 5000 //The cutoff on power properly doing damage, pulling shit around, and delamming into a tesla. Low chance of pyro anomalies, +2 bolts of electricity
#define SEVERE_POWER_PENALTY_THRESHOLD 7000 //+1 bolt of electricity, allows for gravitational anomalies, and higher chances of pyro anomalies
#define CRITICAL_POWER_PENALTY_THRESHOLD 9000 //+1 bolt of electricity.
#define HEAT_PENALTY_THRESHOLD 40 //Higher == Crystal safe operational temperature is higher.
#define DAMAGE_HARDCAP 0.002
#define DAMAGE_INCREASE_MULTIPLIER 0.25


#define THERMAL_RELEASE_MODIFIER 4 //Higher == less heat released during reaction, not to be confused with the above values
#define PLASMA_RELEASE_MODIFIER 650 //Higher == less plasma released by reaction
#define OXYGEN_RELEASE_MODIFIER 340 //Higher == less oxygen released at high temperature/power

#define REACTION_POWER_MODIFIER 0.65 //Higher == more overall power

#define MATTER_POWER_CONVERSION 10 //Crystal converts 1/this value of stored matter into energy.

//These would be what you would get at point blank, decreases with distance
#define DETONATION_HALLUCINATION 600

/// All humans within this range will be irradiated
#define DETONATION_RADIATION_RANGE 20

#define SUPERMATTER_WARNING_DELAY 60 SECONDS

#define HALLUCINATION_RANGE(P) (min(7, round(P ** 0.25)))


#define GRAVITATIONAL_ANOMALY "gravitational_anomaly"
#define FLUX_ANOMALY "flux_anomaly"
#define PYRO_ANOMALY "pyro_anomaly"
#define BIOSCRAMBLER_ANOMALY "bioscrambler_anomaly"
#define HALLUCINATION_ANOMALY "hallucination_anomaly"
#define VORTEX_ANOMALY "vortex_anomaly"
#define DIMENSIONAL_ANOMALY "dimensional_anomaly"

#define SUPERMATTER_COUNTDOWN_TIME 30 SECONDS

///to prevent accent sounds from layering
#define SUPERMATTER_ACCENT_SOUND_MIN_COOLDOWN 2 SECONDS

#define DEFAULT_ZAP_ICON_STATE "sm_arc"
#define SLIGHTLY_CHARGED_ZAP_ICON_STATE "sm_arc_supercharged"
#define OVER_9000_ZAP_ICON_STATE "sm_arc_dbz_referance" //Witty I know

#define MAX_SPACE_EXPOSURE_DAMAGE 10

#define SUPERMATTER_CASCADE_PERCENT 80

/// The divisor scaling value for cubic power loss.
#define POWERLOSS_CUBIC_DIVISOR 500
/// The rate at which the linear power loss function scales with power.
#define POWERLOSS_LINEAR_RATE 0.83
/// How much a psychologist can reduce power loss.
#define PSYCHOLOGIST_POWERLOSS_REDUCTION 0.2

/// Means it's not forced, sm decides itself by checking the [/datum/sm_delam/proc/can_select]
#define SM_DELAM_PRIO_NONE 0
/// In-game factors like the destabilizing crystal [/obj/item/destabilizing_crystal].
/// Purged when SM heals to 100
#define SM_DELAM_PRIO_IN_GAME 1

/// Purge the current forced delam and make it zero again (back to normal).
/// Needs to be higher priority than current forced_delam though.
#define SM_DELAM_STRATEGY_PURGE null

// These are used by supermatter and supermatter monitor program, mostly for UI updating purposes. Higher should always be worse!
// [/obj/machinery/power/supermatter_crystal/proc/get_status]
/// Unknown status, shouldn't happen but just in case.
#define SUPERMATTER_ERROR -1
/// No or minimal energy
#define SUPERMATTER_INACTIVE 0
/// Normal operation
#define SUPERMATTER_NORMAL 1
/// Ambient temp 80% of the default temp for SM to take damage.
#define SUPERMATTER_NOTIFY 2
/// Integrity below [/obj/machinery/power/supermatter_crystal/var/warning_point]. Start complaining on comms.
#define SUPERMATTER_WARNING 3
/// Integrity below [/obj/machinery/power/supermatter_crystal/var/danger_point]. Start spawning anomalies.
#define SUPERMATTER_DANGER 4
/// Integrity below [/obj/machinery/power/supermatter_crystal/var/emergency_point]. Start complaining to more people.
#define SUPERMATTER_EMERGENCY 5
/// Currently counting down to delamination. True [/obj/machinery/power/supermatter_crystal/var/final_countdown]
#define SUPERMATTER_DELAMINATING 6
