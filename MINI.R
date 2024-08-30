require(mlogit)
a = mlogit.data(miniproject_data, shape="wide", "MAX_SEVERITY_LEVEL")
summary(mlogit(MAX_SEVERITY_LEVEL ~ 1 | UNBELTED + COLLISION_TYPE + FIRE_IN_VEHICLE + OVERTURNED + SPEEDING + AGGRESSIVE_DRIVING, data = a))
summary(mlogit(MAX_SEVERITY_LEVEL ~ 1 | 
                 AGGRESSIVE_DRIVING +
                 MC_DRINKING_DRIVER + DRINKING_DRIVER + 
                 
                 PED_COUNT + SMALL_VEH + MEDIUM_VEH + LARGE_VEH + 
                 
                 HIT_BRIDGE + HIT_DEER + HIT_EMBANKMENT + HIT_FIXED_OBJECT + HIT_GDRAIL + HIT_GDRAIL_END +
                 HIT_POLE + HIT_TREE_SHRUB + HIT_BARRIER +
                 
                 CROSS_MEDIAN + SV_RUN_OFF_RD + 
                 
                 DISTRACTED + SPEEDING + UNBELTED +     
                 COLLISION_TYPE + FIRE_IN_VEHICLE + OVERTURNED,
               data = a, reflevel = '0'))


a1 = mlogit.data(miniproject_data_1, shape="wide", "MAX_SEVERITY_LEVEL")
summary(mlogit(MAX_SEVERITY_LEVEL ~ 1 | UNBELTED + COLLISION_TYPE + FIRE_IN_VEHICLE + OVERTURNED + SPEEDING + AGGRESSIVE_DRIVING, data = a1))

#_______________________________________________________________________________
summary(mlogit(MAX_SEVERITY_LEVEL ~ 1 | 
                 AGGRESSIVE_DRIVING +
                 MC_DRINKING_DRIVER + DRINKING_DRIVER + CELL_PHONE +
                 
                 PED_COUNT + SMALL_VEH + MEDIUM_VEH + LARGE_VEH + FATIGUE_ASLEEP +
                 
                 HIT_BRIDGE + HIT_DEER + HIT_EMBANKMENT + HIT_GDRAIL + HIT_GDRAIL_END +
                 HIT_POLE + HIT_TREE_SHRUB + HIT_BARRIER +
                 
                 CROSS_MEDIAN + SV_RUN_OFF_RD + 
                 
                 DISTRACTED + SPEEDING + UNBELTED +     
                  FIRE_IN_VEHICLE + OVERTURNED + REAR_END_COL + HEAD_ON_COL + SIDESWEEP_COL + ANGLE_COL,
               data = a1, reflevel = '0'))
#____________________________________________________________________________________

summary(mlogit(MAX_SEVERITY_LEVEL ~ 1 | 
                 AGGRESSIVE_DRIVING +
                 DRINKING_DRIVER + 
                 
                 PED_COUNT + SMALL_VEH + MEDIUM_VEH + LARGE_VEH + 
                 
                 HIT_BRIDGE + HIT_DEER + HIT_GDRAIL +
                 HIT_POLE + HIT_TREE_SHRUB + HIT_BARRIER +
                 
                 CROSS_MEDIAN + SV_RUN_OFF_RD +
                 SPEEDING + UNBELTED +     
                 OVERTURNED + REAR_END_COL + HEAD_ON_COL + SIDESWEEP_COL,
               data = a1, reflevel = '0'))





sample.data = table(MAX_SEVERITY_LEVEL,DRINKING_DRIVER)

chisq.test(miniproject_data_1$ANGLE_COL, miniproject_data_1$MAX_SEVERITY_LEVEL)

attach(miniproject_data_1)


cols = list(AGGRESSIVE_DRIVING ,
            MC_DRINKING_DRIVER , DRINKING_DRIVER , 
            
            PED_COUNT , SMALL_VEH , MEDIUM_VEH , LARGE_VEH ,
            
            HIT_BRIDGE , HIT_DEER , HIT_EMBANKMENT , HIT_GDRAIL , HIT_GDRAIL_END ,
            HIT_POLE , HIT_TREE_SHRUB ,
            
            CROSS_MEDIAN , SV_RUN_OFF_RD , 
            
            DISTRACTED , SPEEDING , UNBELTED , FATIGUE_ASLEEP ,    
            FIRE_IN_VEHICLE , OVERTURNED ,
            
            REAR_END_COL , HEAD_ON_COL , ANGLE_COL, SIDESWEEP_COL)


for (i in cols){
  for(j in cols){
    print(chisq.test(i,j))
  }
}

summary(mlogit(MAX_SEVERITY_LEVEL ~ 1 | 
                 AGGRESSIVE_DRIVING +
                 MC_DRINKING_DRIVER + DRINKING_DRIVER +
                 
                 PED_COUNT + SMALL_VEH + MEDIUM_VEH + LARGE_VEH + FATIGUE_ASLEEP +
                 
                 HIT_BRIDGE + HIT_DEER + HIT_EMBANKMENT + HIT_GDRAIL + HIT_GDRAIL_END +
                 HIT_POLE + HIT_TREE_SHRUB +
                 
                 CROSS_MEDIAN + SV_RUN_OFF_RD + 
                 
                 DISTRACTED + SPEEDING + UNBELTED +     
                 FIRE_IN_VEHICLE + OVERTURNED + REAR_END_COL + HEAD_ON_COL + SIDESWEEP_COL + ANGLE_COL,
               data = a1, reflevel = '0'))

summary(mlogit(MAX_SEVERITY_LEVEL ~ 1 | 
                 AGGRESSIVE_DRIVING +
                 MC_DRINKING_DRIVER + DRINKING_DRIVER +
                 
                 PED_COUNT + SMALL_VEH + MEDIUM_VEH + LARGE_VEH + FATIGUE_ASLEEP +
                 
                 HIT_BRIDGE + HIT_DEER + HIT_EMBANKMENT + HIT_GDRAIL + HIT_GDRAIL_END +
                 HIT_POLE + HIT_TREE_SHRUB +
                 
                 CROSS_MEDIAN + SV_RUN_OFF_RD + 
                 
                 DISTRACTED + SPEEDING + UNBELTED +     
                 FIRE_IN_VEHICLE + OVERTURNED + REAR_END_COL + HEAD_ON_COL + SIDESWEEP_COL + ANGLE_COL,
               data = a, reflevel = '0'))







