---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            67     187  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             65     187  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          55     187  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         High            18      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Low             17      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium          30      65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          High             8      40  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Low             18      40  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Medium          14      40  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          High             5      25  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Low             12      25  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           8      25  haz              
Birth       ki0047075b-MAL-ED          PERU                           High            68     233  haz              
Birth       ki0047075b-MAL-ED          PERU                           Low             84     233  haz              
Birth       ki0047075b-MAL-ED          PERU                           Medium          81     233  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            35     123  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             62     123  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          26     123  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7     105  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             34     105  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          64     105  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High            51      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low             16      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium          25      92  haz              
Birth       ki1000108-IRC              INDIA                          High           113     388  haz              
Birth       ki1000108-IRC              INDIA                          Low            142     388  haz              
Birth       ki1000108-IRC              INDIA                          Medium         133     388  haz              
Birth       ki1000109-EE               PAKISTAN                       High             7     239  haz              
Birth       ki1000109-EE               PAKISTAN                       Low            215     239  haz              
Birth       ki1000109-EE               PAKISTAN                       Medium          17     239  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          High           248    1252  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low            587    1252  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium         417    1252  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     High           170     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low            224     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium         214     608  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     High           171     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low            165     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium         203     539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High           247     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low            232     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium         253     732  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          High            85     693  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Low            485     693  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium         123     693  haz              
Birth       ki1119695-PROBIT           BELARUS                        High          2249   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        Low           4964   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        Medium        6677   13890  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High          7515   13855  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2912   13855  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        3428   13855  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      High           178     842  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Low            391     842  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         273     842  haz              
Birth       ki1135781-COHORTS          INDIA                          High           678    5216  haz              
Birth       ki1135781-COHORTS          INDIA                          Low           1756    5216  haz              
Birth       ki1135781-COHORTS          INDIA                          Medium        2782    5216  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1169    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            900    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         981    3050  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          6683   22427  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           8795   22427  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        6949   22427  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High           933    2817  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            990    2817  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium         894    2817  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            73     196  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             64     196  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          59     196  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         High            71     208  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Low             56     208  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium          81     208  haz              
6 months    ki0047075b-MAL-ED          INDIA                          High            59     208  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Low             72     208  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Medium          77     208  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          High            53     221  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Low             93     221  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          75     221  haz              
6 months    ki0047075b-MAL-ED          PERU                           High            81     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           Low             94     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           Medium          97     272  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            70     254  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low            127     254  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          57     254  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             9     203  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             62     203  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         132     203  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           157     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium         107     369  haz              
6 months    ki1000108-IRC              INDIA                          High           123     407  haz              
6 months    ki1000108-IRC              INDIA                          Low            146     407  haz              
6 months    ki1000108-IRC              INDIA                          Medium         138     407  haz              
6 months    ki1000109-EE               PAKISTAN                       High            15     370  haz              
6 months    ki1000109-EE               PAKISTAN                       Low            322     370  haz              
6 months    ki1000109-EE               PAKISTAN                       Medium          33     370  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           290    1336  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            597    1336  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         449    1336  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            35     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            304     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          41     380  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     High           155     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low            195     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         187     537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           209     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            187     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         208     604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           240     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         246     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2021  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2021  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1435    2021  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High           117     277  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             73     277  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          87     277  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          High            68     561  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            399     561  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium          94     561  haz              
6 months    ki1119695-PROBIT           BELARUS                        High          2657   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        Low           5644   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        Medium        7460   15761  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4702    8655  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1795    8655  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2158    8655  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      High           185     952  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Low            449     952  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         318     952  haz              
6 months    ki1135781-COHORTS          INDIA                          High           736    5413  haz              
6 months    ki1135781-COHORTS          INDIA                          Low           1777    5413  haz              
6 months    ki1135781-COHORTS          INDIA                          Medium        2900    5413  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    High          1014    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            826    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         868    2708  haz              
6 months    ki1148112-LCNI-5           MALAWI                         High           298     813  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Low            261     813  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Medium         254     813  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5922   16794  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5622   16794  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5250   16794  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High          1718    4818  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1581    4818  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium        1519    4818  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            64     171  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             59     171  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          48     171  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         High            62     168  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Low             42     168  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium          64     168  haz              
24 months   ki0047075b-MAL-ED          INDIA                          High            55     199  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Low             69     199  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Medium          75     199  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          High            48     213  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Low             91     213  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          74     213  haz              
24 months   ki0047075b-MAL-ED          PERU                           High            59     200  haz              
24 months   ki0047075b-MAL-ED          PERU                           Low             74     200  haz              
24 months   ki0047075b-MAL-ED          PERU                           Medium          67     200  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            67     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            120     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          51     238  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7     175  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             54     175  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         114     175  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           158     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium         108     371  haz              
24 months   ki1000108-IRC              INDIA                          High           124     409  haz              
24 months   ki1000108-IRC              INDIA                          Low            146     409  haz              
24 months   ki1000108-IRC              INDIA                          Medium         139     409  haz              
24 months   ki1000109-EE               PAKISTAN                       High             6     165  haz              
24 months   ki1000109-EE               PAKISTAN                       Low            142     165  haz              
24 months   ki1000109-EE               PAKISTAN                       Medium          17     165  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     High           130     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            153     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         146     429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           201     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            174     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         203     578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           191     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            146     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         177     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          High            55     485  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            344     485  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          86     485  haz              
24 months   ki1119695-PROBIT           BELARUS                        High           664    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        Low           1408    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        Medium        1963    4035  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           862    1639  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            345    1639  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         432    1639  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      High           209    1057  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Low            506    1057  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         342    1057  haz              
24 months   ki1135781-COHORTS          INDIA                          High           608    4198  haz              
24 months   ki1135781-COHORTS          INDIA                          Low           1272    4198  haz              
24 months   ki1135781-COHORTS          INDIA                          Medium        2318    4198  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    High           914    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            744    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         787    2445  haz              
24 months   ki1148112-LCNI-5           MALAWI                         High           220     572  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Low            177     572  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Medium         175     572  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2927    8621  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3004    8621  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2690    8621  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High          1696    4741  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1536    4741  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium        1509    4741  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/eb548ece-b77a-4207-9859-189612f7964b/2b472990-6205-4cd8-abef-9ea97f3389ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/eb548ece-b77a-4207-9859-189612f7964b/2b472990-6205-4cd8-abef-9ea97f3389ba/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/eb548ece-b77a-4207-9859-189612f7964b/2b472990-6205-4cd8-abef-9ea97f3389ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0406756   -1.2760714   -0.8052798
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0632287   -1.3262891   -0.8001684
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.1022311   -1.4281681   -0.7762942
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.5830700   -0.9760542   -0.1900858
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.6437620   -1.1878690   -0.0996550
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               NA                -0.5224990   -1.0436470   -0.0013509
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0487500   -1.6632325   -0.4342675
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.9966667   -1.2735446   -0.7197888
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.6542857   -2.3314041   -0.9771673
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5560000   -1.2640915    0.1520915
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.0800000   -1.4369213   -0.7230787
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.8825000   -1.7946337    0.0296337
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.9336303   -1.1180821   -0.7491785
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.8484812   -1.0215368   -0.6754255
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.8658212   -1.0355492   -0.6960932
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.4915256   -0.7849473   -0.1981040
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.7722528   -1.0651302   -0.4793754
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.8149093   -1.2678804   -0.3619383
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.9671429   -1.2770161   -0.6572697
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.9017647   -1.2910826   -0.5124468
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2851563   -1.5881883   -0.9821242
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.8920895   -1.1434158   -0.6407632
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.9251942   -1.4441154   -0.4062730
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -1.1479056   -1.6727241   -0.6230871
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.3472611   -0.6000994   -0.0944228
Birth       ki1000108-IRC              INDIA                          Low                  NA                -0.3336603   -0.5758684   -0.0914523
Birth       ki1000108-IRC              INDIA                          Medium               NA                -0.2549880   -0.5264443    0.0164682
Birth       ki1000109-EE               PAKISTAN                       High                 NA                -2.1742857   -3.0389611   -1.3096103
Birth       ki1000109-EE               PAKISTAN                       Low                  NA                -1.8810233   -2.0830133   -1.6790332
Birth       ki1000109-EE               PAKISTAN                       Medium               NA                -1.3876471   -1.8873432   -0.8879509
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.3465689   -1.4911510   -1.2019868
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.4978105   -1.6002079   -1.3954131
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3691279   -1.4835334   -1.2547225
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.8756128   -1.0190270   -0.7321987
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.9851177   -1.1089431   -0.8612923
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.9370627   -1.0705804   -0.8035449
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8777300   -0.9917856   -0.7636744
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.8899220   -1.0147283   -0.7651157
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.9123603   -1.0259706   -0.7987500
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.8355402   -0.9576562   -0.7134241
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.9286037   -1.0648237   -0.7923837
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.9355676   -1.0608591   -0.8102761
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.9857458   -1.2277723   -0.7437192
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1061013   -1.2014911   -1.0107115
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.0762369   -1.2872705   -0.8652032
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 1.3718988    1.2058366    1.5379610
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 1.3281697    1.1308599    1.5254794
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                 1.3389094    1.1762563    1.5015624
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.4877166   -0.5165538   -0.4588793
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5129966   -0.5601923   -0.4658009
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4997918   -0.5418933   -0.4576903
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1289509   -0.0767886    0.3346904
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1144787   -0.0088537    0.2378110
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1755257    0.0112922    0.3397592
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.5532225   -0.6547311   -0.4517139
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.7099613   -0.7760086   -0.6439140
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.6644595   -0.7099312   -0.6189878
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1938561   -0.2593995   -0.1283126
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3031530   -0.3734097   -0.2328963
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2483976   -0.3233578   -0.1734375
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.5840103   -1.6152520   -1.5527687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.6004877   -1.6290493   -1.5719261
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.5927538   -1.6251480   -1.5603596
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.4860176   -1.5887409   -1.3832944
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.5273469   -1.6164207   -1.4382732
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.5384451   -1.6259554   -1.4509348
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0116602   -1.2188998   -0.8044206
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.3130119   -1.5860932   -1.0399306
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.3078373   -1.5213932   -1.0942815
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0998005   -0.1436581    0.3432591
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.0908462   -0.2067676    0.3884600
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0710854   -0.1593937    0.3015644
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.1947391   -1.4115176   -0.9779607
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.1879503   -1.3964660   -0.9794346
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1343748   -1.3335963   -0.9351534
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3777492   -0.6091638   -0.1463346
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6112056   -0.7846119   -0.4377994
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.5545323   -0.7416101   -0.3674544
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3693234   -1.5602905   -1.1783564
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.3435537   -1.5382015   -1.1489060
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2779836   -1.4623197   -1.0936475
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.9858912   -1.2294233   -0.7423592
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.1442422   -1.3352777   -0.9532067
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.0175008   -1.2594441   -0.7755576
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2557407   -1.6831816   -0.8282999
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2978763   -1.5505534   -1.0451993
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2943939   -1.4544477   -1.1343401
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -1.2822426   -1.5000045   -1.0644806
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -1.6394137   -1.8974366   -1.3813908
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -1.4051128   -1.6996597   -1.1105659
6 months    ki1000108-IRC              INDIA                          High                 NA                -1.1473242   -1.3659430   -0.9287055
6 months    ki1000108-IRC              INDIA                          Low                  NA                -1.2592979   -1.4838509   -1.0347450
6 months    ki1000108-IRC              INDIA                          Medium               NA                -1.2912874   -1.5156290   -1.0669458
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -1.6877238   -2.1586755   -1.2167720
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -2.1317285   -2.2621039   -2.0013532
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                -1.7274865   -2.1401649   -1.3148080
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.0519963   -1.1944590   -0.9095336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.5800738   -1.6718792   -1.4882683
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3729023   -1.5028667   -1.2429379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.5990794   -1.9545164   -1.2436424
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9395363   -2.0693453   -1.8097274
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.7682917   -2.0623780   -1.4742053
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.1436882   -1.2931219   -0.9942545
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.6071084   -1.7569470   -1.4572698
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -1.4460731   -1.5953260   -1.2968201
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.0090838   -1.1277618   -0.8904058
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.1700433   -1.3160167   -1.0240699
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.1325693   -1.2845004   -0.9806381
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0454508   -1.1682826   -0.9226189
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2674427   -1.3924947   -1.1423907
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2928333   -1.4235640   -1.1621025
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4578309   -0.5620673   -0.3535944
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5587133   -0.8240478   -0.2933787
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5646652   -0.6207021   -0.5086282
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -1.5278636   -1.7023129   -1.3534142
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -1.6449918   -1.8775166   -1.4124670
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -1.5629294   -1.7768450   -1.3490137
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.0759800   -1.3279604   -0.8239996
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4263765   -1.5231139   -1.3296392
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1938729   -1.3981198   -0.9896259
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2343009    0.1324414    0.3361605
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0073233   -0.0967959    0.1114425
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1522957    0.0492566    0.2553348
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.8248943   -0.8591935   -0.7905951
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.8918074   -0.9487783   -0.8348364
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.9304724   -0.9814677   -0.8794772
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.7872834   -1.9431714   -1.6313954
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.8766734   -1.9777048   -1.7756421
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.7275013   -1.8585261   -1.5964765
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.6043940   -0.7152623   -0.4935257
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.3126704   -1.3829587   -1.2423821
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.9712392   -1.0160574   -0.9264210
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9640535   -1.0315752   -0.8965317
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.2776236   -1.3583715   -1.1968757
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.2052179   -1.2872326   -1.1232032
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.4939433   -1.6066460   -1.3812407
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.7436959   -1.8688875   -1.6185044
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6949139   -1.8121831   -1.5776447
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2449306   -1.2863693   -1.2034918
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3813761   -1.4191897   -1.3435626
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3439283   -1.3845700   -1.3032866
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.2136433   -1.2767550   -1.1505316
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.4516960   -1.5224221   -1.3809699
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.3994960   -1.4610917   -1.3379003
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.8424720   -2.0930737   -1.5918703
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -2.0277365   -2.2234288   -1.8320442
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.9276770   -2.1908369   -1.6645171
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.2108850   -0.0581679    0.4799378
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.2910460   -0.6509806    0.0688885
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0087980   -0.2647169    0.2823129
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.6398092   -1.8615801   -1.4180382
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.9032271   -2.1224284   -1.6840258
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.9113774   -2.1280183   -1.6947366
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.0690709   -1.3440201   -0.7941216
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.3835233   -1.5623845   -1.2046620
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.2466733   -1.4484043   -1.0449423
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.5569481   -1.7977260   -1.3161703
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.8181528   -2.0005860   -1.6357196
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.8467148   -2.0206972   -1.6727324
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.4342283   -1.6824460   -1.1860105
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.7330787   -1.9247589   -1.5413985
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.7023220   -1.9870081   -1.4176359
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.0942857   -2.6483678   -1.5402036
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.8334259   -3.1321260   -2.5347259
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4673684   -2.6268079   -2.3079289
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -2.4877331   -2.6513126   -2.3241535
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -2.6945354   -2.8657676   -2.5233033
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -2.5079717   -2.6850648   -2.3308785
24 months   ki1000108-IRC              INDIA                          High                 NA                -1.6418743   -1.8181819   -1.4655666
24 months   ki1000108-IRC              INDIA                          Low                  NA                -1.8660105   -2.0260310   -1.7059901
24 months   ki1000108-IRC              INDIA                          Medium               NA                -1.8590054   -2.0100299   -1.7079810
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -1.9300000   -2.4208706   -1.4391294
24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -2.7653756   -2.9186740   -2.6120771
24 months   ki1000109-EE               PAKISTAN                       Medium               NA                -2.0017647   -2.3410457   -1.6624838
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.8766963   -2.0571434   -1.6962493
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -2.5009654   -2.6538694   -2.3480615
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -2.2906877   -2.4598480   -2.1215273
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.3905280   -1.5176734   -1.2633827
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.7560027   -1.9150556   -1.5969497
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.6912319   -1.8536857   -1.5287780
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.1879609   -1.3242129   -1.0517090
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.5793056   -1.7312190   -1.4273923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.6117980   -1.7532951   -1.4703008
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.5501760   -1.8203291   -1.2800228
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9406341   -2.0393924   -1.8418759
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.8646409   -2.1114887   -1.6177931
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0122187   -0.2100569    0.2344944
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2744595   -0.6128760    0.0639569
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0774905   -0.4053747    0.2503937
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.4697632   -1.5486968   -1.3908297
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.7791182   -1.9054026   -1.6528338
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.7200646   -1.8304449   -1.6096843
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -3.0766999   -3.2215200   -2.9318797
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -3.0784452   -3.1731188   -2.9837715
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.8178571   -2.9340214   -2.7016928
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.4127834   -1.5442719   -1.2812948
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.6928581   -2.7772918   -2.6084243
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -2.0909515   -2.1401746   -2.0417284
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -2.0597171   -2.1368103   -1.9826239
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.6819944   -2.7640916   -2.5998972
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5574826   -2.6410855   -2.4738796
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.7920174   -1.9184069   -1.6656280
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.9087415   -2.0569482   -1.7605348
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9549095   -2.1121417   -1.7976772
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.8895135   -1.9353118   -1.8437152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1423604   -2.1911353   -2.0935855
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0326290   -2.0807455   -1.9845124
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.6237766   -1.6787747   -1.5687785
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.9046853   -1.9614681   -1.8479025
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.8219415   -1.8857242   -1.7581587


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0884492   -1.2349987   -0.9418997
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2372500   -1.5471753   -0.9273247
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9120000   -1.2873301   -0.5366699
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1398095   -1.3671021   -0.9125169
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8545188   -2.0422173   -1.6668203
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0877489   -1.1679913   -1.0075066
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5006712   -0.5212382   -0.4801043
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1288717    0.0445170    0.2132265
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6688842   -0.7003528   -0.6374156
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5897102   -1.6089975   -1.5704229
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232552   -1.5724840   -1.4740265
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1932738   -1.3246079   -1.0619397
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0494712   -0.0951008    0.1940431
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1605449   -1.2821450   -1.0389448
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5481599   -0.6614541   -0.4348656
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3277482   -1.4358597   -1.2196367
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.2937438   -1.4246923   -1.1627954
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0782207   -2.1981595   -1.9582820
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5440108   -0.5930025   -0.4950192
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5624368   -1.6783540   -1.4465196
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508616   -1.4293975   -1.2723256
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8688556   -0.8944357   -0.8432754
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8103361   -1.8786415   -1.7420307
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0183078   -1.0495042   -0.9871113
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6431488   -1.7125598   -1.5737379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3131339   -1.3362896   -1.2899781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3449232   -1.3822755   -1.3075709
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9096199   -2.0438307   -1.7754091
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081448   -0.1615145    0.1778041
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8274372   -1.9559249   -1.6989495
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2688028   -1.3908231   -1.1467825
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7545083   -1.8762212   -1.6327955
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5654000   -2.7089193   -2.4218807
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6563232   -2.8000905   -2.5125560
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8887629   -1.9746814   -1.8028444
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6059152   -1.6629321   -1.5488983
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9885052   -3.0530889   -2.9239215
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1741663   -2.2109368   -2.1373958
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8795105   -1.9611410   -1.7978800
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0134370   -2.0411067   -1.9857672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7814786   -1.8170130   -1.7459442


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.0225531   -0.3769105    0.3318042
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0615555   -0.4653891    0.3422780
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.0606920   -0.7400531    0.6186690
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               High               0.0605710   -0.5895511    0.7106931
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.0520833   -0.6218975    0.7260641
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High              -0.6055357   -1.5199088    0.3088374
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.5240000   -1.3169605    0.2689605
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3265000   -1.4812214    0.8282214
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High               0.0851491   -0.1444717    0.3147699
Birth       ki0047075b-MAL-ED          PERU                           Medium               High               0.0678091   -0.1598969    0.2955150
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2807272   -0.6972985    0.1358442
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.3233837   -0.8654040    0.2186366
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0653782   -0.4322058    0.5629621
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3180134   -0.7514298    0.1154030
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.0331047   -0.6110451    0.5448357
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.2558161   -0.8390426    0.3274104
Birth       ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low                  High               0.0136008   -0.3183681    0.3455696
Birth       ki1000108-IRC              INDIA                          Medium               High               0.0922731   -0.2595145    0.4440607
Birth       ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low                  High               0.2932625   -0.5946922    1.1812171
Birth       ki1000109-EE               PAKISTAN                       Medium               High               0.7866387   -0.2120403    1.7853176
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1512416   -0.3341685    0.0316853
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0225590   -0.1977748    0.1526568
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.1095049   -0.2819081    0.0628983
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.0614498   -0.2397942    0.1168945
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0121921   -0.1708262    0.1464421
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0346304   -0.1841714    0.1149107
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0930635   -0.2729490    0.0868219
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1000274   -0.2722229    0.0721681
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.1203555   -0.3778354    0.1371243
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0904911   -0.4092506    0.2282684
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0437291   -0.1734731    0.0860148
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0329894   -0.1143806    0.0484017
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0252801   -0.0796116    0.0290515
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0120752   -0.0619952    0.0378447
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0144722   -0.2545162    0.2255718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0465748   -0.2169781    0.3101277
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.1567388   -0.2764732   -0.0370044
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.1112370   -0.2209588   -0.0015152
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1092969   -0.2031234   -0.0154705
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0545416   -0.1517140    0.0426308
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0164774   -0.0540874    0.0211327
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0087434   -0.0497304    0.0322435
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0413293   -0.1772588    0.0946001
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0524275   -0.1889123    0.0840573
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3013517   -0.6447455    0.0420422
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.2961771   -0.5940655    0.0017113
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.0089544   -0.3959139    0.3780052
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.0287152   -0.3634395    0.3060091
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0067888   -0.2940358    0.3076135
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High               0.0603643   -0.2328933    0.3536220
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2334564   -0.5222548    0.0553419
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.1767831   -0.4756873    0.1221212
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.0257697   -0.2471644    0.2987038
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0913398   -0.1742862    0.3569658
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1583510   -0.4678637    0.1511618
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0316096   -0.3747593    0.3115401
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0421356   -0.5386750    0.4544038
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0386532   -0.4950772    0.4177708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.3571711   -0.6938774   -0.0204647
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.1228702   -0.4869291    0.2411887
6 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              -0.1119737   -0.4226681    0.1987207
6 months    ki1000108-IRC              INDIA                          Medium               High              -0.1439632   -0.4538790    0.1659527
6 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High              -0.4440048   -0.9326073    0.0445978
6 months    ki1000109-EE               PAKISTAN                       Medium               High              -0.0397627   -0.6676456    0.5881202
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.5280774   -0.7299541   -0.3262008
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.3209060   -0.4343097   -0.2075023
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.3404569   -0.7190572    0.0381434
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1692122   -0.6312044    0.2927799
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.4634202   -0.6730733   -0.2537671
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.3023848   -0.5113234   -0.0934462
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1609595   -0.3494931    0.0275742
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1234854   -0.3163358    0.0693650
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.2219919   -0.3974994   -0.0464844
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2473825   -0.4269611   -0.0678038
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1008824   -0.3851931    0.1834283
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1068343   -0.2237128    0.0100442
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              -0.1171282   -0.4079158    0.1736593
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              -0.0350658   -0.3117765    0.2416449
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3503965   -0.6207157   -0.0800773
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.1178928   -0.4421981    0.2064125
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2269777   -0.3281288   -0.1258265
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0820052   -0.1791789    0.0151685
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0669131   -0.1316017   -0.0022246
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1055782   -0.1651553   -0.0460010
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0893900   -0.2752475    0.0964675
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0597822   -0.1439245    0.2634889
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.7082764   -0.8403160   -0.5762367
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.3668452   -0.4867611   -0.2469292
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.3135702   -0.4189337   -0.2082066
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2411645   -0.3475024   -0.1348265
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.2497526   -0.4165764   -0.0829288
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.2009705   -0.3621303   -0.0398107
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1364456   -0.1883936   -0.0844976
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0989977   -0.1523789   -0.0456166
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2380527   -0.3276119   -0.1484936
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1858527   -0.2717194   -0.0999861
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1852645   -0.4953497    0.1248207
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0852050   -0.4441873    0.2737773
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.5019310   -0.9519678   -0.0518942
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.2020870   -0.5862410    0.1820671
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.2634179   -0.5722111    0.0453753
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.2715683   -0.5801877    0.0370511
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3144524   -0.6429151    0.0140104
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.1776024   -0.5206242    0.1654193
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.2612046   -0.5570186    0.0346093
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.2897667   -0.5770829   -0.0024504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2988504   -0.6138932    0.0161924
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2680937   -0.6469527    0.1107653
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.7391402   -1.3686072   -0.1096733
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3730827   -0.9496483    0.2034829
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.2068024   -0.4445896    0.0309849
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0202386   -0.2606733    0.2201961
24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              -0.2241362   -0.4619496    0.0136771
24 months   ki1000108-IRC              INDIA                          Medium               High              -0.2171311   -0.4490825    0.0148202
24 months   ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low                  High              -0.8353756   -1.3496268   -0.3211243
24 months   ki1000109-EE               PAKISTAN                       Medium               High              -0.0717647   -0.6684770    0.5249475
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.6242691   -0.8576897   -0.3908486
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.4139913   -0.6578232   -0.1701595
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.3654746   -0.5692307   -0.1617186
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.3007038   -0.5066017   -0.0948059
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.3913447   -0.5931516   -0.1895378
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.4238370   -0.6183110   -0.2293630
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3904582   -0.6766683   -0.1042481
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3144649   -0.6790681    0.0501382
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.2866783   -0.5889638    0.0156072
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.0897092   -0.3397112    0.1602927
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.3093550   -0.4579414   -0.1607686
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.2503014   -0.3854586   -0.1151442
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0017453   -0.1737227    0.1702322
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.2588428    0.0740988    0.4435867
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -1.2800747   -1.4375096   -1.1226398
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.6781682   -0.8193088   -0.5370276
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.6222773   -0.7355181   -0.5090364
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.4977654   -0.6119309   -0.3835999
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.1167241   -0.3109240    0.0774758
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.1628921   -0.3641978    0.0384136
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2528469   -0.3175043   -0.1881895
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1431155   -0.2068123   -0.0794186
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2809087   -0.3549583   -0.2068592
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1981649   -0.2788670   -0.1174628


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0477736   -0.2498318    0.1542846
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0929300   -0.4925866    0.3067265
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1885000   -0.7564850    0.3794850
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3560000   -1.0206118    0.3086118
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.0508406   -0.0906508    0.1923319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1401817   -0.4149411    0.1345778
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1726667   -0.5399274    0.1945941
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0691062   -0.2709260    0.1327137
Birth       ki1000108-IRC              INDIA                          High                 NA                 0.0392199   -0.1696357    0.2480755
Birth       ki1000109-EE               PAKISTAN                       High                 NA                 0.3197669   -0.5399412    1.1794750
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0848528   -0.2359846    0.0662791
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0554069   -0.1657225    0.0549088
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0073721   -0.0973881    0.0826439
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0739544   -0.1730875    0.0251788
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1020031   -0.3298573    0.1258510
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0449542   -0.1234169    0.0335084
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0129547   -0.0332219    0.0073125
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0000792   -0.1904576    0.1902993
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.1156617   -0.2133938   -0.0179296
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0551931   -0.1077252   -0.0026610
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0056998   -0.0304266    0.0190270
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0372376   -0.1217409    0.0472656
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1816136   -0.3603096   -0.0029176
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0503294   -0.2528790    0.1522203
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0341943   -0.1564762    0.2248647
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1704107   -0.3751368    0.0343154
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0415753   -0.1217525    0.2049030
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0774290   -0.2871162    0.1322582
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0380031   -0.4665502    0.3905440
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1412082   -0.3077403    0.0253239
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0870820   -0.2750346    0.1008706
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.3904970   -0.8584235    0.0774295
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.3498600   -0.4688436   -0.2308763
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.2996048   -0.6403123    0.0411028
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.2636938   -0.3923318   -0.1350559
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0826077   -0.1828012    0.0175858
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1532276   -0.2553946   -0.0510605
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0861799   -0.1742720    0.0019122
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0345733   -0.1699929    0.1008464
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2748815   -0.5144567   -0.0353064
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1273023   -0.2073627   -0.0472420
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0439613   -0.0673106   -0.0206120
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0230527   -0.1664076    0.1203022
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.4139138   -0.5221320   -0.3056955
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1765189   -0.2332457   -0.1197922
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1492055   -0.2392601   -0.0591509
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0682033   -0.1012459   -0.0351607
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1312799   -0.1795149   -0.0830449
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0671479   -0.2555525    0.1212568
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.2027401   -0.4244244    0.0189441
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1876280   -0.3821631    0.0069071
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1997320   -0.4383721    0.0389082
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.1975602   -0.3896340   -0.0054864
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2108312   -0.4253706    0.0037081
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4711143   -1.0216088    0.0793802
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0711349   -0.1898483    0.0475785
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.1569032   -0.3022755   -0.0115309
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.7263232   -1.2203870   -0.2322594
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.3423616   -0.4914215   -0.1933016
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.2118941   -0.3203174   -0.1034708
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.2533036   -0.3641317   -0.1424756
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.3385869   -0.5943204   -0.0828535
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1436235   -0.3526883    0.0654413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1361520   -0.1910334   -0.0812705
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0881947   -0.0425594    0.2189488
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.7613829   -0.8919406   -0.6308252
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3543974   -0.4184230   -0.2903717
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0874931   -0.1906876    0.0157015
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1239235   -0.1621872   -0.0856597
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1577020   -0.2004565   -0.1149475
