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

* arm
* sex
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        gagebrth             pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ------------------  ----------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      201     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       14     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       49     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        3     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       81     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        3     351
0-24 months   ki1000108-IRC              INDIA                          Full or late term            0      225     390
0-24 months   ki1000108-IRC              INDIA                          Full or late term            1       25     390
0-24 months   ki1000108-IRC              INDIA                          Preterm                      0       34     390
0-24 months   ki1000108-IRC              INDIA                          Preterm                      1        8     390
0-24 months   ki1000108-IRC              INDIA                          Early term                   0       85     390
0-24 months   ki1000108-IRC              INDIA                          Early term                   1       13     390
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term            0       24     377
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term            1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                      0      225     377
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                      1       19     377
0-24 months   ki1000109-EE               PAKISTAN                       Early term                   0      100     377
0-24 months   ki1000109-EE               PAKISTAN                       Early term                   1        8     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            0       24    1358
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            1        2    1358
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      0     1134    1358
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      1      104    1358
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   0       87    1358
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   1        7    1358
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0      156     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        2     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0      241     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1       14     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      307     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1       10     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11    2035
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            0      736    1576
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            1       39    1576
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      0      230    1576
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      1        9    1576
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                   0      536    1576
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                   1       26    1576
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            0     8383   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            1       89   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      0      573   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      1        7   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                   0     7466   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                   1       63   16581
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            0      401     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            1        8     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      0      113     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      1        6     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   0      198     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   1        6     732
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term            0      470    1186
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term            1       42    1186
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                      0      248    1186
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                      1       18    1186
0-24 months   ki1135781-COHORTS          INDIA                          Early term                   0      367    1186
0-24 months   ki1135781-COHORTS          INDIA                          Early term                   1       41    1186
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            0     1034    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       47    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      550    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       34    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   0     1062    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   1       62    2789
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0     6104   11875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1      320   11875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0     2039   11875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1      129   11875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0     3076   11875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1      207   11875
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      174     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       32     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       45     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        6     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       72     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        8     337
0-6 months    ki1000108-IRC              INDIA                          Full or late term            0      211     383
0-6 months    ki1000108-IRC              INDIA                          Full or late term            1       34     383
0-6 months    ki1000108-IRC              INDIA                          Preterm                      0       33     383
0-6 months    ki1000108-IRC              INDIA                          Preterm                      1        9     383
0-6 months    ki1000108-IRC              INDIA                          Early term                   0       78     383
0-6 months    ki1000108-IRC              INDIA                          Early term                   1       18     383
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term            0       24     366
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term            1        1     366
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                      0      219     366
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                      1       19     366
0-6 months    ki1000109-EE               PAKISTAN                       Early term                   0       96     366
0-6 months    ki1000109-EE               PAKISTAN                       Early term                   1        7     366
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0       80     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        1     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0       65     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1        2     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      100     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1        2     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1157    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       29    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      290    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1        8    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      438    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       12    1934
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term            0      659    1401
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term            1       17    1401
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                      0      206    1401
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                      1        8    1401
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                   0      504    1401
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                   1        7    1401
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term            0     6314   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term            1      622   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                      0      423   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                      1       34   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                   0     5662   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                   1      490   13545
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term            0      315     848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       11     848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      158     848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       13     848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                   0      323     848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                   1       28     848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0       21      34
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1        0      34
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0        8      34
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1        0      34
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0        4      34
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1        1      34
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      201     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       14     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       49     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        3     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       81     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        3     351
6-24 months   ki1000108-IRC              INDIA                          Full or late term            0      225     390
6-24 months   ki1000108-IRC              INDIA                          Full or late term            1       25     390
6-24 months   ki1000108-IRC              INDIA                          Preterm                      0       34     390
6-24 months   ki1000108-IRC              INDIA                          Preterm                      1        8     390
6-24 months   ki1000108-IRC              INDIA                          Early term                   0       85     390
6-24 months   ki1000108-IRC              INDIA                          Early term                   1       13     390
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term            0       24     377
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term            1        1     377
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                      0      225     377
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                      1       19     377
6-24 months   ki1000109-EE               PAKISTAN                       Early term                   0      100     377
6-24 months   ki1000109-EE               PAKISTAN                       Early term                   1        8     377
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            0       24    1358
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            1        2    1358
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      0     1134    1358
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      1      104    1358
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   0       87    1358
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   1        7    1358
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0      156     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        2     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0      241     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1       14     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      307     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1       10     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212    2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33    2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306    2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11    2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462    2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11    2035
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            0      736    1576
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            1       39    1576
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      0      230    1576
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      1        9    1576
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                   0      536    1576
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                   1       26    1576
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            0     8383   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            1       89   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      0      573   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      1        7   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                   0     7466   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                   1       63   16581
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            0      401     732
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            1        8     732
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      0      113     732
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      1        6     732
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   0      198     732
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   1        6     732
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term            0      470    1186
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term            1       42    1186
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                      0      248    1186
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                      1       18    1186
6-24 months   ki1135781-COHORTS          INDIA                          Early term                   0      367    1186
6-24 months   ki1135781-COHORTS          INDIA                          Early term                   1       41    1186
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            0     1034    2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       47    2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      550    2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       34    2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   0     1062    2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   1       62    2789
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0     6104   11875
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1      320   11875
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0     2039   11875
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1      129   11875
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0     3076   11875
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1      207   11875


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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
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

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/710c8eeb-0409-4274-bc35-443dcd61282c/be412ec6-7fc1-469d-8526-ad6fe0c301ad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/710c8eeb-0409-4274-bc35-443dcd61282c/be412ec6-7fc1-469d-8526-ad6fe0c301ad/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/710c8eeb-0409-4274-bc35-443dcd61282c/be412ec6-7fc1-469d-8526-ad6fe0c301ad/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/710c8eeb-0409-4274-bc35-443dcd61282c/be412ec6-7fc1-469d-8526-ad6fe0c301ad/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0262713   0.0173640   0.0351786
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0335525   0.0131780   0.0539270
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0237056   0.0097588   0.0376524
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0503226   0.0349267   0.0657185
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0376569   0.0135148   0.0617990
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0462633   0.0288913   0.0636354
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0105052   0.0058392   0.0151712
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0120690   0.0030561   0.0210818
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083676   0.0038455   0.0128898
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0820127   0.0581715   0.1058538
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0657691   0.0354757   0.0960625
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.1011333   0.0717792   0.1304874
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0434958   0.0313866   0.0556050
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0579577   0.0389641   0.0769512
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0552657   0.0418799   0.0686515
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0502383   0.0441045   0.0563721
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0583492   0.0485527   0.0681456
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0630580   0.0543161   0.0718000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1553398   0.1058014   0.2048782
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290906   0.2062035
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1000000   0.0341631   0.1658369
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1387755   0.0954297   0.1821213
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.2142857   0.0900289   0.3385425
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.1875000   0.1093206   0.2656794
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0244519   0.0156597   0.0332442
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0268456   0.0084896   0.0452017
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0266667   0.0117775   0.0415558
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0251479   0.0133406   0.0369552
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0373832   0.0119582   0.0628082
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0136986   0.0036169   0.0237804
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0874365   0.0576931   0.1171800
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0669751   0.0341849   0.0997653
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0777755   0.0491642   0.1063868
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0339082   0.0142289   0.0535875
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0732327   0.0330133   0.1134522
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0805232   0.0519887   0.1090578
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0264084   0.0174918   0.0353250
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0341881   0.0140954   0.0542808
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0236478   0.0098232   0.0374724
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0503226   0.0349267   0.0657185
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0376569   0.0135148   0.0617990
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0462633   0.0288913   0.0636354
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0105052   0.0058392   0.0151712
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0120690   0.0030561   0.0210818
6-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083676   0.0038455   0.0128898
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0824720   0.0585652   0.1063788
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0667162   0.0367160   0.0967164
6-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.1006848   0.0713555   0.1300141
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0433885   0.0313047   0.0554723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0575599   0.0386218   0.0764981
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0553693   0.0419553   0.0687834
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0501232   0.0439878   0.0562586
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0585320   0.0486871   0.0683770
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0632256   0.0544766   0.0719745


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0469543   0.0365071   0.0574016
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0273224   0.0155047   0.0391401
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0552421   0.0506790   0.0598052
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1364985   0.0997894   0.1732076
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592689   0.1225736   0.1959642
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253361   0.0183307   0.0323414
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0228408   0.0150151   0.0306665
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0846069   0.0570929   0.1121208
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613208   0.0451635   0.0774781
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0469543   0.0365071   0.0574016
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0273224   0.0155047   0.0391401
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0552421   0.0506790   0.0598052


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.2771525   0.6372520   2.559613
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9023375   0.4577548   1.778710
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.7483103   0.3677682   1.522612
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9193357   0.5663951   1.492206
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1488570   0.5931471   2.225203
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.7965246   0.5427623   1.168931
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.5777311   0.9117126   7.288149
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.5036765   0.5284081   4.278971
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.8019385   0.4650475   1.382881
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2331429   0.8176389   1.859796
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3324897   0.8669492   2.048019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2705992   0.8786635   1.837361
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1614478   0.9449599   1.427532
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.2551781   1.0481723   1.503066
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
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.4865311   0.6505119   3.396978
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.5447220   0.2275334   1.304081
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.7659851   0.4783551   1.226564
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.8895080   0.7175708   1.102643
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    2.1597344   0.9710251   4.803637
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    2.3747416   1.2026212   4.689255
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.2945918   0.6572981   2.549784
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8954644   0.4559073   1.758815
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.7483103   0.3677682   1.522612
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9193357   0.5663951   1.492206
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1488570   0.5931471   2.225203
6-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.7965246   0.5427623   1.168931
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.5777311   0.9117126   7.288149
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.5036765   0.5284081   4.278971
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.8089559   0.4736588   1.381606
6-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2208362   0.8092993   1.841644
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3266159   0.8621703   2.041255
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2761285   0.8822636   1.845825
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1677633   0.9494855   1.436221
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.2614031   1.0534837   1.510358


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0007557   -0.0048746   0.0063860
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0033683   -0.0140010   0.0072645
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0009159   -0.0025910   0.0007592
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0031476   -0.0150711   0.0213662
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0077771   -0.0021988   0.0177530
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0050038    0.0008983   0.0091093
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0188413   -0.0471504   0.0094678
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0204934   -0.0081709   0.0491577
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008842   -0.0047344   0.0065027
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0023071   -0.0104384   0.0058242
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0028297   -0.0114580   0.0057986
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0274126    0.0086492   0.0461759
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0006186   -0.0050199   0.0062572
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0033683   -0.0140010   0.0072645
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0009159   -0.0025910   0.0007592
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0026882   -0.0155757   0.0209521
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0078843   -0.0020748   0.0178434
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0051189    0.0010122   0.0092256


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0279611   -0.2042943   0.2154246
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0717350   -0.3232634   0.1319825
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0955133   -0.2894475   0.0692530
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0369603   -0.2024971   0.2287338
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1516801   -0.0651827   0.3243914
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0905796    0.0127433   0.1622792
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1380329   -0.3629649   0.0497782
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.1286718   -0.0692198   0.2899375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0348969   -0.2141578   0.2328642
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1010078   -0.5190887   0.2020097
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0334451   -0.1399206   0.0630850
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.4470355    0.0758470   0.6691351
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0228892   -0.2096063   0.2106973
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0717350   -0.3232634   0.1319825
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0955133   -0.2894475   0.0692530
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0315668   -0.2084165   0.2238910
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1537718   -0.0626875   0.3261404
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0926631    0.0147754   0.1643934
