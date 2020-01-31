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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        gagebrth             sstunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ------------------  ---------  -------  ------  -----------------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0       55      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1        3      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       10      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1        1      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       23      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1        0      92  sstunted         
Birth       ki1000108-IRC              INDIA                          Full or late term           0      228     369  sstunted         
Birth       ki1000108-IRC              INDIA                          Full or late term           1       10     369  sstunted         
Birth       ki1000108-IRC              INDIA                          Preterm                     0       33     369  sstunted         
Birth       ki1000108-IRC              INDIA                          Preterm                     1        3     369  sstunted         
Birth       ki1000108-IRC              INDIA                          Early term                  0       93     369  sstunted         
Birth       ki1000108-IRC              INDIA                          Early term                  1        2     369  sstunted         
Birth       ki1000109-EE               PAKISTAN                       Full or late term           0       11     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       Full or late term           1        0     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       Preterm                     0      142     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       Preterm                     1       40     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       Early term                  0       39     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       Early term                  1        8     240  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0      162     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        0     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0      250     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1        7     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0      310     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1        3     732  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         Full or late term           0      726    1515  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         Full or late term           1        8    1515  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         Preterm                     0      219    1515  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         Preterm                     1       16    1515  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         Early term                  0      541    1515  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         Early term                  1        5    1515  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        Full or late term           0     7098   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        Full or late term           1        0   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        Preterm                     0      471   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        Preterm                     1        1   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        Early term                  0     6316   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        Early term                  1        4   13890  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term           0      338     617  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term           1        3     617  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                     0       91     617  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                     1        4     617  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                  0      179     617  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                  1        2     617  sstunted         
Birth       ki1135781-COHORTS          INDIA                          Full or late term           0      562    1293  sstunted         
Birth       ki1135781-COHORTS          INDIA                          Full or late term           1        8    1293  sstunted         
Birth       ki1135781-COHORTS          INDIA                          Preterm                     0      269    1293  sstunted         
Birth       ki1135781-COHORTS          INDIA                          Preterm                     1       16    1293  sstunted         
Birth       ki1135781-COHORTS          INDIA                          Early term                  0      431    1293  sstunted         
Birth       ki1135781-COHORTS          INDIA                          Early term                  1        7    1293  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term           0     1161    3024  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term           1        3    3024  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      618    3024  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                     1       31    3024  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                  0     1199    3024  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                  1       12    3024  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0    10402   21442  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      542   21442  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     3299   21442  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1     1215   21442  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     5384   21442  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      600   21442  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0      190     347  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1       22     347  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       42     347  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1       10     347  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       77     347  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1        6     347  sstunted         
6 months    ki1000108-IRC              INDIA                          Full or late term           0      233     388  sstunted         
6 months    ki1000108-IRC              INDIA                          Full or late term           1       16     388  sstunted         
6 months    ki1000108-IRC              INDIA                          Preterm                     0       34     388  sstunted         
6 months    ki1000108-IRC              INDIA                          Preterm                     1        8     388  sstunted         
6 months    ki1000108-IRC              INDIA                          Early term                  0       93     388  sstunted         
6 months    ki1000108-IRC              INDIA                          Early term                  1        4     388  sstunted         
6 months    ki1000109-EE               PAKISTAN                       Full or late term           0       15     373  sstunted         
6 months    ki1000109-EE               PAKISTAN                       Full or late term           1        2     373  sstunted         
6 months    ki1000109-EE               PAKISTAN                       Preterm                     0      229     373  sstunted         
6 months    ki1000109-EE               PAKISTAN                       Preterm                     1       68     373  sstunted         
6 months    ki1000109-EE               PAKISTAN                       Early term                  0       48     373  sstunted         
6 months    ki1000109-EE               PAKISTAN                       Early term                  1       11     373  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0      153     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        2     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0      236     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1       15     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0      303     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1        6     715  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0     1159    1903  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        8    1903  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0      284    1903  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        7    1903  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0      443    1903  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        2    1903  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         Full or late term           0      637    1374  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         Full or late term           1       21    1374  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         Preterm                     0      197    1374  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         Preterm                     1       10    1374  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         Early term                  0      505    1374  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         Early term                  1        4    1374  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        Full or late term           0     7917   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        Full or late term           1       91   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        Preterm                     0      533   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        Preterm                     1       18   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        Early term                  0     7068   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        Early term                  1      134   15761  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term           0      356     713  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term           1       33     713  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                     0       86     713  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                     1       27     713  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                  0      178     713  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                  1       33     713  sstunted         
6 months    ki1135781-COHORTS          INDIA                          Full or late term           0      556    1312  sstunted         
6 months    ki1135781-COHORTS          INDIA                          Full or late term           1       12    1312  sstunted         
6 months    ki1135781-COHORTS          INDIA                          Preterm                     0      285    1312  sstunted         
6 months    ki1135781-COHORTS          INDIA                          Preterm                     1       14    1312  sstunted         
6 months    ki1135781-COHORTS          INDIA                          Early term                  0      432    1312  sstunted         
6 months    ki1135781-COHORTS          INDIA                          Early term                  1       13    1312  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term           0      988    2687  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term           1       40    2687  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      530    2687  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                     1       43    2687  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                  0     1038    2687  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                  1       48    2687  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0     8175   16010  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      352   16010  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     2688   16010  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1      357   16010  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     4169   16010  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      269   16010  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0      147     349  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1       66     349  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       31     349  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1       21     349  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       56     349  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1       28     349  sstunted         
24 months   ki1000108-IRC              INDIA                          Full or late term           0      230     390  sstunted         
24 months   ki1000108-IRC              INDIA                          Full or late term           1       20     390  sstunted         
24 months   ki1000108-IRC              INDIA                          Preterm                     0       33     390  sstunted         
24 months   ki1000108-IRC              INDIA                          Preterm                     1        9     390  sstunted         
24 months   ki1000108-IRC              INDIA                          Early term                  0       89     390  sstunted         
24 months   ki1000108-IRC              INDIA                          Early term                  1        9     390  sstunted         
24 months   ki1000109-EE               PAKISTAN                       Full or late term           0        5     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       Full or late term           1        2     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       Preterm                     0       80     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       Preterm                     1       51     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       Early term                  0       23     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       Early term                  1        6     167  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0       77     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        2     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0      188     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1       20     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0      213     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1       14     514  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0        4       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        0       6  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         Full or late term           0      510    1156  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         Full or late term           1       47    1156  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         Preterm                     0      145    1156  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         Preterm                     1       22    1156  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         Early term                  0      408    1156  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         Early term                  1       24    1156  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        Full or late term           0     1994    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        Full or late term           1       30    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        Preterm                     0      132    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        Preterm                     1        5    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        Early term                  0     1844    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        Early term                  1       30    4035  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term           0      196     661  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term           1      179     661  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                     0       50     661  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                     1       57     661  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                  0       89     661  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                  1       90     661  sstunted         
24 months   ki1135781-COHORTS          INDIA                          Full or late term           0      458    1308  sstunted         
24 months   ki1135781-COHORTS          INDIA                          Full or late term           1      107    1308  sstunted         
24 months   ki1135781-COHORTS          INDIA                          Preterm                     0      228    1308  sstunted         
24 months   ki1135781-COHORTS          INDIA                          Preterm                     1       77    1308  sstunted         
24 months   ki1135781-COHORTS          INDIA                          Early term                  0      344    1308  sstunted         
24 months   ki1135781-COHORTS          INDIA                          Early term                  1       94    1308  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term           0      694    2424  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term           1      244    2424  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      343    2424  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                     1      170    2424  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                  0      686    2424  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                  1      287    2424  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0     3733    8202  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      594    8202  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     1258    8202  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1      346    8202  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     1923    8202  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      348    8202  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/628f89f8-4362-4ff0-9e02-dc50014e48e7/002dc3cc-99ff-4171-806b-07388f9db33c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/628f89f8-4362-4ff0-9e02-dc50014e48e7/002dc3cc-99ff-4171-806b-07388f9db33c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/628f89f8-4362-4ff0-9e02-dc50014e48e7/002dc3cc-99ff-4171-806b-07388f9db33c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/628f89f8-4362-4ff0-9e02-dc50014e48e7/002dc3cc-99ff-4171-806b-07388f9db33c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                0.0108992    0.0033854   0.0184130
Birth       ki1101329-Keneba           GAMBIA        Preterm              NA                0.0680851    0.0358691   0.1003011
Birth       ki1101329-Keneba           GAMBIA        Early term           NA                0.0091575    0.0011649   0.0171501
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                0.0140351    0.0043742   0.0236960
Birth       ki1135781-COHORTS          INDIA         Preterm              NA                0.0561404    0.0294051   0.0828756
Birth       ki1135781-COHORTS          INDIA         Early term           NA                0.0159817    0.0042330   0.0277305
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.0495249    0.0451285   0.0539212
Birth       kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.2691626    0.2550613   0.2832639
Birth       kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.1002674    0.0918696   0.1086652
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                0.1037736    0.0626625   0.1448847
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Preterm              NA                0.1923077    0.0850337   0.2995817
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Early term           NA                0.0722892    0.0164963   0.1280820
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                0.0113636    0.0068846   0.0158427
6 months    ki1119695-PROBIT           BELARUS       Preterm              NA                0.0326679    0.0167924   0.0485433
6 months    ki1119695-PROBIT           BELARUS       Early term           NA                0.0186059    0.0111432   0.0260687
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                0.0848329    0.0571246   0.1125412
6 months    ki1135781-COHORTS          GUATEMALA     Preterm              NA                0.2389381    0.1602577   0.3176184
6 months    ki1135781-COHORTS          GUATEMALA     Early term           NA                0.1563981    0.1073529   0.2054433
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                0.0211268    0.0092958   0.0329577
6 months    ki1135781-COHORTS          INDIA         Preterm              NA                0.0468227    0.0228679   0.0707776
6 months    ki1135781-COHORTS          INDIA         Early term           NA                0.0292135    0.0135609   0.0448661
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                0.0389105    0.0270870   0.0507341
6 months    ki1135781-COHORTS          PHILIPPINES   Preterm              NA                0.0750436    0.0534677   0.0966195
6 months    ki1135781-COHORTS          PHILIPPINES   Early term           NA                0.0441989    0.0319724   0.0564254
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.0412806    0.0370583   0.0455029
6 months    kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.1172414    0.1054608   0.1290220
6 months    kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.0606129    0.0530982   0.0681275
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                0.3098592    0.2476675   0.3720509
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Preterm              NA                0.4038462    0.2702922   0.5374001
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Early term           NA                0.3333333    0.2323789   0.4342877
24 months   ki1000108-IRC              INDIA         Full or late term    NA                0.0800000    0.0463276   0.1136724
24 months   ki1000108-IRC              INDIA         Preterm              NA                0.2142857    0.0900319   0.3385396
24 months   ki1000108-IRC              INDIA         Early term           NA                0.0918367    0.0345858   0.1490877
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                0.0843806    0.0612872   0.1074740
24 months   ki1101329-Keneba           GAMBIA        Preterm              NA                0.1317365    0.0804201   0.1830530
24 months   ki1101329-Keneba           GAMBIA        Early term           NA                0.0555556    0.0339460   0.0771651
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                0.0148221    0.0038188   0.0258255
24 months   ki1119695-PROBIT           BELARUS       Preterm              NA                0.0364964   -0.0116126   0.0846053
24 months   ki1119695-PROBIT           BELARUS       Early term           NA                0.0160085   -0.0030877   0.0351047
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                0.4773333    0.4267410   0.5279256
24 months   ki1135781-COHORTS          GUATEMALA     Preterm              NA                0.5327103    0.4381032   0.6273174
24 months   ki1135781-COHORTS          GUATEMALA     Early term           NA                0.5027933    0.4294917   0.5760949
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                0.1893805    0.1570609   0.2217001
24 months   ki1135781-COHORTS          INDIA         Preterm              NA                0.2524590    0.2036863   0.3012318
24 months   ki1135781-COHORTS          INDIA         Early term           NA                0.2146119    0.1761486   0.2530751
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                0.2601279    0.2320472   0.2882086
24 months   ki1135781-COHORTS          PHILIPPINES   Preterm              NA                0.3313840    0.2906429   0.3721252
24 months   ki1135781-COHORTS          PHILIPPINES   Early term           NA                0.2949640    0.2663043   0.3236237
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.1372776    0.1257913   0.1487639
24 months   kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.2157107    0.1949168   0.2365047
24 months   kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.1532365    0.1369008   0.1695721


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0191419   0.0122398   0.0260440
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0239753   0.0156340   0.0323165
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1099244   0.1052719   0.1145770
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1095101   0.0766059   0.1424143
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1304348   0.1056973   0.1551723
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0297256   0.0205326   0.0389187
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487533   0.0406091   0.0568974
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0610868   0.0571240   0.0650496
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3295129   0.2801285   0.3788973
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0974359   0.0679665   0.1269053
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0804498   0.0647640   0.0961357
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4931921   0.4550499   0.5313343
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2125382   0.1903591   0.2347173
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2891914   0.2711388   0.3072440
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1570349   0.1479400   0.1661298


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ------------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA        Preterm              Full or late term    6.2468085   2.7072028   14.414368
Birth       ki1101329-Keneba           GAMBIA        Early term           Full or late term    0.8402015   0.2762834    2.555125
Birth       ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA         Preterm              Full or late term    4.0000000   1.7320013    9.237869
Birth       ki1135781-COHORTS          INDIA         Early term           Full or late term    1.1386986   0.4159430    3.117338
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    5.4348995   4.8844586    6.047371
Birth       kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    2.0245871   1.8003771    2.276719
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.8531469   0.9349126    3.673234
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Early term           Full or late term    0.6966046   0.2925632    1.658643
6 months    ki1119695-PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS       Preterm              Full or late term    2.8747731   1.6001362    5.164761
6 months    ki1119695-PROBIT           BELARUS       Early term           Full or late term    1.6373230   1.2113497    2.213090
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Preterm              Full or late term    2.8165728   1.7713031    4.478670
6 months    ki1135781-COHORTS          GUATEMALA     Early term           Full or late term    1.8436019   1.1722531    2.899432
6 months    ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA         Preterm              Full or late term    2.2162765   1.0380224    4.731961
6 months    ki1135781-COHORTS          INDIA         Early term           Full or late term    1.3827715   0.6370252    3.001541
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Preterm              Full or late term    1.9286213   1.2693171    2.930379
6 months    ki1135781-COHORTS          PHILIPPINES   Early term           Full or late term    1.1359116   0.7531545    1.713188
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    2.8401058   2.4761581    3.257547
6 months    kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.4683128   1.2469759    1.728937
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.3033217   0.8852101    1.918920
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Early term           Full or late term    1.0757576   0.7480337    1.547062
24 months   ki1000108-IRC              INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA         Preterm              Full or late term    2.6785714   1.3083567    5.483783
24 months   ki1000108-IRC              INDIA         Early term           Full or late term    1.1479592   0.5410719    2.435555
24 months   ki1101329-Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA        Preterm              Full or late term    1.5612180   0.9698610    2.513145
24 months   ki1101329-Keneba           GAMBIA        Early term           Full or late term    0.6583924   0.4091965    1.059346
24 months   ki1119695-PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS       Preterm              Full or late term    2.4622871   0.5762612   10.521023
24 months   ki1119695-PROBIT           BELARUS       Early term           Full or late term    1.0800427   0.3773256    3.091474
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Preterm              Full or late term    1.1160132   0.9075051    1.372428
24 months   ki1135781-COHORTS          GUATEMALA     Early term           Full or late term    1.0533379   0.8796066    1.261383
24 months   ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA         Preterm              Full or late term    1.3330780   1.0301626    1.725065
24 months   ki1135781-COHORTS          INDIA         Early term           Full or late term    1.1332309   0.8847897    1.451432
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Preterm              Full or late term    1.2739271   1.0816581    1.500373
24 months   ki1135781-COHORTS          PHILIPPINES   Early term           Full or late term    1.1339191   0.9806327    1.311166
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    1.5713473   1.3870683    1.780109
24 months   kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.1162528   0.9825194    1.268189


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                 0.0082427    0.0012149   0.0152706
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0099402    0.0009613   0.0189190
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0603996    0.0558929   0.0649063
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0057365   -0.0208651   0.0323381
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0040542    0.0016000   0.0065083
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0456019    0.0223220   0.0688818
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0085988   -0.0015643   0.0187620
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0098428   -0.0001149   0.0198004
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0198062    0.0161219   0.0234905
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0196537   -0.0201642   0.0594716
24 months   ki1000108-IRC              INDIA         Full or late term    NA                 0.0174359   -0.0059874   0.0408591
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                -0.0039308   -0.0202225   0.0123610
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0012869   -0.0065493   0.0091231
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0158588   -0.0174608   0.0491784
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0231577   -0.0020229   0.0483383
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0290635    0.0066099   0.0515170
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0197573    0.0121588   0.0273558


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                 0.4306117   -0.0227788   0.6830174
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                 0.4146010   -0.0580236   0.6761018
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.5494646    0.5135707   0.5827098
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0523833   -0.2240006   0.2663587
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.2629536    0.1193233   0.3831591
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.3496144    0.1575663   0.4978816
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                 0.2892741   -0.1315262   0.5535841
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.2018891   -0.0275540   0.3800997
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.3242300    0.2663396   0.3775526
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0596448   -0.0692730   0.1730195
24 months   ki1000108-IRC              INDIA         Full or late term    NA                 0.1789474   -0.0935755   0.3835566
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                -0.0488601   -0.2720172   0.1351474
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0798875   -0.5128990   0.4404074
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0321554   -0.0378607   0.0974481
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                 0.1089578   -0.0174313   0.2196464
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.1004991    0.0194813   0.1748227
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.1258148    0.0759582   0.1729814
