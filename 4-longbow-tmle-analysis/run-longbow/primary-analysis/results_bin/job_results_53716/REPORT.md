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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        gagebrth             ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ------------------  ------------  -------  ------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      123     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       90     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       25     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       27     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       46     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       37     348
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term              0      121     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term              1      128     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                        0       16     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                        1       26     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                     0       44     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                     1       54     389
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              0       13     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              1        3     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        0      127     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        1      174     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     0       34     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     1       26     377
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      152     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       16     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      214     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       47     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      280     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       45     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1145    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      240    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      253    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       91    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      401    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1      112    2242
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              0      528    1692
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              1      310    1692
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        0      153    1692
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        1      103    1692
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     0      392    1692
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     1      206    1692
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term              0     7999   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term              1      622   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                        0      549   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                        1       42   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                     0     7119   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                     1      546   16877
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term              0      394     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       54     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                        0      105     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       25     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                     0      191     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                     1       40     809
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term              0      470    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term              1      109    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                        0      242    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                        1       66    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                     0      358    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                     1      100    1345
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      830    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      328    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      434    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      199    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      822    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      380    2993
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0    10907   25266
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     2227   25266
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     4285   25266
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      827   25266
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     5814   25266
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1     1206   25266
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      136     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       64     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       36     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       15     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       58     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       23     332
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term              0      160     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term              1       79     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                        0       28     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                        1       10     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                     0       54     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                     1       40     371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              0       15     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              1        1     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        0      232     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        1       67     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     0       47     375
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     1       13     375
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      162     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1        6     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      255     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1        5     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      312     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1        9     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1270    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      110    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      301    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       42    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      471    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       40    2234
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              0      672    1565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              1       95    1565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        0      206    1565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        1       34    1565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     0      506    1565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     1       52    1565
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term              0     7954   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term              1      552   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                        0      546   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                        1       36   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                     0     7095   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                     1      474   16657
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term              0      406     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term              1        4     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                        0      120     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                        1        2     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                     0      208     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                     1        5     745
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term              0      484    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term              1       49    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                        0      262    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                        1       20    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                     0      395    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                     1       39    1249
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term              0     1047    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      103    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      569    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                        1       60    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                     0     1076    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                     1      117    2972
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0    12058   24985
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1      944   24985
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     4726   24985
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      309   24985
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     6443   24985
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      505   24985
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      164     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       51     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       33     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       19     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       63     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       21     351
6-24 months                   ki1000108-IRC              INDIA                          Full or late term              0      177     390
6-24 months                   ki1000108-IRC              INDIA                          Full or late term              1       73     390
6-24 months                   ki1000108-IRC              INDIA                          Preterm                        0       21     390
6-24 months                   ki1000108-IRC              INDIA                          Preterm                        1       21     390
6-24 months                   ki1000108-IRC              INDIA                          Early term                     0       68     390
6-24 months                   ki1000108-IRC              INDIA                          Early term                     1       30     390
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              0       15     374
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              1        2     374
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        0      159     374
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        1      140     374
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     0       39     374
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     1       19     374
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      146     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       12     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      210     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       45     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      278     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       39     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0      997    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      161    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      240    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       60    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      358    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       81    1897
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              0      547    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              1      267    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                        0      159    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                        1       82    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                     0      399    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                     1      181    1635
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term              0     8403   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term              1       76   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                        0      574   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                        1        6   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                     0     7454   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                     1       85   16598
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term              0      376     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       51     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                        0       97     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       24     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                     0      185     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                     1       36     769
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term              0      510    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term              1       64    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                        0      255    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                        1       48    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                     0      387    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                     1       63    1327
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      815    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      266    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      419    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      167    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      809    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      311    2787
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     7353   16477
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     1404   16477
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     2610   16477
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      548   16477
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     3798   16477
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      764   16477


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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/b7cbdd97-630a-4d2e-92e3-7cf08fd32e3e/b7a7dc73-ee08-4b02-8280-1210605eaacb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b7cbdd97-630a-4d2e-92e3-7cf08fd32e3e/b7a7dc73-ee08-4b02-8280-1210605eaacb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b7cbdd97-630a-4d2e-92e3-7cf08fd32e3e/b7a7dc73-ee08-4b02-8280-1210605eaacb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b7cbdd97-630a-4d2e-92e3-7cf08fd32e3e/b7a7dc73-ee08-4b02-8280-1210605eaacb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.4206315    0.3539422   0.4873209
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5271416    0.3873307   0.6669525
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.4514280    0.3421546   0.5607013
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                0.5133476    0.4510960   0.5755993
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              NA                0.6144506    0.4577608   0.7711403
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           NA                0.5517380    0.4516417   0.6518343
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0886857    0.0458504   0.1315210
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1770208    0.1308482   0.2231934
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1379938    0.1004020   0.1755855
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1731982    0.1532217   0.1931746
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2674287    0.2206016   0.3142557
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2179156    0.1819821   0.2538492
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3656836    0.3333632   0.3980040
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4061506    0.3454319   0.4668693
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3470520    0.3091309   0.3849730
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0712910    0.0582153   0.0843667
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0693258    0.0384509   0.1002007
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0723200    0.0592056   0.0854344
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1209649    0.0907259   0.1512038
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1932683    0.1254417   0.2610950
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1743691    0.1253703   0.2233679
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1855422    0.1538714   0.2172129
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2218529    0.1763927   0.2673132
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           NA                0.2188354    0.1814080   0.2562628
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2830530    0.2570699   0.3090361
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.3146102    0.2785412   0.3506792
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.3173397    0.2910817   0.3435976
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1702524    0.1631068   0.1773980
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1589938    0.1480678   0.1699199
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1715272    0.1617198   0.1813345
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3188996    0.2538128   0.3839864
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2687514    0.1382766   0.3992262
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2713412    0.1709207   0.3717617
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                0.3316851    0.2715859   0.3917842
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              NA                0.2598843    0.1189072   0.4008613
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           NA                0.4233821    0.3207529   0.5260114
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0357143    0.0076336   0.0637950
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.0192308    0.0025263   0.0359353
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0280374    0.0099665   0.0461083
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0791584    0.0648567   0.0934600
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1233658    0.0884740   0.1582576
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0782820    0.0548870   0.1016770
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1230925    0.0997164   0.1464685
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1441480    0.0995593   0.1887367
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0932508    0.0690054   0.1174962
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0641902    0.0513402   0.0770402
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0610378    0.0356727   0.0864029
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0634929    0.0516604   0.0753254
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0912295    0.0666363   0.1158227
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0710468    0.0410366   0.1010570
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           NA                0.0914336    0.0644286   0.1184385
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0896507    0.0731423   0.1061591
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0943533    0.0713427   0.1173640
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0978318    0.0809454   0.1147183
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0730679    0.0679447   0.0781911
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0597084    0.0527128   0.0667039
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0724664    0.0657799   0.0791529
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2336769    0.1763797   0.2909742
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3479047    0.2167314   0.4790780
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2417599    0.1476787   0.3358411
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                0.2936920    0.2366673   0.3507167
6-24 months                   ki1000108-IRC              INDIA                          Preterm              NA                0.4582040    0.3072588   0.6091491
6-24 months                   ki1000108-IRC              INDIA                          Early term           NA                0.3044605    0.2136093   0.3953117
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0717241    0.0313929   0.1120553
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1745465    0.1279752   0.2211177
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1234000    0.0870806   0.1597194
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1391558    0.1191778   0.1591338
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2016212    0.1564739   0.2467686
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1824450    0.1463712   0.2185188
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3232853    0.2913305   0.3552402
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.3480552    0.2876312   0.4084793
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3147989    0.2772532   0.3523446
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0089633    0.0061435   0.0117831
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0103448   -0.0000468   0.0207365
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0112747    0.0075006   0.0150488
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1206296    0.0897683   0.1514910
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2044654    0.1332711   0.2756596
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1659341    0.1174593   0.2144089
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1090357    0.0832582   0.1348133
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              NA                0.1631207    0.1226195   0.2036220
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           NA                0.1403373    0.1085322   0.1721424
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2451415    0.2194958   0.2707871
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2856941    0.2493522   0.3220361
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2783208    0.2520965   0.3045451
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1609639    0.1523120   0.1696158
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1717732    0.1576058   0.1859407
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1668845    0.1555075   0.1782615


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4425287   0.3902692   0.4947882
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5347044   0.4850733   0.5843354
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1975914   0.1811057   0.2140772
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3658392   0.3428819   0.3887966
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1470952   0.1226726   0.1715178
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2044610   0.1828992   0.2260227
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3030404   0.2865732   0.3195077
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1686060   0.1631976   0.1740145
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3072289   0.2575285   0.3569293
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3477089   0.2991827   0.3962350
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0859445   0.0743193   0.0975697
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1156550   0.0998052   0.1315047
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0864692   0.0708761   0.1020623
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0942127   0.0837084   0.1047169
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0703622   0.0666948   0.0740296
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2592593   0.2133485   0.3051700
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3179487   0.2716722   0.3642252
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1591987   0.1427306   0.1756669
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3241590   0.3014644   0.3468537
6-24 months                   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1443433   0.1194882   0.1691984
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1318764   0.1136647   0.1500881
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2669537   0.2505274   0.2833801
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1648358   0.1585302   0.1711415


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2532147   0.9196963   1.7076802
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0732147   0.8032793   1.4338597
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.1969482   0.9019049   1.5885101
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0747844   0.8641959   1.3366892
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.9960466   1.1517392   3.4592918
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.5559866   0.8933447   2.7101458
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5440618   1.2520687   1.9041502
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2581867   1.0287300   1.5388234
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1106612   0.9337865   1.3210390
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9490497   0.8253005   1.0913545
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9724331   0.6301104   1.5007309
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0144333   0.8846089   1.1633105
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.5977230   1.0382717   2.4586232
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.4414857   0.9898033   2.0992868
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1957009   0.9169892   1.5591247
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1794376   0.9274392   1.4999075
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1114887   0.9597948   1.2871575
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1211316   0.9908744   1.2685121
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.9338712   0.8643504   1.0089837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0074874   0.9405435   1.0791960
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8427461   0.4970575   1.4288507
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.8508671   0.5571261   1.2994811
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              Full or late term    0.7835272   0.4422379   1.3882004
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.2764583   0.9428136   1.7281738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    0.5384615   0.1668478   1.7377569
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    0.7850467   0.2840280   2.1698509
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5584680   1.1142148   2.1798513
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9889288   0.6973518   1.4024199
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1710548   0.8146498   1.6833851
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7575673   0.5492288   1.0449346
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9508899   0.6285939   1.4384351
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9891368   0.8581052   1.1401768
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.7787701   0.4717233   1.2856750
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0022372   0.6718891   1.4950078
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0524550   0.7754233   1.4284604
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0912560   0.8479783   1.4043280
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.8171629   0.7156850   0.9330294
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9917682   0.8843909   1.1121826
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.4888278   0.9492017   2.3352342
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0345903   0.6531335   1.6388337
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.5601514   1.0639866   2.2876910
6-24 months                   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0366660   0.7274528   1.4773145
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    2.4335826   1.3060028   4.5346950
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.7204827   0.9118573   3.2461885
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4488885   1.1107654   1.8899382
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3110846   1.0272370   1.6733653
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0766194   0.8819207   1.3143010
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9737494   0.8346784   1.1359918
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1541289   0.4648563   2.8654305
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.2578713   0.8760389   1.8061302
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.6949844   1.1000081   2.6117738
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.3755665   0.9328036   2.0284905
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4960303   1.0633630   2.1047437
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2870764   0.9289711   1.7832261
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1654256   0.9887315   1.3736963
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1353477   0.9863680   1.3068292
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0671541   0.9674638   1.1771167
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0367826   0.9523609   1.1286878


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0218972   -0.0200611   0.0638555
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0213567   -0.0161024   0.0588158
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0545504    0.0140212   0.0950796
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0243933    0.0110080   0.0377786
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0001556   -0.0227578   0.0230691
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0004042   -0.0041262   0.0049346
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0261303    0.0037809   0.0484797
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0189188   -0.0053576   0.0431952
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0199874   -0.0005875   0.0405624
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0016464   -0.0064181   0.0031253
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0116707   -0.0521881   0.0288468
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0160238   -0.0209441   0.0529917
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0090120   -0.0328503   0.0148263
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0067861   -0.0025569   0.0161291
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0074375   -0.0236539   0.0087789
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0004332   -0.0046860   0.0038196
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0047603   -0.0230186   0.0134979
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0045620   -0.0085456   0.0176696
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0027057   -0.0060534   0.0006420
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0255823   -0.0118497   0.0630144
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0242567   -0.0110607   0.0595742
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0597828    0.0207548   0.0988107
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0200429    0.0065181   0.0335678
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0008737   -0.0216648   0.0234121
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0010981   -0.0006579   0.0028542
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0237137    0.0010169   0.0464104
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0228407    0.0025044   0.0431770
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0218123    0.0014372   0.0421873
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0038720   -0.0018890   0.0096329


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0494820   -0.0503570   0.1398310
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0399412   -0.0328488   0.1076013
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3808423    0.0323339   0.6038342
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1234531    0.0534881   0.1882463
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0004254   -0.0642109   0.0611358
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0056375   -0.0596753   0.0669247
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1776423    0.0132331   0.3146587
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0925301   -0.0342341   0.2037571
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0659563   -0.0044588   0.1314352
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0097647   -0.0384735   0.0181504
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0379869   -0.1785583   0.0858180
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0460841   -0.0663837   0.1466903
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3375000   -1.5855791   0.3081216
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0789593   -0.0360251   0.1811821
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0643077   -0.2138613   0.0668202
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0067947   -0.0755139   0.0575337
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0550522   -0.2885002   0.1361001
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0484220   -0.1012938   0.1777847
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0384539   -0.0870471   0.0079672
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0986748   -0.0578056   0.2320071
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0762914   -0.0418433   0.1810308
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4545982    0.0774972   0.6775477
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1258989    0.0373519   0.2063010
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0026953   -0.0693146   0.0698559
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1091425   -0.0756863   0.2622133
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1642865   -0.0063177   0.3059676
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1731977    0.0045815   0.3132516
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0817080    0.0021646   0.1549106
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0234898   -0.0121291   0.0578552
