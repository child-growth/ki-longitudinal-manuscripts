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
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              0       19     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              1        6     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        0      132     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        1      111     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     0       61     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     1       48     377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0       19    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        9    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      862    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      496    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       66    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       35    1487
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
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              0      522    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              1      314    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        0      152    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        1      104    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     0      387    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     1      212    1691
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     8420   19702
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     1803   19702
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     3309   19702
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      683   19702
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     4512   19702
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      975   19702
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
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              0       21     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              1        4     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        0      195     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        1       45     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     0       85     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     1       23     373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0       25    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        3    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0     1170    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      162    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       80    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       19    1459
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
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              0      642    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              1      110    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        0      202    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        1       39    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     0      496    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     1       63    1552
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     9380   19552
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1      774   19552
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     3692   19552
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      257   19552
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     5027   19552
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      422   19552
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
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              0       22     375
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              1        3     375
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        0      159     375
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        1       83     375
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     0       70     375
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     1       38     375
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0       20    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        7    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      865    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      391    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       72    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       24    1379
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
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              0      546    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              1      268    1635
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     5653   12829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     1121   12829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     2033   12829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      454   12829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     2962   12829
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      606   12829


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

* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
![](/tmp/fc6a3b97-75aa-4f80-b8a0-482f2236cc5e/78552c00-c053-4ec8-bbf1-12e630587705/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc6a3b97-75aa-4f80-b8a0-482f2236cc5e/78552c00-c053-4ec8-bbf1-12e630587705/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc6a3b97-75aa-4f80-b8a0-482f2236cc5e/78552c00-c053-4ec8-bbf1-12e630587705/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc6a3b97-75aa-4f80-b8a0-482f2236cc5e/78552c00-c053-4ec8-bbf1-12e630587705/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.4237275    0.3571723   0.4902826
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5337415    0.3957133   0.6717698
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.4496543    0.3421379   0.5571707
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                0.5152275    0.4530117   0.5774434
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              NA                0.6184963    0.4592759   0.7777167
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           NA                0.5471454    0.4466022   0.6476885
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.2400000    0.0723640   0.4076360
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm              NA                0.4567901    0.3940762   0.5195040
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term           NA                0.4403670    0.3470479   0.5336861
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.3214286    0.1438525   0.4990046
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3652430    0.3139329   0.4165531
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.3465347    0.2741080   0.4189613
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0944114    0.0503725   0.1384504
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1805800    0.1336964   0.2274636
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1385169    0.1007612   0.1762726
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1734909    0.1535525   0.1934293
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2656092    0.2190838   0.3121347
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2168523    0.1809863   0.2527183
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3703374    0.3378066   0.4028681
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4170409    0.3555052   0.4785766
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3557285    0.3175344   0.3939227
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0714813    0.0584760   0.0844866
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0684792    0.0385881   0.0983704
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0722204    0.0591673   0.0852735
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1208106    0.0905064   0.1511149
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1934373    0.1256057   0.2612690
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1736151    0.1243823   0.2228478
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1847528    0.1530210   0.2164846
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2183251    0.1729937   0.2636565
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           NA                0.2175634    0.1800131   0.2551137
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2831406    0.2571674   0.3091138
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.3122796    0.2763976   0.3481616
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.3169995    0.2907281   0.3432709
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1774412    0.1690448   0.1858376
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1687995    0.1560997   0.1814993
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1774663    0.1657997   0.1891330
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3198794    0.2548784   0.3848803
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2960586    0.1675604   0.4245567
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2838347    0.1832453   0.3844240
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                0.3305255    0.2708090   0.3902419
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              NA                0.2651964    0.1208455   0.4095473
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           NA                0.4229389    0.3215044   0.5243734
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0357143    0.0076336   0.0637950
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.0192308    0.0025263   0.0359353
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0280374    0.0099665   0.0461083
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0797295    0.0653993   0.0940597
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1230556    0.0881593   0.1579519
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0780779    0.0546606   0.1014951
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1438035    0.1185217   0.1690854
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1641046    0.1174524   0.2107568
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.1148487    0.0885153   0.1411821
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0640628    0.0512352   0.0768904
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0610481    0.0361234   0.0859727
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0635672    0.0517850   0.0753494
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0915145    0.0669752   0.1160538
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0727605    0.0428664   0.1026545
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           NA                0.0922037    0.0652361   0.1191713
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0901923    0.0736217   0.1067629
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0944680    0.0715309   0.1174051
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0979149    0.0810486   0.1147812
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0770964    0.0710930   0.0830998
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0636071    0.0555562   0.0716581
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0771212    0.0692583   0.0849841
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2367469    0.1796819   0.2938119
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3769650    0.2465982   0.5073318
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2507297    0.1564113   0.3450480
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                0.2909990    0.2342142   0.3477838
6-24 months                   ki1000108-IRC              INDIA                          Preterm              NA                0.4885181    0.3298316   0.6472045
6-24 months                   ki1000108-IRC              INDIA                          Early term           NA                0.3165444    0.2231582   0.4099306
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2592593    0.0748969   0.4436216
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3113057    0.2697687   0.3528428
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.2500000    0.1619881   0.3380119
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0741418    0.0333880   0.1148956
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1775673    0.1304246   0.2247101
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1234113    0.0868776   0.1599450
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1398250    0.1197959   0.1598542
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1958658    0.1503317   0.2413998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1842922    0.1478921   0.2206923
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3239833    0.2919534   0.3560133
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.3490276    0.2882054   0.4098499
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3137099    0.2761040   0.3513158
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0089633    0.0061435   0.0117831
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0103448   -0.0000468   0.0207365
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0112747    0.0075006   0.0150488
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1193724    0.0885148   0.1502300
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2010483    0.1289145   0.2731820
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1630735    0.1142551   0.2118918
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1094783    0.0836690   0.1352877
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              NA                0.1602823    0.1197630   0.2008015
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           NA                0.1405093    0.1087856   0.1722330
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2456251    0.2199595   0.2712907
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2836726    0.2472337   0.3201116
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2774379    0.2512318   0.3036440
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1663906    0.1565547   0.1762264
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1800189    0.1634527   0.1965851
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1691712    0.1558191   0.1825232


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4425287   0.3902692   0.4947882
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5347044   0.4850733   0.5843354
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3631473   0.3130392   0.4132554
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1975914   0.1811057   0.2140772
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3725606   0.3495097   0.3956116
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1470952   0.1226726   0.1715178
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2044610   0.1828992   0.2260227
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3030404   0.2865732   0.3195077
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1756674   0.1694118   0.1819231
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3072289   0.2575285   0.3569293
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3477089   0.2991827   0.3962350
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0859445   0.0743193   0.0975697
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1365979   0.1195068   0.1536891
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0864692   0.0708761   0.1020623
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0942127   0.0837084   0.1047169
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0743146   0.0700205   0.0786087
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2592593   0.2133485   0.3051700
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3179487   0.2716722   0.3642252
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3060189   0.2640311   0.3480066
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1591987   0.1427306   0.1756669
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3247706   0.3020649   0.3474764
6-24 months                   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1443433   0.1194882   0.1691984
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1318764   0.1136647   0.1500881
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2669537   0.2505274   0.2833801
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1700055   0.1628870   0.1771239


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2596340   0.9304798   1.7052255
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0611874   0.7968240   1.4132591
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.2004333   0.9029090   1.5959971
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0619490   0.8522892   1.3231843
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    1.9032922   0.9340145   3.8784420
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term           Full or late term    1.8348624   0.8843059   3.8071892
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    1.1363116   0.6396536   2.0185988
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    1.0781078   0.6775643   1.7154334
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.9126922   1.1214779   3.2621164
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.4671628   0.8547610   2.5183258
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5309693   1.2419096   1.8873089
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2499349   1.0217123   1.5291362
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1261107   0.9486754   1.3367327
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9605526   0.8368938   1.1024831
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9580025   0.6302736   1.4561437
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0103406   0.8841310   1.1545666
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.6011618   1.0402052   2.4646283
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.4370846   0.9841921   2.0983834
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1817143   0.9037279   1.5452094
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1775916   0.9242973   1.5002986
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1029135   0.9522710   1.2773867
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1195832   0.9894723   1.2668031
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.9512984   0.8730544   1.0365546
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0001417   0.9236245   1.0829981
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.9255318   0.5730156   1.4949142
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.8873177   0.5893223   1.3359969
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              Full or late term    0.8023479   0.4520743   1.4240184
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.2795954   0.9473810   1.7283062
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    0.5384615   0.1668478   1.7377569
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    0.7850467   0.2840280   2.1698509
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5434139   1.1032737   2.1591436
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9792847   0.6902138   1.3894224
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1411722   0.8169497   1.5940686
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7986499   0.5986468   1.0654725
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9529408   0.6360329   1.4277505
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9922633   0.8636290   1.1400571
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.7950705   0.4867698   1.2986366
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0075314   0.6774684   1.4984012
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0474063   0.7724627   1.4202110
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0856236   0.8439702   1.3964694
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.8250342   0.7155267   0.9513012
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0003218   0.8831514   1.1330376
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.5922702   1.0442375   2.4279193
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0590621   0.6773972   1.6557679
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.6787618   1.1496705   2.4513470
6-24 months                   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0877850   0.7637095   1.5493799
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    1.2007507   0.5554169   2.5958917
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.9642857   0.4717892   1.9708951
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    2.3949691   1.3004191   4.4107912
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.6645304   0.8911151   3.1092070
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4007917   1.0660641   1.8406186
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3180201   1.0326441   1.6822611
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0773012   0.8819635   1.3159025
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9682903   0.8296342   1.1301197
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1541289   0.4648563   2.8654305
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.2578713   0.8760389   1.8061302
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.6842106   1.0824225   2.6205713
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.3660901   0.9197612   2.0290073
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4640548   1.0375662   2.0658503
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2834442   0.9273749   1.7762276
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1549007   0.9789104   1.3625308
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1295176   0.9812187   1.3002300
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0819058   0.9702117   1.2064586
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0167113   0.9205278   1.1229448


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0188013   -0.0230963   0.0606988
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0194768   -0.0180359   0.0569896
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1976658    0.0336863   0.3616452
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0417187   -0.1370436   0.2204810
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0488246    0.0076496   0.0899997
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0241005    0.0107508   0.0374502
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0022232   -0.0208478   0.0252943
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0002139   -0.0041974   0.0046253
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0262846    0.0038840   0.0486851
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0197081   -0.0046289   0.0440451
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0198998   -0.0006740   0.0404736
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0017738   -0.0073993   0.0038518
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0126505   -0.0530901   0.0277891
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0171834   -0.0194735   0.0538403
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0090120   -0.0328503   0.0148263
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0062150   -0.0031484   0.0155784
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0072056   -0.0248326   0.0104215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0003058   -0.0044733   0.0038617
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0050453   -0.0232591   0.0131685
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0040204   -0.0091431   0.0171839
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0027817   -0.0065019   0.0009384
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0225124   -0.0147882   0.0598130
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0269497   -0.0086420   0.0625414
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0467596   -0.1497850   0.2433042
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0573650    0.0181774   0.0965527
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0193737    0.0057602   0.0329872
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0007873   -0.0217908   0.0233655
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0010981   -0.0006579   0.0028542
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0249709    0.0022944   0.0476474
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0223981    0.0020297   0.0427665
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0213286    0.0009382   0.0417190
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0036149   -0.0032664   0.0104962


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0424860   -0.0571054   0.1326947
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0364254   -0.0364356   0.1041644
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.4516364   -0.0848875   0.7228259
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.1148810   -0.5395125   0.4911144
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3408684   -0.0119056   0.5706571
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1219716    0.0522257   0.1865850
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0059675   -0.0579269   0.0660029
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0029840   -0.0605170   0.0626826
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1786908    0.0137776   0.3160278
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0963907   -0.0307745   0.2078677
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0656671   -0.0047401   0.1311406
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0100972   -0.0426374   0.0214274
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0411761   -0.1814515   0.0824442
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0494190   -0.0620385   0.1491794
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3375000   -1.5855791   0.3081216
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0723144   -0.0428988   0.1747995
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0527503   -0.1897763   0.0684944
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0047969   -0.0721559   0.0583302
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0583480   -0.2911155   0.1324552
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0426733   -0.1076726   0.1726125
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0374317   -0.0884997   0.0112404
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0868334   -0.0686799   0.2197166
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0847611   -0.0343044   0.1901203
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.1527997   -0.7914569   0.5993494
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4362133    0.0590396   0.6622011
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1216950    0.0325752   0.2026051
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0024243   -0.0695761   0.0695778
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1091425   -0.0756863   0.2622133
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1729966    0.0023243   0.3144720
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1698415    0.0010078   0.3101417
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0798962    0.0002970   0.1531575
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0212635   -0.0200603   0.0609132
