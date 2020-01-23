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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        gagebrth             pers_wast   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  ------------------  ----------  -------  ------  -----------------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      201     351  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       14     351  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       49     351  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        3     351  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       81     351  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        3     351  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          Full or late term            0      225     390  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          Full or late term            1       25     390  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          Preterm                      0       34     390  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          Preterm                      1        8     390  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          Early term                   0       85     390  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          Early term                   1       13     390  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term            0       16     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term            1        1     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                      0      274     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                      1       27     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       Early term                   0       54     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       Early term                   1        5     377  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0      156     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        2     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0      241     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1       14     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      307     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1       10     730  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212    2035  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33    2035  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306    2035  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11    2035  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462    2035  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11    2035  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            0      733    1579  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            1       45    1579  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      0      226    1579  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      1       13    1579  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                   0      533    1579  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                   1       29    1579  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            0     8383   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            1       89   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      0      573   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      1        7   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                   0     7466   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                   1       63   16581  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            0      401     732  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            1        8     732  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      0      113     732  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      1        6     732  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   0      198     732  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   1        6     732  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term            0      470    1186  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term            1       42    1186  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                      0      248    1186  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                      1       18    1186  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          Early term                   0      367    1186  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          Early term                   1       41    1186  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            0     1034    2789  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       47    2789  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      550    2789  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       34    2789  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   0     1062    2789  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   1       62    2789  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0     7749   15049  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1      434   15049  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0     2534   15049  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1      172   15049  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0     3908   15049  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1      252   15049  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      174     337  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       32     337  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       45     337  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        6     337  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       72     337  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        8     337  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          Full or late term            0      211     383  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          Full or late term            1       34     383  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          Preterm                      0       33     383  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          Preterm                      1        9     383  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          Early term                   0       78     383  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          Early term                   1       18     383  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term            0       16     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term            1        1     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                      0      275     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                      1       22     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       Early term                   0       55     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       Early term                   1        2     371  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0       80     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        1     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0       65     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1        2     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      100     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1        2     250  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1157    1934  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       29    1934  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      290    1934  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1        8    1934  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      438    1934  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       12    1934  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term            0      658    1408  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term            1       21    1408  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                      0      209    1408  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                      1        9    1408  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                   0      498    1408  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                   1       13    1408  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term            0     6314   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term            1      622   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                      0      423   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                      1       34   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                   0     5662   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                   1      490   13545  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term            0      315     848  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       11     848  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      158     848  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       13     848  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                   0      323     848  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                   1       28     848  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0       24      46  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1        0      46  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0       10      46  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1        0      46  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0       11      46  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1        1      46  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      201     351  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       14     351  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       49     351  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        3     351  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       81     351  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        3     351  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          Full or late term            0      225     390  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          Full or late term            1       25     390  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          Preterm                      0       34     390  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          Preterm                      1        8     390  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          Early term                   0       85     390  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          Early term                   1       13     390  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term            0       16     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term            1        1     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                      0      274     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                      1       27     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       Early term                   0       54     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       Early term                   1        5     377  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0      156     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        2     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0      241     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1       14     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      307     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1       10     730  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212    2035  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33    2035  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306    2035  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11    2035  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462    2035  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11    2035  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            0      733    1579  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            1       45    1579  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      0      226    1579  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      1       13    1579  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                   0      533    1579  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                   1       29    1579  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            0     8383   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            1       89   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      0      573   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      1        7   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                   0     7466   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                   1       63   16581  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            0      401     732  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            1        8     732  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      0      113     732  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      1        6     732  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   0      198     732  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   1        6     732  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term            0      470    1186  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term            1       42    1186  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                      0      248    1186  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                      1       18    1186  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          Early term                   0      367    1186  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          Early term                   1       41    1186  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            0     1034    2789  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       47    2789  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      550    2789  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       34    2789  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   0     1062    2789  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   1       62    2789  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0     7749   15049  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1      434   15049  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0     2534   15049  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1      172   15049  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0     3908   15049  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1      252   15049  pers_wast        


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

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/a7588025-01a6-44e0-ae36-8073925a163a/b70ae107-c7c1-4c1d-a1b8-345b1d718d54/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a7588025-01a6-44e0-ae36-8073925a163a/b70ae107-c7c1-4c1d-a1b8-345b1d718d54/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a7588025-01a6-44e0-ae36-8073925a163a/b70ae107-c7c1-4c1d-a1b8-345b1d718d54/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a7588025-01a6-44e0-ae36-8073925a163a/b70ae107-c7c1-4c1d-a1b8-345b1d718d54/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0265060   0.0175810   0.0354310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0347003   0.0145481   0.0548525
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0232558   0.0096702   0.0368415
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0578406   0.0414319   0.0742493
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0543933   0.0256316   0.0831550
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0516014   0.0333059   0.0698969
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0105052   0.0058392   0.0151712
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0120690   0.0030561   0.0210818
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083676   0.0038455   0.0128898
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0820313   0.0582519   0.1058106
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0676692   0.0374717   0.0978667
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.1004902   0.0713048   0.1296756
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0434783   0.0313193   0.0556372
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0582192   0.0392247   0.0772137
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0551601   0.0418116   0.0685087
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0530368   0.0475886   0.0584850
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0635625   0.0541104   0.0730145
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0605769   0.0529049   0.0682489
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1553398   0.1058014   0.2048782
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290906   0.2062035
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1000000   0.0341631   0.1658369
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1387755   0.0954297   0.1821213
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.2142857   0.0900289   0.3385425
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.1875000   0.1093206   0.2656794
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0244519   0.0156597   0.0332442
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0268456   0.0084896   0.0452017
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0266667   0.0117775   0.0415558
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0309278   0.0179016   0.0439541
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0412844   0.0148657   0.0677031
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0254403   0.0117832   0.0390974
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0896770   0.0600269   0.1193271
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0743982   0.0408996   0.1078969
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0796489   0.0511745   0.1081233
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0337423   0.0141300   0.0533547
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0760234   0.0362758   0.1157709
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0797721   0.0514109   0.1081332
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0265060   0.0175810   0.0354310
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0347003   0.0145481   0.0548525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0232558   0.0096702   0.0368415
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0578406   0.0414319   0.0742493
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0543933   0.0256316   0.0831550
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0516014   0.0333059   0.0698969
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0105052   0.0058392   0.0151712
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0120690   0.0030561   0.0210818
6-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083676   0.0038455   0.0128898
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0820313   0.0582519   0.1058106
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0676692   0.0374717   0.0978667
6-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.1004902   0.0713048   0.1296756
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0434783   0.0313193   0.0556372
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0582192   0.0392247   0.0772137
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0551601   0.0418116   0.0685087
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0530368   0.0475886   0.0584850
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0635625   0.0541104   0.0730145
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0605769   0.0529049   0.0682489


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0550982   0.0438403   0.0663560
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0273224   0.0155047   0.0391401
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0570138   0.0528460   0.0611815
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1364985   0.0997894   0.1732076
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592689   0.1225736   0.1959642
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253361   0.0183307   0.0323414
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0305398   0.0215490   0.0395306
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0846069   0.0570929   0.1121208
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613208   0.0451635   0.0774781
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0550982   0.0438403   0.0663560
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0273224   0.0155047   0.0391401
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0570138   0.0528460   0.0611815


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3091483   0.6690294   2.561725
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8773784   0.4470465   1.721953
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9403998   0.5160680   1.713634
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8921313   0.5665326   1.404859
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1488570   0.5931471   2.225203
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.7965246   0.5427623   1.168931
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.5777311   0.9117126   7.288149
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.5036765   0.5284081   4.278971
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.8249194   0.4845141   1.404483
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2250233   0.8127084   1.846520
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3390410   0.8713097   2.057857
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2686832   0.8764771   1.836394
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1984598   1.0006349   1.435395
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.1421681   0.9778412   1.334110
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.7573529   0.3343982   1.715271
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6437500   0.3097517   1.337891
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.5441176   0.7991678   2.983478
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.3511029   0.8024776   2.274804
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0978940   0.5070474   2.377236
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0905747   0.5613548   2.118719
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3348624   0.6204803   2.871739
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8225701   0.4157567   1.627446
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.8296242   0.5430638   1.267395
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.8881748   0.7282984   1.083147
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    2.2530569   1.0309696   4.923778
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    2.3641544   1.1961048   4.672856
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3091483   0.6690294   2.561725
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8773784   0.4470465   1.721953
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9403998   0.5160680   1.713634
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8921313   0.5665326   1.404859
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1488570   0.5931471   2.225203
6-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.7965246   0.5427623   1.168931
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.5777311   0.9117126   7.288149
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.5036765   0.5284081   4.278971
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.8249194   0.4845141   1.404483
6-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2250233   0.8127084   1.846520
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3390410   0.8713097   2.057857
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2686832   0.8764771   1.836394
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1984598   1.0006349   1.435395
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.1421681   0.9778412   1.334110


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0005210   -0.0051230   0.0061650
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0027425   -0.0141732   0.0086883
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0009159   -0.0025910   0.0007592
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0031290   -0.0150313   0.0212892
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0077946   -0.0022184   0.0178076
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0039770    0.0004436   0.0075104
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0188413   -0.0471504   0.0094678
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0204934   -0.0081709   0.0491577
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008842   -0.0047344   0.0065027
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0003881   -0.0097080   0.0089318
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0050702   -0.0127340   0.0025936
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0275784    0.0088712   0.0462857
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0005210   -0.0051230   0.0061650
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0027425   -0.0141732   0.0086883
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0009159   -0.0025910   0.0007592
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0031290   -0.0150313   0.0212892
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0077946   -0.0022184   0.0178076
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0039770    0.0004436   0.0075104


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0192771   -0.2133771   0.2073219
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0497740   -0.2788881   0.1382942
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0955133   -0.2894475   0.0692530
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0367420   -0.2018407   0.2279625
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1520219   -0.0658551   0.3253615
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0697546    0.0054771   0.1298778
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1380329   -0.3629649   0.0497782
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.1286718   -0.0692198   0.2899375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0348969   -0.2141578   0.2328642
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0127068   -0.3688196   0.2507595
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0599264   -0.1535802   0.0261242
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.4497404    0.0798625   0.6709344
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0192771   -0.2133771   0.2073219
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0497740   -0.2788881   0.1382942
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0955133   -0.2894475   0.0692530
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0367420   -0.2018407   0.2279625
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1520219   -0.0658551   0.3253615
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0697546    0.0054771   0.1298778
