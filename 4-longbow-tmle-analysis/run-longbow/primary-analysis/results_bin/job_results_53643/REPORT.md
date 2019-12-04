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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        gagebrth             wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ------------------  ------------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0       68    299
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1      117    299
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       21    299
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       28    299
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       21    299
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       44    299
0-24 months   ki1000108-IRC              INDIA                          Full or late term              0       92    382
0-24 months   ki1000108-IRC              INDIA                          Full or late term              1      134    382
0-24 months   ki1000108-IRC              INDIA                          Preterm                        0       24    382
0-24 months   ki1000108-IRC              INDIA                          Preterm                        1       29    382
0-24 months   ki1000108-IRC              INDIA                          Early term                     0       39    382
0-24 months   ki1000108-IRC              INDIA                          Early term                     1       64    382
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term              0        5    323
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term              1        1    323
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                        0      134    323
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                        1      143    323
0-24 months   ki1000109-EE               PAKISTAN                       Early term                     0       21    323
0-24 months   ki1000109-EE               PAKISTAN                       Early term                     1       19    323
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0       16    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       25    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0       57    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       92    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0       44    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       76    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0      128    666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      247    666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       52    666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       77    666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       67    666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       95    666
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              0      231   1249
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              1      399   1249
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        0       74   1249
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        1      121   1249
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                     0      141   1249
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                     1      283   1249
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     2124   7200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     1576   7200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0      856   7200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      659   7200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     1185   7200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      800   7200
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0       40    185
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       78    185
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0        7    185
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       20    185
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       13    185
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       27    185
0-6 months    ki1000108-IRC              INDIA                          Full or late term              0       51    230
0-6 months    ki1000108-IRC              INDIA                          Full or late term              1       84    230
0-6 months    ki1000108-IRC              INDIA                          Preterm                        0        9    230
0-6 months    ki1000108-IRC              INDIA                          Preterm                        1       17    230
0-6 months    ki1000108-IRC              INDIA                          Early term                     0       23    230
0-6 months    ki1000108-IRC              INDIA                          Early term                     1       46    230
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term              0        2    127
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term              1        1    127
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                        0       47    127
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                        1       58    127
0-6 months    ki1000109-EE               PAKISTAN                       Early term                     0        6    127
0-6 months    ki1000109-EE               PAKISTAN                       Early term                     1       13    127
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0        3    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       22    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0       11    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       85    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0        7    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       69    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0       52    316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      133    316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       20    316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       41    316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       23    316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       47    316
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term              0       53    555
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term              1      231    555
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                        0       20    555
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                        1       66    555
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                     0       25    555
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                     1      160    555
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0      720   4484
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     1576   4484
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0      308   4484
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      659   4484
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0      421   4484
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      800   4484
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
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term              0        3    196
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term              1        0    196
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                        0       87    196
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                        1       85    196
6-24 months   ki1000109-EE               PAKISTAN                       Early term                     0       15    196
6-24 months   ki1000109-EE               PAKISTAN                       Early term                     1        6    196
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
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              0      178    694
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              1      168    694
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        0       54    694
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        1       55    694
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                     0      116    694
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                     1      123    694
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     1404   2716
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1        0   2716
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0      548   2716
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1        0   2716
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0      764   2716
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1        0   2716


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
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/ca190ea8-4f24-45d7-b641-c88d64e77a4c/43a24318-02f1-4671-99b6-c389cd2d2be2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ca190ea8-4f24-45d7-b641-c88d64e77a4c/43a24318-02f1-4671-99b6-c389cd2d2be2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ca190ea8-4f24-45d7-b641-c88d64e77a4c/43a24318-02f1-4671-99b6-c389cd2d2be2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ca190ea8-4f24-45d7-b641-c88d64e77a4c/43a24318-02f1-4671-99b6-c389cd2d2be2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6308212   0.5598853   0.7017572
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5645219   0.4154271   0.7136166
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6779294   0.5455656   0.8102933
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.5920599   0.5198093   0.6643104
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.5263726   0.3901051   0.6626401
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.6160130   0.5204179   0.7116081
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.6243670   0.4800679   0.7686661
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.6219894   0.5444766   0.6995023
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.6369409   0.5463623   0.7275196
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6595674   0.6086351   0.7104997
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.6067659   0.5148547   0.6986771
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5841008   0.5041108   0.6640907
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.6364319   0.5970911   0.6757727
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.6121157   0.5369220   0.6873094
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.6654444   0.6165412   0.7143475
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8557214   0.8409043   0.8705385
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8630756   0.8146946   0.9114566
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.8659337   0.8513675   0.8804999
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.5242992   0.4384353   0.6101630
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.3537164   0.2183000   0.4891329
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.4507381   0.3412825   0.5601936
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2167393   0.1578164   0.2756623
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2871879   0.2096444   0.3647315
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.2962859   0.2310833   0.3614885
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6157733   0.5727846   0.6587621
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6045053   0.5543980   0.6546127
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.5971503   0.5595459   0.6347547
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.4232781   0.4074227   0.4391336
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.4365012   0.4114041   0.4615982
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.4045997   0.3829514   0.4262480
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6610169   0.5757140   0.7463199
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7407407   0.5666423   0.9148392
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6750000   0.5258441   0.8241559
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.6222222   0.5361698   0.7082747
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.6538462   0.4797295   0.8279628
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.6666667   0.5568093   0.7765240
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.7131632   0.6470477   0.7792788
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.6566496   0.5343340   0.7789651
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.6382234   0.5302790   0.7461678
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.8120929   0.7683605   0.8558254
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.7754122   0.6878187   0.8630056
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.8653108   0.8169268   0.9136948
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8785301   0.8645183   0.8925419
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8707623   0.8203728   0.9211517
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.8929232   0.8792400   0.9066064
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.8181818   0.7368393   0.8995243
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.6296296   0.4457667   0.8134926
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.8260870   0.7207224   0.9314515
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.3211410   0.2447311   0.3975510
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.4484090   0.3384696   0.5583483
0-6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.4616675   0.3702865   0.5530486
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.7414081   0.6866906   0.7961257
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.7428754   0.6781815   0.8075694
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.7254882   0.6763589   0.7746174
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.6832742   0.6642931   0.7022553
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.6858946   0.6565953   0.7151939
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.6565544   0.6296851   0.6834237
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.5820896   0.4594727   0.7047064
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3636364   0.1308138   0.5964590
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6800000   0.4890151   0.8709849
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.5458918   0.4376822   0.6541015
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.4290213   0.2241696   0.6338731
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.5162003   0.3238934   0.7085073
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6004626   0.5286854   0.6722398
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5254959   0.3990314   0.6519604
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5158540   0.4064529   0.6252551
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4793430   0.4230814   0.5356046
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.5059748   0.4001502   0.6117995
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.5178129   0.4487015   0.5869242
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.5152658   0.4571671   0.5733645
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.4681339   0.3970936   0.5391743
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.4894381   0.4372549   0.5416213


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6321070   0.5744109   0.6898031
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5942408   0.5412823   0.6471994
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6291291   0.5901846   0.6680736
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.6429143   0.6145621   0.6712666
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4750000   0.4147665   0.5352335
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2619503   0.2237649   0.3001357
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6059701   0.5813402   0.6306001
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4215278   0.4101272   0.4329284
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6756757   0.6074152   0.7439361
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6391304   0.5756367   0.7026242
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6993671   0.6481378   0.7505964
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.8234234   0.7927195   0.8541273
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7888199   0.7258783   0.8517615
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3982558   0.3464489   0.4500628
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7365591   0.7047881   0.7683302
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6768510   0.6631621   0.6905400
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5614035   0.4645960   0.6582110
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5263158   0.4415211   0.6111105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5657143   0.5118874   0.6195411
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4985591   0.4587425   0.5383757
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5016112   0.4676556   0.5355667


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8948999   0.6718714   1.191963
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0746776   0.8588041   1.344814
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    0.8890530   0.6674839   1.184171
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0404572   0.8538763   1.267808
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    0.9961920   0.7657429   1.295994
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.0201387   0.7772206   1.338980
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9199452   0.7761210   1.090422
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8855816   0.7568380   1.036225
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9617929   0.8385861   1.103102
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0455862   0.9500357   1.150747
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0085941   0.9511210   1.069540
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0119341   0.9877940   1.036664
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.6746461   0.4449914   1.022823
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8596963   0.6415701   1.151983
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.3250385   0.9033692   1.943532
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.3670150   0.9649383   1.936632
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9817010   0.8808899   1.094049
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9697567   0.8828076   1.065270
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0312396   0.9628761   1.104457
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9558719   0.8954963   1.020318
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.1206078   0.8570471   1.465219
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0211538   0.7906029   1.318937
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.0508242   0.7784047   1.418583
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.0714286   0.8640328   1.328606
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9207564   0.7472192   1.134596
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8949191   0.7376860   1.085665
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9548318   0.8432294   1.081205
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0655317   0.9866902   1.150673
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9911582   0.9334127   1.052476
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0163832   0.9941505   1.039113
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.7695473   0.5652821   1.047624
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0096618   0.8589016   1.186885
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.3962992   0.9919015   1.965569
0-6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.4375850   1.0538516   1.961045
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0019791   0.8939305   1.123087
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9785274   0.8853664   1.081491
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0038351   0.9539964   1.056278
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9608945   0.9145395   1.009599
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.6247086   0.3184160   1.225632
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.1682051   0.8223605   1.659495
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    0.7859090   0.4683391   1.318816
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    0.9456092   0.6200283   1.442155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.8751517   0.6686490   1.145430
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8590942   0.6731852   1.096345
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0555591   0.8309195   1.340930
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0802554   0.9049684   1.289494
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9085290   0.7517841   1.097955
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9498750   0.8132638   1.109434


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0012858   -0.0458029   0.0483745
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0021810   -0.0412373   0.0455993
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0017864   -0.1373561   0.1337833
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0304383   -0.0650005   0.0041239
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0064824   -0.0216911   0.0346559
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0054837   -0.0048944   0.0158619
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0492992   -0.1094037   0.0108053
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0452110   -0.0009189   0.0913408
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0098032   -0.0443427   0.0247363
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0017504   -0.0128195   0.0093188
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0146587   -0.0368417   0.0661592
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0169082   -0.0354403   0.0692567
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0137961   -0.0580576   0.0304653
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0113305   -0.0181680   0.0408290
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0069966   -0.0027129   0.0167060
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0293619   -0.0871996   0.0284757
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0771148    0.0163123   0.1379172
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0048490   -0.0499210   0.0402230
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0064231   -0.0197995   0.0069532
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0206860   -0.1028182   0.0614461
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0195760   -0.0901900   0.0510380
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0347483   -0.0847888   0.0152922
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0192161   -0.0206084   0.0590405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0136546   -0.0603735   0.0330643


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0020341   -0.0752929   0.0738004
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0036702   -0.0721822   0.0741563
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0028693   -0.2460829   0.1928733
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0483816   -0.1050060   0.0053411
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0100829   -0.0347109   0.0529375
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0063675   -0.0057603   0.0183491
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1037878   -0.2383594   0.0161601
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1725937   -0.0248638   0.3320076
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0161777   -0.0747895   0.0392378
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0041524   -0.0307591   0.0217675
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0216949   -0.0575958   0.0950410
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0264550   -0.0593125   0.1052784
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0197266   -0.0851091   0.0417163
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0137602   -0.0227556   0.0489723
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0079010   -0.0031291   0.0188098
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0372226   -0.1135640   0.0338851
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1936313    0.0256593   0.3326456
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0065833   -0.0696799   0.0527914
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0094897   -0.0294513   0.0100848
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0368470   -0.1946251   0.1000928
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0371945   -0.1808431   0.0889794
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0614238   -0.1541724   0.0238716
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0385433   -0.0448061   0.1152434
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0272215   -0.1247067   0.0618141
