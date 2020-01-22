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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    sstunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      187     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       35     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        9     231  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0       56      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        6      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        3      65  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          0                 0       37      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        0      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        8      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        2      47  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       25      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        0      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        1      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        1      27  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           0                 0      207     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           0                 1        0     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           1                 0       22     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           1                 1        4     233  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      113     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        8     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        2     123  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      102     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       10     125  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       75      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       13      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        4      92  sstunted         
Birth       ki1000108-IRC              INDIA                          0                 0      343     388  sstunted         
Birth       ki1000108-IRC              INDIA                          0                 1        0     388  sstunted         
Birth       ki1000108-IRC              INDIA                          1                 0       29     388  sstunted         
Birth       ki1000108-IRC              INDIA                          1                 1       16     388  sstunted         
Birth       ki1000109-EE               PAKISTAN                       0                 0      140     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       0                 1        0     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       1                 0       52     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       1                 1       48     240  sstunted         
Birth       ki1000109-ResPak           PAKISTAN                       0                 0       28      42  sstunted         
Birth       ki1000109-ResPak           PAKISTAN                       0                 1        0      42  sstunted         
Birth       ki1000109-ResPak           PAKISTAN                       1                 0       12      42  sstunted         
Birth       ki1000109-ResPak           PAKISTAN                       1                 1        2      42  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0      903    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        0    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0      258    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1       91    1252  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0      511     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        0     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0       78     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1       19     608  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 0      491     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 1        0     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0       44     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     539  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      631     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       91     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10     732  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         0                 0     1460    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         0                 1        0    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         1                 0       54    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         1                 1       29    1543  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 0      574     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 1        0     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 0       91     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 1       31     696  sstunted         
Birth       ki1114097-CMIN             BANGLADESH                     0                 0       17      26  sstunted         
Birth       ki1114097-CMIN             BANGLADESH                     0                 1        0      26  sstunted         
Birth       ki1114097-CMIN             BANGLADESH                     1                 0        3      26  sstunted         
Birth       ki1114097-CMIN             BANGLADESH                     1                 1        6      26  sstunted         
Birth       ki1114097-CONTENT          PERU                           0                 0        2       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           1                 0        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        0                 0    13857   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        0                 1        0   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        1                 0       28   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        1                 1        5   13890  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 0    12441   13875  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 1        0   13875  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      992   13875  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      442   13875  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      0                 0      802     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      0                 1        0     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      1                 0       39     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      1                 1       11     852  sstunted         
Birth       ki1135781-COHORTS          INDIA                          0                 0     5848    6640  sstunted         
Birth       ki1135781-COHORTS          INDIA                          0                 1        0    6640  sstunted         
Birth       ki1135781-COHORTS          INDIA                          1                 0      586    6640  sstunted         
Birth       ki1135781-COHORTS          INDIA                          1                 1      206    6640  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    0                 0     2863    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    0                 1        0    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    1                 0      141    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    1                 1       46    3050  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    15068   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1        0   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     4939   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2448   22455  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1966    2823  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    2823  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      624    2823  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      233    2823  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      202     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       31     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     241  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      184     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       25     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      196     236  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        2     236  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       31     236  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        7     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      208     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        0     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       27     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        1     236  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           0                 0      237     273  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           0                 1        2     273  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           1                 0       26     273  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           1                 1        8     273  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      224     254  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        3     254  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       24     254  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        3     254  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      203     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        5     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       30     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     247  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      270     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       24     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       57     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       18     369  sstunted         
6 months    ki1000108-IRC              INDIA                          0                 0      340     407  sstunted         
6 months    ki1000108-IRC              INDIA                          0                 1       18     407  sstunted         
6 months    ki1000108-IRC              INDIA                          1                 0       38     407  sstunted         
6 months    ki1000108-IRC              INDIA                          1                 1       11     407  sstunted         
6 months    ki1000109-EE               PAKISTAN                       0                 0      200     373  sstunted         
6 months    ki1000109-EE               PAKISTAN                       0                 1        9     373  sstunted         
6 months    ki1000109-EE               PAKISTAN                       1                 0       92     373  sstunted         
6 months    ki1000109-EE               PAKISTAN                       1                 1       72     373  sstunted         
6 months    ki1000109-ResPak           PAKISTAN                       0                 0      146     239  sstunted         
6 months    ki1000109-ResPak           PAKISTAN                       0                 1       27     239  sstunted         
6 months    ki1000109-ResPak           PAKISTAN                       1                 0       46     239  sstunted         
6 months    ki1000109-ResPak           PAKISTAN                       1                 1       20     239  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 0      936    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 1       36    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0      272    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       92    1336  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0      232     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1        0     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       94     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       54     380  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0      437     537  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1       15     537  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0       65     537  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1       20     537  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      536     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        7     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0       54     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        7     604  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      602     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       11     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       90     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       12     715  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1879    2029  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       11    2029  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      131    2029  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    2029  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         0                 0     1852    2089  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         0                 1       40    2089  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         1                 0      167    2089  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         1                 1       30    2089  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                 0      228     299  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                 1        0     299  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 0       44     299  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 1       27     299  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      467     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1        6     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       76     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       15     564  sstunted         
6 months    ki1114097-CMIN             BANGLADESH                     0                 0      147     243  sstunted         
6 months    ki1114097-CMIN             BANGLADESH                     0                 1        4     243  sstunted         
6 months    ki1114097-CMIN             BANGLADESH                     1                 0       68     243  sstunted         
6 months    ki1114097-CMIN             BANGLADESH                     1                 1       24     243  sstunted         
6 months    ki1114097-CONTENT          PERU                           0                 0      197     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           0                 1        0     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           1                 0       14     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           1                 1        4     215  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        0                 0    15408   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        0                 1      224   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        1                 0      110   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        1                 1       19   15761  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     7551    8669  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      244    8669  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      767    8669  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      107    8669  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      0                 0      754     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      0                 1       55     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      1                 0       83     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      1                 1       69     961  sstunted         
6 months    ki1135781-COHORTS          INDIA                          0                 0     5919    6860  sstunted         
6 months    ki1135781-COHORTS          INDIA                          0                 1      129    6860  sstunted         
6 months    ki1135781-COHORTS          INDIA                          1                 0      630    6860  sstunted         
6 months    ki1135781-COHORTS          INDIA                          1                 1      182    6860  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    0                 0     2452    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    0                 1      100    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    1                 0      124    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    1                 1       32    2708  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      530     839  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         0                 1        0     839  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      238     839  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         1                 1       71     839  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    11548   16811  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      159   16811  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     4243   16811  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      861   16811  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3443    4831  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       32    4831  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1117    4831  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      239    4831  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      161     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       18     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       23     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       10     212  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      149     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       19     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     169  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      172     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       19     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       25     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       11     227  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      199     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        2     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       22     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        5     228  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           0                 0      167     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           0                 1        7     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           1                 0       19     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           1                 1        8     201  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      191     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       23     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       20     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        4     238  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      131     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       50     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       20     214  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      209     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       85     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       37     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       40     371  sstunted         
24 months   ki1000108-IRC              INDIA                          0                 0      328     409  sstunted         
24 months   ki1000108-IRC              INDIA                          0                 1       30     409  sstunted         
24 months   ki1000108-IRC              INDIA                          1                 0       40     409  sstunted         
24 months   ki1000108-IRC              INDIA                          1                 1       11     409  sstunted         
24 months   ki1000109-EE               PAKISTAN                       0                 0       77     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       0                 1       23     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       1                 0       31     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       1                 1       36     167  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0      296     429  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       59     429  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0       38     429  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1       36     429  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      481     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       37     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0       45     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       15     578  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      424     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       20     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       54     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       16     514  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        5       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         0                 0     1452    1725  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         0                 1       97    1725  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         1                 0      133    1725  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         1                 1       43    1725  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      376     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       30     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       59     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       23     488  sstunted         
24 months   ki1114097-CMIN             BANGLADESH                     0                 0      121     242  sstunted         
24 months   ki1114097-CMIN             BANGLADESH                     0                 1       32     242  sstunted         
24 months   ki1114097-CMIN             BANGLADESH                     1                 0       53     242  sstunted         
24 months   ki1114097-CMIN             BANGLADESH                     1                 1       36     242  sstunted         
24 months   ki1114097-CONTENT          PERU                           0                 0      146     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           0                 1        1     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           1                 0       15     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           1                 1        2     164  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        0                 0     3960    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        0                 1       64    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        1                 0       10    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        1                 1        1    4035  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     1283    1640  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      123    1640  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      179    1640  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       55    1640  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      447    1070  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      0                 1      293    1070  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       99    1070  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      1                 1      231    1070  sstunted         
24 months   ki1135781-COHORTS          INDIA                          0                 0     3799    5337  sstunted         
24 months   ki1135781-COHORTS          INDIA                          0                 1      897    5337  sstunted         
24 months   ki1135781-COHORTS          INDIA                          1                 0      319    5337  sstunted         
24 months   ki1135781-COHORTS          INDIA                          1                 1      322    5337  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     1681    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      629    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       57    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       78    2445  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      365     579  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         0                 1       12     579  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      144     579  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         1                 1       58     579  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     5435    8632  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      507    8632  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1850    8632  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      840    8632  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3237    4752  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      159    4752  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1062    4752  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      294    4752  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/da736497-b7bb-42aa-a19f-2fb8e5a66a0f/6b1f3fb9-e80b-4216-ba4d-f06b343a468d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da736497-b7bb-42aa-a19f-2fb8e5a66a0f/6b1f3fb9-e80b-4216-ba4d-f06b343a468d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da736497-b7bb-42aa-a19f-2fb8e5a66a0f/6b1f3fb9-e80b-4216-ba4d-f06b343a468d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da736497-b7bb-42aa-a19f-2fb8e5a66a0f/6b1f3fb9-e80b-4216-ba4d-f06b343a468d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0240385   0.0031807   0.0448962
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2307692   0.0982698   0.3632687
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0816327   0.0502923   0.1129730
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2400000   0.1432125   0.3367875
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0502793   0.0276155   0.0729432
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2244898   0.1075193   0.3414603
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0430622   0.0155042   0.0706202
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.4390244   0.3629698   0.5150790
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1560694   0.1018758   0.2102629
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3030303   0.1919245   0.4141361
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0370370   0.0224368   0.0516373
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2527473   0.2155600   0.2899345
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0331858   0.0166574   0.0497143
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2352941   0.1450340   0.3255543
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0128913   0.0033954   0.0223873
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1147541   0.0347045   0.1948037
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0179445   0.0074284   0.0284607
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1176471   0.0550774   0.1802167
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0058201   0.0023899   0.0092503
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0575540   0.0188270   0.0962809
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0211416   0.0146580   0.0276253
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1522843   0.1020995   0.2024690
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0126850   0.0025907   0.0227793
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1648352   0.0885353   0.2411350
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0143296   0.0090169   0.0196422
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1472868   0.1174138   0.1771599
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0313021   0.0274363   0.0351680
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1224256   0.1006938   0.1441574
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0679852   0.0506304   0.0853399
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4539474   0.3747570   0.5331377
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0213294   0.0176879   0.0249709
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2241379   0.1954531   0.2528227
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0391850   0.0316554   0.0467145
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2051282   0.1417519   0.2685046
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0135816   0.0112262   0.0159371
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1686912   0.1581213   0.1792611
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0092086   0.0054408   0.0129765
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1762537   0.1554013   0.1971061
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1005587   0.0563971   0.1447202
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3030303   0.1458610   0.4601996
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0994764   0.0569364   0.1420165
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3055556   0.1547493   0.4563618
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0402299   0.0109604   0.0694993
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2962963   0.1236301   0.4689625
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2762431   0.2109499   0.3415363
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6060606   0.4389589   0.7731623
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2891156   0.2372242   0.3410071
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5194805   0.4077353   0.6312257
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0837989   0.0550611   0.1125366
24 months   ki1000108-IRC              INDIA                          1                    NA                0.2156863   0.1026675   0.3287051
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.2300000   0.1472703   0.3127297
24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.5373134   0.4175644   0.6570625
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1661972   0.1274282   0.2049661
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4864865   0.3724746   0.6004984
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0714286   0.0492311   0.0936260
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2500000   0.1403398   0.3596602
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0450450   0.0257345   0.0643556
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2285714   0.1301067   0.3270362
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0626210   0.0505522   0.0746899
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2443182   0.1808194   0.3078169
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0738916   0.0484199   0.0993634
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2804878   0.1831542   0.3778214
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2091503   0.1445733   0.2737273
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4044944   0.3023178   0.5066710
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0874822   0.0727092   0.1022552
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2350427   0.1806971   0.2893884
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3959459   0.3606933   0.4311985
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7000000   0.6505343   0.7494657
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1910136   0.1797695   0.2022578
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.5023401   0.4636299   0.5410503
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2722944   0.2541380   0.2904507
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5777778   0.4944440   0.6611115
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0318302   0.0140945   0.0495659
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.2871287   0.2246846   0.3495728
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0853248   0.0773895   0.0932601
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3122677   0.2932876   0.3312477
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0468198   0.0382615   0.0553780
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2168142   0.1920441   0.2415842


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0566802   0.0277850   0.0855754
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2171582   0.1752594   0.2590570
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1966527   0.1461562   0.2471492
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0093642   0.0051724   0.0135561
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0335089   0.0257898   0.0412279
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0372340   0.0215945   0.0528736
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0404891   0.0363397   0.0446385
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0453353   0.0404119   0.0502586
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606746   0.0568229   0.0645262
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0560960   0.0493335   0.0628586
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1320755   0.0863920   0.1777589
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0746269   0.0382069   0.1110468
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3369272   0.2887662   0.3850883
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3532934   0.2805798   0.4260070
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0811594   0.0682689   0.0940499
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1086066   0.0809724   0.1362407
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2809917   0.2242434   0.3377401
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1085366   0.0934775   0.1235957
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4897196   0.4597530   0.5196862
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2284055   0.2171416   0.2396694
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2891616   0.2711872   0.3071359
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1208981   0.0943206   0.1474756
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1560473   0.1472898   0.1648047
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0953283   0.0857752   0.1048814


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  9.600000    3.391639   27.172702
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.940000    1.684732    5.130549
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  4.464853    2.241776    8.892463
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 10.195121    5.253625   19.784529
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.941639    1.171810    3.217211
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  6.824176    4.815626    9.670472
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  7.090196    3.781243   13.294804
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.901639    3.227583   24.550630
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.556150    2.971351   14.465843
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  9.888816    4.042664   24.189171
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  7.203046    4.592090   11.298531
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 12.994506    5.175442   32.626618
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 10.278516    7.096129   14.888102
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.911097    3.150533    4.855268
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  6.677153    4.901323    9.096396
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 10.508420    8.489312   13.007755
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.234872    3.638251    7.532159
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 12.420554   10.356235   14.896357
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 19.140049   12.472834   29.371148
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  3.013468    1.527269    5.945901
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  3.071637    1.598664    5.901777
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  7.365079    2.899635   18.707319
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  2.193939    1.525826    3.154599
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.796791    1.357776    2.377755
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  2.573856    1.375977    4.814568
24 months   ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                  2.336145    1.530141    3.566714
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.927164    2.103010    4.074298
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.500000    2.044584    5.991440
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  5.074286    2.763345    9.317830
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  3.901535    2.823019    5.392091
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.795935    2.327510    6.190790
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.933989    1.297787    2.882069
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.686749    2.017814    3.577444
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.767918    1.577962    1.980742
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  2.629865    2.386819    2.897660
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.121887    1.810145    2.487316
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  9.020627    4.959869   16.406020
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.659752    3.287041    4.074724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.630823    3.722008    5.761546


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0326417   0.0094626   0.0558208
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0321885   0.0105097   0.0538673
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0209737   0.0056059   0.0363416
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1740960   0.1333052   0.2148868
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0405834   0.0054404   0.0757264
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0587713   0.0458331   0.0717096
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0319911   0.0161807   0.0478014
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0102875   0.0017857   0.0187892
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0142233   0.0048177   0.0236289
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0035441   0.0008206   0.0062676
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0123672   0.0073200   0.0174144
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0245491   0.0112983   0.0377998
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0010882   0.0002675   0.0019090
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0091870   0.0068879   0.0114861
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0610471   0.0454333   0.0766609
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0240059   0.0202485   0.0277633
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0095595   0.0056049   0.0135141
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0470929   0.0436491   0.0505368
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0468874   0.0406071   0.0531677
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0315168   0.0042425   0.0587911
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0326822   0.0059645   0.0593998
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0343970   0.0079419   0.0608520
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0508597   0.0189028   0.0828166
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0478116   0.0205261   0.0750971
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0164456   0.0013022   0.0315890
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1232934   0.0605653   0.1860215
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0552480   0.0315222   0.0789739
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0185368   0.0061013   0.0309723
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0249939   0.0102832   0.0397045
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0185384   0.0114511   0.0256257
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0347149   0.0164700   0.0529599
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0718414   0.0258249   0.1178579
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0210544   0.0126393   0.0294694
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0937737   0.0732358   0.1143116
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0373918   0.0318408   0.0429428
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0168672   0.0114057   0.0223287
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0890679   0.0643436   0.1137921
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0707225   0.0640429   0.0774021
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0485085   0.0406415   0.0563755


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5758929   0.1551277   0.7871076
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2827988   0.0833300   0.4388629
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2943556   0.0732693   0.4626983
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.8017012   0.6399535   0.8907852
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.2063707   0.0120273   0.3624849
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6134259   0.4830009   0.7109482
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4908344   0.2615395   0.6489323
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4438306   0.0662412   0.6687320
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4421590   0.1505775   0.6336492
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3784740   0.0897894   0.5755986
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.3690728   0.2301006   0.4829595
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6593174   0.3347627   0.8255290
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0705822   0.0140637   0.1238608
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2269001   0.1729582   0.2773239
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4731150   0.3657983   0.5622720
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.5295195   0.4644904   0.5866518
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1961148   0.1176543   0.2675983
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7761563   0.7388470   0.8081354
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8358417   0.7606221   0.8874251
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2386273   0.0184224   0.4094319
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2472949   0.0328301   0.4142033
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4609195   0.0905879   0.6804444
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1554854   0.0528389   0.2470078
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1419048   0.0573348   0.2188877
24 months   ki1000108-IRC              INDIA                          0                    NA                0.1640550   0.0059462   0.2970160
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3489831   0.1504168   0.5011400
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2494885   0.1405157   0.3446448
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2060440   0.0657221   0.3252905
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3568568   0.1481168   0.5144485
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2284193   0.1435101   0.3049109
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3196394   0.1509758   0.4547969
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2556709   0.0767711   0.3999042
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1939840   0.1168296   0.2643983
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1914844   0.1474977   0.2332015
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1637082   0.1397550   0.1869944
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0583313   0.0393364   0.0769507
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7367185   0.5649037   0.8406854
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4532118   0.4145806   0.4892938
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5088573   0.4333245   0.5743223
