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
* W_nchldlt5
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impsan

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
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term          0       13     379
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term          1        4     379
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                    0      155     379
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                    1      147     379
0-24 months   ki1000109-EE               PAKISTAN                       Early term                 0       41     379
0-24 months   ki1000109-EE               PAKISTAN                       Early term                 1       19     379
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
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      706    1704
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1      137    1704
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0      202    1704
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1       55    1704
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      520    1704
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                 1       84    1704
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0    12381   25638
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      952   25638
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     4507   25638
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      686   25638
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     6469   25638
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      643   25638
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
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term          0       15     379
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term          1        2     379
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                    0      254     379
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                    1       48     379
0-6 months    ki1000109-EE               PAKISTAN                       Early term                 0       53     379
0-6 months    ki1000109-EE               PAKISTAN                       Early term                 1        7     379
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
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term          0      756    1585
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term          1       23    1585
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                    0      229    1585
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                    1       13    1585
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                 0      558    1585
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                 1        6    1585
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0    12948   25536
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      344   25536
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     4753   25536
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      401   25536
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     6825   25536
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      265   25536
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
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term          0       14     372
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term          1        3     372
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                    0      162     372
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                    1      135     372
6-24 months   ki1000109-EE               PAKISTAN                       Early term                 0       40     372
6-24 months   ki1000109-EE               PAKISTAN                       Early term                 1       18     372
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     8080   16459
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      672   16459
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     2813   16459
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      337   16459
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     4131   16459
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      426   16459


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/75b16e87-5ada-4c67-b248-091e3386a505/6bdaaaae-c94d-44d2-bd1b-cbea9460f7e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/75b16e87-5ada-4c67-b248-091e3386a505/6bdaaaae-c94d-44d2-bd1b-cbea9460f7e0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/75b16e87-5ada-4c67-b248-091e3386a505/6bdaaaae-c94d-44d2-bd1b-cbea9460f7e0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/75b16e87-5ada-4c67-b248-091e3386a505/6bdaaaae-c94d-44d2-bd1b-cbea9460f7e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2093257   0.1545819   0.2640696
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3093701   0.1780580   0.4406821
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1637636   0.0822823   0.2452448
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1564647   0.1111959   0.2017336
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.3172317   0.1711401   0.4633233
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.2006007   0.1214154   0.2797859
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0416667   0.0114301   0.0719033
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1547170   0.1111476   0.1982864
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0707692   0.0428710   0.0986675
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0406089   0.0302171   0.0510006
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0823755   0.0535616   0.1111894
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0516689   0.0324538   0.0708839
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1599716   0.1352192   0.1847240
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2196727   0.1692779   0.2700676
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1409390   0.1133122   0.1685658
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0967866   0.0695201   0.1240531
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2063590   0.1381523   0.2745657
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1666494   0.1195376   0.2137612
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0676598   0.0471453   0.0881743
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.1108602   0.0759889   0.1457315
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.0615175   0.0395448   0.0834902
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1526567   0.1320305   0.1732830
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2252273   0.1934844   0.2569702
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1962237   0.1739585   0.2184889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0716420   0.0668722   0.0764118
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1314076   0.1212057   0.1416094
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0903535   0.0832559   0.0974511
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0566038   0.0254523   0.0877552
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1346154   0.0417130   0.2275178
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.0975610   0.0332453   0.1618766
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.0441767   0.0186207   0.0697327
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.1428571   0.0368927   0.2488215
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.0612245   0.0136978   0.1087512
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0295250   0.0176344   0.0414156
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0537190   0.0253038   0.0821343
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0106383   0.0021688   0.0191078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0119048   0.0015255   0.0222840
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0387597   0.0054291   0.0720903
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0231481   0.0030814   0.0432149
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0171821   0.0066207   0.0277436
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0389610   0.0173428   0.0605792
0-6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.0152838   0.0040443   0.0265234
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0088549   0.0033732   0.0143367
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0467408   0.0304050   0.0630766
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0256929   0.0167417   0.0346441
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0258273   0.0230124   0.0286422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0774155   0.0695651   0.0852660
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0374338   0.0327311   0.0421365
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1813953   0.1298133   0.2329774
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2307692   0.1160904   0.3454481
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1071429   0.0409059   0.1733798
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1326943   0.0903519   0.1750367
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.2716166   0.1353677   0.4078656
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1844433   0.1063923   0.2624943
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0443038   0.0121970   0.0764106
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1333333   0.0915819   0.1750847
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0694006   0.0414057   0.0973955
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0458958   0.0338099   0.0579817
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0846006   0.0528541   0.1163472
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0625722   0.0399069   0.0852374
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1566653   0.1316866   0.1816439
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2137488   0.1624847   0.2650130
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1390374   0.1110336   0.1670413
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0907795   0.0633206   0.1182383
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2028239   0.1293343   0.2763134
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1513305   0.1037979   0.1988632
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0679755   0.0471996   0.0887514
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0990666   0.0661532   0.1319799
6-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.0607057   0.0387492   0.0826621
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1604657   0.1385425   0.1823889
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2193372   0.1863551   0.2523192
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2076270   0.1840154   0.2312386
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0774878   0.0714026   0.0835730
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1053909   0.0935496   0.1172323
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0929508   0.0844723   0.1014293


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2165242   0.1733743   0.2596741
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1871795   0.1484181   0.2259409
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496894   0.0407166   0.0586623
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1619718   0.1444738   0.1794699
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1305419   0.1073553   0.1537285
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0765864   0.0625045   0.0906684
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1844982   0.1706594   0.1983369
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0889695   0.0850028   0.0929362
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0780347   0.0497312   0.1063382
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0591260   0.0356574   0.0825946
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0264984   0.0185889   0.0344079
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0196078   0.0097764   0.0294393
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0215134   0.0137652   0.0292615
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0238569   0.0184115   0.0293022
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0395520   0.0369981   0.0421059
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1709402   0.1315009   0.2103795
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1615385   0.1249661   0.1981108
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0559072   0.0455633   0.0662511
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1590214   0.1412900   0.1767528
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1264668   0.1029292   0.1500043
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0723436   0.0584002   0.0862871
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1913137   0.1767054   0.2059220
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0871863   0.0825060   0.0918667


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.4779361   0.8980722    2.432204
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.7823384   0.4455348    1.373750
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.0274964   1.1800144    3.483637
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.2820824   0.7867350    2.089312
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    3.7132072   1.7048769    8.087333
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.6984614   0.7436993    3.878948
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    2.0285091   1.3154730    3.128038
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2723534   0.8102541    1.997994
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3731987   1.0417839    1.810044
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8810255   0.6870542    1.129759
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.1321034   1.3815945    3.290303
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.7218238   1.1563498    2.563824
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.6384940   1.0586328    2.535972
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.9092177   0.5697491    1.450949
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.4753839   1.2142542    1.792671
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2853917   1.0779689    1.532727
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.8342257   1.6612617    2.025198
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.2611806   1.1431119    1.391444
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    2.3782051   0.9837792    5.749115
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.7235772   0.7302577    4.068041
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    3.2337661   1.2623594    8.283887
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.3858998   0.5263615    3.649048
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.8194395   0.9358545    3.537259
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.3603145   0.1476399    0.879346
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    3.2558140   0.9568134   11.078779
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.9444444   0.5686405    6.648953
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    2.2675325   0.9906640    5.190159
0-6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.8895197   0.3411203    2.319549
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    5.2785154   2.5921251   10.748989
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    2.9015398   1.4256393    5.905374
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    2.9974282   2.5810945    3.480917
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.4493884   1.2377940    1.697154
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2721893   0.7176235    2.255313
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.5906593   0.2990956    1.166445
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.0469352   1.1290702    3.710968
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3899865   0.8181209    2.361585
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    3.0095237   1.3666005    6.627564
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.5664713   0.6834693    3.590260
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.8433212   1.1653347    2.915757
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3633541   0.8715724    2.132622
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3643664   1.0233241    1.819068
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8874810   0.6873855    1.145823
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.2342483   1.3935744    3.582059
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.6670129   1.0775414    2.578956
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4573864   0.9289880    2.286332
6-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.8930520   0.5568253    1.432302
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3668790   1.1161791    1.673888
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2939027   1.0836359    1.544969
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.3600967   1.1899336    1.554593
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.1995535   1.0655679    1.350387


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0071985   -0.0275597   0.0419566
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0307147    0.0002329   0.0611966
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0520009    0.0213449   0.0826569
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0090806    0.0016088   0.0165523
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0020003   -0.0155124   0.0195130
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0337553    0.0123830   0.0551276
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0089266   -0.0070698   0.0249230
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0318414    0.0149478   0.0487351
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0173275    0.0138753   0.0207797
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0214309   -0.0027005   0.0455623
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0149493   -0.0042281   0.0341266
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0030266   -0.0110869   0.0050337
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0077031   -0.0015757   0.0169818
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0043312   -0.0043440   0.0130064
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0150019    0.0088869   0.0211170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0137247    0.0113818   0.0160676
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0104552   -0.0413843   0.0204739
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0288442   -0.0004866   0.0581749
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0419976    0.0103726   0.0736225
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0100114    0.0013362   0.0186866
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0023561   -0.0153284   0.0200407
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0356873    0.0139299   0.0574446
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0043681   -0.0114370   0.0201733
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0308480    0.0130139   0.0486821
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0096985    0.0054878   0.0139093


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0332456   -0.1413499   0.1811327
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1640925   -0.0133168   0.3104413
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.5551643    0.1158430   0.7761949
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1827461    0.0217264   0.3172627
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0123495   -0.1019214   0.1147703
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2585783    0.0819250   0.4012405
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1165561   -0.1184515   0.3021842
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1725840    0.0763306   0.2588071
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1947578    0.1556215   0.2320802
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.2746331   -0.0891296   0.5169013
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.2528374   -0.1313107   0.5065441
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1142185   -0.4616076   0.1506046
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.3928571   -0.2355181   0.7016455
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.2013272   -0.3127887   0.5141044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.6288315    0.3408933   0.7909806
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.3470034    0.2888428   0.4004075
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0611628   -0.2580714   0.1049264
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1785591   -0.0207121   0.3389270
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4866385   -0.0147040   0.7402789
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1790719    0.0120952   0.3178260
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0148165   -0.1029162   0.1199816
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2821871    0.0955137   0.4303337
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0603804   -0.1855524   0.2552964
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1612432    0.0630809   0.2491209
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1112390    0.0616336   0.1582222
