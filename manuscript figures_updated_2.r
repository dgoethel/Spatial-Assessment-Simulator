rm(list=(ls()))


##### Inputs ###############################################

runs.to.include<-c(116,133,132,135,126,134,59,72,71,75,68,73,10,23,22,25,20,24,109,113,112,114,111,187)  # the numbers corresponding to the runs to include in the MRE summary plots

nsim <-500
num_dir<-194
dir_num<-c(1:169,171:175,177,179:197)    #170,176, have no converged runs so do not put into figures #178 is a repeat directory just easier to skip it; others need to be added back in eventually when runs finish

quantile.upper = 0.95
quantile.lower = 0.05

####### Where to store figures ############
Figure_dir<-"D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Figures\\Figures"
Figure_table_dir<-"D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Figures\\tables"

##########################################
na_LL<-16   #number of ages for long lived life history models
na_SL<-4    #number of ages for short lived life history models
###################### Directories that want to load (must match num_dir above) ###########################

#### Self Consistency #######################################################
wd_1<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\No Obs Error Random Year and Age'
nm_1<-"RND_YR+AG_No_Obs_Err"

wd_2<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\No Obs Error Random 2YR 1 Age'
nm_2<-"RND_2YR+1AG_No_Obs_Err"

wd_3<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\No Obs Error climate'
nm_3<-"CLM_YR+AG_No_Obs_Err"

wd_4<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\No Obs Error climate year'
nm_4<-"CLM_YR_No_Obs_Err"

wd_5<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\No Obs Error onto'
nm_5<-"ONT_YR+AG_No_Obs_Err"

wd_6<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\No Obs Error onto age'
nm_6<-"ONT_AGE_No_Obs_Err"

wd_7<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\Fixed T'
nm_7<-"RND_FIX_T"

wd_8<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\Fixed T climate'
nm_8<-"CLM_FIX_T"

wd_9<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\Fixed T onto'
nm_9<-"ONT_FIX_T"

#########################################################################################################
################### Onto ##########################################################################################################################
#######################################################################################

wd_10<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Closed Pop'
nm_10<-"ONT_NO_T"

#####################No Tags####################################


wd_11<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\No Tags\\1 YR 2 Age Block'
nm_11<-"ONT_1YR_2AG_NO_TAG"

wd_12<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\No Tags\\2 YR 1 Age Block'
nm_12<-"ONT_2YR_1AG_NO_TAG"

wd_13<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\No Tags\\2 YR 2 Age Block'
nm_13<-"ONT_2YR_2AG_NO_TAG"

wd_14<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\No Tags\\age varying T'
nm_14<-"ONT_AGE_NO_TAG"

wd_15<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\No Tags\\constant T'
nm_15<-"ONT_CNST_NO_TAG"

wd_16<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\No Tags\\Time and age varying T'
nm_16<-"ONT_YR+AG_NO_TAG"

wd_17<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\No Tags\\Time varying T'
nm_17<-"ONT_YR_NO_TAG"

################Tags#############################

wd_18<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\1 YR 2 Age Block'
nm_18<-"ONT_1YR_2AG"

wd_19<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\1 YR 2 Age Block no age 1'
nm_19<-"ONT_1YR_2AG_NO_T_AG1"

wd_20<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\2 YR 1 Age Block'
nm_20<-"ONT_2YR_1AG"

wd_21<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\2 YR 2 Age Block'
nm_21<-"ONT_2YR_2AG"

wd_22<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\age varying T'
nm_22<-"ONT_AGE"

wd_23<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\constant T'
nm_23<-"ONT_CNST"

wd_24<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\Time and age varying T'
nm_24<-"ONT_YR+AG"

wd_25<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\Time varying T'
nm_25<-"ONT_YR"

wd_26<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\Yearly Tags Time and age varying T'
nm_26<-"ONT_YR+AG_TAGS_YR"

######################Life History##################################################
################Short Lived#####################################################

wd_27<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\no move'
nm_27<-"ONT_NO_T_SL"

#####################No Tags####################################


wd_28<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\no tags\\1 YR 2 Age Block'
nm_28<-"ONT_1YR_2AG_NO_TAG_SL"

wd_29<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\no tags\\2 YR 1 Age Block'
nm_29<-"ONT_2YR_1AG_NO_TAG_SL"

wd_30<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\no tags\\2 YR 2 Age Block'
nm_30<-"ONT_2YR_2AG_NO_TAG_SL"

wd_31<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\no tags\\age varying T'
nm_31<-"ONT_AGE_NO_TAG_SL"

wd_32<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\no tags\\constant T'
nm_32<-"ONT_CNST_NO_TAG_SL"

wd_33<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\no tags\\Time and age varying T'
nm_33<-"ONT_YR+AG_NO_TAG_SL"

wd_34<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\no tags\\Time varying T'
nm_34<-"ONT_YR_NO_TAG_SL"

################Tags#############################

wd_35<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\tags\\1 YR 2 Age Block'
nm_35<-"ONT_1YR_2AG_SL"

wd_36<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\tags\\2 YR 1 Age Block'
nm_36<-"ONT_2YR_1AG_SL"

wd_37<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\tags\\2 YR 2 Age Block'
nm_37<-"ONT_2YR_2AG_SL"

wd_38<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\tags\\age varying T'
nm_38<-"ONT_AGE_SL"

wd_39<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\tags\\constant T'
nm_39<-"ONT_CNST_SL"

wd_40<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\tags\\Time and age varying T'
nm_40<-"ONT_YR+AG_SL"

wd_41<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\tags\\Time varying T'
nm_41<-"ONT_YR_SL"

wd_42<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\short lived\\tags\\Yearly Tags Time and age varying T'
nm_42<-"ONT_YR+AG_TAGS_YR_SL"

##############################################################
################Long Lived#####################################################

wd_43<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\no move'
nm_43<-"ONT_NO_T_LL"

####################No Tags####################################

wd_44<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\no tags\\1 YR 2 Age Block'
nm_44<-"ONT_1YR_2AG_NO_TAG_LL"

wd_45<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\no tags\\2 YR 1 Age Block'
nm_45<-"ONT_2YR_1AG_NO_TAG_LL"

wd_46<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\no tags\\2 YR 2 Age Block'
nm_46<-"ONT_2YR_2AG_NO_TAG_LL"

wd_47<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\no tags\\age varying T'
nm_47<-"ONT_AGE_NO_TAG_LL"

wd_48<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\no tags\\constant T'
nm_48<-"ONT_CNST_NO_TAG_LL"

wd_49<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\no tags\\Time and age varying T'
nm_49<-"ONT_YR+AG_NO_TAG_LL"

wd_50<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\no tags\\Time varying T'
nm_50<-"ONT_YR_NO_TAG_LL"

################Tags#############################

wd_51<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\tags\\1 YR 2 Age Block'
nm_51<-"ONT_1YR_2AG_LL"

wd_52<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\tags\\2 YR 1 Age Block'
nm_52<-"ONT_2YR_1AG_LL"

wd_53<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\tags\\2 YR 2 Age Block'
nm_53<-"ONT_2YR_2AG_LL"

wd_54<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\tags\\age varying T'
nm_54<-"ONT_AGE_LL"

wd_55<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\tags\\constant T'
nm_55<-"ONT_CNST_LL"

wd_56<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\tags\\Time and age varying T'
nm_56<-"ONT_YR+AG_LL"

wd_57<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\tags\\Time varying T'
nm_57<-"ONT_YR_LL"

wd_58<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Life History\\Long lived\\tags\\Yearly Tags Time and age varying T'
nm_58<-"ONT_YR+AG_TAGS_YR_LL"

##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################
################### Climate MOvement #####################################################################################
##########################################################################################################################################################
##########################################################################################################################################################

wd_59<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Closed Pop'
nm_59<-"CLM_NO_T"

#####################No Tags####################################

wd_60<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\No Tags\\1 YR 2 Age Block'
nm_60<-"CLM_1YR_2AG_NO_TAG"

wd_61<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\No Tags\\2 YR 1 Age Block'
nm_61<-"CLM_2YR_1AG_NO_TAG"

wd_62<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\No Tags\\2 YR 2 Age Block'
nm_62<-"CLM_2YR_2AG_NO_TAG"

wd_63<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\No Tags\\age varying T'
nm_63<-"CLM_AGE_NO_TAG"

wd_64<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\No Tags\\constant T'
nm_64<-"CLM_CNST_NO_TAG"

wd_65<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\No Tags\\Time and age varying T'
nm_65<-"CLM_YR+AG_NO_TAG"

wd_66<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\No Tags\\Time varying T'
nm_66<-"CLM_YR_NO_TAG"

################Tags#############################

wd_67<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\1 YR 2 Age Block'
nm_67<-"CLM_1YR_2AG"

wd_68<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\2 YR 1 Age Block'
nm_68<-"CLM_2YR_1AG"

wd_69<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\2 YR 1 Age Block no age 1'
nm_69<-"CLM_2YR_1AG_NO_T_AG1"

wd_70<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\2 YR 2 Age Block'
nm_70<-"CLM_2YR_2AG"

wd_71<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\age varying T'
nm_71<-"CLM_AGE"

wd_72<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\constant T'
nm_72<-"CLM_CNST"

wd_73<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\Time and age varying T'
nm_73<-"CLM_YR+AG"

wd_74<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\Time and age varying T no age 1'
nm_74<-"CLM_YR+AG_NO_T_AG1"

wd_75<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\Time varying T'
nm_75<-"CLM_YR"

wd_76<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\Yearly Tags Time and age varying T'
nm_76<-"CLM_YR+AG_TAGS_YR"

######################Life History##################################################
################Short Lived#####################################################

wd_77<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\no move'
nm_77<-"CLM_NO_T_SL"

#####################No Tags####################################

wd_78<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\no tags\\1 YR 2 Age Block'
nm_78<-"CLM_1YR_2AG_NO_TAG_SL"

wd_79<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\no tags\\2 YR 1 Age Block'
nm_79<-"CLM_2YR_1AG_NO_TAG_SL"

wd_80<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\no tags\\2 YR 2 Age Block'
nm_80<-"CLM_2YR_2AG_NO_TAG_SL"

wd_81<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\no tags\\age varying T'
nm_81<-"CLM_AGE_NO_TAG_SL"

wd_82<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\no tags\\constant T'
nm_82<-"CLM_CNST_NO_TAG_SL"

wd_83<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\no tags\\Time and age varying T'
nm_83<-"CLM_YR+AG_NO_TAG_SL"

wd_84<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\no tags\\Time varying T'
nm_84<-"CLM_YR_NO_TAG_SL"

################Tags#############################

wd_85<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\tags\\1 YR 2 Age Block'
nm_85<-"CLM_1YR_2AG_SL"

wd_86<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\tags\\2 YR 1 Age Block'
nm_86<-"CLM_2YR_1AG_SL"

wd_87<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\tags\\2 YR 2 Age Block'
nm_87<-"CLM_2YR_2AG_SL"

wd_88<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\tags\\age varying T'
nm_88<-"CLM_AGE_SL"

wd_89<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\tags\\constant T'
nm_89<-"CLM_CNST_SL"

wd_90<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\tags\\Time and age varying T'
nm_90<-"CLM_YR+AG_SL"

wd_91<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\tags\\Time varying T'
nm_91<-"CLM_YR_SL"

wd_92<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\short lived\\tags\\Yearly Tags Time and age varying T'
nm_92<-"CLM_YR+AG_TAGS_YR_SL"

##############################################################
################Long Lived#####################################################

wd_93<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\no move'
nm_93<-"CLM_NO_T_LL"

#####################No Tags####################################

wd_94<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\no tags\\1 YR 2 Age Block'
nm_94<-"CLM_1YR_2AG_NO_TAG_LL"

wd_95<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\no tags\\2 YR 1 Age Block'
nm_95<-"CLM_2YR_1AG_NO_TAG_LL"

wd_96<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\no tags\\2 YR 2 Age Block'
nm_96<-"CLM_2YR_2AG_NO_TAG_LL"

wd_97<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\no tags\\age varying T'
nm_97<-"CLM_AGE_NO_TAG_LL"

wd_98<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\no tags\\constant T'
nm_98<-"CLM_CNST_NO_TAG_LL"

wd_99<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\no tags\\Time and age varying T'
nm_99<-"CLM_YR+AG_NO_TAG_LL"

wd_100<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\no tags\\Time varying T'
nm_100<-"CLM_YR_NO_TAG_LL"

################Tags#############################

wd_101<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\tags\\1 YR 2 Age Block'
nm_101<-"CLM_1YR_2AG_LL"

wd_102<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\tags\\2 YR 1 Age Block'
nm_102<-"CLM_2YR_1AG_LL"

wd_103<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\tags\\2 YR 2 Age Block'
nm_103<-"CLM_2YR_2AG_LL"

wd_104<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\tags\\age varying T'
nm_104<-"CLM_AGE_LL"

wd_105<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\tags\\constant T'
nm_105<-"CLM_CNST_LL"

wd_106<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\tags\\Time and age varying T'
nm_106<-"CLM_YR+AG_LL"

wd_107<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\tags\\Time varying T'
nm_107<-"CLM_YR_LL"

wd_108<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Life History\\Long lived\\tags\\Yearly Tags Time and age varying T'
nm_108<-"CLM_YR+AG_TAGS_YR_LL"

##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################
################### Climate+Onto MOvement #####################################################################################
##########################################################################################################################################################
##########################################################################################################################################################

wd_109<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\Closed Pop'
nm_109<-"C+O_NO_T"

################Tags#############################

wd_110<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\Tags\\1 YR 2 Age Block'
nm_110<-"C+O_1YR_2AG"

wd_111<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\Tags\\2 YR 1 Age Block'
nm_111<-"C+O_2YR_1AG"

wd_112<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\Tags\\Age varying T'
nm_112<-"C+O_AGE"

wd_113<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\Tags\\Constant T'
nm_113<-"C+O_CNST"

wd_114<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\Tags\\Time varying T'
nm_114<-"C+O_YR"

wd_115<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\Tags\\Yearly Tags Time and age varying T'
nm_115<-"C+O_YR+AG_TAGS_YR"

##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################
################### Random MOvement #####################################################################################
##########################################################################################################################################################
##########################################################################################################################################################

wd_116<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Closed Pop'
nm_116<-"RND_NO_T"

#####################No Tags####################################

wd_117<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\No Tags\\1 YR 2 Age Block'
nm_117<-"RND_1YR_2AG_NO_TAG"

wd_118<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\No Tags\\2 YR 1 Age Block'
nm_118<-"RND_2YR_1AG_NO_TAG"

wd_119<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\No Tags\\2 YR 2 Age Block'
nm_119<-"RND_2YR_2AG_NO_TAG"

wd_120<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\No Tags\\age varying T'
nm_120<-"RND_AGE_NO_TAG"

wd_121<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\No Tags\\constant T'
nm_121<-"RND_CNST_NO_TAG"

wd_122<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\No Tags\\Time and age varying T'
nm_122<-"RND_YR+AG_NO_TAG"

wd_123<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\No Tags\\Time varying T'
nm_123<-"RND_YR_NO_TAG"

################Tags#############################

wd_124<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\1 YR 2 Age Block'
nm_124<-"RND_1YR_2AG"

wd_125<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\1 YR 4 Age Block'
nm_125<-"RND_1YR_4AG"

wd_126<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\2 YR 1 Age Block'
nm_126<-"RND_2YR_1AG"

wd_127<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\2 YR 2 Age Block'
nm_127<-"RND_2YR_2AG"

wd_128<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\2 YR 4 Age Block'
nm_128<-"RND_2YR_4AG"

wd_129<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\4 YR 1 Age Block'
nm_129<-"RND_4YR_1AG"

wd_130<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\4 YR 2 Age Block'
nm_130<-"RND_4YR_2AG"

wd_131<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\4 YR 4 Age Block'
nm_131<-"RND_4YR_4AG"

wd_132<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\age varying T'
nm_132<-"RND_AGE"

wd_133<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\constant T'
nm_133<-"RND_CNST"

wd_134<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\Time and age varying T'
nm_134<-"RND_YR+AG"

wd_135<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\Time varying T'
nm_135<-"RND_YR"

wd_136<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\Yearly Tags Time and age varying T'
nm_136<-"RND_YR+AG_TAGS_YR"

######################Life History##################################################
################Short Lived#####################################################

wd_137<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\no move'
nm_137<-"RND_NO_T_SL"

#####################No Tags####################################

wd_138<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\no tags\\1 YR 2 Age Block'
nm_138<-"RND_1YR_2AG_NO_TAG_SL"

wd_139<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\no tags\\2 YR 1 Age Block'
nm_139<-"RND_2YR_1AG_NO_TAG_SL"

wd_140<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\no tags\\2 YR 2 Age Block'
nm_140<-"RND_2YR_2AG_NO_TAG_SL"

wd_141<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\no tags\\age varying T'
nm_141<-"RND_AGE_NO_TAG_SL"

wd_142<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\no tags\\constant T'
nm_142<-"RND_CNST_NO_TAG_SL"

wd_143<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\no tags\\Time and age varying T'
nm_143<-"RND_YR+AG_NO_TAG_SL"

wd_144<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\no tags\\Time varying T'
nm_144<-"RND_YR_NO_TAG_SL"

################Tags#############################

wd_145<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\tags\\1 YR 2 Age Block'
nm_145<-"RND_1YR_2AG_SL"

wd_146<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\tags\\2 YR 1 Age Block'
nm_146<-"RND_2YR_1AG_SL"

wd_147<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\tags\\2 YR 2 Age Block'
nm_147<-"RND_2YR_2AG_SL"

wd_148<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\tags\\age varying T'
nm_148<-"RND_AGE_SL"

wd_149<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\tags\\constant T'
nm_149<-"RND_CNST_SL"

wd_150<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\tags\\Time and age varying T'
nm_150<-"RND_YR+AG_SL"

wd_151<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\tags\\Time varying T'
nm_151<-"RND_YR_SL"

wd_152<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\short lived\\tags\\Yearly Tags Time and age varying T'
nm_152<-"RND_YR+AG_TAGS_YR_SL"

##############################################################
################Long Lived#####################################################

wd_153<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\no move'
nm_153<-"RND_NO_T_LL"

#####################No Tags####################################

wd_154<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\no tags\\1 YR 2 Age Block'
nm_154<-"RND_1YR_2AG_NO_TAG_LL"

wd_155<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\no tags\\2 YR 1 Age Block'
nm_155<-"RND_2YR_1AG_NO_TAG_LL"

wd_156<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\no tags\\2 YR 2 Age Block'
nm_156<-"RND_2YR_2AG_NO_TAG_LL"

wd_157<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\no tags\\age varying T'
nm_157<-"RND_AGE_NO_TAG_LL"

wd_158<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\no tags\\constant T'
nm_158<-"RND_CNST_NO_TAG_LL"

wd_159<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\no tags\\Time and age varying T'
nm_159<-"RND_YR+AG_NO_TAG_LL"

wd_160<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\no tags\\Time varying T'
nm_160<-"RND_YR_NO_TAG_LL"

################Tags#############################

wd_161<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\tags\\1 YR 2 Age Block'
nm_161<-"RND_1YR_2AG_LL"

wd_162<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\tags\\2 YR 1 Age Block'
nm_162<-"RND_2YR_1AG_LL"

wd_163<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\tags\\2 YR 2 Age Block'
nm_163<-"RND_2YR_2AG_LL"

wd_164<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\tags\\age varying T'
nm_164<-"RND_AGE_LL"

wd_165<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\tags\\constant T'
nm_165<-"RND_CNST_LL"

wd_166<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\tags\\Time and age varying T'
nm_166<-"RND_YR+AG_LL"

wd_167<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\tags\\Time varying T'
nm_167<-"RND_YR_LL"

wd_168<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Life History\\Long lived\\tags\\Yearly Tags Time and age varying T'
nm_168<-"RND_YR+AG_TAGS_YR_LL"

##############################################################
################Random T Sensitivity Runs#####################################################
#####################No Tags####################################

wd_169<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\No Tags\\2 YR 1 Age Block no pen'
nm_169<-"RND_2YR_1AG_NO_TAG_NO_PEN"

wd_170<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\No Tags\\Time and age varying T no pen'
nm_170<-"RND_YR+AG_NO_TAG_NO_PEN"

wd_171<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Fixed\\No Tags\\Time and age varying T'
nm_171<-"RND_YR+AG_NO_TAG_AG1_FIX_0"
################Tags#############################

wd_172<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\1 YR 2 Age Block no pen'
nm_172<-"RND_1YR_2AG_NO_PEN"

wd_173<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\2 YR 1 Age Block no pen'
nm_173<-"RND_2YR_1AG_NO_PEN"

wd_174<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\Age Varying T no pen'
nm_174<-"RND_AGE_NO_PEN"

wd_175<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\Constant T no pen'
nm_175<-"RND_CNST_NO_PEN"

wd_176<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\Time and age varying T no pen'
nm_176<-"RND_YR+AG_NO_PEN"

wd_177<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\Time varying T no pen'
nm_177<-"RND_YR_NO_PEN"

wd_179<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\1 YR 2 Age Block Age-2 w Age 3,4'
nm_179<-"RND_1YR_2AG_AG2_w_AG3+4"

wd_180<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Fixed\\Tags\\1 YR 2 Age Block'
nm_180<-"RND_1YR_2AG_AG1_FIX_0"

wd_181<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Fixed\\Tags\\1 YR 2 Age Block Actual T not 0'
nm_181<-"RND_1YR_2AG_AG1_FIX"

wd_182<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Fixed\\Tags\\Time and age varying T'
nm_182<-"RND_YR+AG_AG1_FIX_0"

wd_183<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Fixed\\Tags\\Time and age varying T Actual T not 0'
nm_183<-"RND_YR+AG_AG1_FIX"

##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################

wd_184<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\No Obs Error clim onto Time and age varying T'
nm_184<-"C+O_YR+AG_No_Obs_Err"

wd_185<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\No Obs Error clim onto age varying T'
nm_185<-"C+O_AGE_No_Obs_Err"

wd_186<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\Fixed T clim onto'
nm_186<-"C+O_FIX_T"

wd_187<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\Tags\\Time and age varying T'
nm_187<-"C+O_YR+AG"

wd_188<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\Time and age varying T no age 1'
nm_188<-"ONT_YR+AG_NO_T_AG1"

wd_189<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Ontogenetic Movement\\Tags\\2 YR 1 Age Block no age 1'
nm_189<-"ONT_2YR_1AG_NO_T_AG1"

wd_190<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\No Obs Error clim onto Time varying T'
nm_190<-"C+O_YR_No_Obs_Err"

wd_191<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Self Consistency\\No Obs Error clim onto 2YR 1AG'
nm_191<-"C+O_2YR_1AG_No_Obs_Err"

wd_192<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\No Tags\\Time and age varying T'
nm_192<-"C+O_YR+AG_NO_TAG"

wd_193<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\Time varying T yrly tags'
nm_193<-"CLM_YR_TAG_YR"

wd_194<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\Time varying T upwt tags'
nm_194<-"CLM_YR_TAG_UPWT"

wd_195<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate Movement\\Tags\\Time varying T dwnwt tags'
nm_195<-"CLM_YR_TAG_DWNWT"

wd_196<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\Tags\\2YR 1AG yrly tag'
nm_196<-"C+O_2YR_1AG_Tag_YR"

wd_197<<-'D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Climate and Onto Movement\\No Tags\\2YR 1AG'
nm_197<-"C+O_2YR_1AG_NO_TAG"
##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################
##########################################################################################################################################################


#load required libraries
load_libraries<-function() {
  library(PBSmodelling)
  library(data.table)
  library(ggplot2)
  library(reshape2)
  library(reshape)
  library(gridExtra)
  library(gplots)
  library(colorspace)
  library(RColorBrewer)
  #library(plyr)
  library(dplyr)
  library(tidyr)
  library(matrixStats) 
  library(gridExtra)
  library(grid)
  library(gtools)
  library(TeachingDemos)
  library(snowfall)
  library(parallel)
  library(snow)
  library(foreach)
  library(doSNOW)
  library(spatstat)
  library(alphahull)
  library(beanplot)
  library(png)
  library(sjPlot)
  library(xtable)
  library(forcats)
  library(ggforce)
  #library(cowplot)
}
load_libraries()
#if(any(grepl("package:plyr", search()))) detach("package:plyr") else message("plyr not loaded")


#pull dimensions for building data frames for plotting
out<-readList("D:\\NOAA FILES\\Outreach\\Journal Submissions\\2019\\CAPAM SI\\movement manuscript\\runs\\Random Movement\\Age 1 T Not Fixed\\Tags\\2 YR 1 Age Block\\Diagnostics\\Results_converged\\run1.rep") #read in .rep file

#pull info about the model
na<-out$nages
nyrs<-out$nyrs
npops<-out$npops
nreg<-out$nregions
years<-seq(1:out$nyrs)
ages<-seq(1:out$nages)
if(npops>1){   #for metapop
  nreg=sum(nreg)}


vio.col<-"lightskyblue3"
median.col<-"gray25"

################


for (z in dir_num) {
  direct_master<-eval(parse(text=paste0("wd_",z)))
  ######################################
  
  ############################################################################
  ############################ NEED TO CHANGE DEPENDING ON WHERE LIFE HISTORY RUNS ARE LOCATED ##########################
  ifelse((z>42 & z<59) || (z>92 & z<109) || (z>152 & z<169) ,na<-na_LL,ifelse((z>26 & z<43) || (z>76 & z<93) || (z>136 & z<153),na<-na_SL,na<-out$nages))
  #########################################################################################
  ####################################################################################
  ########################################
  
  diag_dir<-paste0(direct_master,"\\Diagnostics",sep="")
  runs_dir<-paste0(diag_dir,"\\Results_converged",sep="")
  
  # create a data frame for the run to hold true and estimated values from OM/EM
  
  setwd(diag_dir)
  
  ###############################################################
  # Basic Plots
  ###############################################################
  
  #load results
  
  #load up the results
  Sim_Results<-readRDS('Sim_data.RData')
  Sim_Stats<-read.csv('Sim_Stats.csv')
  conv.runs<-which(Sim_Stats$Converged==1)
  
  nconv<-length(conv.runs)
  
  #saving values
  R_ave_df_sim<-matrix(NA,npops,nconv)
  R_ave_df_est<-matrix(NA,npops,nconv)
  
  R_apport_df_sim<-matrix(NA,(nyrs-1)*nreg,nconv)
  R_apport_df_est<-matrix(NA,(nyrs-1)*nreg,nconv)
  
  q_df_sim<-matrix(NA,nreg,nconv)
  q_df_est<-matrix(NA,nreg,nconv)
  
  
  #selectivity params
  sel_beta1_df_sim<-matrix(NA,nreg,nconv)
  sel_beta2_df_sim<-matrix(NA,nreg,nconv)
  sel_beta3_df_sim<-matrix(NA,nreg,nconv)
  sel_beta4_df_sim<-matrix(NA,nreg,nconv)
  sel_beta1_df_est<-matrix(NA,nreg,nconv)
  sel_beta2_df_est<-matrix(NA,nreg,nconv)
  sel_beta3_df_est<-matrix(NA,nreg,nconv)
  sel_beta4_df_est<-matrix(NA,nreg,nconv)
  
  
  sel_beta1_surv_df_sim<-matrix(NA,nreg,nconv)
  sel_beta2_surv_df_sim<-matrix(NA,nreg,nconv)
  sel_beta3_surv_df_sim<-matrix(NA,nreg,nconv)
  sel_beta4_surv_df_sim<-matrix(NA,nreg,nconv)
  sel_beta1_surv_df_est<-matrix(NA,nreg,nconv)
  sel_beta2_surv_df_est<-matrix(NA,nreg,nconv)
  sel_beta3_surv_df_est<-matrix(NA,nreg,nconv)
  sel_beta4_surv_df_est<-matrix(NA,nreg,nconv)
  
  
  #Recruitment
  rec_df_sim<-matrix(NA,nyrs*nreg,nconv)
  rec_df_est<-matrix(NA,nyrs*nreg,nconv)
  
  #Recruitment deviations
  rec_devs_df_sim<-matrix(NA,nyrs*nreg,nconv)
  rec_devs_df_est<-matrix(NA,(nyrs-1)*nreg,nconv)
  
  #Init Abundance
  init_abund_df_sim<-matrix(NA,nreg*nreg*na,nconv)
  init_abund_df_est<-matrix(NA,nreg*nreg*na,nconv)
  
  #SSB
  ssb_df_sim<-matrix(NA,nyrs*nreg,nconv)
  ssb_df_est<-matrix(NA,nyrs*nreg,nconv)
  
  #Biomass
  bio_df_sim<-matrix(NA,nyrs*nreg,nconv)
  bio_df_est<-matrix(NA,nyrs*nreg,nconv)
  
  #yield
  catch_df_sim<-matrix(NA,nyrs*nreg,nconv)
  catch_df_est<-matrix(NA,nyrs*nreg,nconv)
  
  #survey bio
  survey_df_sim<-matrix(NA,nyrs*nreg,nconv)
  survey_df_est<-matrix(NA,nyrs*nreg,nconv)
  
  #fmax
  fmax_df_sim<-matrix(NA,nyrs*nreg,nconv)
  fmax_df_est<-matrix(NA,nyrs*nreg,nconv)
  
  #select at age
  select_age_df_sim<-matrix(NA,na*nreg,nconv)
  select_age_df_est<-matrix(NA,na*nreg,nconv)
  select_age_survey_df_sim<-matrix(NA,na*nreg,nconv)
  select_age_survey_df_est<-matrix(NA,na*nreg,nconv)
  
  #movement
  move_df_sim<-matrix(NA,nyrs*nreg*na*nreg,nconv)
  move_df_est<-matrix(NA,nyrs*nreg*na*nreg,nconv)
  
  
  ###########################################################
  # populate the matrices for plotting
  for(i in 1:nconv){
    R_ave_df_sim[,i]<-unlist(Sim_Results["meanR_sim",i])
    R_ave_df_est[,i]<-unlist(Sim_Results["meanR_est",i])
    R_apport_df_sim[,i]<-unlist(Sim_Results["apport_sim",i])
    R_apport_df_est[,i]<-unlist(Sim_Results["apport_est",i])
    q_df_sim[,i]<-unlist(Sim_Results["q_sim",i])
    q_df_est[,i]<-unlist(Sim_Results["q_est",i])
    sel_beta1_df_sim[,i]<-unlist(Sim_Results["sel_beta1_sim",i])
    sel_beta2_df_sim[,i]<-unlist(Sim_Results["sel_beta2_sim",i])
    sel_beta3_df_sim[,i]<-unlist(Sim_Results["sel_beta3_sim",i])
    sel_beta4_df_sim[,i]<-unlist(Sim_Results["sel_beta4_sim",i])
    sel_beta1_df_est[,i]<-unlist(Sim_Results["sel_beta1_est",i])
    sel_beta2_df_est[,i]<-unlist(Sim_Results["sel_beta2_est",i])
    sel_beta3_df_est[,i]<-unlist(Sim_Results["sel_beta3_est",i])
    sel_beta4_df_est[,i]<-unlist(Sim_Results["sel_beta4_est",i])
    sel_beta1_surv_df_sim[,i]<-unlist(Sim_Results["sel_beta1_surv_sim",i])
    sel_beta2_surv_df_sim[,i]<-unlist(Sim_Results["sel_beta2_surv_sim",i])
    sel_beta3_surv_df_sim[,i]<-unlist(Sim_Results["sel_beta3_surv_sim",i])
    sel_beta4_surv_df_sim[,i]<-unlist(Sim_Results["sel_beta4_surv_sim",i])
    sel_beta1_surv_df_est[,i]<-unlist(Sim_Results["sel_beta1_surv_est",i])
    sel_beta2_surv_df_est[,i]<-unlist(Sim_Results["sel_beta2_surv_est",i])
    sel_beta3_surv_df_est[,i]<-unlist(Sim_Results["sel_beta3_surv_est",i])
    sel_beta4_surv_df_est[,i]<-unlist(Sim_Results["sel_beta4_surv_est",i])
    rec_df_sim[,i]<-unlist(Sim_Results["rec_sim",i])
    rec_df_est[,i]<-unlist(Sim_Results["rec_est",i])
    rec_devs_df_sim[,i]=unlist(Sim_Results["rec_devs_sim",i])
    rec_devs_df_est[,i]=unlist(Sim_Results["rec_devs_est",i])
    init_abund_df_sim[,i]=unlist(Sim_Results["init_abund_sim",i])
    init_abund_df_est[,i]=unlist(Sim_Results["init_abund_est",i])
    ssb_df_sim[,i]<-unlist(Sim_Results["ssb_sim",i])
    ssb_df_est[,i]<-unlist(Sim_Results["ssb_est",i])
    bio_df_sim[,i]<-unlist(Sim_Results["bio_sim",i])
    bio_df_est[,i]<-unlist(Sim_Results["bio_est",i])
    catch_df_sim[,i]<-unlist(Sim_Results["yield_sim",i])
    catch_df_est[,i]<-unlist(Sim_Results["yield_est",i])
    survey_df_sim[,i]<-unlist(Sim_Results["survey_sim",i])
    survey_df_est[,i]<-unlist(Sim_Results["survey_est",i])
    fmax_df_sim[,i]<-unlist(Sim_Results["fmax_sim",i])
    fmax_df_est[,i]<-unlist(Sim_Results["fmax_est",i])
    move_df_sim[,i]<-unlist(Sim_Results["movement_sim",i])
    move_df_est[,i]<-unlist(Sim_Results["movement_est",i])
    select_age_df_sim[,i]<-unlist(Sim_Results["select_age_sim",i])
    select_age_df_est[,i]<-unlist(Sim_Results["select_age_est",i])
    select_age_survey_df_sim[,i]<-unlist(Sim_Results["select_age_survey_sim",i])
    select_age_survey_df_est[,i]<-unlist(Sim_Results["select_age_survey_est",i])
  }
  
  
  assign(paste0("conv.rate_",z),nconv/nsim)
  
  
  
  #########################################
  ############################################
  # MAKE PLOTS
  ###########################################
  
  
  
  #######################################
  # Building a ggplot theme
  ######################################
  my_theme<-
    (theme_bw()+
       theme(
         panel.grid.major = element_blank(), 
         panel.grid.minor = element_blank(),
         axis.text.x = element_text(colour="grey20",size=8,angle=0,hjust=.5,vjust=0,face="plain"),
         plot.title=element_text(hjust=0.5,size=12),
         plot.subtitle=element_text(hjust=0.5,size=8)
       ))
  
  ######################################
  # Building the plots!
  ######################################
  
  #R_ave
  Rave_est<-data.frame(melt(t(R_ave_df_est)))
  Rave_est<-cbind(Rave_est,data.frame(melt(t(R_ave_df_sim))[3]))
  names(Rave_est)<-c("Nsim","Reg","R_ave_est","R_ave_sim")
  Rave_est$R_ave_bias<-((Rave_est$R_ave_est-Rave_est$R_ave_sim)/Rave_est$R_ave_sim)*100
  
  #calc medians
  
  #calculate the sum across areas 
  rave.long<-melt(Rave_est, id=c("Reg","Nsim"))
  #rave.long$Reg<-as.character(rave.long$Reg)
  
  median_R_ave<-data.frame(rave.long %>% group_by(Reg,variable) %>% 
                             summarise(med=round(median(value),digits=2),MARE=round(median(abs(value)),digits=2), 
                                       Mean=round(mean(value),digits=2), 
                                       min=round(min(value),digits=2),
                                       max=round(max(value),digits=2)))
  
  
  rave_sum_table<-c(get(paste0("nm_",z)),round(get(paste0("conv.rate_",z)),digits=2),
                    median_R_ave$MARE[median_R_ave$variable=='R_ave_bias' & median_R_ave$Reg=="1"],
                    median_R_ave$MARE[median_R_ave$variable=='R_ave_bias' & median_R_ave$Reg=="2"],
                    median_R_ave$Mean[median_R_ave$variable=='R_ave_bias' & median_R_ave$Reg=="1"],
                    median_R_ave$Mean[median_R_ave$variable=='R_ave_bias' & median_R_ave$Reg=="2"])
  names(rave_sum_table)<-c("Run","Conv_Rate","MARE_Reg_1","MARE_Reg_2",
                           "MRE_Reg_1","MRE_Reg_2")
  
  #plot
  rave.plot.gg<-ggplot(Rave_est, aes(x=as.factor(Reg), y=R_ave_est, group=Reg)) +
    #geom_hline(aes(yintercept = med.est, group = Reg), colour = 'darkred', size=0.5,lty=2)+
    geom_violin(fill=vio.col,trim=T,bw="nrd0", alpha=0.6)+
    geom_point(data=subset(median_R_ave,variable=="R_ave_est"), aes(x=Reg,y=med),fill=median.col, shape=21,size=2.0) + 
    geom_point(data=subset(median_R_ave,variable=="R_ave_sim"), aes(x=Reg,y=med), col="black", shape=16,cex=1.0) + 
    ggtitle(get(paste0("nm_",z)))+
    labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+
    ylab("Mean Recruitment")+
    xlab("Area")+
    my_theme
  
  
  
  rave.bias.gg<-ggplot(Rave_est, aes(x=as.factor(Reg), y=R_ave_bias, group=Reg)) +
    geom_hline(aes(yintercept = 0, group = Reg), colour = 'black',size=0.5,lty=2)+
    geom_violin(fill=vio.col,trim=T,bw="nrd0",alpha=0.6)+
    geom_point(data=subset(median_R_ave,variable=="R_ave_bias"), aes(x=Reg,y=med),fill=median.col, shape=21,size=2.0) + 
    #geom_point(data = rec.est.med, aes(x=Years,y=med.bias), fill=median.col, shape=21,size=1.5) + 
    scale_x_discrete(breaks=seq(0,nyrs,1))+
    ggtitle(get(paste0("nm_",z)))+
    labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+
    ylab("Relative % Difference")+
    xlab("Area")+
    #ylim(quantile(Rave_est$R_ave_bias, c(.05,.95)))+
    my_theme
  
  #####################################
  # Recruitment plot
  #####################################
  
  #build data.frame
  rec.data<-data.frame(Dat=c(rep("SIM",nrow(rec_df_sim)),rep("EST",nrow(rec_df_est))),Years=rep(years,nreg*2),Reg=rep(1:nreg,each=nyrs))
  
  rec.data<-cbind(rec.data,rbind(rec_df_sim,rec_df_est))
  rec.long<-melt(rec.data, id=c("Dat","Years","Reg"))
  rec.long$Reg<-as.factor(as.character(rec.data$Reg))
  
  #calculate the sum across areas 
  total.rec<-data.frame(rec.long %>% group_by(Dat, Years, variable) %>% summarise(value=sum(value)))
  
  
  total.rec$Reg<-rep("System",nrow(total.rec))
  rec.long<-rbind(rec.long,total.rec)
  
  
  #separate again for plotting
  rec.est<-rec.long[rec.long$Dat=="EST",]
  rec.sim<-rec.long[rec.long$Dat=="SIM",]
  
  
  #calculate the percent bias
  rec.est$val.true<-rec.sim$value
  rec.est$bias=((rec.est$value-rec.est$val.true)/rec.est$val.true)*100
  #rec.est$bias=(rec.est$val.true-rec.est$value)
  
  #calc medians table
  rec.est.med <- rec.est %>% group_by(Reg,Years) %>%
    summarise(med.est=round(median(value),digits=2),med.sim=round(median(val.true),digits=2), med.bias = round(median(bias),digits=2),
              MARE=round(median(abs(bias)),digits=2),
              mean.est=round(mean(value),digits=2),mean.sim=round(mean(val.true),digits=2), MRE = round(mean(bias),digits=2),
              max=round(max(bias),digits=2),min=round(min(bias),digits=2))
  
  
  rec_sum_table<-c(get(paste0("nm_",z)),round(get(paste0("conv.rate_",z)),digits=2),rec.est.med$MARE[2],rec.est.med$MARE[32],rec.est.med$MARE[62],rec.est.med$MARE[30],rec.est.med$MARE[60],rec.est.med$MARE[90],
                   round(median(abs(rec.est$bias[rec.est$Reg=='1'])),digits=2),round(median(abs(rec.est$bias[rec.est$Reg=='2'])),digits=2),
                   round(median(abs(rec.est$bias[rec.est$Reg=='System'])),digits=2),
                   round(median(abs(rec.est$bias)),digits=2),
                   rec.est.med$MRE[2],rec.est.med$MRE[32],rec.est.med$MRE[62],rec.est.med$MRE[30],rec.est.med$MRE[60],rec.est.med$MRE[90],
                   round(mean(rec.est$bias[rec.est$Reg=='1']),digits=2),round(mean(rec.est$bias[rec.est$Reg=='2']),digits=2),
                   round(mean(rec.est$bias[rec.est$Reg=='System']),digits=2),
                   round(mean(rec.est$bias),digits=2))
  names(rec_sum_table)<-c("Run","Conv_Rate","MARE_Reg_1_YR_2","MARE_Reg_2_YR_2","MARE_Tot_YR_2","MARE_Reg_1_YR_30","MARE_Reg_2_YR_30","MARE_Tot_YR_30",
                          "MARE_YR_Reg_1","MARE_YR_Reg_2","MARE_YR_Total","MARE_YR+Reg",
                          "MRE_Reg_1_YR_2","MRE_Reg_2_YR_2","MRE_Tot_YR_2","MRE_Reg_1_YR_30","MRE_Reg_2_YR_30","MRE_Tot_YR_30","MRE_YR_Reg_1","MRE_YR_Reg_2","MRE_YR_Total",
                          "MRE_YR+Reg")
  #generate Rec Plot
  rec.plot.gg<-ggplot(rec.est, aes(x=as.factor(Years), y=value)) +
    #geom_hline(aes(yintercept = med.est, group = Reg), colour = 'darkred', size=0.5,lty=2)+
    geom_violin(fill=vio.col,trim=T,bw="nrd0", alpha=0.6)+
    geom_point(data = rec.est.med, aes(x=Years,y=med.est), fill=median.col, shape=21,size=2.0) + 
    geom_line(data = rec.est.med, aes(x=Years,y=med.sim),lty=1,lwd=0.5) + 
    geom_point(data = rec.est.med, aes(x=Years,y=med.sim), fill="black", shape=16,size=1.0) + 
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  ylab("Recruitment")+
    xlab("Year")+
    ylim(0,25000)+
    facet_grid(Reg~.)+
    my_theme
  
  
  my_theme.fig4<-
    (#theme_bw()+
      theme(
        plot.margin = unit(c(0, .15, 0, .15), "cm"),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(colour="black",size=6,angle=0,hjust=0.45,vjust=1,face="plain"),
        axis.text.y = element_text(colour="black",size=6,angle=0,hjust=1,vjust=0.3,face="plain"),
        axis.title.x = element_text(size=6),
        axis.title.y = element_text(size=6),
        #strip.text.y = element_text(angle = 180),
        plot.title=element_text(hjust=0.5,vjust=0,size=8,margin=margin(2,2,3,2)),
        plot.subtitle=element_text(hjust=0.5,size=8),
        strip.text.x = element_text(margin = margin(0,0,.15,0, "cm"),
                                    size = 5, color = "black"),
        strip.text.y = element_text(
          size = 5, color = "black", face = "italic"),
        strip.background = element_rect(
          fill=NA),
        legend.position = c(0.5, 0.5),
        legend.text=element_text(size=5),
        legend.title=element_text(size=5),
        legend.key.size = unit(.15,"cm"),
        panel.background = element_blank(), #element_rect(colour = "black", size=.75, fill=NA),
        #axis.line.x = element_line(),
        #axis.line.y = element_line(),
        legend.background = element_rect(colour = 'black', fill = 'white', linetype='solid',size=.25),
        #legend.title=element_text(),
        legend.margin=margin(c(1,2,1,2)),
        panel.border = element_rect(colour = "black", fill=NA, size=.75)
      ))
  
  
  
  rec.name<-c('1'="Population 1 Recruitment")
  rec.plot.gg.fig4<-ggplot(subset(rec.est, Reg %in% '1'), aes(x=as.factor(Years), y=value)) +
    geom_violin(fill='gray',trim=T,bw="nrd0", alpha=0.6,scale='width')+
    geom_point(data = subset(rec.est.med, Reg %in% '1'), aes(x=Years,y=med.est), fill='black', colour='black',shape=20,size=.75) + 
    geom_line(data =subset(rec.est.med, Reg %in% '1'), aes(x=Years,y=med.sim),lty=1) + 
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    ylab('Recruits (1000s Fish)')+
    xlab(NULL)+
    #facet_grid(.~Reg,labeller=as_labeller(rec.name))+
    ylim(0,25000)+
    my_theme.fig4
  
  
  #generate Rec bias plot
  rec.bias.gg<-ggplot(rec.est, aes(x=as.factor(Years), y=bias)) +
    geom_hline(aes(yintercept = 0, group = Reg), colour = 'black',size=0.5,lty=2)+
    geom_violin(fill=vio.col,trim=T,bw="nrd0", alpha=0.6)+
    geom_line(data = rec.est.med, aes(x=Years,y=med.bias),lty=1,lwd=0.5) + 
    geom_point(data = rec.est.med, aes(x=Years,y=med.bias), fill=median.col, shape=21,size=1.5) +
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  ylab("Relative % Difference")+
    xlab("Year")+
    facet_grid(Reg~.,scales="free")+
    ylim(-100,100)+
    my_theme
  
  ######################################
  # Biomass
  
  #build data.frame
  bio.data<-data.frame(Dat=c(rep("SIM",nrow(bio_df_sim)),rep("EST",nrow(bio_df_est))),Years=rep(years,nreg*2),Reg=rep(1:nreg,each=nyrs))
  
  bio.data<-cbind(bio.data,rbind(bio_df_sim,bio_df_est))
  bio.long<-melt(bio.data, id=c("Dat","Years","Reg"))
  bio.long$Reg<-as.character(bio.data$Reg)
  
  #calculate the sum across areas 
  total.bio<-data.frame(bio.long %>% group_by(Dat, Years, variable) %>% summarise(value=sum(value)))
  
  total.bio$Reg<-rep("System",nrow(total.bio))
  bio.long<-rbind(total.bio,bio.long)
  
  
  #separate again for plotting
  bio.est<-bio.long[bio.long$Dat=="EST",]
  bio.sim<-bio.long[bio.long$Dat=="SIM",]
  
  
  #calculate the percent bias
  bio.est$val.true<-bio.sim$value
  bio.est$bias=((bio.est$value-bio.est$val.true)/bio.est$val.true)*100
  
  #calc medians table
  bio.est.med <- bio.est %>% group_by(Reg,Years) %>%
    summarise(med.est=round(median(value,na.rm=T),digits=2),med.sim=round(median(val.true,na.rm=T),digits=2), 
              med.bias = round(median(bias,na.rm=T),digits=2), MARE=round(median(abs(bias)),digits=2),
              mean.est=round(mean(value,na.rm=T),digits=2),mean.sim=round(mean(val.true,na.rm=T),digits=2), MRE = round(mean(bias,na.rm=T),digits=2),
              max=round(max(bias,na.rm=T),digits=2),min=round(min(bias,na.rm=T),digits=2),quant_low=quantile(bias,quantile.lower,na.rm=T),
            quant_up=quantile(bias,quantile.upper,na.rm=T),quant_low_med=quantile(bias,0.25,na.rm=T),quant_up_med=quantile(bias,0.75,na.rm=T))


  
  bio_sum_table<-c(get(paste0("nm_",z)),get(paste0("conv.rate_",z)),bio.est.med$MARE[2],bio.est.med$MARE[32],bio.est.med$MARE[62],bio.est.med$MARE[30],bio.est.med$MARE[60],bio.est.med$MARE[90],
                   round(median(abs(bio.est$bias[bio.est$Reg=='1'])),digits=2),round(median(abs(bio.est$bias[bio.est$Reg=='2'])),digits=2),
                   round(median(abs(bio.est$bias[bio.est$Reg=='System'])),digits=2),
                   round(median(abs(bio.est$bias)),digits=2),
                   bio.est.med$MRE[2],bio.est.med$MRE[32],bio.est.med$MRE[62],bio.est.med$MRE[30],bio.est.med$MRE[60],bio.est.med$MRE[90],
                   round(mean(bio.est$bias[bio.est$Reg=='1']),digits=2),round(mean(bio.est$bias[bio.est$Reg=='2']),digits=2),
                   round(mean(bio.est$bias[bio.est$Reg=='System']),digits=2),
                   round(mean(bio.est$bias),digits=2))
  names(bio_sum_table)<-c("Run","Conv_Rate","MARE_Reg_1_YR_2","MARE_Reg_2_YR_2","MARE_Tot_YR_2","MARE_Reg_1_YR_30","MARE_Reg_2_YR_30","MARE_Tot_YR_30",
                          "MARE_YR_Reg_1","MARE_YR_Reg_2","MARE_YR_Total","MARE_YR+Reg",
                          "MRE_Reg_1_YR_2","MRE_Reg_2_YR_2","MRE_Tot_YR_2","MRE_Reg_1_YR_30","MRE_Reg_2_YR_30","MRE_Tot_YR_30","MRE_YR_Reg_1","MRE_YR_Reg_2","MRE_YR_Total",
                          "MRE_YR+Reg")
  
  name.bio<-as.data.frame(rep(get(paste0("nm_",z)), times=(nreg+1)*nyrs))
  colnames(name.bio)<-"Scenario"
  bio_ts<-cbind(name.bio,as.data.frame(bio.est.med))  # , times=(nreg+1)*nyrs)
  
  #generate bio Plot
  bio.plot.gg<-ggplot(bio.est, aes(x=as.factor(Years), y=value)) +
    geom_violin(fill=vio.col,trim=T,bw="nrd0", alpha=0.6)+
    geom_point(data = bio.est.med, aes(x=Years,y=med.est), fill=median.col, shape=21,size=2.0) + 
    geom_line(data = bio.est.med, aes(x=Years,y=med.sim),lty=1, lwd=0.5) + 
    geom_point(data = bio.est.med, aes(x=Years,y=med.sim), fill="black", shape=16,size=1.0) + 
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  ylab("Biomass")+
    xlab("Year")+
    facet_grid(Reg~.)+
    ylim(0,150000)+
    my_theme
  
  
  bio.name<-c('Syste,'="Metapopulation Biomass")
  bio.plot.gg.fig5a<-ggplot(subset(bio.est, Reg %in% 'System'), aes(x=as.factor(Years), y=value)) +
    geom_violin(fill='gray',trim=T,bw="nrd0", alpha=0.6,scale='width')+
    geom_point(data = subset(bio.est.med, Reg %in% 'System'), aes(x=Years,y=med.est), fill='black', colour='black',shape=20,size=.75) + 
    geom_line(data =subset(bio.est.med, Reg %in% 'System'), aes(x=Years,y=med.sim),lty=1) + 
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    #labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  
    ylab('Biomass (mt)')+
    xlab(NULL)+
    #facet_grid(.~Reg,labeller=as_labeller(f.name))+
    ylim(0,160000)+
    my_theme.fig4
  
  
  #generate Rec bias plot
  bio.bias.gg<-ggplot(bio.est, aes(x=as.factor(Years), y=bias)) +
    geom_hline(aes(yintercept = 0, group = Reg), colour = 'black',size=0.5,lty=2)+
    geom_violin(fill=vio.col,trim=T,bw="nrd0",alpha=0.6)+
    geom_line(data = bio.est.med, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
    geom_point(data = bio.est.med, aes(x=Years,y=med.bias), fill=median.col, shape=21,size=1.5) + 
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  ylab("Relative % Difference")+
    xlab("Year")+
    facet_grid(Reg~.)+
    #ylim(-100,100)+
    my_theme
  
  ##############################################################
  ###F Max
  
  #build data.frame
  fmax.data.sim<-data.frame(Dat=rep("SIM",nrow(fmax_df_sim)),Years=rep(years,nreg),Reg=rep(1:nreg,each=nyrs))
  fmax.data.est<-data.frame(Dat=rep("EST",nrow(fmax_df_est)),Years=rep(years,nreg),Reg=rep(1:nreg,each=nyrs))
  
  fmax.data<-rbind(fmax.data.sim,fmax.data.est)
  
  fmax.data<-cbind(fmax.data,rbind(fmax_df_sim,fmax_df_est))
  fmax.long<-melt(fmax.data, id=c("Dat","Years","Reg"))
  fmax.long$Reg<-as.character(fmax.data$Reg)
  
  #calculate the sum across areas 
  #total.fmax<-data.frame(fmax.long %>% group_by(Dat, Years, variable) %>% summarise(value=sum(value)))
  
  #total.fmax$Reg<-rep("System",nrow(total.fmax))
  #fmax.long<-rbind(total.fmax,fmax.long)
  
  
  #separate again for plotting
  fmax.est<-fmax.long[fmax.long$Dat=="EST",]
  fmax.sim<-fmax.long[fmax.long$Dat=="SIM",]
  
  
  #calculate the percent bias
  fmax.est$val.true<-fmax.sim$value
  fmax.est$bias=((fmax.est$value-fmax.est$val.true)/fmax.est$val.true)*100
  #fmax.est$bias=((fmax.est$val.true-fmax.est$value))
  
  #calc medians table
  fmax.est.med <- fmax.est %>% group_by(Reg,Years) %>%
    summarise(med.est=round(median(value),digits=2),med.sim=round(median(val.true),digits=2), med.bias = round(median(bias),digits=2),
              MARE=round(median(abs(bias)),digits=2),
              mean.est=round(mean(value),digits=2),mean.sim=round(mean(val.true),digits=2), MRE = round(mean(bias),digits=2),
              max=round(max(bias),digits=2),min=round(min(bias),digits=2))
  
  fmax_sum_table<-c(get(paste0("nm_",z)),round(get(paste0("conv.rate_",z)),digits=2),fmax.est.med$MARE[2],fmax.est.med$MARE[32],fmax.est.med$MARE[30],fmax.est.med$MARE[60],
                    round(median(abs(fmax.est$bias[fmax.est$Reg=='1'])),digits=2),round(median(abs(fmax.est$bias[fmax.est$Reg=='2'])),digits=2),
                    round(median(abs(fmax.est$bias)),digits=2),
                    fmax.est.med$MRE[2],fmax.est.med$MRE[32],fmax.est.med$MRE[30],fmax.est.med$MRE[60],
                    round(mean(fmax.est$bias[fmax.est$Reg=='1']),digits=2),round(mean(fmax.est$bias[fmax.est$Reg=='2']),digits=2),
                    round(mean(fmax.est$bias),digits=2))
  names(fmax_sum_table)<-c("Run","Conv_Rate","MARE_Reg_1_YR_2","MARE_Reg_2_YR_2","MARE_Reg_1_YR_30","MARE_Reg_2_YR_30",
                           "MARE_YR_Reg_1","MARE_YR_Reg_2","MARE_YR+Reg",
                           "MRE_Reg_1_YR_2","MRE_Reg_2_YR_2","MRE_Reg_1_YR_30","MRE_Reg_2_YR_30","MRE_YR_Reg_1","MRE_YR_Reg_2",
                           "MRE_YR+Reg")
  #generate fmax Plot
  fmax.plot.gg<-ggplot(fmax.est, aes(x=as.factor(Years), y=value)) +
    geom_violin(fill=vio.col,trim=T,bw="nrd0", alpha=0.6)+
    geom_point(data = fmax.est.med, aes(x=Years,y=med.est), fill=median.col, shape=21,size=2.0) + 
    geom_point(data = fmax.est.med, aes(x=Years,y=med.sim), fill="black", shape=16,size=1.0) + 
    geom_line(data = fmax.est.med, aes(x=Years,y=med.sim),lty=1) + 
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  ylab("F")+
    xlab("Year")+
    facet_grid(Reg~.)+
    ylim(0,2.)+
    my_theme
  
  f.name<-c('1'="Population 1 Fishing Mortality")
  fmax.plot.gg.fig4<-ggplot(subset(fmax.est, Reg %in% '1'), aes(x=as.factor(Years), y=value)) +
    geom_violin(fill='gray',trim=T,bw="nrd0", alpha=0.6,scale='width')+
    geom_point(data = subset(fmax.est.med, Reg %in% '1'), aes(x=Years,y=med.est), fill='black', colour='black',shape=20,size=.75) + 
    #geom_point(data = subset(rec.est.med, Reg %in% '1'), aes(x=Years,y=med.sim), fill=median.col, shape=20,size=.5) + 
    geom_line(data =subset(fmax.est.med, Reg %in% '1'), aes(x=Years,y=med.sim),lty=1) + 
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    #labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  
    ylab('F')+
    xlab(NULL)+
    #facet_grid(.~Reg,labeller=as_labeller(f.name))+
    ylim(0,1.75)+
    my_theme.fig4
  
  
  fmax.plot.gg.fig5a<-ggplot(subset(fmax.est, Reg %in% '2'), aes(x=as.factor(Years), y=value)) +
    geom_violin(fill='gray',trim=T,bw="nrd0", alpha=0.6,scale='width')+
    geom_point(data = subset(fmax.est.med, Reg %in% '2'), aes(x=Years,y=med.est), fill='black', colour='black',shape=20,size=.75) + 
    geom_line(data =subset(fmax.est.med, Reg %in% '2'), aes(x=Years,y=med.sim),lty=1) + 
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    #labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  
    ylab('F')+
    xlab(NULL)+
    #facet_grid(.~Reg,labeller=as_labeller(f.name))+
    ylim(0,1.75)+
    my_theme.fig4
  
  #bias plot
  fmax.bias.gg<-ggplot(fmax.est, aes(x=as.factor(Years), y=bias)) +
    geom_hline(aes(yintercept = 0, group = Reg), colour = 'black',size=0.5,lty=2,lwd=2)+
    geom_violin(fill=vio.col,trim=T,bw="nrd0")+
    geom_line(data = fmax.est.med, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
    geom_point(data = fmax.est.med, aes(x=Years,y=med.bias), fill=median.col, shape=21,size=1.5) + 
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  ylab("Relative % Difference")+
    xlab("Year")+
    facet_grid(Reg~.)+
    ylim(-100,100)+
    my_theme
  
  #Movement
  
  movement.data.sim<-data.frame(Dat=rep("SIM",nrow(move_df_sim)),Year=rep(1:nyrs,each=na*nreg, times=nreg),Reg_from=rep(1:nreg,each=nyrs*nreg*na),Reg_to=rep(1:nreg,times=nyrs*nreg*na),
                                Age=rep(1:na,each=nreg,times=nyrs*nreg))
  
  movement.data.est<-data.frame(Dat=rep("EST",nrow(move_df_est)),Year=rep(1:nyrs,each=na*nreg, times=nreg),Reg_from=rep(1:nreg,each=nyrs*nreg*na),Reg_to=rep(1:nreg,times=nyrs*nreg*na),
                                Age=rep(1:na,each=nreg,times=nyrs*nreg))
  
  movement.data<-rbind(movement.data.sim,movement.data.est)
  movement.data<-cbind(movement.data,rbind(move_df_sim,move_df_est))
  
  move.long<-melt(movement.data, id=c("Dat","Year","Reg_from","Reg_to","Age"))
  move.long$Reg_from<-as.character(move.long$Reg_from)
  move.long$Reg_to<-as.character(move.long$Reg_to)
  move.long$Age<-as.character(move.long$Age)
  
  #separate again for plotting
  move.est<-move.long[move.long$Dat=="EST",]
  move.sim<-move.long[move.long$Dat=="SIM",]
  
  #calculate the percent bias
  move.est$val.true<-move.sim$value
  move.est$bias=((move.est$value-move.est$val.true)/move.est$val.true)*100
  #move.est$bias=(move.est$val.true-move.est$value)
  
  
  #calc medians table
  move.est.med <- move.est %>% group_by(Reg_from,Reg_to,Age,Year) %>%
    summarise(med.est=round(median(value),digits=2),med.sim=round(median(val.true),digits=2), med.bias = round(median(bias),digits=2),
              MARE=round(median(abs(bias)),digits=2),
              mean.est=round(mean(value),digits=2),mean.sim=round(mean(val.true),digits=2), MRE = round(mean(bias),digits=2),
              max=round(max(bias),digits=2),min=round(min(bias),digits=2))
  
  move_sum_table_year_age<-c(get(paste0("nm_",z)),round(get(paste0("conv.rate_",z)),digits=2),
                             round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2'])),digits=2),
                             round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1'])),digits=2),
                             round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1'])),digits=2),
                             round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2'])),digits=2),
                             round(median(abs(move.est$bias)),digits=2),
                             round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2']),digits=2),
                             round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1']),digits=2),
                             round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1']),digits=2),
                             round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2']),digits=2),
                             round(mean(move.est$bias),digits=2)
  )
  names(move_sum_table_year_age)<-c("Run","Conv_Rate","MARE_YR+Age_Reg_1_Reg_2","MARE_YR+Age_Reg_2_Reg_1","MARE_YR+Age_Reg_1_Reg_1","MARE_YR+Age_Reg_2_Reg_2","MARE_YR+Reg+Age",
                                    "MRE_YR+Age_Reg_1_Reg_2","MRE_YR+Age_Reg_2_Reg_1","MRE_YR+Age_Reg_1_Reg_1","MRE_YR+Age_Reg_2_Reg_2","MRE_YR+Reg+Age"
  )
  
  move_sum_table_age<-c(get(paste0("nm_",z)),round(get(paste0("conv.rate_",z)),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='1'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='1'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='1'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='1'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Age=='1'])),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='1']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='1']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='1']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='1']),digits=2),
                        round(mean(move.est$bias[move.est$Age=='1']),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='2'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='2'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='2'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='2'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Age=='2'])),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='2']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='2']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='2']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='2']),digits=2),
                        round(mean(move.est$bias[move.est$Age=='2']),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='3'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='3'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='3'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='3'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Age=='3'])),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='3']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='3']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='3']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='3']),digits=2),
                        round(mean(move.est$bias[move.est$Age=='3']),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='4'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='4'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='4'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='4'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Age=='4'])),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='4']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='4']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='4']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='4']),digits=2),
                        round(mean(move.est$bias[move.est$Age=='4']),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='5'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='5'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='5'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='5'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Age=='5'])),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='5']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='5']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='5']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='5']),digits=2),
                        round(mean(move.est$bias[move.est$Age=='5']),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='6'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='6'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='6'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='6'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Age=='6'])),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='6']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='6']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='6']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='6']),digits=2),
                        round(mean(move.est$bias[move.est$Age=='6']),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='7'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='7'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='7'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='7'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Age=='7'])),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='7']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='7']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='7']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='7']),digits=2),
                        round(mean(move.est$bias[move.est$Age=='7']),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='8'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='8'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='8'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='8'])),digits=2),
                        round(median(abs(move.est$bias[move.est$Age=='8'])),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='2' & move.est$Age=='8']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='1' & move.est$Age=='8']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='1' & move.est$Reg_to=='1' & move.est$Age=='8']),digits=2),
                        round(mean(move.est$bias[move.est$Reg_from=='2' & move.est$Reg_to=='2' & move.est$Age=='8']),digits=2),
                        round(mean(move.est$bias[move.est$Age=='8']),digits=2)
  )
  names(move_sum_table_age)<-c("Run","Conv_Rate","MARE_Age_1_Reg_1_Reg_2","MARE_Age_1_Reg_2_Reg_1","MARE_Age_1_Reg_1_Reg_1","MARE_Age_1_Reg_2_Reg_2","MARE_YR+Reg_Age_1",
                               "MRE_Age_1_Reg_1_Reg_2","MRE_Age_1_Reg_2_Reg_1","MRE_Age_1_Reg_1_Reg_1","MRE_Age_1_Reg_2_Reg_2","MRE_YR+RegAge_1",
                               "MARE_Age_2_Reg_1_Reg_2","MARE_Age_2_Reg_2_Reg_1","MARE_Age_2_Reg_1_Reg_1","MARE_Age_2_Reg_2_Reg_2","MARE_YR+Reg_Age_2",
                               "MRE_Age_2_Reg_1_Reg_2","MRE_Age_2_Reg_2_Reg_1","MRE_Age_2_Reg_1_Reg_1","MRE_Age_2_Reg_2_Reg_2","MRE_YR+RegAge_2"
                               ,"MARE_Age_3_Reg_1_Reg_2","MARE_Age_3_Reg_2_Reg_1","MARE_Age_3_Reg_1_Reg_1","MARE_Age_3_Reg_2_Reg_2","MARE_YR+Reg_Age_3",
                               "MRE_Age_3_Reg_1_Reg_2","MRE_Age_3_Reg_2_Reg_1","MRE_Age_3_Reg_1_Reg_1","MRE_Age_3_Reg_2_Reg_2","MRE_YR+RegAge_3"
                               ,"MARE_Age_4_Reg_1_Reg_2","MARE_Age_4_Reg_2_Reg_1","MARE_Age_4_Reg_1_Reg_1","MARE_Age_4_Reg_2_Reg_2","MARE_YR+Reg_Age_4",
                               "MRE_Age_4_Reg_1_Reg_2","MRE_Age_4_Reg_2_Reg_1","MRE_Age_4_Reg_1_Reg_1","MRE_Age_4_Reg_2_Reg_2","MRE_YR+RegAge_4"
                               ,"MARE_Age_5_Reg_1_Reg_2","MARE_Age_5_Reg_2_Reg_1","MARE_Age_5_Reg_1_Reg_1","MARE_Age_5_Reg_2_Reg_2","MARE_YR+Reg_Age_5",
                               "MRE_Age_5_Reg_1_Reg_2","MRE_Age_5_Reg_2_Reg_1","MRE_Age_5_Reg_1_Reg_1","MRE_Age_5_Reg_2_Reg_2","MRE_YR+RegAge_5"
                               ,"MARE_Age_6_Reg_1_Reg_2","MARE_Age_6_Reg_2_Reg_1","MARE_Age_6_Reg_1_Reg_1","MARE_Age_6_Reg_2_Reg_2","MARE_YR+Reg_Age_6",
                               "MRE_Age_6_Reg_1_Reg_2","MRE_Age_6_Reg_2_Reg_1","MRE_Age_6_Reg_1_Reg_1","MRE_Age_6_Reg_2_Reg_2","MRE_YR+RegAge_6"
                               ,"MARE_Age_7_Reg_1_Reg_2","MARE_Age_7_Reg_2_Reg_1","MARE_Age_7_Reg_1_Reg_1","MARE_Age_7_Reg_2_Reg_2","MARE_YR+Reg_Age_7",
                               "MRE_Age_7_Reg_1_Reg_2","MRE_Age_7_Reg_2_Reg_1","MRE_Age_7_Reg_1_Reg_1","MRE_Age_7_Reg_2_Reg_2","MRE_YR+RegAge_7"
                               ,"MARE_Age_8_Reg_1_Reg_2","MARE_Age_8_Reg_2_Reg_1","MARE_Age_8_Reg_1_Reg_1","MARE_Age_8_Reg_2_Reg_2","MARE_YR+Reg_Age_8",
                               "MRE_Age_8_Reg_1_Reg_2","MRE_Age_8_Reg_2_Reg_1","MRE_Age_8_Reg_1_Reg_1","MRE_Age_8_Reg_2_Reg_2","MRE_YR+RegAge_8"
  )
  
  
  
  move.plot.gg<-ggplot(move.est, aes(x=as.factor(Year), y=value, col=Reg_to), group=Reg_to) +
    geom_violin(aes(fill=Reg_to),trim=T,bw='nrd0',position = position_dodge(width=0.8), alpha=0.2)+
    geom_line(data = move.est.med, aes(x=Year,y=med.est, group=Reg_to))+
    geom_point(data = move.est.med, aes(x=Year,y=med.est, group=Reg_to),position = position_dodge(width=0.8), fill=median.col, shape=21,size=2.0) + 
    geom_line(data = move.est.med, aes(x=Year,y=med.sim, group=Reg_to),lty=2)+
    geom_point(data = move.est.med, aes(x=Year,y=med.sim, group=Reg_to, fill=Reg_to),position = position_dodge(width=0.8),shape=21,size=1.0) + 
    scale_color_grey()+ #"Move To",palette = "Set1")+
    scale_fill_grey()+ #scale_fill_brewer("Move To",palette = "Set1")+
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  ylab("Movement Rate")+
    xlab("Year")+
    facet_grid(Reg_from~Age)+
    #ylim(-5,5)+
    my_theme
  
  move.name<-c('1'="Population 1 Movement")
  move.plot.gg.fig4<-ggplot(subset(move.est, Reg_from %in% '1'), aes(x=as.factor(Year), y=value, col=Reg_to), group=Reg_to) +
    geom_violin(aes(fill=Reg_to),trim=T,bw='nrd0',position = position_dodge(width=0.6), alpha=0.8,scale='width')+
    geom_point(data = subset(move.est.med, Reg_from %in% '1'), aes(x=Year,y=med.est, group=Reg_to),
               position = position_dodge(width=0.8), 
               fill='black',colour='black', shape=20,size=.75) + 
    geom_line(data = subset(move.est.med, Reg_from %in% '1'), aes(x=Year,y=med.sim, group=Reg_to),lty=1)+
    scale_color_manual(values=c("black", median.col))+
    scale_fill_manual(values=c("black", median.col))+
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    ylab('Proportion Moving')+
    xlab(NULL)+
    #facet_grid(.~Reg_from,labeller=as_labeller(move.name))+
    my_theme.fig4
  
  move.bias.gg<-ggplot(move.est, aes(x=as.factor(Year), y=bias, col=Reg_to), group=Reg_to) +
    geom_violin(aes(fill=Reg_to),trim=T,bw="nrd0",position = position_dodge(width=0.8), alpha=0.2)+
    geom_hline(aes(yintercept = 0, group = Reg_to), colour = 'black',size=0.5,lty=2)+
    geom_line(data = move.est.med, aes(x=Year,y=med.bias, group=Reg_to))+
    geom_point(data = move.est.med, aes(x=Year,y=med.bias,group=Reg_to),position = position_dodge(width=0.8), fill=median.col, shape=21,size=1.5) + 
    scale_color_grey()+ #"Move To",palette = "Set1")+
    scale_fill_grey()+ #scale_fill_brewer("Move To",palette = "Set1")+
    scale_x_discrete(breaks=seq(0,nyrs,5))+
    ggtitle(get(paste0("nm_",z)))+
    labs(subtitle=paste0("Convergence Rate = ", get(paste0("conv.rate_",z)),sep=""))+  ylab("Relative % Difference")+
    xlab("Year")+
    facet_grid(Reg_from~.)+
    ylim(-100,100)+
    my_theme
  
  
  
  assign(paste0("rave.plot.gg_",z),rave.plot.gg)
  assign(paste0("rave.bias.gg_",z),rave.bias.gg)
  assign(paste0("rave.est.med_",z),median_R_ave)
  assign(paste0("rave.est_",z),Rave_est)
  assign(paste0("rave.sum.table_",z),as.data.frame(t(rave_sum_table)))
  
  assign(paste0("rec.plot.gg_",z),rec.plot.gg)
  assign(paste0("rec.plot.gg.fig4_",z),rec.plot.gg.fig4)
  assign(paste0("rec.bias.gg_",z),rec.bias.gg)
  assign(paste0("rec.est.med_",z),rec.est.med)
  assign(paste0("rec.est_",z),rec.est)
  assign(paste0("rec.sum.table_",z),as.data.frame(t(rec_sum_table)))
  
  assign(paste0("bio.plot.gg_",z),bio.plot.gg)
  assign(paste0("bio.plot.gg.fig5a_",z),bio.plot.gg.fig5a)
  assign(paste0("bio.bias.gg_",z),bio.bias.gg)
  assign(paste0("bio.est.med_",z),bio.est.med)
  assign(paste0("bio.est_",z),bio.est)
  assign(paste0("bio.sum.table_",z),as.data.frame(t(bio_sum_table)))
  assign(paste0("bio.ts_",z),bio_ts)
  
  assign(paste0("fmax.plot.gg_",z),fmax.plot.gg)
  assign(paste0("fmax.plot.gg.fig4_",z),fmax.plot.gg.fig4)
  assign(paste0("fmax.plot.gg.fig5a_",z),fmax.plot.gg.fig5a)
  assign(paste0("fmax.bias.gg_",z),fmax.bias.gg)
  assign(paste0("fmax.est.med_",z),fmax.est.med)
  assign(paste0("fmax.est_",z),fmax.est)
  assign(paste0("fmax.sum.table_",z),as.data.frame(t(fmax_sum_table)))
  
  assign(paste0("move.plot.gg_",z),move.plot.gg)
  assign(paste0("move.plot.gg.fig4_",z),move.plot.gg.fig4)
  assign(paste0("move.bias.gg_",z),move.bias.gg)
  assign(paste0("move.est.med_",z),move.est.med)
  assign(paste0("move.est_",z),move.est)
  assign(paste0("move.sum.table.age_",z),as.data.frame(t(move_sum_table_age)))
  assign(paste0("move.sum.table.year.age_",z),as.data.frame(t(move_sum_table_year_age)))
  
  
  bio.table<-spread(bio.long, key = variable, value = value)
  rec.table<-spread(rec.long, key = variable, value = value)
  fmax.table<-spread(fmax.long, key = variable, value = value)
  move.table<-spread(move.long, key = variable, value = value)
  
  setwd(Figure_table_dir)
  
  write.csv(bio_ts,paste0("bio_ts_",z,".csv"))
  write.csv(bio.table,paste0("bio_table_",z,".csv"))
  write.csv(rec.table,paste0("rec_table_",z,".csv"))
  write.csv(fmax.table,paste0("fmax_table_",z,".csv"))
  write.csv(move.table,paste0("move_table_",z,".csv"))
  
}

#library(plyr) #need this for below calcs, but does piping issues with above calcs 
#(can't have it loaded when doing %>% statements)

setwd(Figure_table_dir)

rave.summary<-sapply(dir_num, function(i) list(get(paste0("rave.sum.table_",i))))
rave.summary<-rbindlist(rave.summary)
write.csv(rave.summary,"RAVE MARE and MRE.csv")

rec.summary<-sapply(dir_num, function(i) list(get(paste0("rec.sum.table_",i))))
rec.summary<-rbindlist(rec.summary)
write.csv(rec.summary,"Recruitment MARE and MRE.csv")

bio.summary<-sapply(dir_num, function(i) list(get(paste0("bio.sum.table_",i))))
bio.summary<-rbindlist(bio.summary)
write.csv(bio.summary,"Biomass MARE and MRE.csv")

fmax.summary<-sapply(dir_num, function(i) list(get(paste0("fmax.sum.table_",i))))
fmax.summary<-rbindlist(fmax.summary)
write.csv(fmax.summary,"Fishing Mortality MARE and MRE.csv")

move.summary.age<-sapply(dir_num, function(i) list(get(paste0("move.sum.table.age_",i))))
move.summary.age<-rbindlist(move.summary.age)
write.csv(move.summary.age,"Movement MARE and MRE by Age.csv")

move.summary.year.age<-sapply(dir_num, function(i) list(get(paste0("move.sum.table.year.age_",i))))
move.summary.year.age<-rbindlist(move.summary.year.age)
write.csv(move.summary.year.age,"Movement MARE and MRE Age+Year Combined.csv")

MARE.table<-(cbind(bio.summary[,c(1:2,9:11)],fmax.summary[,c(7:8)],rec.summary[,c(9:11)],move.summary.year.age[,c(3:4)]))
MRE.table<-(cbind(bio.summary[,c(1:2,19:21)],fmax.summary[,c(14:15)],rec.summary[,c(19:21)],move.summary.year.age[,c(8:9)]))
write.csv(MARE.table,"MARE.csv")
write.csv(MRE.table,"MRE.csv")

#################################################################################################
setwd(Figure_dir)


MARE.graph<-MARE.table[,-c(1:2)]
MRE.graph<-MRE.table[,-c(1:2)]
MARE.graph<-data.frame(sapply(MARE.graph, function(x) as.numeric(as.character(x))))
MRE.graph<-data.frame(sapply(MRE.graph, function(x) as.numeric(as.character(x))))


MRE.bio.graph<-sapply(dir_num, function(i) list(get(paste0("bio.est_",i))))
names(MRE.bio.graph)<-sapply(dir_num, function(i) get(paste0("nm_",i)))
MRE.bio.graph<-rbindlist(MRE.bio.graph,idcol=TRUE)
MRE.bio.graph$parameter<-'B'

MRE.rec.graph<-sapply(dir_num, function(i) list(get(paste0("rec.est_",i))))
names(MRE.rec.graph)<-sapply(dir_num, function(i) get(paste0("nm_",i)))
#MRE.rec.graph<-ldply(MRE.rec.graph,data.frame)
MRE.rec.graph<-rbindlist(MRE.rec.graph,idcol=TRUE)
MRE.rec.graph$parameter<-'R'

MRE.f.graph<-sapply(dir_num, function(i) list(get(paste0("fmax.est_",i))))
names(MRE.f.graph)<-sapply(dir_num, function(i) get(paste0("nm_",i)))
#MRE.f.graph<-ldply(MRE.f.graph,data.frame)
MRE.f.graph<-rbindlist(MRE.f.graph,idcol=TRUE)
MRE.f.graph$parameter<-'Z_F'

MRE.T.graph<-sapply(dir_num, function(i) list(get(paste0("move.est_",i))))
names(MRE.T.graph)<-sapply(dir_num, function(i) get(paste0("nm_",i)))
#MRE.T.graph<-ldply(MRE.T.graph,data.frame)
MRE.T.graph<-rbindlist(MRE.T.graph,idcol=TRUE)

MRE.T.graph$parameter<-'Z_T'
MRE.T.graph<-MRE.T.graph[-which(MRE.T.graph$Reg_from==MRE.T.graph$Reg_to),]
MRE.T.graph<-MRE.T.graph[,-5]
MRE.T.graph<-dplyr::rename(MRE.T.graph,"Reg"="Reg_from")
MRE.T.graph<-dplyr::rename(MRE.T.graph,"Years"="Year")
MRE.T.graph<-MRE.T.graph[,c(1:3,5:6,4,7:9)]

region.names<-c('1'="Population 1", '2'="Population 2",'System'="Metapopulation",'B'="Biomass",
                'Z_F'="Fishing Mortality",'R'="Recruitment",'Z_T'="Movement")


########################################################################################################
########################################################################################################
########################################################################################################


my_theme.hor<-
  (#theme_bw()+
    theme(
      #panel.grid.major = element_blank(), 
      #panel.grid.minor = element_blank(),
      axis.text.x = element_text(colour="grey20",size=7,angle=50,hjust=1,vjust=1,face="plain"),
      axis.text.y = element_text(colour="grey20",size=7,angle=0,hjust=.5,vjust=0.3,face="plain"),
      axis.title.x = element_text(size=9),
      axis.title.y = element_text(size=9),
      #strip.text.y = element_text(angle = 180),
      plot.title=element_text(hjust=0.5,size=10),
      plot.subtitle=element_text(hjust=0.5,size=8)
    ))

my_theme.ver<-
  (#theme_bw()+
    theme(
      #panel.grid.major = element_blank(), 
      #panel.grid.minor = element_blank(),
      axis.text.x = element_text(colour="grey20",size=7,angle=50,hjust=1,vjust=1,face="plain"),
      axis.text.y = element_text(colour="grey20",size=7,angle=0,hjust=1,vjust=0.3,face="plain"),
      axis.title.x = element_text(size=9),
      axis.title.y = element_text(size=9),
      #strip.text.y = element_text(angle = 180),
      plot.title=element_text(hjust=0.5,size=10),
      plot.subtitle=element_text(hjust=0.5,size=8)
    ))

my_theme.ver.alt<-
  (#theme_bw()+
    theme(
      #panel.grid.major = element_blank(), 
      #panel.grid.minor = element_blank(),
      axis.text.x = element_text(colour="grey20",size=8,angle=0,hjust=0.45,vjust=1,face="plain"),
      axis.text.y = element_text(colour="grey20",size=8,angle=0,hjust=1,vjust=0.3,face="plain"),
      axis.title.x = element_text(size=9),
      axis.title.y = element_text(size=9),
      #strip.text.y = element_text(angle = 180),
      plot.title=element_text(hjust=0.5,size=10),
      plot.subtitle=element_text(hjust=0.5,size=8),
      strip.text.x = element_text(
        size = 10, color = "black", face = "bold"),
      strip.text.y = element_text(
        size = 10, color = "black", face = "italic"),
      strip.background = element_rect(
        fill="grey80" )
    ))
#if(any(grepl("package:plyr", search()))) detach("package:plyr") else message("plyr not loaded")

########################################################################################################
####### FINAL VIOLIN PLOTS MANUSCRIPT #################################################################################################
########################################################################################################
names.keep<-c(sapply(runs.to.include, function(i) get(paste0("nm_",i))))
MRE.bio.graph2<-MRE.bio.graph[MRE.bio.graph$.id %in% names.keep,]
MRE.f.graph2<-MRE.f.graph[MRE.f.graph$.id %in% names.keep,]
MRE.rec.graph2<-MRE.rec.graph[MRE.rec.graph$.id %in% names.keep,]
MRE.T.graph2<-MRE.T.graph[MRE.T.graph$.id %in% names.keep,]
MRE.T.graph2$Reg[which(MRE.T.graph2$Reg=="1")]<-"Population 1"
MRE.T.graph2$Reg[which(MRE.T.graph2$Reg=="2")]<-"Population 2"

MRE.graph.final<-rbind.data.frame(MRE.bio.graph2,MRE.rec.graph2,MRE.f.graph2) #,MRE.T.graph2)
MRE.graph.final<-MRE.graph.final[-which(MRE.graph.final$Reg=='System'),]

MRE.bio.graph.term<-MRE.bio.graph2[MRE.bio.graph2$Years ==nyrs,]
MRE.f.graph.term<-MRE.f.graph2[MRE.f.graph2$Years ==nyrs,]
MRE.rec.graph.term<-MRE.rec.graph2[MRE.rec.graph2$Years ==nyrs,]
MRE.T.graph.term<-MRE.T.graph2[MRE.T.graph2$Years ==nyrs,]

MRE.graph.final.term<-rbind.data.frame(MRE.bio.graph.term,MRE.rec.graph.term,MRE.f.graph.term) #,MRE.T.graph.term)
MRE.graph.final.term<-MRE.graph.final.term[-which(MRE.graph.final.term$Reg=='System'),]

MRE.graph.final$.id<-ordered(MRE.graph.final$.id,levels=names.keep)
MRE.graph.final.term$.id<-ordered(MRE.graph.final.term$.id,levels=names.keep)

MRE.T.graph2$.id<-ordered(MRE.T.graph2$.id,levels=names.keep)
MRE.T.graph.term$.id<-ordered(MRE.T.graph.term$.id,levels=names.keep)


##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
########### Fig 1 Timeseries of True Pop Parameters ###############################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################

my_theme.K<-
  (theme_bw()+
     theme(
       panel.grid.major = element_blank(), 
       panel.grid.minor = element_blank(),
       axis.text.x = element_text(colour="grey20",size=8,angle=0,hjust=.5,vjust=0,face="plain"),
       strip.background=element_rect(fill="grey95"),
       strip.text.x=element_text(size=rel(1),face="bold"),
       strip.text.y=element_text(size=rel(1), angle=-90,face="bold"),
       #legend.position="top"
     ))


names.keep.fig1<-c("CLM_YR","ONT_AGE","C+O_2YR_1AG","RND_2YR_1AG")
MRE.graph2.fig1.1<-MRE.graph.final[MRE.graph.final$.id %in% names.keep.fig1,]
MRE.graph2.fig1<-MRE.graph2.fig1.1[MRE.graph2.fig1.1$variable %in% '1',]
MRE.graph2.fig1$.id<-factor(MRE.graph2.fig1$.id,levels=c("RND_2YR_1AG","ONT_AGE","CLM_YR","C+O_2YR_1AG"))
levels(MRE.graph2.fig1$.id)[levels(MRE.graph2.fig1$.id)=="RND_2YR_1AG"] <- "Random"
levels(MRE.graph2.fig1$.id)[levels(MRE.graph2.fig1$.id)=="ONT_AGE"] <- "Ontogenetic"
levels(MRE.graph2.fig1$.id)[levels(MRE.graph2.fig1$.id)=="CLM_YR"] <- "Climate"
levels(MRE.graph2.fig1$.id)[levels(MRE.graph2.fig1$.id)=="C+O_2YR_1AG"] <- "Climate+Ontogenetic"
names(MRE.graph2.fig1)[names(MRE.graph2.fig1)==".id"]  <- "Movement"
region.names5<-c('1'="Population 1", '2'="Population 2",'System'="Metapopulation",'B'="Biomass (mt)",
                'Z_F'="Fishing Mortality" ,'R'="Recruitment (1000s Fish)",'Z_T'="Movement")

#create bias plot
true.ts<- ggplot(MRE.graph2.fig1, aes(x=as.factor(Years), y=val.true,group=Movement)) +    #med.bias
  geom_line(aes(x=as.factor(Years), y=val.true, linetype=Movement,color=Movement),lwd=1.)+
  scale_x_discrete(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("")+
  xlab("Year")+
  facet_grid(parameter~Reg,scales= "free",labeller= as_labeller(region.names5))+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K+
  scale_color_grey()+
  scale_linetype_manual(values=c(4,5,6,1))+
  guides(linetype = guide_legend(override.aes = list(size = .5)))
  


tiff("Fig 1_Timeseries True Values.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(true.ts)
dev.off()





##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
########### Fig 2 Timeseries of Movement Parameters ###############################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################


MRE.graph2.fig2.1<-MRE.T.graph2[MRE.T.graph2$.id %in% names.keep.fig1,]
MRE.graph2.fig2<-MRE.graph2.fig2.1[MRE.graph2.fig2.1$variable %in% '1',]
MRE.graph2.fig2$.id<-factor(MRE.graph2.fig2$.id,levels=c("RND_2YR_1AG","ONT_AGE","CLM_YR","C+O_2YR_1AG"))
levels(MRE.graph2.fig2$.id)[levels(MRE.graph2.fig2$.id)=="RND_2YR_1AG"] <- "Random"
levels(MRE.graph2.fig2$.id)[levels(MRE.graph2.fig2$.id)=="ONT_AGE"] <- "Ontogenetic"
levels(MRE.graph2.fig2$.id)[levels(MRE.graph2.fig2$.id)=="CLM_YR"] <- "Climate"
levels(MRE.graph2.fig2$.id)[levels(MRE.graph2.fig2$.id)=="C+O_2YR_1AG"] <- "Climate+Ontogenetic"
names(MRE.graph2.fig2)[names(MRE.graph2.fig2)==".id"]  <- "Movement"
region.names5<-c('1'="Population 1", '2'="Population 2",'System'="Metapopulation",'B'="Biomass (mt)",
                 'Z_F'="Fishing Mortality" ,'R'="Recruitment (1000s Fish)",'Z_T'="Movement")



age.names<-c('1'="Age-1", '2'="Age-2",'3'="Age-3", '4'="Age-4",'5'="Age-5", '6'="Age-6",'7'="Age-7", '8'="Age-8",'Population 1'="Emigration from Population 1",'Population 2'="Emigration from Population 2")


true.ts1<- ggplot(MRE.graph2.fig2, aes(x=as.factor(Years), y=val.true,group=Movement)) +    #med.bias
  geom_line(aes(x=as.factor(Years), y=val.true, linetype=Movement,color=Movement),lwd=1.)+
  scale_x_discrete(breaks=seq(0,nyrs,10))+
  ggtitle(" ")+
  ylab("")+
  xlab("Year")+
  facet_grid(Reg~Age,labeller= as_labeller(age.names))+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K+
  scale_color_grey()+
  scale_linetype_manual(values=c(4,5,6,1))+
  guides(linetype = guide_legend(override.aes = list(size = .5)))



tiff("Fig 2_Timeseries True Movement.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(true.ts1)
dev.off()


##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################


#############################################
MRE.graph.final2<-MRE.graph.final %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

lab<-data.frame(xpos= c(1.5,7.5,15.,19.5), ypos = c(115,115,115,115), lab1 = c("Climate+Ontogenetic","Ontogenetic","Climate", 
                                                                               "Random"),parameter='B',reg='1')

sinlge.plot<-ggplot(MRE.graph.final2, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=1,lty=2)+
  geom_vline(xintercept=6.5, colour = 'black',size=1,lty=2)+
  geom_vline(xintercept=12.5, colour = 'black',size=1,lty=2)+
  geom_vline(xintercept=18.5, colour = 'black',size=1,lty=2)+
  #geom_vline(xintercept=2.5, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6, scale="width")+ 
  geom_boxplot(width=.35,outlier.shape=NA,coef=0)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  geom_label(data=lab,mapping = aes(x = xpos, y = ypos, label = lab1),fontface = "bold", 
            label.padding =unit(0.23, "lines"),size=3.) +    facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ 
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final$.id))))+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("Fig 3_Bias Plots All Years Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Aggregate Bias Across Years",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot)
dev.off()
#############################################

#############################################
MRE.graph.final.term<-MRE.graph.final.term %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 
lab2<-data.frame(xpos= c(1.5,7.5,14.75,19.5), ypos = c(140,140,140,140), lab3 = c("Climate+Ontogenetic","Ontogenetic","Climate",  "Random"),parameter='B',reg='1')

                                                                               
sinlge.plot.term<-ggplot(MRE.graph.final.term, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=0.5,lty=2)+
  geom_vline(xintercept=6.5, colour = 'black',size=1,lty=2)+
  geom_vline(xintercept=12.5, colour = 'black',size=1,lty=2)+
  geom_vline(xintercept=18.5, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6,scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  geom_label(data=lab2,mapping = aes(x = xpos, y = ypos, label = lab3),fontface = "bold", 
             label.padding =unit(0.23, "lines"),size=3.) +    facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ 
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.term$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("Fig 4_Bias Plots Terminal Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Terminal Year Bias",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.term)
dev.off()




#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#######Timeseries Plots######################################





#############################################
########################################################################################################
########################################################################################################
######## Movement Bias by Age ################################################################################################
########################################################################################################
#############################

#############################################
MRE.T.graph2<-MRE.T.graph2 %>% group_by(Reg,.id,Age) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

age.names<-c('1'="Age-1", '2'="Age-2",'3'="Age-3", '4'="Age-4",'5'="Age-5", '6'="Age-6",'7'="Age-7", '8'="Age-8",'Population 1'="Population 1",'Population 2'="Population 2")

sinlge.plot.age.T<-ggplot(MRE.T.graph2, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6, scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA,coef=0)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~Age,scales="free_x",labeller= as_labeller(age.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.T.graph2$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("Fig 6_Bias Plots Movement by Age All Years Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Aggregate Bias Across Years",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.age.T)
dev.off()
#############################################

#############################################
MRE.T.graph.term<-MRE.T.graph.term %>% group_by(Reg,.id, Age) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.age.T.term<-ggplot(MRE.T.graph.term, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6, scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA,coef=0)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~Age,scales="free_x",labeller= as_labeller(age.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.T.graph.term$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("Fig 7_Bias Plots Movement by Age Terminal Year Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Terminal Year Bias",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.age.T.term)
dev.off()










#############################################
########################################################################################################
########################################################################################################
######## Figure 5 Timeseries for Various Tag Timeseries################################################################################################
########################################################################################################
########################################################################################################

my_theme.K<-
  (theme_bw()+
     theme(
       panel.grid.major = element_blank(), 
       panel.grid.minor = element_blank(),
       axis.text.x = element_text(colour="grey20",size=8,angle=0,hjust=.5,vjust=0,face="plain"),
       strip.background=element_rect(fill="grey95"),
       strip.text.x=element_text(size=rel(1),face="bold"),
       strip.text.y=element_text(size=rel(1), angle=-90,face="bold") 
     ))


runs.to.include.ts<-c(22,126,75,111)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("RND_2YR_1AG","ONT_AGE","CLM_YR","C+O_2YR_1AG"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_Timeseries Bio Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()





runs.to.include.ts<-c(116,133,132,135,126,134)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("RND_NO_T","RND_CNST","RND_AGE","RND_YR","RND_2YR_1AG","RND_YR+AG"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries Random.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()





runs.to.include.ts<-c(59,72,71,75,68,73,193)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("CLM_NO_T","CLM_CNST","CLM_AGE","CLM_YR","CLM_YR_TAG_YR",
                                                               "CLM_2YR_1AG","CLM_YR+AG"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries Climate.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()






runs.to.include.ts<-c(10,23,22,25,20,24)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("ONT_NO_T","ONT_CNST","ONT_AGE","ONT_YR","ONT_2YR_1AG","ONT_YR+AG"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries Onto.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()




runs.to.include.ts<-c(31,38,14,22,47,54)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("ONT_AGE_NO_TAG_SL","ONT_AGE_SL",
                                                               "ONT_AGE_NO_TAG","ONT_AGE",
                                                               "ONT_AGE_NO_TAG_LL","ONT_AGE_LL"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries LIFE HISTORY Onto.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()



runs.to.include.ts<-c(109,113,112,114,111,187)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("C+O_NO_T","C+O_CNST","C+O_AGE","C+O_YR","C+O_2YR_1AG","C+O_YR+AG"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries Onto+Clim.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()



runs.to.include.ts<-c(197,111,196,192,187,115)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("C+O_2YR_1AG_NO_TAG","C+O_2YR_1AG","C+O_2YR_1AG_Tag_YR",
                                                               "C+O_YR+AG_NO_TAG","C+O_YR+AG","C+O_YR+AG_TAGS_YR"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries Onto+Clim YRLY TAG.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()



runs.to.include.ts<-c(75,193,111,196,187,115)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("CLM_YR","CLM_YR_TAG_YR","C+O_2YR_1AG","C+O_2YR_1AG_Tag_YR",
                                                               "C+O_YR+AG","C+O_YR+AG_TAGS_YR"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries YRLY TAG.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()



runs.to.include.ts<-c(68,111,20,126)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("RND_2YR_1AG","ONT_2YR_1AG","CLM_2YR_1AG","C+O_2YR_1AG"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries 2YR_1AG.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()


runs.to.include.ts<-c(116,10,109,59)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("RND_NO_T","ONT_NO_T","CLM_NO_T","C+O_NO_T"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries No T.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()





runs.to.include.ts<-c(118,14,66,126,75,22,197,111)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("RND_2YR_1AG_NO_TAG","RND_2YR_1AG",
                                                               "ONT_AGE_NO_TAG","ONT_AGE",
                                                               "CLM_YR_NO_TAG", "CLM_YR",
                                                               "C+O_2YR_1AG_NO_TAG","C+O_2YR_1AG"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries No Tags.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()




runs.to.include.ts<-c(7:9,186)
bio.med.bias<-sapply(dir_num, function(i) list(get(paste0("bio.ts_",i))))
bio.med.bias<-rbindlist(bio.med.bias)
names.keep.ts<-c(sapply(runs.to.include.ts, function(i) get(paste0("nm_",i))))
bio.med.bias2<-bio.med.bias[bio.med.bias$Scenario %in% names.keep.ts,]
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="1")]<-"Population 1"
bio.med.bias2$Reg[which(bio.med.bias2$Reg=="2")]<-"Population 2"
bio.med.bias2$Scenario<-factor(bio.med.bias2$Scenario,levels=c("RND_FIX_T",
                                                               "ONT_FIX_T",
                                                               "CLM_FIX_T",
                                                               "C+O_FIX_T"))

#create bias plot
sp.bias.gg<-ggplot(bio.med.bias2, aes(x=as.factor(Years), y=med.bias)) +    #med.bias
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=min,ymax=max), fill="grey90")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low,ymax=quant_up), fill="grey75")+
  geom_ribbon(data=bio.med.bias2, aes(x=Years,ymin=quant_low_med,ymax=quant_up_med), fill="grey50")+
  ########geom_point(data = pan.est, aes(x=Years,y=bias), fill="black", shape=21,size=0.5) +
  geom_hline(aes(yintercept = 0, group=Reg), colour = 'red',size=0.5,lty=2)+
  #######geom_line(data = sp_median_bias, aes(x=Years,y=med.bias),lty=1, lwd=0.5) + 
  ########geom_violin(data=pan.est,aes(x=as.factor(Years), y=bias),fill=vio.col,trim=T,draw_quantiles = c(0.25, 0.5, 0.75))+
  geom_point(data = bio.med.bias2, aes(x=Years,y=med.bias), fill="white", shape=21,size=1.5) +
  scale_x_continuous(breaks=seq(0,nyrs,5))+
  ggtitle(" ")+
  ylab("Relative % Difference")+
  xlab("Year")+
  facet_grid(Reg~Scenario,scales= "free")+ #,labeller= as_labeller(region.names.ts))+
  my_theme.K
#scale_fill_manual(values=c("grey90", "grey75", "grey50"), 
#                 name="Quantiles",
#                labels=c("Maximum", "95%", "75%"))

tiff("Fig 5_alt_Timeseries FIX T.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
print(sp.bias.gg)
dev.off()
###################################################################################################
########################################################################################################
######## SM Figures ################################################################################################
################################################################################################################################################################################################################
########################################################################################################
########################################################################################################
######### Self Consistency ###############################################################################################
########################################################################################################
########################################################################################################

runs.to.include.alt1<-c(1:6,184:185,190:191,7:9,186)  # the numbers corresponding to the runs to include in the MRE summary plots

names.keep.alt1<-c(sapply(runs.to.include.alt1, function(i) get(paste0("nm_",i))))
MRE.bio.graph2.alt1<-MRE.bio.graph[MRE.bio.graph$.id %in% names.keep.alt1,]
MRE.f.graph2.alt1<-MRE.f.graph[MRE.f.graph$.id %in% names.keep.alt1,]
MRE.rec.graph2.alt1<-MRE.rec.graph[MRE.rec.graph$.id %in% names.keep.alt1,]
MRE.T.graph2.alt1<-MRE.T.graph[MRE.T.graph$.id %in% names.keep.alt1,]

MRE.graph.final.alt1<-rbind.data.frame(MRE.bio.graph2.alt1,MRE.rec.graph2.alt1,MRE.f.graph2.alt1) #,MRE.T.graph2.alt1)
MRE.graph.final.alt1<-MRE.graph.final.alt1[-which(MRE.graph.final.alt1$Reg=='System'),]

MRE.bio.graph.term.alt1<-MRE.bio.graph2.alt1[MRE.bio.graph2.alt1$Years ==nyrs,]
MRE.f.graph.term.alt1<-MRE.f.graph2.alt1[MRE.f.graph2.alt1$Years ==nyrs,]
MRE.rec.graph.term.alt1<-MRE.rec.graph2.alt1[MRE.rec.graph2.alt1$Years ==nyrs,]
MRE.T.graph.term.alt1<-MRE.T.graph2.alt1[MRE.T.graph2.alt1$Years ==nyrs,]

MRE.graph.final.term.alt1<-rbind.data.frame(MRE.bio.graph.term.alt1,MRE.rec.graph.term.alt1,MRE.f.graph.term.alt1) #,MRE.T.graph.term.alt1)
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1[-which(MRE.graph.final.term.alt1$Reg=='System'),]

MRE.graph.final.alt1$.id<-ordered(MRE.graph.final.alt1$.id,levels=names.keep.alt1)
MRE.graph.final.term.alt1$.id<-ordered(MRE.graph.final.term.alt1$.id,levels=names.keep.alt1)

#############################################
MRE.graph.final.alt1<-MRE.graph.final.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.alt1<-ggplot(MRE.graph.final.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6, scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA,coef=0)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_1_Self Consistency Bias Plots All Years Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Aggregate Bias Across Years",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.alt1)
dev.off()
#############################################

#############################################
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.term.alt1<-ggplot(MRE.graph.final.term.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=0.5,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6,scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.term.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_2_Self Consistency Bias Plots Terminal Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Terminal Year Bias",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.term.alt1)
dev.off()
#############################################




########################################################################################################
########################################################################################################
######### Onto ###############################################################################################
########################################################################################################
########################################################################################################

runs.to.include.alt1<-c(10:18,189,19:24,188,25:26)  # the numbers corresponding to the runs to include in the MRE summary plots

names.keep.alt1<-c(sapply(runs.to.include.alt1, function(i) get(paste0("nm_",i))))
MRE.bio.graph2.alt1<-MRE.bio.graph[MRE.bio.graph$.id %in% names.keep.alt1,]
MRE.f.graph2.alt1<-MRE.f.graph[MRE.f.graph$.id %in% names.keep.alt1,]
MRE.rec.graph2.alt1<-MRE.rec.graph[MRE.rec.graph$.id %in% names.keep.alt1,]
MRE.T.graph2.alt1<-MRE.T.graph[MRE.T.graph$.id %in% names.keep.alt1,]

MRE.graph.final.alt1<-rbind.data.frame(MRE.bio.graph2.alt1,MRE.rec.graph2.alt1,MRE.f.graph2.alt1) #,MRE.T.graph2.alt1)
MRE.graph.final.alt1<-MRE.graph.final.alt1[-which(MRE.graph.final.alt1$Reg=='System'),]

MRE.bio.graph.term.alt1<-MRE.bio.graph2.alt1[MRE.bio.graph2.alt1$Years ==nyrs,]
MRE.f.graph.term.alt1<-MRE.f.graph2.alt1[MRE.f.graph2.alt1$Years ==nyrs,]
MRE.rec.graph.term.alt1<-MRE.rec.graph2.alt1[MRE.rec.graph2.alt1$Years ==nyrs,]
MRE.T.graph.term.alt1<-MRE.T.graph2.alt1[MRE.T.graph2.alt1$Years ==nyrs,]

MRE.graph.final.term.alt1<-rbind.data.frame(MRE.bio.graph.term.alt1,MRE.rec.graph.term.alt1,MRE.f.graph.term.alt1) #,MRE.T.graph.term.alt1)
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1[-which(MRE.graph.final.term.alt1$Reg=='System'),]

MRE.graph.final.alt1$.id<-ordered(MRE.graph.final.alt1$.id,levels=names.keep.alt1)
MRE.graph.final.term.alt1$.id<-ordered(MRE.graph.final.term.alt1$.id,levels=names.keep.alt1)

#############################################
MRE.graph.final.alt1<-MRE.graph.final.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.alt1<-ggplot(MRE.graph.final.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6, scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA,coef=0)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_3_Ontogenetic T Bias Plots All Years Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Aggregate Bias Across Years",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.alt1)
dev.off()
#############################################

#############################################
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.term.alt1<-ggplot(MRE.graph.final.term.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=0.5,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6,scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.term.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_4_Ontogenetic T Bias Plots Terminal Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Terminal Year Bias",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.term.alt1)
dev.off()
#############################################







########################################################################################################
########################################################################################################
######### Climate ###############################################################################################
########################################################################################################
########################################################################################################

runs.to.include.alt1<-c(59:76)  # the numbers corresponding to the runs to include in the MRE summary plots

names.keep.alt1<-c(sapply(runs.to.include.alt1, function(i) get(paste0("nm_",i))))
MRE.bio.graph2.alt1<-MRE.bio.graph[MRE.bio.graph$.id %in% names.keep.alt1,]
MRE.f.graph2.alt1<-MRE.f.graph[MRE.f.graph$.id %in% names.keep.alt1,]
MRE.rec.graph2.alt1<-MRE.rec.graph[MRE.rec.graph$.id %in% names.keep.alt1,]
MRE.T.graph2.alt1<-MRE.T.graph[MRE.T.graph$.id %in% names.keep.alt1,]

MRE.graph.final.alt1<-rbind.data.frame(MRE.bio.graph2.alt1,MRE.rec.graph2.alt1,MRE.f.graph2.alt1) #,MRE.T.graph2.alt1)
MRE.graph.final.alt1<-MRE.graph.final.alt1[-which(MRE.graph.final.alt1$Reg=='System'),]

MRE.bio.graph.term.alt1<-MRE.bio.graph2.alt1[MRE.bio.graph2.alt1$Years ==nyrs,]
MRE.f.graph.term.alt1<-MRE.f.graph2.alt1[MRE.f.graph2.alt1$Years ==nyrs,]
MRE.rec.graph.term.alt1<-MRE.rec.graph2.alt1[MRE.rec.graph2.alt1$Years ==nyrs,]
MRE.T.graph.term.alt1<-MRE.T.graph2.alt1[MRE.T.graph2.alt1$Years ==nyrs,]

MRE.graph.final.term.alt1<-rbind.data.frame(MRE.bio.graph.term.alt1,MRE.rec.graph.term.alt1,MRE.f.graph.term.alt1) #,MRE.T.graph.term.alt1)
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1[-which(MRE.graph.final.term.alt1$Reg=='System'),]

MRE.graph.final.alt1$.id<-ordered(MRE.graph.final.alt1$.id,levels=names.keep.alt1)
MRE.graph.final.term.alt1$.id<-ordered(MRE.graph.final.term.alt1$.id,levels=names.keep.alt1)

#############################################
MRE.graph.final.alt1<-MRE.graph.final.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.alt1<-ggplot(MRE.graph.final.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6, scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA,coef=0)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_5_Climate T Bias Plots All Years Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Aggregate Bias Across Years",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.alt1)
dev.off()
#############################################

#############################################
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.term.alt1<-ggplot(MRE.graph.final.term.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=0.5,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6,scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.term.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_6_Climate T Bias Plots Terminal Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Terminal Year Bias",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.term.alt1)
dev.off()
#############################################








########################################################################################################
########################################################################################################
######### All ###############################################################################################
########################################################################################################
########################################################################################################

runs.to.include.alt1<-c(116,10,59,109,133,23,72,113,132,22,71,112,135,25,75,114,124,18,67,110,126,20,68,111,134,24,73,187,136,26,76,115)  # the numbers corresponding to the runs to include in the MRE summary plots

names.keep.alt1<-c(sapply(runs.to.include.alt1, function(i) get(paste0("nm_",i))))
MRE.bio.graph2.alt1<-MRE.bio.graph[MRE.bio.graph$.id %in% names.keep.alt1,]
MRE.f.graph2.alt1<-MRE.f.graph[MRE.f.graph$.id %in% names.keep.alt1,]
MRE.rec.graph2.alt1<-MRE.rec.graph[MRE.rec.graph$.id %in% names.keep.alt1,]
MRE.T.graph2.alt1<-MRE.T.graph[MRE.T.graph$.id %in% names.keep.alt1,]

MRE.graph.final.alt1<-rbind.data.frame(MRE.bio.graph2.alt1,MRE.rec.graph2.alt1,MRE.f.graph2.alt1) #,MRE.T.graph2.alt1)
MRE.graph.final.alt1<-MRE.graph.final.alt1[-which(MRE.graph.final.alt1$Reg=='System'),]

MRE.bio.graph.term.alt1<-MRE.bio.graph2.alt1[MRE.bio.graph2.alt1$Years ==nyrs,]
MRE.f.graph.term.alt1<-MRE.f.graph2.alt1[MRE.f.graph2.alt1$Years ==nyrs,]
MRE.rec.graph.term.alt1<-MRE.rec.graph2.alt1[MRE.rec.graph2.alt1$Years ==nyrs,]
MRE.T.graph.term.alt1<-MRE.T.graph2.alt1[MRE.T.graph2.alt1$Years ==nyrs,]

MRE.graph.final.term.alt1<-rbind.data.frame(MRE.bio.graph.term.alt1,MRE.rec.graph.term.alt1,MRE.f.graph.term.alt1) #,MRE.T.graph.term.alt1)
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1[-which(MRE.graph.final.term.alt1$Reg=='System'),]

MRE.graph.final.alt1$.id<-ordered(MRE.graph.final.alt1$.id,levels=names.keep.alt1)
MRE.graph.final.term.alt1$.id<-ordered(MRE.graph.final.term.alt1$.id,levels=names.keep.alt1)

#############################################
MRE.graph.final.alt1<-MRE.graph.final.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.alt1<-ggplot(MRE.graph.final.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6, scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA,coef=0)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_7_Climate+Onto T Bias Plots All Years Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Aggregate Bias Across Years",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.alt1)
dev.off()
#############################################

#############################################
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.term.alt1<-ggplot(MRE.graph.final.term.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=0.5,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6,scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.term.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_8_Climate+Onto T Bias Plots Terminal Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Terminal Year Bias",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.term.alt1)
dev.off()
#############################################




########################################################################################################
########################################################################################################
######### Random T ###############################################################################################
########################################################################################################
########################################################################################################

runs.to.include.alt1<-c(116:124,179,125:136)  # the numbers corresponding to the runs to include in the MRE summary plots

names.keep.alt1<-c(sapply(runs.to.include.alt1, function(i) get(paste0("nm_",i))))
MRE.bio.graph2.alt1<-MRE.bio.graph[MRE.bio.graph$.id %in% names.keep.alt1,]
MRE.f.graph2.alt1<-MRE.f.graph[MRE.f.graph$.id %in% names.keep.alt1,]
MRE.rec.graph2.alt1<-MRE.rec.graph[MRE.rec.graph$.id %in% names.keep.alt1,]
MRE.T.graph2.alt1<-MRE.T.graph[MRE.T.graph$.id %in% names.keep.alt1,]

MRE.graph.final.alt1<-rbind.data.frame(MRE.bio.graph2.alt1,MRE.rec.graph2.alt1,MRE.f.graph2.alt1) #,MRE.T.graph2.alt1)
MRE.graph.final.alt1<-MRE.graph.final.alt1[-which(MRE.graph.final.alt1$Reg=='System'),]

MRE.bio.graph.term.alt1<-MRE.bio.graph2.alt1[MRE.bio.graph2.alt1$Years ==nyrs,]
MRE.f.graph.term.alt1<-MRE.f.graph2.alt1[MRE.f.graph2.alt1$Years ==nyrs,]
MRE.rec.graph.term.alt1<-MRE.rec.graph2.alt1[MRE.rec.graph2.alt1$Years ==nyrs,]
MRE.T.graph.term.alt1<-MRE.T.graph2.alt1[MRE.T.graph2.alt1$Years ==nyrs,]

MRE.graph.final.term.alt1<-rbind.data.frame(MRE.bio.graph.term.alt1,MRE.rec.graph.term.alt1,MRE.f.graph.term.alt1) #,MRE.T.graph.term.alt1)
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1[-which(MRE.graph.final.term.alt1$Reg=='System'),]

MRE.graph.final.alt1$.id<-ordered(MRE.graph.final.alt1$.id,levels=names.keep.alt1)
MRE.graph.final.term.alt1$.id<-ordered(MRE.graph.final.term.alt1$.id,levels=names.keep.alt1)

#############################################
MRE.graph.final.alt1<-MRE.graph.final.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.alt1<-ggplot(MRE.graph.final.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6, scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA,coef=0)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_9_Random T Bias Plots All Years Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Aggregate Bias Across Years",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.alt1)
dev.off()
#############################################

#############################################
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.term.alt1<-ggplot(MRE.graph.final.term.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=0.5,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6,scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.term.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_10_Random T Bias Plots Terminal Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Terminal Year Bias",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.term.alt1)
dev.off()
#############################################






########################################################################################################
########################################################################################################
######### Random T Sensitivity ###############################################################################################
########################################################################################################
########################################################################################################

runs.to.include.alt1<-c(116,118,122,124,126,132:136,169:177,179:183)  # the numbers corresponding to the runs to include in the MRE summary plots

names.keep.alt1<-c(sapply(runs.to.include.alt1, function(i) get(paste0("nm_",i))))
MRE.bio.graph2.alt1<-MRE.bio.graph[MRE.bio.graph$.id %in% names.keep.alt1,]
MRE.f.graph2.alt1<-MRE.f.graph[MRE.f.graph$.id %in% names.keep.alt1,]
MRE.rec.graph2.alt1<-MRE.rec.graph[MRE.rec.graph$.id %in% names.keep.alt1,]
MRE.T.graph2.alt1<-MRE.T.graph[MRE.T.graph$.id %in% names.keep.alt1,]

MRE.graph.final.alt1<-rbind.data.frame(MRE.bio.graph2.alt1,MRE.rec.graph2.alt1,MRE.f.graph2.alt1) #,MRE.T.graph2.alt1)
MRE.graph.final.alt1<-MRE.graph.final.alt1[-which(MRE.graph.final.alt1$Reg=='System'),]

MRE.bio.graph.term.alt1<-MRE.bio.graph2.alt1[MRE.bio.graph2.alt1$Years ==nyrs,]
MRE.f.graph.term.alt1<-MRE.f.graph2.alt1[MRE.f.graph2.alt1$Years ==nyrs,]
MRE.rec.graph.term.alt1<-MRE.rec.graph2.alt1[MRE.rec.graph2.alt1$Years ==nyrs,]
MRE.T.graph.term.alt1<-MRE.T.graph2.alt1[MRE.T.graph2.alt1$Years ==nyrs,]

MRE.graph.final.term.alt1<-rbind.data.frame(MRE.bio.graph.term.alt1,MRE.rec.graph.term.alt1,MRE.f.graph.term.alt1) #,MRE.T.graph.term.alt1)
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1[-which(MRE.graph.final.term.alt1$Reg=='System'),]

MRE.graph.final.alt1$.id<-ordered(MRE.graph.final.alt1$.id,levels=names.keep.alt1)
MRE.graph.final.term.alt1$.id<-ordered(MRE.graph.final.term.alt1$.id,levels=names.keep.alt1)

#############################################
MRE.graph.final.alt1<-MRE.graph.final.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.alt1<-ggplot(MRE.graph.final.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6, scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA,coef=0)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_11_Sensitivity Random T Bias Plots All Years Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Aggregate Bias Across Years",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.alt1)
dev.off()
#############################################

#############################################
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.term.alt1<-ggplot(MRE.graph.final.term.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=0.5,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6,scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.term.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_12_Sensitivity Random T Bias Plots Terminal Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Terminal Year Bias",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.term.alt1)
dev.off()
#############################################








########################################################################################################
########################################################################################################
######### Life History ###############################################################################################
########################################################################################################
########################################################################################################

runs.to.include.alt1<-c(139,146,118,126,155,162,31,38,14,22,47,54,84,91,66,75,100,107)  # the numbers corresponding to the runs to include in the MRE summary plots

names.keep.alt1<-c(sapply(runs.to.include.alt1, function(i) get(paste0("nm_",i))))
MRE.bio.graph2.alt1<-MRE.bio.graph[MRE.bio.graph$.id %in% names.keep.alt1,]
MRE.f.graph2.alt1<-MRE.f.graph[MRE.f.graph$.id %in% names.keep.alt1,]
MRE.rec.graph2.alt1<-MRE.rec.graph[MRE.rec.graph$.id %in% names.keep.alt1,]
MRE.T.graph2.alt1<-MRE.T.graph[MRE.T.graph$.id %in% names.keep.alt1,]

MRE.graph.final.alt1<-rbind.data.frame(MRE.bio.graph2.alt1,MRE.rec.graph2.alt1,MRE.f.graph2.alt1) #,MRE.T.graph2.alt1)
MRE.graph.final.alt1<-MRE.graph.final.alt1[-which(MRE.graph.final.alt1$Reg=='System'),]

MRE.bio.graph.term.alt1<-MRE.bio.graph2.alt1[MRE.bio.graph2.alt1$Years ==nyrs,]
MRE.f.graph.term.alt1<-MRE.f.graph2.alt1[MRE.f.graph2.alt1$Years ==nyrs,]
MRE.rec.graph.term.alt1<-MRE.rec.graph2.alt1[MRE.rec.graph2.alt1$Years ==nyrs,]
MRE.T.graph.term.alt1<-MRE.T.graph2.alt1[MRE.T.graph2.alt1$Years ==nyrs,]

MRE.graph.final.term.alt1<-rbind.data.frame(MRE.bio.graph.term.alt1,MRE.rec.graph.term.alt1,MRE.f.graph.term.alt1) #,MRE.T.graph.term.alt1)
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1[-which(MRE.graph.final.term.alt1$Reg=='System'),]

MRE.graph.final.alt1$.id<-ordered(MRE.graph.final.alt1$.id,levels=names.keep.alt1)
MRE.graph.final.term.alt1$.id<-ordered(MRE.graph.final.term.alt1$.id,levels=names.keep.alt1)

#############################################
MRE.graph.final.alt1<-MRE.graph.final.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.alt1<-ggplot(MRE.graph.final.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=1,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6, scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA,coef=0)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_13_Life History Bias Plots All Years Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Aggregate Bias Across Years",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.alt1)
dev.off()
#############################################

#############################################
MRE.graph.final.term.alt1<-MRE.graph.final.term.alt1 %>% group_by(Reg,parameter,.id) %>% 
  filter(bias<quantile(bias,.999), bias>quantile(bias,.001))  %>% as.data.frame() # 

sinlge.plot.term.alt1<-ggplot(MRE.graph.final.term.alt1, aes(x=.id, y=bias)) +
  geom_hline(yintercept = 0, colour = 'black',size=0.5,lty=2)+
  geom_violin(trim=T,bw="nrd0",alpha=0.6,scale="width")+  #fill=vio.col,
  geom_boxplot(width=.35,outlier.shape=NA)+
  stat_summary(fun.y=mean, geom="point", size=0.5, color='black')+
  xlab(NULL)+
  ylab(NULL)+
  #facet_wrap(vars(parameter,Reg),dir='v',scales="free_x",labeller="label_both")+ # as_labeller(region.names),)+ #switch="both")+ #,strip.position="top")+
  facet_grid(Reg~parameter,scales="free_x",labeller= as_labeller(region.names))+ #, switch="y")+
  scale_x_discrete(limits=rev(levels(as.factor(MRE.graph.final.term.alt1$.id))))+
  #ylim(-100,100)+
  geom_blank()+
  coord_flip()+
  my_theme.ver.alt

##################################
tiff("SM_Fig_14_Life History Bias Plots Terminal Final.tif",width=240,height=190, unit='mm',res=500)
par(mar=c(6,6,6,6))
#plot_grid( bio.plot.vert,rec.plot.vert,f.plot.vert, align = "hv", ncol = 3) #, rel_heights = c(1/4, 1/4, 1/2))

grid.arrange(ncol = 1,top=textGrob("Terminal Year Bias",gp=gpar(fontsize=15,font=3)), 
             bottom=textGrob("Percent Relative Error",gp=gpar(fontsize=12,font=1)), 
             left=textGrob("Scenario",gp=gpar(fontsize=12,font=1),rot=90),
             sinlge.plot.term.alt1)
dev.off()
#############################################








#################################################################

pdf("Simulation_Comparison_CLM+ONTO_Values.pdf",paper="letter",height = 11, width=8)
par(mar=c(6,6,6,6))


grid.arrange(ncol = 2,
             top="Movement",
             move.plot.gg_111, move.plot.gg_112,move.plot.gg_114,move.plot.gg_115)


grid.arrange(ncol = 2,
             top="Recruitment",
             rec.plot.gg_111, rec.plot.gg_112,rec.plot.gg_114,rec.plot.gg_115)


grid.arrange(ncol = 2,
             top="Biomass",
             bio.plot.gg_111, bio.plot.gg_112,bio.plot.gg_114,bio.plot.gg_115)


grid.arrange(ncol = 2,
             top="Fishing Mortality",
             fmax.plot.gg_111, fmax.plot.gg_112,fmax.plot.gg_114,fmax.plot.gg_115)

dev.off()



setwd(Figure_dir)
pdf("Simulation_Comparison_CLM+ONTO_Bias.pdf",paper="letter",height = 11, width=8)
par(mar=c(6,6,6,6))


grid.arrange(ncol = 2,
             top="Movement",
             move.bias.gg_111, move.bias.gg_112,move.bias.gg_114,move.bias.gg_115)


grid.arrange(ncol = 2,
             top="Recruitment",
             rec.bias.gg_111, rec.bias.gg_112,rec.bias.gg_114,rec.bias.gg_115)


grid.arrange(ncol = 2,
             top="Biomass",
             bio.bias.gg_111, bio.bias.gg_112,bio.bias.gg_114,bio.bias.gg_115)


grid.arrange(ncol = 2,
             top="Fishing Mortality",
             fmax.bias.gg_111, fmax.bias.gg_112,fmax.bias.gg_114,fmax.bias.gg_115)

dev.off()



#################################################################

pdf("Simulation_Comparison_BASE_Values.pdf",paper="letter",height = 11, width=8)
par(mar=c(6,6,6,6))


grid.arrange(ncol = 2,
             top="Movement",
             move.plot.gg_126, move.plot.gg_22,move.plot.gg_75,move.plot.gg_115)


grid.arrange(ncol = 2,
             top="Recruitment",
             rec.plot.gg_126, rec.plot.gg_22,rec.plot.gg_75,rec.plot.gg_115)


grid.arrange(ncol = 2,
             top="Biomass",
             bio.plot.gg_126, bio.plot.gg_22,bio.plot.gg_75,bio.plot.gg_115)


grid.arrange(ncol = 2,
             top="Fishing Mortality",
             fmax.plot.gg_126, fmax.plot.gg_22,fmax.plot.gg_75,fmax.plot.gg_115)

dev.off()



setwd(Figure_dir)
pdf("Simulation_Comparison_BASE_Bias.pdf",paper="letter",height = 11, width=8)
par(mar=c(6,6,6,6))


grid.arrange(ncol = 2,
             top="Movement",
             move.bias.gg_126, move.bias.gg_22,move.bias.gg_75,move.bias.gg_115)


grid.arrange(ncol = 2,
             top="Recruitment",
             rec.bias.gg_126, rec.bias.gg_22,rec.bias.gg_75,rec.bias.gg_115)


grid.arrange(ncol = 2,
             top="Biomass",
             bio.bias.gg_126, bio.bias.gg_22,bio.bias.gg_75,bio.bias.gg_115)


grid.arrange(ncol = 2,
             top="Fishing Mortality",
             fmax.bias.gg_126, fmax.bias.gg_22,fmax.bias.gg_75,fmax.bias.gg_115)

dev.off()


#################################################################

pdf("Simulation_Comparison_No Move_Values.pdf",paper="letter",height = 11, width=8)
par(mar=c(6,6,6,6))


grid.arrange(ncol = 2,
             top="Movement",
             move.plot.gg_116, move.plot.gg_10,move.plot.gg_59,move.plot.gg_109)


grid.arrange(ncol = 2,
             top="Recruitment",
             rec.plot.gg_116, rec.plot.gg_10,rec.plot.gg_59,rec.plot.gg_109)


grid.arrange(ncol = 2,
             top="Biomass",
             bio.plot.gg_116, bio.plot.gg_10,bio.plot.gg_59,bio.plot.gg_109)


grid.arrange(ncol = 2,
             top="Fishing Mortality",
             fmax.plot.gg_116, fmax.plot.gg_10,fmax.plot.gg_59,fmax.plot.gg_109)

dev.off()



setwd(Figure_dir)
pdf("Simulation_Comparison_No Move_Bias.pdf",paper="letter",height = 11, width=8)
par(mar=c(6,6,6,6))


grid.arrange(ncol = 2,
             top="Movement",
             move.bias.gg_116, move.bias.gg_10,move.bias.gg_59,move.bias.gg_109)


grid.arrange(ncol = 2,
             top="Recruitment",
             rec.bias.gg_116, rec.bias.gg_10,rec.bias.gg_59,rec.bias.gg_109)


grid.arrange(ncol = 2,
             top="Biomass",
             bio.bias.gg_116, bio.bias.gg_10,bio.bias.gg_59,bio.bias.gg_109)


grid.arrange(ncol = 2,
             top="Fishing Mortality",
             fmax.bias.gg_116, fmax.bias.gg_10,fmax.bias.gg_59,fmax.bias.gg_109)

dev.off()




#################################################################

pdf("Simulation_Comparison_No Tag Base_Values.pdf",paper="letter",height = 11, width=8)
par(mar=c(6,6,6,6))


grid.arrange(ncol = 2,
             top="Movement",
             move.plot.gg_118, move.plot.gg_14,move.plot.gg_66) #,move.plot.gg_192)


grid.arrange(ncol = 2,
             top="Recruitment",
             rec.plot.gg_118, rec.plot.gg_14,rec.plot.gg_66) #,rec.plot.gg_192)


grid.arrange(ncol = 2,
             top="Biomass",
             bio.plot.gg_118, bio.plot.gg_14,bio.plot.gg_66) #,bio.plot.gg_192)


grid.arrange(ncol = 2,
             top="Fishing Mortality",
             fmax.plot.gg_118, fmax.plot.gg_14,fmax.plot.gg_66) #,fmax.plot.gg_192)

dev.off()



setwd(Figure_dir)
pdf("Simulation_Comparison_No Tag Base_Bias.pdf",paper="letter",height = 11, width=8)
par(mar=c(6,6,6,6))


grid.arrange(ncol = 2,
             top="Movement",
             move.bias.gg_118, move.bias.gg_14,move.bias.gg_66) #,move.bias.gg_192)


grid.arrange(ncol = 2,
             top="Recruitment",
             rec.bias.gg_118, rec.bias.gg_14,rec.bias.gg_66) #,rec.bias.gg_192)


grid.arrange(ncol = 2,
             top="Biomass",
             bio.bias.gg_118, bio.bias.gg_14,bio.bias.gg_66) #,bio.bias.gg_192)


grid.arrange(ncol = 2,
             top="Fishing Mortality",
             fmax.bias.gg_118, fmax.bias.gg_14,fmax.bias.gg_66) #,fmax.bias.gg_192)

dev.off()