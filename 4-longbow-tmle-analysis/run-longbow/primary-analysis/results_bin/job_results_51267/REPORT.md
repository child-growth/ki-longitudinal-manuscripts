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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        gagebrth             swasted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0       51      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1        3      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       10      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        0      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       22      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        1      87
Birth       ki1000108-IRC              INDIA                          Full or late term          0      187     328
Birth       ki1000108-IRC              INDIA                          Full or late term          1       26     328
Birth       ki1000108-IRC              INDIA                          Preterm                    0       22     328
Birth       ki1000108-IRC              INDIA                          Preterm                    1       10     328
Birth       ki1000108-IRC              INDIA                          Early term                 0       67     328
Birth       ki1000108-IRC              INDIA                          Early term                 1       16     328
Birth       ki1000109-EE               PAKISTAN                       Full or late term          0        0       1
Birth       ki1000109-EE               PAKISTAN                       Full or late term          1        0       1
Birth       ki1000109-EE               PAKISTAN                       Preterm                    0        1       1
Birth       ki1000109-EE               PAKISTAN                       Preterm                    1        0       1
Birth       ki1000109-EE               PAKISTAN                       Early term                 0        0       1
Birth       ki1000109-EE               PAKISTAN                       Early term                 1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0      147     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                 1        1     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0        6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0       13      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        1      23
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          0      673    1401
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          1        7    1401
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    0      206    1401
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    1        1    1401
Birth       ki1101329-Keneba           GAMBIA                         Early term                 0      511    1401
Birth       ki1101329-Keneba           GAMBIA                         Early term                 1        3    1401
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          0     6620   13824
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          1      451   13824
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    0      439   13824
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    1       29   13824
Birth       ki1119695-PROBIT           BELARUS                        Early term                 0     5854   13824
Birth       ki1119695-PROBIT           BELARUS                        Early term                 1      431   13824
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term          0      294     572
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term          1       29     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                    0       69     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                    1        9     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                 0      162     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                 1        9     572
Birth       ki1135781-COHORTS          INDIA                          Full or late term          0      525    1229
Birth       ki1135781-COHORTS          INDIA                          Full or late term          1       28    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                    0      245    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                    1       14    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                 0      403    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                 1       14    1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term          0     1100    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term          1       35    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      546    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                    1       33    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                 0     1110    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                 1       50    2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     8274   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      138   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     2323   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1       44   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     3991   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1       58   14828
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      205     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1        7     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       50     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        1     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       82     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        1     346
6 months    ki1000108-IRC              INDIA                          Full or late term          0      238     388
6 months    ki1000108-IRC              INDIA                          Full or late term          1       11     388
6 months    ki1000108-IRC              INDIA                          Preterm                    0       37     388
6 months    ki1000108-IRC              INDIA                          Preterm                    1        5     388
6 months    ki1000108-IRC              INDIA                          Early term                 0       92     388
6 months    ki1000108-IRC              INDIA                          Early term                 1        5     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term          0       25     376
6 months    ki1000109-EE               PAKISTAN                       Full or late term          1        0     376
6 months    ki1000109-EE               PAKISTAN                       Preterm                    0      237     376
6 months    ki1000109-EE               PAKISTAN                       Preterm                    1        6     376
6 months    ki1000109-EE               PAKISTAN                       Early term                 0      105     376
6 months    ki1000109-EE               PAKISTAN                       Early term                 1        3     376
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0       24    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        1    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0     1169    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1       39    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       90    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 1        2    1325
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      309     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1159    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        8    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      289    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        1    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      444    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        1    1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term          0      648    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term          1       10    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                    0      204    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                    1        3    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                 0      501    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                 1        8    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term          0     8001   15757
6 months    ki1119695-PROBIT           BELARUS                        Full or late term          1        4   15757
6 months    ki1119695-PROBIT           BELARUS                        Preterm                    0      550   15757
6 months    ki1119695-PROBIT           BELARUS                        Preterm                    1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        Early term                 0     7190   15757
6 months    ki1119695-PROBIT           BELARUS                        Early term                 1       11   15757
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          0      386     714
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          1        3     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    0      113     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    1        1     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 0      210     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 1        1     714
6 months    ki1135781-COHORTS          INDIA                          Full or late term          0      552    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term          1       16    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                    0      292    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                    1        7    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                 0      428    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                 1       17    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          0     1017    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          1       11    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      564    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    1        8    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 0     1069    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 1       16    2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     6511   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1       86   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     2361   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1       40   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     3414   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1       52   12464
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      213     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1        1     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       51     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        1     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       84     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        0     350
24 months   ki1000108-IRC              INDIA                          Full or late term          0      247     390
24 months   ki1000108-IRC              INDIA                          Full or late term          1        3     390
24 months   ki1000108-IRC              INDIA                          Preterm                    0       42     390
24 months   ki1000108-IRC              INDIA                          Preterm                    1        0     390
24 months   ki1000108-IRC              INDIA                          Early term                 0       96     390
24 months   ki1000108-IRC              INDIA                          Early term                 1        2     390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0       78     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      205     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      227     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        0     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      548    1157
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1       10    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0      166    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1        2    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      421    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                 1       10    1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          0     1988    3971
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    0      136    3971
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        Early term                 0     1843    3971
24 months   ki1119695-PROBIT           BELARUS                        Early term                 1        2    3971
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          0      374     667
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          1        3     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    0      109     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    1        0     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 0      181     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 1        0     667
24 months   ki1135781-COHORTS          INDIA                          Full or late term          0      555    1298
24 months   ki1135781-COHORTS          INDIA                          Full or late term          1        4    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                    0      301    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                    1        2    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                 0      431    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                 1        5    1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      931    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          1        8    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      511    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    1        6    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 0      961    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 1       11    2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     3266    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      122    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     1233    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1       59    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     1724    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1       66    6470


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

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
![](/tmp/2edc5b9c-97a0-4a8b-ba3f-5c6a751040d2/e668513c-9317-4cf8-9093-e9bbea344579/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2edc5b9c-97a0-4a8b-ba3f-5c6a751040d2/e668513c-9317-4cf8-9093-e9bbea344579/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2edc5b9c-97a0-4a8b-ba3f-5c6a751040d2/e668513c-9317-4cf8-9093-e9bbea344579/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2edc5b9c-97a0-4a8b-ba3f-5c6a751040d2/e668513c-9317-4cf8-9093-e9bbea344579/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA         Full or late term    NA                0.1249833   0.0796892   0.1702773
Birth       ki1000108-IRC       INDIA         Preterm              NA                0.3113936   0.1319401   0.4908471
Birth       ki1000108-IRC       INDIA         Early term           NA                0.1845269   0.1001718   0.2688820
Birth       ki1119695-PROBIT    BELARUS       Full or late term    NA                0.0636744   0.0327367   0.0946121
Birth       ki1119695-PROBIT    BELARUS       Preterm              NA                0.0602624   0.0142948   0.1062301
Birth       ki1119695-PROBIT    BELARUS       Early term           NA                0.0679219   0.0284953   0.1073485
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    NA                0.0897833   0.0585802   0.1209863
Birth       ki1135781-COHORTS   GUATEMALA     Preterm              NA                0.1153846   0.0444216   0.1863476
Birth       ki1135781-COHORTS   GUATEMALA     Early term           NA                0.0526316   0.0191341   0.0861291
Birth       ki1135781-COHORTS   INDIA         Full or late term    NA                0.0499628   0.0318620   0.0680636
Birth       ki1135781-COHORTS   INDIA         Preterm              NA                0.0561484   0.0285324   0.0837645
Birth       ki1135781-COHORTS   INDIA         Early term           NA                0.0326179   0.0157086   0.0495272
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                0.0311408   0.0210868   0.0411948
Birth       ki1135781-COHORTS   PHILIPPINES   Preterm              NA                0.0569397   0.0380211   0.0758584
Birth       ki1135781-COHORTS   PHILIPPINES   Early term           NA                0.0428320   0.0311296   0.0545344
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                0.0160626   0.0130453   0.0190798
Birth       kiGH5241-JiVitA-3   BANGLADESH    Preterm              NA                0.0178791   0.0128584   0.0228997
Birth       kiGH5241-JiVitA-3   BANGLADESH    Early term           NA                0.0146444   0.0103856   0.0189033
6 months    ki1000108-IRC       INDIA         Full or late term    NA                0.0441767   0.0186206   0.0697328
6 months    ki1000108-IRC       INDIA         Preterm              NA                0.1190476   0.0209812   0.2171141
6 months    ki1000108-IRC       INDIA         Early term           NA                0.0515464   0.0074879   0.0956049
6 months    ki1135781-COHORTS   INDIA         Full or late term    NA                0.0281690   0.0145571   0.0417810
6 months    ki1135781-COHORTS   INDIA         Preterm              NA                0.0234114   0.0062660   0.0405568
6 months    ki1135781-COHORTS   INDIA         Early term           NA                0.0382022   0.0203858   0.0560186
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                0.0107004   0.0044097   0.0169910
6 months    ki1135781-COHORTS   PHILIPPINES   Preterm              NA                0.0139860   0.0043606   0.0236114
6 months    ki1135781-COHORTS   PHILIPPINES   Early term           NA                0.0147465   0.0075730   0.0219201
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                0.0130999   0.0099323   0.0162675
6 months    kiGH5241-JiVitA-3   BANGLADESH    Preterm              NA                0.0157110   0.0101757   0.0212464
6 months    kiGH5241-JiVitA-3   BANGLADESH    Early term           NA                0.0148100   0.0107920   0.0188280
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                0.0085197   0.0026400   0.0143995
24 months   ki1135781-COHORTS   PHILIPPINES   Preterm              NA                0.0116054   0.0023715   0.0208394
24 months   ki1135781-COHORTS   PHILIPPINES   Early term           NA                0.0113169   0.0046657   0.0179680
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                0.0365893   0.0299613   0.0432174
24 months   kiGH5241-JiVitA-3   BANGLADESH    Preterm              NA                0.0440680   0.0322645   0.0558716
24 months   kiGH5241-JiVitA-3   BANGLADESH    Early term           NA                0.0368032   0.0278150   0.0457915


### Parameter: E(Y)


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA         NA                   NA                0.1585366   0.1189492   0.1981239
Birth       ki1119695-PROBIT    BELARUS       NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0821678   0.0596429   0.1046927
Birth       ki1135781-COHORTS   INDIA         NA                   NA                0.0455655   0.0339017   0.0572293
Birth       ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0410578   0.0338021   0.0483134
Birth       kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0161856   0.0137999   0.0185712
6 months    ki1000108-IRC       INDIA         NA                   NA                0.0541237   0.0315811   0.0766663
6 months    ki1135781-COHORTS   INDIA         NA                   NA                0.0304878   0.0211813   0.0397943
6 months    ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0130354   0.0087443   0.0173265
6 months    kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0142811   0.0118892   0.0166731
24 months   ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0102965   0.0062804   0.0143127
24 months   kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0381762   0.0332535   0.0430989


### Parameter: RR


agecat      studyid             country       intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------  ------------------  ------------  -------------------  ------------------  ----------  ----------  ---------
Birth       ki1000108-IRC       INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC       INDIA         Preterm              Full or late term    2.4914824   1.2613333   4.921367
Birth       ki1000108-IRC       INDIA         Early term           Full or late term    1.4764130   0.8230957   2.648289
Birth       ki1119695-PROBIT    BELARUS       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT    BELARUS       Preterm              Full or late term    0.9464153   0.5254304   1.704701
Birth       ki1119695-PROBIT    BELARUS       Early term           Full or late term    1.0667060   0.7542272   1.508646
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   GUATEMALA     Preterm              Full or late term    1.2851459   0.6341034   2.604622
Birth       ki1135781-COHORTS   GUATEMALA     Early term           Full or late term    0.5862069   0.2838695   1.210551
Birth       ki1135781-COHORTS   INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   INDIA         Preterm              Full or late term    1.1238047   0.6099324   2.070618
Birth       ki1135781-COHORTS   INDIA         Early term           Full or late term    0.6528437   0.3466361   1.229546
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   PHILIPPINES   Preterm              Full or late term    1.8284586   1.1506961   2.905425
Birth       ki1135781-COHORTS   PHILIPPINES   Early term           Full or late term    1.3754292   0.9012236   2.099152
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH    Preterm              Full or late term    1.1130880   0.7958867   1.556710
Birth       kiGH5241-JiVitA-3   BANGLADESH    Early term           Full or late term    0.9117110   0.6598494   1.259707
6 months    ki1000108-IRC       INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC       INDIA         Preterm              Full or late term    2.6948051   0.9848457   7.373718
6 months    ki1000108-IRC       INDIA         Early term           Full or late term    1.1668228   0.4156900   3.275218
6 months    ki1135781-COHORTS   INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS   INDIA         Preterm              Full or late term    0.8311037   0.3456219   1.998523
6 months    ki1135781-COHORTS   INDIA         Early term           Full or late term    1.3561798   0.6928795   2.654464
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS   PHILIPPINES   Preterm              Full or late term    1.3070566   0.5286910   3.231371
6 months    ki1135781-COHORTS   PHILIPPINES   Early term           Full or late term    1.3781315   0.6425394   2.955845
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH    Preterm              Full or late term    1.1993292   0.7937117   1.812233
6 months    kiGH5241-JiVitA-3   BANGLADESH    Early term           Full or late term    1.1305475   0.7938839   1.609981
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS   PHILIPPINES   Preterm              Full or late term    1.3621857   0.4751277   3.905371
24 months   ki1135781-COHORTS   PHILIPPINES   Early term           Full or late term    1.3283179   0.5365669   3.288366
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH    Preterm              Full or late term    1.2043963   0.8710677   1.665279
24 months   kiGH5241-JiVitA-3   BANGLADESH    Early term           Full or late term    1.0058464   0.7422576   1.363040


### Parameter: PAR


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA         Full or late term    NA                 0.0335533    0.0012411   0.0658655
Birth       ki1119695-PROBIT    BELARUS       Full or late term    NA                 0.0022255   -0.0094326   0.0138836
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    NA                -0.0076154   -0.0271452   0.0119143
Birth       ki1135781-COHORTS   INDIA         Full or late term    NA                -0.0043973   -0.0172930   0.0084985
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.0099169    0.0013289   0.0185050
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0001230   -0.0017100   0.0019561
6 months    ki1000108-IRC       INDIA         Full or late term    NA                 0.0099470   -0.0080254   0.0279194
6 months    ki1135781-COHORTS   INDIA         Full or late term    NA                 0.0023188   -0.0082390   0.0128766
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.0023350   -0.0029266   0.0075966
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0011813   -0.0009212   0.0032838
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.0017768   -0.0031181   0.0066718
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0015869   -0.0031740   0.0063478


### Parameter: PAF


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA         Full or late term    NA                 0.2116440   -0.0147899   0.3875528
Birth       ki1119695-PROBIT    BELARUS       Full or late term    NA                 0.0337705   -0.1540925   0.1910533
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    NA                -0.0926816   -0.3568340   0.1200448
Birth       ki1135781-COHORTS   INDIA         Full or late term    NA                -0.0965049   -0.4181063   0.1521629
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.2415361    0.0064083   0.4210223
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0076011   -0.1123792   0.1146404
6 months    ki1000108-IRC       INDIA         Full or late term    NA                 0.1837827   -0.2138954   0.4511795
6 months    ki1135781-COHORTS   INDIA         Full or late term    NA                 0.0760563   -0.3429950   0.3643521
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.1791273   -0.3353175   0.4953769
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0827155   -0.0775678   0.2191573
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.1725666   -0.4614571   0.5315319
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0415671   -0.0913631   0.1583061
