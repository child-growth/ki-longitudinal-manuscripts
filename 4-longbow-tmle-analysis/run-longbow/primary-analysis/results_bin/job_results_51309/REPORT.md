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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        gagebrth             wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ------------------  ------------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0       68    301
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1      119    301
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       21    301
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       28    301
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       21    301
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       44    301
0-24 months   ki1000108-IRC              INDIA                          Full or late term              0       92    382
0-24 months   ki1000108-IRC              INDIA                          Full or late term              1      134    382
0-24 months   ki1000108-IRC              INDIA                          Preterm                        0       24    382
0-24 months   ki1000108-IRC              INDIA                          Preterm                        1       29    382
0-24 months   ki1000108-IRC              INDIA                          Early term                     0       39    382
0-24 months   ki1000108-IRC              INDIA                          Early term                     1       64    382
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term              0        4    257
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term              1        6    257
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                        0       98    257
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                        1       78    257
0-24 months   ki1000109-EE               PAKISTAN                       Early term                     0       48    257
0-24 months   ki1000109-EE               PAKISTAN                       Early term                     1       23    257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0        9    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        5    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      463    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      282    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       29    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       22    810
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0       16    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       26    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0       57    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       92    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0       44    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       76    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0      128    666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      247    666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       52    666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       77    666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       67    666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       95    666
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              0      225    953
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              1      255    953
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        0       73    953
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        1       88    953
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                     0      137    953
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                     1      175    953
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term              0      315   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term              1     1875   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                        0       24   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                        1      139   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                     0      276   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                     1     1802   4431
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term              0       66    280
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       75    280
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                        0       35    280
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       19    280
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                     0       46    280
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                     1       39    280
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term              0      163    523
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term              1       46    523
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                        0       96    523
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                        1       38    523
0-24 months   ki1135781-COHORTS          INDIA                          Early term                     0      127    523
0-24 months   ki1135781-COHORTS          INDIA                          Early term                     1       53    523
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      219   1675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      352   1675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      156   1675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      238   1675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      285   1675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      425   1675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     1675   5584
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     1222   5584
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0      669   5584
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      485   5584
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0      944   5584
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      589   5584
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0       40    187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       80    187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0        7    187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       20    187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       13    187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       27    187
0-6 months    ki1000108-IRC              INDIA                          Full or late term              0       51    230
0-6 months    ki1000108-IRC              INDIA                          Full or late term              1       84    230
0-6 months    ki1000108-IRC              INDIA                          Preterm                        0        9    230
0-6 months    ki1000108-IRC              INDIA                          Preterm                        1       17    230
0-6 months    ki1000108-IRC              INDIA                          Early term                     0       23    230
0-6 months    ki1000108-IRC              INDIA                          Early term                     1       46    230
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term              0        1    108
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term              1        6    108
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                        0       34    108
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                        1       39    108
0-6 months    ki1000109-EE               PAKISTAN                       Early term                     0       12    108
0-6 months    ki1000109-EE               PAKISTAN                       Early term                     1       16    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0        2    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        4    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      148    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      159    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       15    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       12    340
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0        3    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       23    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0       11    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       85    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0        7    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       69    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0       52    316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      133    316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       20    316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       41    316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       23    316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       47    316
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term              0       45    257
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term              1       87    257
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                        0       19    257
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                        1       33    257
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                     0       21    257
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                     1       52    257
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term              0      256   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term              1     1858   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                        0       19   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                        1      138   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                     0      213   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                     1     1779   4263
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term              0       16    161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term              1       72    161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                        0       10    161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                        1       17    161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term                     0        8    161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term                     1       38    161
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term              0       98    344
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term              1       46    344
0-6 months    ki1135781-COHORTS          INDIA                          Preterm                        0       46    344
0-6 months    ki1135781-COHORTS          INDIA                          Preterm                        1       38    344
0-6 months    ki1135781-COHORTS          INDIA                          Early term                     0       63    344
0-6 months    ki1135781-COHORTS          INDIA                          Early term                     1       53    344
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term              0       63    744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      182    744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                        0       46    744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      134    744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                     0       87    744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                     1      232    744
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0      554   3403
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     1222   3403
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0      215   3403
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      485   3403
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0      338   3403
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      589   3403
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0       28    114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       39    114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       14    114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1        8    114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0        8    114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       17    114
6-24 months   ki1000108-IRC              INDIA                          Full or late term              0       41    152
6-24 months   ki1000108-IRC              INDIA                          Full or late term              1       50    152
6-24 months   ki1000108-IRC              INDIA                          Preterm                        0       15    152
6-24 months   ki1000108-IRC              INDIA                          Preterm                        1       12    152
6-24 months   ki1000108-IRC              INDIA                          Early term                     0       16    152
6-24 months   ki1000108-IRC              INDIA                          Early term                     1       18    152
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term              0        3    149
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term              1        0    149
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                        0       64    149
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                        1       39    149
6-24 months   ki1000109-EE               PAKISTAN                       Early term                     0       36    149
6-24 months   ki1000109-EE               PAKISTAN                       Early term                     1        7    149
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0        7    470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        1    470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      315    470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      123    470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       14    470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       10    470
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0       13    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1        3    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0       46    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1        7    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0       37    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1        7    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0       76    350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      114    350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       32    350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       36    350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       44    350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       48    350
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              0      180    696
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              1      168    696
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        0       54    696
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        1       55    696
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                     0      116    696
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                     1      123    696
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term              0       59    168
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term              1       17    168
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                        0        5    168
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                        1        1    168
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                     0       63    168
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                     1       23    168
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term              0       50    119
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term              1        3    119
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                        0       25    119
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                        1        2    119
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                     0       38    119
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                     1        1    119
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term              0       65    179
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term              1        0    179
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                        0       50    179
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                        1        0    179
6-24 months   ki1135781-COHORTS          INDIA                          Early term                     0       64    179
6-24 months   ki1135781-COHORTS          INDIA                          Early term                     1        0    179
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      156    931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      170    931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      110    931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      104    931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      198    931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      193    931
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     1121   2181
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1        0   2181
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0      454   2181
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1        0   2181
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0      606   2181
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1        0   2181


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
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/64911903-9fd8-4d9f-b1ee-52fff10a1753/f2188607-ebe2-4ec3-b5a4-dc5a436f4ac9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/64911903-9fd8-4d9f-b1ee-52fff10a1753/f2188607-ebe2-4ec3-b5a4-dc5a436f4ac9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/64911903-9fd8-4d9f-b1ee-52fff10a1753/f2188607-ebe2-4ec3-b5a4-dc5a436f4ac9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/64911903-9fd8-4d9f-b1ee-52fff10a1753/f2188607-ebe2-4ec3-b5a4-dc5a436f4ac9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6338669   0.5636636   0.7040703
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5741955   0.4251542   0.7232369
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6762276   0.5386550   0.8138002
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.5948541   0.5227548   0.6669533
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.5799110   0.4433363   0.7164856
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.6248668   0.5294980   0.7202356
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.3571429   0.1608018   0.5534839
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3785235   0.3421693   0.4148777
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.4313725   0.2762267   0.5865184
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.6233690   0.4763559   0.7703821
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.6208748   0.5436380   0.6981116
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.6293700   0.5380559   0.7206841
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6601979   0.6090602   0.7113356
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.6026870   0.5106581   0.6947160
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5789314   0.4992197   0.6586431
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.5299405   0.4812839   0.5785972
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.5371709   0.4502174   0.6241245
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.5626461   0.4999110   0.6253813
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8553497   0.8404976   0.8702018
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8625521   0.8129290   0.9121751
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.8660596   0.8515208   0.8805984
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.5304614   0.4449529   0.6159699
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.3707280   0.2350617   0.5063943
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.4610397   0.3531913   0.5688881
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2192648   0.1600130   0.2785166
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2879734   0.2107054   0.3652413
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.2965622   0.2310055   0.3621190
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6166273   0.5736210   0.6596336
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6063406   0.5561618   0.6565193
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.5974200   0.5598480   0.6349920
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.4202217   0.4022526   0.4381908
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.4206444   0.3922076   0.4490813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.3869921   0.3625374   0.4114469
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6666667   0.5821538   0.7511795
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7407407   0.5657628   0.9157187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6750000   0.5250907   0.8249093
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.6222222   0.5361698   0.7082747
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.6538462   0.4797295   0.8279628
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.6666667   0.5568093   0.7765240
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.7185033   0.6524713   0.7845353
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.6623054   0.5395780   0.7850327
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.6679587   0.5564530   0.7794643
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.6623052   0.5814724   0.7431380
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.6409354   0.5153289   0.7665419
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.7300119   0.6227410   0.8372827
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8788577   0.8648376   0.8928777
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8845114   0.8334199   0.9356029
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.8932706   0.8795841   0.9069572
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.8181818   0.7368393   0.8995243
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.6296296   0.4457667   0.8134926
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.8260870   0.7207224   0.9314515
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.3176795   0.2411805   0.3941784
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.4553041   0.3466909   0.5639173
0-6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.4545029   0.3620367   0.5469692
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.7411884   0.6864812   0.7958956
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.7427386   0.6777129   0.8077643
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.7266696   0.6775417   0.7757975
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.6843078   0.6627076   0.7059080
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.6951721   0.6611915   0.7291526
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.6382545   0.6069339   0.6695751
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.5820896   0.4594727   0.7047064
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3636364   0.1308138   0.5964590
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6800000   0.4890151   0.8709849
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.5453601   0.4368833   0.6538369
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.4389187   0.2331431   0.6446943
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.5226462   0.3305636   0.7147288
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.5950032   0.5232768   0.6667296
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5135755   0.3891846   0.6379664
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5199941   0.4124495   0.6275387
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4779865   0.4219278   0.5340451
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.5036856   0.3973616   0.6100096
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.5171462   0.4485437   0.5857486
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.5208050   0.4627375   0.5788725
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.4827010   0.4123925   0.5530094
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.4904139   0.4378808   0.5429470


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6345515   0.5770351   0.6920679
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5942408   0.5412823   0.6471994
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3814815   0.3462984   0.4166645
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6291291   0.5901846   0.6680736
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5435467   0.5088559   0.5782375
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4750000   0.4147665   0.5352335
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2619503   0.2237649   0.3001357
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6059701   0.5813402   0.6306001
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4111748   0.3982807   0.4240689
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6791444   0.6111760   0.7471128
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6391304   0.5756367   0.7026242
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6993671   0.6481378   0.7505964
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6692607   0.6118880   0.7266334
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7888199   0.7258783   0.8517615
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3982558   0.3464489   0.4500628
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7365591   0.7047881   0.7683302
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6746988   0.6589571   0.6904405
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5614035   0.4645960   0.6582110
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5263158   0.4415211   0.6111105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5657143   0.5118874   0.6195411
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4971264   0.4573928   0.5368601
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5016112   0.4676556   0.5355667


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.9058613   0.6834553   1.2006414
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0668290   0.8470084   1.3436986
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    0.9748794   0.7475190   1.2713922
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0504540   0.8641328   1.2769491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    1.0598658   0.6065874   1.8518608
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    1.2078431   0.6262172   2.3296789
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    0.9959989   0.7624176   1.3011422
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.0096267   0.7647142   1.3329766
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9128885   0.7692508   1.0833468
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8769058   0.7488684   1.0268345
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0136438   0.8415963   1.2208628
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0617156   0.9190914   1.2264723
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0084204   0.9496074   1.0708759
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0125211   0.9883550   1.0372781
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.6988784   0.4680980   1.0434376
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8691295   0.6549562   1.1533384
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.3133590   0.8983837   1.9200170
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.3525302   0.9553384   1.9148586
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9833178   0.8825001   1.0956529
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9688510   0.8820930   1.0641421
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0010060   0.9240641   1.0843545
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9209238   0.8533124   0.9938922
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.1111111   0.8498176   1.4527446
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0125000   0.7840402   1.3075303
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.0508242   0.7784047   1.4185827
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.0714286   0.8640328   1.3286061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9217847   0.7494895   1.1336877
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9296529   0.7683772   1.1247789
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9677342   0.7687660   1.2181983
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.1022288   0.9104333   1.3344287
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0064331   0.9478967   1.0685843
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0163996   0.9941635   1.0391331
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.7695473   0.5652821   1.0476239
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0096618   0.8589016   1.1868846
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4332184   1.0212266   2.0114196
0-6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.4306966   1.0438265   1.9609511
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0020915   0.8936638   1.1236747
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9804115   0.8871373   1.0834926
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0158763   0.9585234   1.0766608
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9327009   0.8799059   0.9886637
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.6247086   0.3184160   1.2256319
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.1682051   0.8223605   1.6594951
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    0.8048236   0.4834838   1.3397367
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    0.9583506   0.6295829   1.4588007
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.8631474   0.6584186   1.1315347
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8739350   0.6875717   1.1108112
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0537654   0.8280545   1.3410006
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0819264   0.9069084   1.2907200
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9268363   0.7714582   1.1135089
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9416460   0.8066569   1.0992246


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0006846   -0.0459819   0.0473510
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0006132   -0.0440857   0.0428592
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0243386   -0.1702536   0.2189308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0004252   -0.1373271   0.1381775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0310688   -0.0658056   0.0036680
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0136062   -0.0212499   0.0484623
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0058555   -0.0045536   0.0162645
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0554614   -0.1152938   0.0043710
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0426855   -0.0036743   0.0890454
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0106572   -0.0451974   0.0238831
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0090469   -0.0214665   0.0033727
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0124777   -0.0384437   0.0633991
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0169082   -0.0354403   0.0692567
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0191362   -0.0629077   0.0246353
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0069555   -0.0489033   0.0628143
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0066689   -0.0030449   0.0163828
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0293619   -0.0871996   0.0284757
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0805763    0.0199963   0.1411564
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0046293   -0.0497065   0.0404480
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0096090   -0.0247311   0.0055131
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0206860   -0.1028182   0.0614461
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0190443   -0.0904638   0.0523752
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0292889   -0.0792985   0.0207206
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0191400   -0.0205466   0.0588266
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0191938   -0.0658119   0.0274243


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0010788   -0.0752276   0.0719700
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0010319   -0.0769170   0.0695059
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0638003   -0.6139967   0.4569568
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0006817   -0.2464473   0.1988132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0493838   -0.1062940   0.0045988
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0250322   -0.0412362   0.0870830
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0067992   -0.0053655   0.0188166
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1167609   -0.2508364   0.0029433
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1629527   -0.0352944   0.3232377
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0175869   -0.0761961   0.0378304
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0220026   -0.0526614   0.0077633
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0183727   -0.0595480   0.0905630
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0264550   -0.0593125   0.1052784
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0273622   -0.0920147   0.0334626
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0103928   -0.0767150   0.0904535
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0075310   -0.0035039   0.0184447
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0372226   -0.1135640   0.0338851
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.2023231    0.0345295   0.3409551
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0062850   -0.0693895   0.0530958
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0142419   -0.0369141   0.0079345
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0368470   -0.1946251   0.1000928
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0361842   -0.1815970   0.0913335
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0517733   -0.1443963   0.0333531
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0385012   -0.0447911   0.1151534
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0382643   -0.1354861   0.0506333
