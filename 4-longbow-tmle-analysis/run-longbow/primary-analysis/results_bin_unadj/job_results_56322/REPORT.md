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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        single    wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              0      179     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              1       36     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0        0     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1        0     215  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0              0       53      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0              1        1      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        7      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        1      62  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0              0       40      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0              1        5      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1              0        0      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1              1        0      45  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0              0       24      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0              1        2      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1              0        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        0      26  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0              0      201     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0              1        4     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1              0       22     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1              1        1     228  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              0       58     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        5     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       50     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        7     120  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0      111     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        1     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        3     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     115  wasted           
Birth       ki1119695-PROBIT           BELARUS                        0              0    10528   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        0              1     2763   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        1              0      415   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        1              1      124   13830  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0              0    10162   12864  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0              1     1903   12864  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              0      653   12864  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              1      146   12864  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      0              0      486     691  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      0              1      168     691  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      1              0       29     691  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      1              1        8     691  wasted           
Birth       ki1135781-COHORTS          INDIA                          0              0     3681    4463  wasted           
Birth       ki1135781-COHORTS          INDIA                          0              1      775    4463  wasted           
Birth       ki1135781-COHORTS          INDIA                          1              0        6    4463  wasted           
Birth       ki1135781-COHORTS          INDIA                          1              1        1    4463  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    0              0     2365    2860  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    0              1      424    2860  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    1              0       55    2860  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    1              1       16    2860  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              0     2150    2393  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              1      238    2393  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0        5    2393  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1        0    2393  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              0      233     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              1        8     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0        0     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        0     241  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0              0      179     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0              1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0       29     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        1     209  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0              0      215     234  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0              1       19     234  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1              0        0     234  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1              1        0     234  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0              0      232     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0              1        4     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1              0        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        0     236  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0              0      240     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0              1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1              0       33     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1              1        0     273  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              0      136     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        4     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0      111     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        3     254  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0      238     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        1     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        8     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     247  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0     1756    2012  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1       78    2012  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      170    2012  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        8    2012  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0              0      246     277  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0              1        2     277  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              0       28     277  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              1        1     277  wasted           
6 months    ki1119695-PROBIT           BELARUS                        0              0    14987   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        0              1      128   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        1              0      641   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        1              1        2   15758  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0              0     7731    8474  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0              1      240    8474  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0      480    8474  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1       23    8474  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      0              0      800     894  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      0              1       27     894  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      1              0       64     894  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      1              1        3     894  wasted           
6 months    ki1135781-COHORTS          INDIA                          0              0     4303    4964  wasted           
6 months    ki1135781-COHORTS          INDIA                          0              1      652    4964  wasted           
6 months    ki1135781-COHORTS          INDIA                          1              0        8    4964  wasted           
6 months    ki1135781-COHORTS          INDIA                          1              1        1    4964  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    0              0     2454    2674  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    0              1      152    2674  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    1              0       61    2674  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    1              1        7    2674  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              0     4541    4824  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              1      275    4824  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0        8    4824  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1        0    4824  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              0      191     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              1       21     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0        0     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1        0     212  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0              0      146     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0              1        2     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0       20     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        1     169  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0              0      198     225  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0              1       27     225  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1              0        0     225  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1              1        0     225  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0              0      223     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0              1        5     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1              0        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        0     228  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0              0      173     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0              1        3     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1              0       24     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1              1        1     201  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              0      130     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        1     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0      107     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     238  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0      205     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        3     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        5     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        1     214  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0        6       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6  wasted           
24 months   ki1119695-PROBIT           BELARUS                        0              0     3789    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        0              1       41    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        1              0      139    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        1              1        3    3972  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              0      313     432  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              1       75     432  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0       41     432  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1        3     432  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      0              0      895    1021  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      0              1       37    1021  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      1              0       80    1021  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      1              1        9    1021  wasted           
24 months   ki1135781-COHORTS          INDIA                          0              0     3361    3726  wasted           
24 months   ki1135781-COHORTS          INDIA                          0              1      356    3726  wasted           
24 months   ki1135781-COHORTS          INDIA                          1              0        9    3726  wasted           
24 months   ki1135781-COHORTS          INDIA                          1              1        0    3726  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    0              0     2204    2420  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    0              1      157    2420  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    1              0       50    2420  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    1              1        9    2420  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              0     3801    4727  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              1      920    4727  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0        6    4727  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1        0    4727  wasted           


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/c455a378-9fd7-4511-a5ef-3ef1e2508790/cb0cf2df-2810-46bd-8729-a8e55cde7394/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c455a378-9fd7-4511-a5ef-3ef1e2508790/cb0cf2df-2810-46bd-8729-a8e55cde7394/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c455a378-9fd7-4511-a5ef-3ef1e2508790/cb0cf2df-2810-46bd-8729-a8e55cde7394/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c455a378-9fd7-4511-a5ef-3ef1e2508790/cb0cf2df-2810-46bd-8729-a8e55cde7394/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0793651   0.0123375   0.1463926
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1228070   0.0372438   0.2083702
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                0.2078850   0.1423899   0.2733801
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                0.2300557   0.1500591   0.3100523
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1577290   0.1512249   0.1642330
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1827284   0.1559319   0.2095249
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2568807   0.2233712   0.2903903
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2162162   0.0834756   0.3489569
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1520258   0.1386959   0.1653557
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2253521   0.1288293   0.3218750
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0425300   0.0332922   0.0517677
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0449438   0.0145003   0.0753874
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0301091   0.0263574   0.0338608
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0457256   0.0274696   0.0639817
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0583269   0.0493273   0.0673266
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1029412   0.0307008   0.1751815
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0396996   0.0271581   0.0522411
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1011236   0.0384561   0.1637911
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0664972   0.0564389   0.0765556
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1525424   0.0630548   0.2420299


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1000000   0.0460991   0.1539009
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2087491   0.1435025   0.2739957
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1592817   0.1529578   0.1656056
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2547033   0.2221942   0.2872125
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1538462   0.1406207   0.1670716
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0427435   0.0339027   0.0515843
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0310361   0.0273436   0.0347286
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594615   0.0504964   0.0684266
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0450539   0.0323246   0.0577831
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0685950   0.0585223   0.0786677


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.5473684   0.5177350   4.624662
Birth       ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 1.1066485   0.8665558   1.413263
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1584963   0.9948027   1.349125
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 0.8416988   0.4493449   1.576644
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4823279   0.9573473   2.295192
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0567560   0.5188512   2.152319
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5186630   0.9995869   2.307291
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.7648994   0.8603360   3.620527
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 2.5472214   1.2705067   5.106889
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2939652   1.2516399   4.204306


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0206349   -0.0311403   0.0724101
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0008641   -0.0012616   0.0029898
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0015527   -0.0001631   0.0032686
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0021774   -0.0095398   0.0051850
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0018203   -0.0006513   0.0042919
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002135   -0.0026012   0.0030283
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0009270   -0.0001821   0.0020360
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0011345   -0.0007358   0.0030049
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0053543   -0.0003173   0.0110259
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0020978   -0.0002148   0.0044103


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.2063492   -0.5049168   0.5814509
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0041392   -0.0063087   0.0144787
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0097484   -0.0010785   0.0204583
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0085488   -0.0378663   0.0199405
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0118322   -0.0043446   0.0277484
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0049961   -0.0630759   0.0687092
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0298673   -0.0063617   0.0647920
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0190803   -0.0127647   0.0499240
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1188421   -0.0116736   0.2325200
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0305823   -0.0034701   0.0634791
