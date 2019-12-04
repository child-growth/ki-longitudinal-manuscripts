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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        gagebrth             ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ------------------  -------------  -------  ------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               0      183     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               1       30     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         0       42     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         1       10     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      0       71     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      1       12     348
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term               0      206     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term               1       43     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                         0       34     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                         1        8     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                      0       74     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                      1       24     389
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term               0       16     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term               1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                         0      240     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                         1       61     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                      0       55     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                      1        5     377
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               0      165     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               1        3     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         0      250     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         1       11     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      0      319     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      1        6     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0     1325    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1       60    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      323    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       21    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      483    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1       30    2242
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term               0      711    1692
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term               1      127    1692
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                         0      218    1692
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                         1       38    1692
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                      0      530    1692
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                      1       68    1692
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term               0     8519   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term               1      102   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                         0      583   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                         1        8   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                      0     7571   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                      1       94   16877
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term               0      441     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term               1        7     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                         0      126     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                         1        4     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                      0      222     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                      1        9     809
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term               0      556    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term               1       23    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                         0      294    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                         1       14    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                      0      433    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                      1       25    1345
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term               0     1073    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term               1       85    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                         0      581    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                         1       52    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                      0     1093    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                      1      109    2993
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0    12677   25266
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1      457   25266
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     4924   25266
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      188   25266
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     6763   25266
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      257   25266
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               0      180     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               1       20     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         0       49     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         1        2     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      0       75     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      1        6     332
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term               0      206     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term               1       33     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                         0       33     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                         1        5     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                      0       77     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                      1       17     371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term               0       16     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term               1        0     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                         0      280     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                         1       19     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                      0       59     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                      1        1     375
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               0      168     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               1        0     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         0      259     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      0      321     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      1        0     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0     1356    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1       24    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      337    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1        6    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      503    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1        8    2234
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term               0      731    1565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term               1       36    1565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                         0      228    1565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                         1       12    1565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                      0      542    1565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                      1       16    1565
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term               0     8414   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term               1       92   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                         0      575   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                         1        7   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                      0     7489   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                      1       80   16657
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term               0      409     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term               1        1     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                         0      122     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                         1        0     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                      0      212     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                      1        1     745
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term               0      524    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term               1        9    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                         0      278    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                         1        4    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                      0      425    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                      1        9    1249
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term               0     1128    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term               1       22    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                         0      616    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                         1       13    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                      0     1163    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                      1       30    2972
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0    12791   24985
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1      211   24985
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     4959   24985
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1       76   24985
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     6825   24985
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      123   24985
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               0      201     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               1       14     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         0       44     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         1        8     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      0       78     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      1        6     351
6-24 months                   ki1000108-IRC              INDIA                          Full or late term               0      237     390
6-24 months                   ki1000108-IRC              INDIA                          Full or late term               1       13     390
6-24 months                   ki1000108-IRC              INDIA                          Preterm                         0       37     390
6-24 months                   ki1000108-IRC              INDIA                          Preterm                         1        5     390
6-24 months                   ki1000108-IRC              INDIA                          Early term                      0       90     390
6-24 months                   ki1000108-IRC              INDIA                          Early term                      1        8     390
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term               0       17     374
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term               1        0     374
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                         0      252     374
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                         1       47     374
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                      0       54     374
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                      1        4     374
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               0      155     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               1        3     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         0      244     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         1       11     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      0      311     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      1        6     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0     1120    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1       38    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      284    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       16    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      417    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1       22    1897
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term               0      718    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term               1       96    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                         0      214    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                         1       27    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                      0      522    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                      1       58    1635
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term               0     8469   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term               1       10   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                         0      579   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                         1        1   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                      0     7524   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                      1       15   16598
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term               0      420     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term               1        7     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                         0      116     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                         1        5     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                      0      213     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                      1        8     769
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term               0      559    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term               1       15    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                         0      291    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                         1       12    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                      0      432    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                      1       18    1327
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term               0     1016    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term               1       65    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                         0      547    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                         1       39    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                      0     1038    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                      1       82    2787
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     8489   16477
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1      268   16477
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     3043   16477
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      115   16477
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     4414   16477
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      148   16477


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/987f1363-53e0-4d13-93a4-2641a30a5c73/e0ec8283-1523-44fd-ab47-5d0f193ef90a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/987f1363-53e0-4d13-93a4-2641a30a5c73/e0ec8283-1523-44fd-ab47-5d0f193ef90a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/987f1363-53e0-4d13-93a4-2641a30a5c73/e0ec8283-1523-44fd-ab47-5d0f193ef90a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/987f1363-53e0-4d13-93a4-2641a30a5c73/e0ec8283-1523-44fd-ab47-5d0f193ef90a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1398708   0.0928475   0.1868941
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1873540   0.0780634   0.2966446
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1417242   0.0660255   0.2174228
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                0.1726908   0.1256823   0.2196992
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715664   0.3093860
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           NA                0.2448980   0.1596489   0.3301470
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0435616   0.0327920   0.0543311
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0604206   0.0353644   0.0854767
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0579960   0.0379811   0.0780108
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1490265   0.1248115   0.1732415
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1506975   0.1066833   0.1947118
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1151439   0.0895798   0.1407080
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0118316   0.0074560   0.0162072
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0135364   0.0013326   0.0257401
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0122635   0.0085220   0.0160051
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0393260   0.0235040   0.0551481
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0466401   0.0229696   0.0703106
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           NA                0.0546064   0.0337514   0.0754613
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0734922   0.0584536   0.0885308
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0821379   0.0607252   0.1035507
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0908240   0.0746503   0.1069977
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0350287   0.0315271   0.0385302
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0359858   0.0304846   0.0414870
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0361097   0.0312847   0.0409347
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                0.1380753   0.0942800   0.1818707
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              NA                0.1315789   0.0239570   0.2392009
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           NA                0.1808511   0.1029377   0.2587645
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0173913   0.0104927   0.0242899
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0174927   0.0036157   0.0313697
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0156556   0.0048899   0.0264213
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0461087   0.0312797   0.0609376
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0516171   0.0233214   0.0799127
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0291928   0.0151451   0.0432405
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0108159   0.0062945   0.0153372
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0120275   0.0028081   0.0212469
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0105694   0.0069148   0.0142241
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0193063   0.0112615   0.0273511
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0206683   0.0093217   0.0320148
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0250247   0.0161142   0.0339352
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0163181   0.0138381   0.0187980
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0146790   0.0111153   0.0182426
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0175360   0.0141407   0.0209313
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0651163   0.0320891   0.0981435
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1538462   0.0556411   0.2520512
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.0714286   0.0162753   0.1265819
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                0.0520000   0.0244424   0.0795576
6-24 months                   ki1000108-IRC              INDIA                          Preterm              NA                0.1190476   0.0209818   0.2171134
6-24 months                   ki1000108-IRC              INDIA                          Early term           NA                0.0816327   0.0273535   0.1359118
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0326210   0.0223987   0.0428433
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0529891   0.0276479   0.0783303
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0495213   0.0292339   0.0698086
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1172759   0.0951152   0.1394366
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1145517   0.0744486   0.1546548
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1007301   0.0763119   0.1251484
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0163934   0.0043414   0.0284455
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0413223   0.0058355   0.0768091
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0361991   0.0115570   0.0608412
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0256859   0.0127118   0.0386601
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0416061   0.0190428   0.0641694
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           NA                0.0398272   0.0216958   0.0579586
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0593037   0.0451427   0.0734646
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0671854   0.0469896   0.0873812
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0735812   0.0583567   0.0888058
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0309309   0.0267062   0.0351557
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0350108   0.0281306   0.0418911
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0323362   0.0268233   0.0378490


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494253   0.1119149   0.1869357
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1928021   0.1535486   0.2320555
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0495094   0.0405280   0.0584908
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1377069   0.1212828   0.1541310
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0120875   0.0084025   0.0157724
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.0460967   0.0348859   0.0573074
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0821918   0.0723504   0.0920332
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0357002   0.0330794   0.0383209
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.1482480   0.1120405   0.1844555
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0170098   0.0116466   0.0223731
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0408946   0.0310794   0.0507097
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0107462   0.0070475   0.0144449
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0218708   0.0166115   0.0271301
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0164098   0.0145698   0.0182498
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0797721   0.0513872   0.1081570
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.0666667   0.0418784   0.0914549
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0400633   0.0312360   0.0488905
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1107034   0.0954900   0.1259167
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0260078   0.0147515   0.0372641
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.0339111   0.0241689   0.0436532
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0667384   0.0574713   0.0760056
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0322267   0.0291993   0.0352542


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.3394794   0.6820191   2.630726
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0132507   0.5389076   1.905108
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.1029900   0.5582108   2.179440
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.4181300   0.9115965   2.206122
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3870163   0.8558829   2.247754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3313566   0.8707998   2.035497
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0112128   0.7240308   1.412303
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7726402   0.5871081   1.016802
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1440894   0.4554164   2.874162
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0365092   0.7781711   1.380611
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1859848   0.6206532   2.266257
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.3885548   0.7974655   2.417765
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1176415   0.8023538   1.556823
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2358323   0.9424723   1.620505
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0273252   0.8604206   1.226606
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0308610   0.8755230   1.213759
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              Full or late term    0.9529506   0.3963465   2.291214
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.3098001   0.7671220   2.236380
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0058309   0.4143137   2.441859
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9001957   0.4069725   1.991172
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1194656   0.5929871   2.113373
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.6331300   0.3550165   1.129113
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1120200   0.4780743   2.586603
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9772125   0.7081553   1.348496
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0705441   0.5373948   2.132631
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2961913   0.7491939   2.242560
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.8995535   0.6860180   1.179556
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0746384   0.8424309   1.370851
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    2.3626374   1.0454758   5.339249
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0969388   0.4354790   2.763106
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.2893773   0.8596588   6.096894
6-24 months                   ki1000108-IRC              INDIA                          Early term           Full or late term    1.5698587   0.6707962   3.673927
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.6243864   0.9171092   2.877118
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.5180793   0.9059505   2.543809
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9767708   0.6563094   1.453706
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8589156   0.6318392   1.167601
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.5206609   0.8138650   7.806862
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    2.2081446   0.8107545   6.014031
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.6198011   0.7726233   3.395905
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.5505447   0.7857855   3.059599
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1329054   0.7719871   1.662560
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2407538   0.9050346   1.701007
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1319049   0.8949650   1.431574
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0454326   0.8376829   1.304705


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0095545   -0.0209702   0.0400792
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0201113   -0.0102472   0.0504698
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0059478   -0.0014055   0.0133011
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0113197   -0.0278491   0.0052098
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0002559   -0.0014408   0.0019526
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0067706   -0.0058467   0.0193880
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0086996   -0.0034475   0.0208466
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0006715   -0.0016764   0.0030194
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0101727   -0.0173555   0.0377009
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0003815   -0.0045718   0.0038089
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0052141   -0.0151462   0.0047180
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0000697   -0.0018367   0.0016974
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0025645   -0.0040134   0.0091424
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0000918   -0.0015350   0.0017185
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0146558   -0.0090126   0.0383242
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0146667   -0.0053399   0.0346732
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0074423    0.0000625   0.0148220
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0065726   -0.0218454   0.0087003
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0096144   -0.0009047   0.0201334
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0082251   -0.0025610   0.0190113
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0074348   -0.0039739   0.0188434
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0012958   -0.0015743   0.0041659


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0639418   -0.1640151   0.2472563
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1043106   -0.0668583   0.2480168
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1201350   -0.0398816   0.2555284
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0822012   -0.2087161   0.0310714
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0211692   -0.1315283   0.1532605
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1468787   -0.1730375   0.3795459
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1058448   -0.0543591   0.2417066
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0188094   -0.0492121   0.0824210
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0686192   -0.1362511   0.2365507
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0224256   -0.3008630   0.1964149
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1275013   -0.3960480   0.0893872
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0064824   -0.1843989   0.1447080
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1172558   -0.2393927   0.3712749
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0055935   -0.0986646   0.0999579
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.1837209   -0.1651221   0.4281187
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.2200000   -0.1312945   0.4622090
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1857628   -0.0156102   0.3472080
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0593710   -0.2064665   0.0697902
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.3696721   -0.1384210   0.6509962
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.2425500   -0.1426190   0.4978812
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1114017   -0.0765674   0.2665514
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0402098   -0.0533064   0.1254232
