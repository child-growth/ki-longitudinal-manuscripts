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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        gagebrth             ever_co   n_cell       n
------------  -------------------------  -----------------------------  ------------------  --------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      170     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       45     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       35     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1       17     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       70     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1       14     351
0-24 months   ki1000108-IRC              INDIA                          Full or late term          0      211     390
0-24 months   ki1000108-IRC              INDIA                          Full or late term          1       39     390
0-24 months   ki1000108-IRC              INDIA                          Preterm                    0       28     390
0-24 months   ki1000108-IRC              INDIA                          Preterm                    1       14     390
0-24 months   ki1000108-IRC              INDIA                          Early term                 0       78     390
0-24 months   ki1000108-IRC              INDIA                          Early term                 1       20     390
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term          0       21     379
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term          1        4     379
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                    0      145     379
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                    1      100     379
0-24 months   ki1000109-EE               PAKISTAN                       Early term                 0       69     379
0-24 months   ki1000109-EE               PAKISTAN                       Early term                 1       40     379
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0       21    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        7    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0     1044    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1      321    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       85    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                 1       20    1498
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      161     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        7     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      224     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       41     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      302     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1       23     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1334    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       56    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      321    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       29    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      487    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       27    2254
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      707    1703
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1      136    1703
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0      200    1703
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1       57    1703
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      520    1703
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                 1       83    1703
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term          0     8617   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term          1       12   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                    0      590   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                    1        1   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                 0     7663   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                 1       14   16897
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          0      406     812
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          1       43     812
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    0      105     812
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    1       26     812
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 0      195     812
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 1       37     812
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term          0      550    1371
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term          1       41    1371
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                    0      280    1371
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                    1       35    1371
0-24 months   ki1135781-COHORTS          INDIA                          Early term                 0      436    1371
0-24 months   ki1135781-COHORTS          INDIA                          Early term                 1       29    1371
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      987    3019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          1      179    3019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      502    3019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    1      143    3019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 0      973    3019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 1      235    3019
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     9594   19946
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      755   19946
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     3545   19946
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      495   19946
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     5058   19946
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      499   19946
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      200     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       12     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       45     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        7     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       74     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        8     346
0-6 months    ki1000108-IRC              INDIA                          Full or late term          0      238     389
0-6 months    ki1000108-IRC              INDIA                          Full or late term          1       11     389
0-6 months    ki1000108-IRC              INDIA                          Preterm                    0       36     389
0-6 months    ki1000108-IRC              INDIA                          Preterm                    1        6     389
0-6 months    ki1000108-IRC              INDIA                          Early term                 0       92     389
0-6 months    ki1000108-IRC              INDIA                          Early term                 1        6     389
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term          0       24     379
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term          1        1     379
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                    0      208     379
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                    1       37     379
0-6 months    ki1000109-EE               PAKISTAN                       Early term                 0       94     379
0-6 months    ki1000109-EE               PAKISTAN                       Early term                 1       15     379
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0       28    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        0    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0     1261    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1       98    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       96    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 1        7    1490
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      168     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        0     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      250     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       15     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      323     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        2     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1380    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       10    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      343    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        7    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      513    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        1    2254
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term          0      733    1557
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term          1       22    1557
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                    0      226    1557
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                    1       15    1557
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                 0      556    1557
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                 1        5    1557
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term          0     8621   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term          1        6   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                    0      590   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                    1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                 0     7663   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                 1       12   16893
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          0      415     765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          1        5     765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    0      124     765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    1        5     765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 0      211     765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 1        5     765
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term          0      572    1348
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term          1       10    1348
0-6 months    ki1135781-COHORTS          INDIA                          Preterm                    0      296    1348
0-6 months    ki1135781-COHORTS          INDIA                          Preterm                    1       12    1348
0-6 months    ki1135781-COHORTS          INDIA                          Early term                 0      451    1348
0-6 months    ki1135781-COHORTS          INDIA                          Early term                 1        7    1348
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          0     1156    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          1       10    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      613    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    1       31    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 0     1177    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 1       31    3018
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0    10089   19906
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      252   19906
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     3759   19906
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      255   19906
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     5366   19906
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      185   19906
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      176     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       39     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       40     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1       12     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       75     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        9     351
6-24 months   ki1000108-IRC              INDIA                          Full or late term          0      217     390
6-24 months   ki1000108-IRC              INDIA                          Full or late term          1       33     390
6-24 months   ki1000108-IRC              INDIA                          Preterm                    0       30     390
6-24 months   ki1000108-IRC              INDIA                          Preterm                    1       12     390
6-24 months   ki1000108-IRC              INDIA                          Early term                 0       80     390
6-24 months   ki1000108-IRC              INDIA                          Early term                 1       18     390
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term          0       21     373
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term          1        4     373
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                    0      151     373
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                    1       89     373
6-24 months   ki1000109-EE               PAKISTAN                       Early term                 0       69     373
6-24 months   ki1000109-EE               PAKISTAN                       Early term                 1       39     373
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0       20    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        7    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0      967    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1      289    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       81    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                 1       15    1379
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      151     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        7     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      221     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       34     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      295     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1       22     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1104    1896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       53    1896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      274    1896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       26    1896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      412    1896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       27    1896
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      685    1635
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1      129    1635
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0      190    1635
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1       51    1635
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      500    1635
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                 1       80    1635
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term          0     8473   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term          1        6   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                    0      580   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                    1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                 0     7536   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                 1        3   16598
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          0      387     767
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          1       39     767
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    0       95     767
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    1       25     767
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 0      188     767
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 1       33     767
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term          0      534    1327
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term          1       40    1327
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                    0      274    1327
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                    1       29    1327
6-24 months   ki1135781-COHORTS          INDIA                          Early term                 0      423    1327
6-24 months   ki1135781-COHORTS          INDIA                          Early term                 1       27    1327
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      905    2786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          1      175    2786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      459    2786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    1      127    2786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 0      889    2786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 1      231    2786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     6222   12816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      548   12816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     2207   12816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      275   12816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     3212   12816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      352   12816


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/baaf2aa5-ac97-4e3a-921b-033441f4f84b/a98798b4-ac07-4b25-8581-eb256253b415/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/baaf2aa5-ac97-4e3a-921b-033441f4f84b/a98798b4-ac07-4b25-8581-eb256253b415/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/baaf2aa5-ac97-4e3a-921b-033441f4f84b/a98798b4-ac07-4b25-8581-eb256253b415/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/baaf2aa5-ac97-4e3a-921b-033441f4f84b/a98798b4-ac07-4b25-8581-eb256253b415/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2089982   0.1543682   0.2636283
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3202202   0.1890427   0.4513977
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1613466   0.0805556   0.2421375
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1568515   0.1115829   0.2021202
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.3151366   0.1698943   0.4603790
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.2023917   0.1221352   0.2826483
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2500000   0.1173954   0.3826046
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.2351648   0.1926748   0.2776548
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.1904762   0.1298989   0.2510534
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0416667   0.0114301   0.0719033
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1547170   0.1111476   0.1982864
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0707692   0.0428710   0.0986675
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0406665   0.0302352   0.0510977
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0832538   0.0542223   0.1122853
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0507484   0.0318100   0.0696867
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1586894   0.1339787   0.1834001
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2291491   0.1782136   0.2800845
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1388113   0.1114585   0.1661640
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0957652   0.0684789   0.1230516
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1984803   0.1300050   0.2669556
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1640008   0.1164431   0.2115584
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0688279   0.0484315   0.0892244
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.1178156   0.0829557   0.1526755
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.0633709   0.0413689   0.0853729
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1523211   0.1316705   0.1729716
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2218344   0.1901784   0.2534904
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1955551   0.1732804   0.2178298
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0734507   0.0678523   0.0790491
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1210248   0.1103572   0.1316924
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0897041   0.0816047   0.0978035
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0566038   0.0254523   0.0877552
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1346154   0.0417130   0.2275178
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.0975610   0.0332453   0.1618766
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.0441767   0.0186207   0.0697327
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.1428571   0.0368927   0.2488215
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.0612245   0.0136978   0.1087512
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0291391   0.0171377   0.0411404
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0622407   0.0317293   0.0927520
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0089127   0.0011329   0.0166924
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0119048   0.0015255   0.0222840
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0387597   0.0054291   0.0720903
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0231481   0.0030814   0.0432149
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0171821   0.0066207   0.0277436
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0389610   0.0173428   0.0605792
0-6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.0152838   0.0040443   0.0265234
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0086445   0.0032920   0.0139970
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0466710   0.0303384   0.0630036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0255489   0.0166539   0.0344438
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0244245   0.0213031   0.0275459
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0618359   0.0540130   0.0696588
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0335966   0.0284837   0.0387095
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1813953   0.1298133   0.2329774
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2307692   0.1160904   0.3454481
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1071429   0.0409059   0.1733798
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1323834   0.0900208   0.1747460
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.2755999   0.1365754   0.4146244
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1810928   0.1040590   0.2581266
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2592593   0.1205814   0.3979372
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.2300955   0.1920503   0.2681407
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.1562500   0.1248841   0.1876159
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0443038   0.0121970   0.0764106
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1333333   0.0915819   0.1750847
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0694006   0.0414057   0.0973955
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0458595   0.0337724   0.0579466
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0848070   0.0532210   0.1163930
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0619963   0.0394715   0.0845212
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1563366   0.1314082   0.1812651
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2176072   0.1661333   0.2690811
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1398067   0.1118765   0.1677369
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0915118   0.0640796   0.1189440
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2120913   0.1388384   0.2853442
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1544835   0.1072586   0.2017083
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0672785   0.0464728   0.0880843
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0958318   0.0628192   0.1288445
6-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.0598991   0.0379800   0.0818182
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1607106   0.1387397   0.1826815
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2172109   0.1842324   0.2501893
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2064655   0.1828528   0.2300782
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0818946   0.0746711   0.0891182
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1099163   0.0969182   0.1229145
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0980271   0.0878800   0.1081741


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2165242   0.1733743   0.2596741
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1871795   0.1484181   0.2259409
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2323097   0.1922289   0.2723906
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496894   0.0407166   0.0586623
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1620669   0.1445596   0.1795743
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1305419   0.1073553   0.1537285
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0765864   0.0625045   0.0906684
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1844982   0.1706594   0.1983369
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0876868   0.0832582   0.0921153
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0780347   0.0497312   0.1063382
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0591260   0.0356574   0.0825946
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0269750   0.0189251   0.0350248
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0196078   0.0097764   0.0294393
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0215134   0.0137652   0.0292615
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0238569   0.0184115   0.0293022
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0347634   0.0320812   0.0374456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1709402   0.1315009   0.2103795
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1615385   0.1249661   0.1981108
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2255257   0.1905482   0.2605033
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0559072   0.0455633   0.0662511
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1590214   0.1412900   0.1767528
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1264668   0.1029292   0.1500043
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0723436   0.0584002   0.0862871
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1913137   0.1767054   0.2059220
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0916823   0.0863748   0.0969897


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.5321669   0.9422186    2.4914974
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.7719997   0.4386445    1.3586935
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.0091397   1.1681456    3.4555987
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.2903395   0.7905609    2.1060693
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.9406593   0.5212112    1.6976612
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.7619048   0.4216947    1.3765855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    3.7132072   1.7048769    8.0873333
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.6984614   0.7436993    3.8789481
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    2.0472362   1.3281372    3.1556801
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2479172   0.7934620    1.9626616
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.4440096   1.1014245    1.8931518
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8747353   0.6813300    1.1230416
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.0725715   1.3253642    3.2410356
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.7125292   1.1405977    2.5712450
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.7117415   1.1264526    2.6011381
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.9207145   0.5836958    1.4523238
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.4563605   1.1967417    1.7723005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2838349   1.0759142    1.5319363
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.6477011   1.4708148    1.8458605
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.2212826   1.0892146    1.3693639
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    2.3782051   0.9837792    5.7491148
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.7235772   0.7302577    4.0680412
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    3.2337661   1.2623594    8.2838874
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.3858998   0.5263615    3.6490478
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    2.1359864   1.1259863    4.0519480
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.3058661   0.1165093    0.8029757
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    3.2558140   0.9568134   11.0787794
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.9444444   0.5686405    6.6489529
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    2.2675325   0.9906640    5.1901590
0-6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.8895197   0.3411203    2.3195486
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    5.3989266   2.6504557   10.9975084
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    2.9555043   1.4522516    6.0148020
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    2.5317143   2.1139795    3.0319959
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.3755291   1.1344959    1.6677718
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2721893   0.7176235    2.2553132
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.5906593   0.2990956    1.1664448
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.0818311   1.1455011    3.7835150
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3679416   0.8027885    2.3309552
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.8875114   0.4853695    1.6228386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.6026786   0.3211091    1.1311465
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    3.0095237   1.3666005    6.6275644
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.5664713   0.6834693    3.5902596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.8492795   1.1718888    2.9182245
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3518760   0.8631855    2.1172376
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3919140   1.0467451    1.8509040
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8942669   0.6934527    1.1532340
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.3176394   1.4664222    3.6629644
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.6881267   1.1004575    2.5896243
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4244042   0.8978595    2.2597382
6-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.8903151   0.5521008    1.4357178
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3515656   1.1025117    1.6568800
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2847040   1.0753472    1.5348199
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.3421677   1.1611400    1.5514186
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.1969904   1.0442917    1.3720170


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0075260   -0.0272126   0.0422646
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0303280   -0.0002782   0.0609341
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0176903   -0.1589790   0.1235985
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0520009    0.0213449   0.0826569
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0090230    0.0015202   0.0165258
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0033775   -0.0141433   0.0208983
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0347766    0.0133535   0.0561998
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0077585   -0.0081560   0.0236730
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0321771    0.0152677   0.0490865
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0142360    0.0102343   0.0182378
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0214309   -0.0027005   0.0455623
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0149493   -0.0042281   0.0341266
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0021641   -0.0104796   0.0061514
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0077031   -0.0015757   0.0169818
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0043312   -0.0043440   0.0130064
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0152124    0.0091749   0.0212498
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0103389    0.0078218   0.0128559
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0104552   -0.0413843   0.0204739
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0291550   -0.0002344   0.0585445
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0337335   -0.1831141   0.1156470
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0419976    0.0103726   0.0736225
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0100477    0.0013712   0.0187241
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0026848   -0.0149720   0.0203416
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0349550    0.0132483   0.0566616
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0050651   -0.0107585   0.0208887
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0306032    0.0127461   0.0484602
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0097876    0.0047457   0.0148295


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0347581   -0.1397300   0.1825328
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1620261   -0.0159983   0.3088569
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0761494   -0.9020927   0.3911455
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.5551643    0.1158430   0.7761949
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1815876    0.0197194   0.3167275
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0208402   -0.0934765   0.1232057
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2664022    0.0890513   0.4092249
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1013041   -0.1316704   0.2863166
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1744034    0.0780226   0.2607088
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1623511    0.1157172   0.2065257
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.2746331   -0.0891296   0.5169013
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.2528374   -0.1313107   0.5065441
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0802271   -0.4358159   0.1872980
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.3928571   -0.2355181   0.7016455
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.2013272   -0.3127887   0.5141044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.6376514    0.3566707   0.7959109
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.2974070    0.2242980   0.3636257
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0611628   -0.2580714   0.1049264
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1804836   -0.0192778   0.3410952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.1495772   -1.0630422   0.3594276
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4866385   -0.0147040   0.7402789
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1797211    0.0127006   0.3184869
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0168831   -0.1006659   0.1218780
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2763965    0.0904262   0.4243435
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0700143   -0.1766427   0.2649652
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1599632    0.0616452   0.2479798
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1067560    0.0498387   0.1602638
