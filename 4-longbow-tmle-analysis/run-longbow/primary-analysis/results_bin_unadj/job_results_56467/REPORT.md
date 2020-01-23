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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        gagebrth             ever_wasted   n_cell       n  outcome_variable 
----------------------------  -------------------------  -----------------------------  ------------------  ------------  -------  ------  -----------------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      123     348  ever_wasted      
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       90     348  ever_wasted      
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       25     348  ever_wasted      
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       27     348  ever_wasted      
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       46     348  ever_wasted      
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       37     348  ever_wasted      
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term              0      121     389  ever_wasted      
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term              1      128     389  ever_wasted      
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                        0       16     389  ever_wasted      
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                        1       26     389  ever_wasted      
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                     0       44     389  ever_wasted      
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                     1       54     389  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              0       13     377  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              1        3     377  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        0      127     377  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        1      174     377  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     0       34     377  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     1       26     377  ever_wasted      
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      152     754  ever_wasted      
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       16     754  ever_wasted      
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      214     754  ever_wasted      
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       47     754  ever_wasted      
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      280     754  ever_wasted      
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       45     754  ever_wasted      
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1145    2242  ever_wasted      
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      240    2242  ever_wasted      
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      253    2242  ever_wasted      
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       91    2242  ever_wasted      
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      401    2242  ever_wasted      
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1      112    2242  ever_wasted      
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              0      528    1692  ever_wasted      
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              1      310    1692  ever_wasted      
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        0      153    1692  ever_wasted      
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        1      103    1692  ever_wasted      
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     0      392    1692  ever_wasted      
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     1      206    1692  ever_wasted      
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term              0     7999   16877  ever_wasted      
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term              1      622   16877  ever_wasted      
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                        0      549   16877  ever_wasted      
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                        1       42   16877  ever_wasted      
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                     0     7119   16877  ever_wasted      
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                     1      546   16877  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term              0      394     809  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       54     809  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                        0      105     809  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       25     809  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                     0      191     809  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                     1       40     809  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term              0      470    1345  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term              1      109    1345  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                        0      242    1345  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                        1       66    1345  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                     0      358    1345  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                     1      100    1345  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      830    2993  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      328    2993  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      434    2993  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      199    2993  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      822    2993  ever_wasted      
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      380    2993  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0    10907   25266  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     2227   25266  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     4285   25266  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      827   25266  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     5814   25266  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1     1206   25266  ever_wasted      
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      136     332  ever_wasted      
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       64     332  ever_wasted      
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       36     332  ever_wasted      
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       15     332  ever_wasted      
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       58     332  ever_wasted      
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       23     332  ever_wasted      
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term              0      160     371  ever_wasted      
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term              1       79     371  ever_wasted      
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                        0       28     371  ever_wasted      
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                        1       10     371  ever_wasted      
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                     0       54     371  ever_wasted      
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                     1       40     371  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              0       15     375  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              1        1     375  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        0      232     375  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        1       67     375  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     0       47     375  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     1       13     375  ever_wasted      
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      162     749  ever_wasted      
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1        6     749  ever_wasted      
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      255     749  ever_wasted      
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1        5     749  ever_wasted      
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      312     749  ever_wasted      
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1        9     749  ever_wasted      
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1270    2234  ever_wasted      
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      110    2234  ever_wasted      
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      301    2234  ever_wasted      
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       42    2234  ever_wasted      
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      471    2234  ever_wasted      
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       40    2234  ever_wasted      
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              0      672    1565  ever_wasted      
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              1       95    1565  ever_wasted      
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        0      206    1565  ever_wasted      
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        1       34    1565  ever_wasted      
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     0      506    1565  ever_wasted      
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     1       52    1565  ever_wasted      
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term              0     7954   16657  ever_wasted      
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term              1      552   16657  ever_wasted      
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                        0      546   16657  ever_wasted      
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                        1       36   16657  ever_wasted      
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                     0     7095   16657  ever_wasted      
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                     1      474   16657  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term              0      406     745  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term              1        4     745  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                        0      120     745  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                        1        2     745  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                     0      208     745  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                     1        5     745  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term              0      484    1249  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term              1       49    1249  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                        0      262    1249  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                        1       20    1249  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                     0      395    1249  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                     1       39    1249  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term              0     1047    2972  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      103    2972  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      569    2972  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                        1       60    2972  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                     0     1076    2972  ever_wasted      
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                     1      117    2972  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0    12058   24985  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1      944   24985  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     4726   24985  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      309   24985  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     6443   24985  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      505   24985  ever_wasted      
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      164     351  ever_wasted      
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       51     351  ever_wasted      
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       33     351  ever_wasted      
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       19     351  ever_wasted      
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       63     351  ever_wasted      
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       21     351  ever_wasted      
6-24 months                   ki1000108-IRC              INDIA                          Full or late term              0      177     390  ever_wasted      
6-24 months                   ki1000108-IRC              INDIA                          Full or late term              1       73     390  ever_wasted      
6-24 months                   ki1000108-IRC              INDIA                          Preterm                        0       21     390  ever_wasted      
6-24 months                   ki1000108-IRC              INDIA                          Preterm                        1       21     390  ever_wasted      
6-24 months                   ki1000108-IRC              INDIA                          Early term                     0       68     390  ever_wasted      
6-24 months                   ki1000108-IRC              INDIA                          Early term                     1       30     390  ever_wasted      
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              0       15     374  ever_wasted      
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              1        2     374  ever_wasted      
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        0      159     374  ever_wasted      
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        1      140     374  ever_wasted      
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     0       39     374  ever_wasted      
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     1       19     374  ever_wasted      
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      146     730  ever_wasted      
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       12     730  ever_wasted      
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      210     730  ever_wasted      
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       45     730  ever_wasted      
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      278     730  ever_wasted      
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       39     730  ever_wasted      
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0      997    1897  ever_wasted      
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      161    1897  ever_wasted      
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      240    1897  ever_wasted      
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       60    1897  ever_wasted      
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      358    1897  ever_wasted      
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       81    1897  ever_wasted      
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              0      547    1635  ever_wasted      
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              1      267    1635  ever_wasted      
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                        0      159    1635  ever_wasted      
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                        1       82    1635  ever_wasted      
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                     0      399    1635  ever_wasted      
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                     1      181    1635  ever_wasted      
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term              0     8403   16598  ever_wasted      
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term              1       76   16598  ever_wasted      
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                        0      574   16598  ever_wasted      
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                        1        6   16598  ever_wasted      
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                     0     7454   16598  ever_wasted      
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                     1       85   16598  ever_wasted      
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term              0      376     769  ever_wasted      
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       51     769  ever_wasted      
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                        0       97     769  ever_wasted      
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       24     769  ever_wasted      
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                     0      185     769  ever_wasted      
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                     1       36     769  ever_wasted      
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term              0      510    1327  ever_wasted      
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term              1       64    1327  ever_wasted      
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                        0      255    1327  ever_wasted      
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                        1       48    1327  ever_wasted      
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                     0      387    1327  ever_wasted      
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                     1       63    1327  ever_wasted      
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      815    2787  ever_wasted      
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      266    2787  ever_wasted      
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      419    2787  ever_wasted      
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      167    2787  ever_wasted      
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      809    2787  ever_wasted      
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      311    2787  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     7353   16477  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     1404   16477  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     2610   16477  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      548   16477  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     3798   16477  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      764   16477  ever_wasted      


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
![](/tmp/111890ab-60e3-4f57-ad76-84f20c2449a6/6832cb83-5caf-4828-90cd-5ce92afa429f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/111890ab-60e3-4f57-ad76-84f20c2449a6/6832cb83-5caf-4828-90cd-5ce92afa429f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/111890ab-60e3-4f57-ad76-84f20c2449a6/6832cb83-5caf-4828-90cd-5ce92afa429f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/111890ab-60e3-4f57-ad76-84f20c2449a6/6832cb83-5caf-4828-90cd-5ce92afa429f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.4225352    0.3561032   0.4889672
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5192308    0.3832367   0.6552248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.4457831    0.3386964   0.5528699
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                0.5140562    0.4518970   0.5762155
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              NA                0.6190476    0.4719926   0.7661026
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           NA                0.5510204    0.4524172   0.6496236
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0952381    0.0508206   0.1396556
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1800766    0.1334288   0.2267244
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1384615    0.1008868   0.1760363
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1732852    0.1533473   0.1932231
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2645349    0.2179132   0.3111566
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2183236    0.1825675   0.2540797
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3699284    0.3372314   0.4026254
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4023438    0.3422567   0.4624308
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3444816    0.3063837   0.3825795
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0721494    0.0591090   0.0851898
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0710660    0.0386659   0.1034661
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0712329    0.0583673   0.0840985
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1205357    0.0903678   0.1507036
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1923077    0.1245176   0.2600978
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1731602    0.1243348   0.2219855
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1882556    0.1564023   0.2201089
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2142857    0.1684438   0.2601277
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           NA                0.2183406    0.1804917   0.2561895
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2832470    0.2572912   0.3092027
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.3143760    0.2782028   0.3505492
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.3161398    0.2898497   0.3424298
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1695599    0.1624687   0.1766511
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1617762    0.1508225   0.1727299
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1717949    0.1620344   0.1815553
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3200000    0.2552533   0.3847467
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2941176    0.1688772   0.4193581
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2839506    0.1856053   0.3822959
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                0.3305439    0.2708252   0.3902627
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              NA                0.2631579    0.1229612   0.4033546
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           NA                0.4255319    0.3254468   0.5256170
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0357143    0.0076336   0.0637950
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.0192308    0.0025263   0.0359353
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0280374    0.0099665   0.0461083
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0797101    0.0654171   0.0940032
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1224490    0.0877504   0.1571476
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0782779    0.0549833   0.1015724
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1238592    0.1005386   0.1471798
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1416667    0.0975357   0.1857976
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0931900    0.0690625   0.1173175
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0648954    0.0521585   0.0776322
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0618557    0.0342981   0.0894132
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0626239    0.0509265   0.0743212
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0919325    0.0673937   0.1164712
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0709220    0.0409501   0.1008939
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           NA                0.0898618    0.0629453   0.1167782
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0895652    0.0730583   0.1060721
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0953895    0.0724292   0.1183498
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0980721    0.0811926   0.1149516
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0726042    0.0675060   0.0777025
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0613704    0.0543414   0.0683994
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0726828    0.0659987   0.0793669
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2372093    0.1802694   0.2941492
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3653846    0.2343167   0.4964525
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2500000    0.1572682   0.3427318
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                0.2920000    0.2355656   0.3484344
6-24 months                   ki1000108-IRC              INDIA                          Preterm              NA                0.5000000    0.3485913   0.6514087
6-24 months                   ki1000108-IRC              INDIA                          Early term           NA                0.3061224    0.2147571   0.3974878
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0759494    0.0346135   0.1172852
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1764706    0.1296484   0.2232927
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1230284    0.0868448   0.1592120
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1390328    0.1191004   0.1589652
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2000000    0.1547246   0.2452754
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1845103    0.1482150   0.2208055
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3280098    0.2957477   0.3602720
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.3402490    0.2804132   0.4000847
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3120690    0.2743496   0.3497884
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0089633    0.0061435   0.0117831
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0103448   -0.0000468   0.0207365
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0112747    0.0075006   0.0150488
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1194379    0.0886580   0.1502179
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1983471    0.1272513   0.2694429
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1628959    0.1141791   0.2116128
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1114983    0.0857398   0.1372567
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              NA                0.1584158    0.1172878   0.1995439
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           NA                0.1400000    0.1079285   0.1720715
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2460685    0.2203877   0.2717492
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2849829    0.2484281   0.3215378
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2776786    0.2514452   0.3039119
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1603289    0.1517569   0.1689008
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1735276    0.1592897   0.1877654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1674704    0.1562197   0.1787212


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
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2288462   0.9053765   1.6678839
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0550201   0.7917273   1.4058721
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.2042411   0.9224653   1.5720879
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0719069   0.8636986   1.3303072
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.8908045   1.1090532   3.2235982
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.4538461   0.8475737   2.4937872
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5265867   1.2368416   1.8842082
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2599090   1.0313694   1.5390904
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0876260   0.9143508   1.2937379
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9312116   0.8082821   1.0728370
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9849838   0.6337804   1.5308031
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9872968   0.8648932   1.1270236
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.5954416   1.0354412   2.4583085
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.4365881   0.9853568   2.0944550
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1382700   0.8665417   1.4952062
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1598093   0.9102995   1.4777088
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1099006   0.9580798   1.2857794
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1161276   0.9862163   1.2631517
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.9540946   0.8838495   1.0299226
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0131809   0.9461475   1.0849636
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.9191176   0.5736217   1.4727080
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.8873457   0.5941417   1.3252433
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              Full or late term    0.7961359   0.4536025   1.3973299
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.2873687   0.9569730   1.7318338
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    0.5384615   0.1668478   1.7377569
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    0.7850467   0.2840280   2.1698509
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5361781   1.0985134   2.1482151
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9820317   0.6938028   1.3900005
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1437719   0.7948029   1.6459606
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7523864   0.5462735   1.0362671
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9531600   0.6132841   1.4813917
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9649974   0.8424093   1.1054246
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.7714575   0.4679872   1.2717157
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.9774758   0.6544318   1.4599825
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0650285   0.7865067   1.4421818
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0949796   0.8509225   1.4090359
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.8452733   0.7416958   0.9633155
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0010822   0.8930977   1.1221231
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.5403469   1.0003898   2.3717441
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0539216   0.6775284   1.6394157
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.7123288   1.1955633   2.4524588
6-24 months                   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0483646   0.7346654   1.4960121
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    2.3235294   1.2682049   4.2570321
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.6198738   0.8725893   3.0071318
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4385093   1.1003763   1.8805467
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3270986   1.0403781   1.6928371
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0373133   0.8480111   1.2688737
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9514013   0.8141173   1.1118353
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1541289   0.4648563   2.8654305
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.2578713   0.8760389   1.8061302
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.6606709   1.0679649   2.5823207
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.3638541   0.9190002   2.0240453
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4207921   1.0036963   2.0112162
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2556250   0.9069109   1.7384224
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1581449   0.9816268   1.3664049
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1284607   0.9802781   1.2990430
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0823225   0.9819588   1.1929441
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0445430   0.9603936   1.1360655


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0199935   -0.0217424   0.0617295
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0206481   -0.0165082   0.0578045
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0479980    0.0065276   0.0894684
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0243062    0.0109585   0.0376540
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0040892   -0.0272656   0.0190873
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0004542   -0.0049363   0.0040279
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0265595    0.0042303   0.0488886
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0162054   -0.0084113   0.0408220
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0197935   -0.0007871   0.0403740
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0009539   -0.0056729   0.0037651
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0127711   -0.0529146   0.0273724
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0171650   -0.0192524   0.0535823
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0090120   -0.0328503   0.0148263
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0062343   -0.0030954   0.0155641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0082042   -0.0243903   0.0079818
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0011384   -0.0052881   0.0030113
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0054633   -0.0236669   0.0127403
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0046474   -0.0084655   0.0177604
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0022420   -0.0055638   0.0010798
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0220500   -0.0150725   0.0591725
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0259487   -0.0093107   0.0612081
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0555575    0.0159234   0.0951916
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0201659    0.0066217   0.0337102
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0038508   -0.0266434   0.0189418
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0010981   -0.0006579   0.0028542
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0249054    0.0022546   0.0475561
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0203782   -0.0001442   0.0409005
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0208853    0.0004470   0.0413235
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0045070   -0.0011531   0.0101670


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0451802   -0.0540332   0.1350548
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0386160   -0.0335666   0.1057575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3350970   -0.0205568   0.5668090
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1230126    0.0532702   0.1876173
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0111775   -0.0765563   0.0502309
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0063351   -0.0707750   0.0542268
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1805597    0.0163590   0.3173502
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0792589   -0.0491907   0.1919828
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0653162   -0.0051067   0.1308050
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0056575   -0.0340443   0.0219500
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0415686   -0.1807664   0.0812194
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0493659   -0.0613601   0.1485404
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3375000   -1.5855791   0.3081216
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0725393   -0.0422120   0.1746559
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0709372   -0.2201672   0.0600416
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0178551   -0.0845342   0.0447244
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0631818   -0.2956919   0.1276046
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0493292   -0.1004591   0.1787292
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0318637   -0.0800928   0.0142119
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0850498   -0.0696159   0.2173510
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0816129   -0.0361537   0.1859944
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4224684    0.0412055   0.6521227
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1266714    0.0380590   0.2071209
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0118794   -0.0846928   0.0560462
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1091425   -0.0756863   0.2622133
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1725426    0.0022169   0.3137930
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1545246   -0.0150246   0.2957524
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0782355   -0.0015408   0.1516574
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0273421   -0.0076506   0.0611196
