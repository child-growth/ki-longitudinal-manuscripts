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
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term               0       24     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term               1        1     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                         0      205     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                         1       38     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                      0       97     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                      1       12     377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term               0       25    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term               1        3    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                         0     1202    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                         1      156    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term                      0       89    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term                      1       12    1487
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
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term               0      709    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term               1      127    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                         0      217    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                         1       39    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                      0      530    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                      1       69    1691
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     9856   19702
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1      367   19702
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     3831   19702
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      161   19702
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     5278   19702
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      209   19702
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
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term               0       25     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term               1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                         0      230     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                         1       10     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                      0      102     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                      1        6     373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term               0       27    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term               1        1    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                         0     1292    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                         1       40    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Early term                      0       95    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Early term                      1        4    1459
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
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term               0      714    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term               1       38    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                         0      228    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                         1       13    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                      0      542    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                      1       17    1552
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     9983   19552
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1      171   19552
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     3886   19552
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1       63   19552
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     5347   19552
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      102   19552
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
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term               0       24     375
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term               1        1     375
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                         0      212     375
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                         1       30     375
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                      0      100     375
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                      1        8     375
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term               0       25    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term               1        2    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm                         0     1134    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm                         1      122    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term                      0       87    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term                      1        9    1379
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     6562   12829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1      212   12829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     2386   12829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      101   12829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     3450   12829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      118   12829


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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

* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
![](/tmp/203849f0-9077-4ea4-bc7f-8f2102e24543/662e479d-bf1a-4ec2-ad45-d9838ae077ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/203849f0-9077-4ea4-bc7f-8f2102e24543/662e479d-bf1a-4ec2-ad45-d9838ae077ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/203849f0-9077-4ea4-bc7f-8f2102e24543/662e479d-bf1a-4ec2-ad45-d9838ae077ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/203849f0-9077-4ea4-bc7f-8f2102e24543/662e479d-bf1a-4ec2-ad45-d9838ae077ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1429971   0.0959154   0.1900788
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2190786   0.1120560   0.3261011
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1481578   0.0740748   0.2222408
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                0.1726908   0.1256823   0.2196992
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715664   0.3093860
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           NA                0.2448980   0.1596489   0.3301470
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0434400   0.0326792   0.0542007
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0614702   0.0361441   0.0867964
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0584907   0.0382686   0.0787127
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1480697   0.1238947   0.1722448
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1557356   0.1116651   0.1998060
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1181453   0.0924436   0.1438471
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0118316   0.0074560   0.0162072
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0135364   0.0013326   0.0257401
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0122635   0.0085220   0.0160051
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0391472   0.0233590   0.0549353
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0463260   0.0227350   0.0699171
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           NA                0.0551333   0.0341623   0.0761043
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0735047   0.0584731   0.0885362
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0821728   0.0607183   0.1036273
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0905277   0.0743414   0.1067140
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0363694   0.0323694   0.0403693
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0396879   0.0329215   0.0464543
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0377430   0.0318921   0.0435938
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                0.1380753   0.0942800   0.1818707
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              NA                0.1315789   0.0239570   0.2392009
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           NA                0.1808511   0.1029377   0.2587645
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0173913   0.0104927   0.0242899
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0174927   0.0036157   0.0313697
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0156556   0.0048899   0.0264213
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0494062   0.0339608   0.0648516
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0553166   0.0262757   0.0843574
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0310921   0.0166070   0.0455771
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0108159   0.0062945   0.0153372
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0120275   0.0028081   0.0212469
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0105694   0.0069148   0.0142241
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0193431   0.0112753   0.0274109
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0200612   0.0092360   0.0308863
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0250033   0.0161491   0.0338576
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0172035   0.0142915   0.0201154
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0155828   0.0109846   0.0201811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0184919   0.0144962   0.0224876
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0651163   0.0320891   0.0981435
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1538462   0.0556411   0.2520512
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.0714286   0.0162753   0.1265819
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                0.0520000   0.0244424   0.0795576
6-24 months                   ki1000108-IRC              INDIA                          Preterm              NA                0.1190476   0.0209818   0.2171134
6-24 months                   ki1000108-IRC              INDIA                          Early term           NA                0.0816327   0.0273535   0.1359118
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0327146   0.0224452   0.0429840
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0533597   0.0276427   0.0790767
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0489049   0.0287022   0.0691075
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1171181   0.0949936   0.1392427
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1159946   0.0758524   0.1561367
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1009151   0.0764349   0.1253953
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0163934   0.0043414   0.0284455
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0413223   0.0058355   0.0768091
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0361991   0.0115570   0.0608412
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0257946   0.0127148   0.0388743
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0404257   0.0180227   0.0628288
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           NA                0.0392470   0.0210575   0.0574365
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0594682   0.0453400   0.0735964
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0672832   0.0470386   0.0875278
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0733457   0.0581557   0.0885357
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0317567   0.0272289   0.0362846
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0393969   0.0310452   0.0477486
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0327585   0.0264214   0.0390957


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494253   0.1119149   0.1869357
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1928021   0.1535486   0.2320555
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0495094   0.0405280   0.0584908
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1389710   0.1224789   0.1554631
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0120875   0.0084025   0.0157724
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.0460967   0.0348859   0.0573074
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0821918   0.0723504   0.0920332
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0374074   0.0343544   0.0404603
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.1482480   0.1120405   0.1844555
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0170098   0.0116466   0.0223731
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0438144   0.0336280   0.0540009
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0107462   0.0070475   0.0144449
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0218708   0.0166115   0.0271301
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0171849   0.0150038   0.0193661
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0797721   0.0513872   0.1081570
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.0666667   0.0418784   0.0914549
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0400633   0.0312360   0.0488905
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1107034   0.0954900   0.1259167
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0260078   0.0147515   0.0372641
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.0339111   0.0241689   0.0436532
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0667384   0.0574713   0.0760056
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0335958   0.0302945   0.0368970


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.5320490   0.8485669   2.766045
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0360896   0.5688493   1.887111
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.1029900   0.5582108   2.179440
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.4181300   0.9115965   2.206122
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4150617   0.8750303   2.288378
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3464718   0.8798863   2.060478
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0517718   0.7589167   1.457635
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7979032   0.6084960   1.046267
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1440894   0.4554164   2.874162
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0365092   0.7781711   1.380611
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1833813   0.6182251   2.265180
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.4083597   0.8091157   2.451413
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1179268   0.8024453   1.557440
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2315914   0.9388766   1.615566
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0912461   0.8967010   1.327999
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0377689   0.8599346   1.252379
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              Full or late term    0.9529506   0.3963465   2.291214
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.3098001   0.7671220   2.236380
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0058309   0.4143137   2.441859
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9001957   0.4069725   1.991172
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1196286   0.6077679   2.062578
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.6293157   0.3591467   1.102720
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1120200   0.4780743   2.586603
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9772125   0.7081553   1.348496
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0371217   0.5243577   2.051312
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2926215   0.7479144   2.234039
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.9057949   0.6583447   1.246253
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0748926   0.8207847   1.407670
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    2.3626374   1.0454758   5.339249
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0969388   0.4354790   2.763106
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.2893773   0.8596588   6.096894
6-24 months                   ki1000108-IRC              INDIA                          Early term           Full or late term    1.5698587   0.6707962   3.673927
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.6310665   0.9176197   2.899216
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.4948940   0.8894967   2.512329
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9904064   0.6678268   1.468801
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8616523   0.6337497   1.171511
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.5206609   0.8138650   7.806862
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    2.2081446   0.8107545   6.014031
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.5672187   0.7400606   3.318883
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.5215221   0.7656711   3.023530
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1314146   0.7713607   1.659534
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2333599   0.9002888   1.689654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.2405840   0.9603096   1.602659
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0315456   0.8073531   1.317994


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0064282   -0.0242948   0.0371512
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0201113   -0.0102472   0.0504698
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0060694   -0.0012753   0.0134142
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0090987   -0.0256521   0.0074547
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0002559   -0.0014408   0.0019526
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0069495   -0.0056411   0.0195401
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0086871   -0.0034603   0.0208346
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0010380   -0.0017499   0.0038259
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0101727   -0.0173555   0.0377009
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0003815   -0.0045718   0.0038089
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0055917   -0.0159863   0.0048029
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0000697   -0.0018367   0.0016974
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0025277   -0.0040790   0.0091344
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0000186   -0.0019302   0.0018931
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0146558   -0.0090126   0.0383242
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0146667   -0.0053399   0.0346732
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0073487   -0.0000656   0.0147629
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0064148   -0.0216569   0.0088273
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0096144   -0.0009047   0.0201334
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0081165   -0.0027412   0.0189742
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0072702   -0.0041169   0.0186574
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0018390   -0.0014597   0.0051378


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0430194   -0.1859179   0.2277612
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1043106   -0.0668583   0.2480168
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1225912   -0.0372484   0.2577997
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0654721   -0.1911710   0.0469624
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0211692   -0.1315283   0.1532605
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1507592   -0.1685406   0.3828114
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1056933   -0.0544997   0.2415508
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0277490   -0.0495891   0.0993886
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0686192   -0.1362511   0.2365507
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0224256   -0.3008630   0.1964149
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1276232   -0.3893245   0.0847825
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0064824   -0.1843989   0.1447080
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1155732   -0.2428008   0.3706065
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0010796   -0.1187366   0.1042035
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.1837209   -0.1651221   0.4281187
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.2200000   -0.1312945   0.4622090
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1834262   -0.0191536   0.3457388
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0579457   -0.2047496   0.0709696
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.3696721   -0.1384210   0.6509962
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.2393468   -0.1492996   0.4965688
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1089364   -0.0785453   0.2638285
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0547400   -0.0485442   0.1478503
