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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      179     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        8     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0       28     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     215  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0       56      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        6      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0      62  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                0       37      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                0        8      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0      45  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       24      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        1      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        1      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0      26  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                0      207     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                0       21     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     228  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      112     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        8     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     120  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      102     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       13     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     115  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       74      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       11      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1      86  swasted          
Birth       ki1000108-IRC              INDIA                          0                0      265     343  swasted          
Birth       ki1000108-IRC              INDIA                          0                1       53     343  swasted          
Birth       ki1000108-IRC              INDIA                          1                0       24     343  swasted          
Birth       ki1000108-IRC              INDIA                          1                1        1     343  swasted          
Birth       ki1000109-EE               PAKISTAN                       0                0      131     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       0                1        6     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       1                0       40     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       1                1        0     177  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       0                0       28      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       0                1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       1                0       10      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       1                1        0      38  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      878    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1       23    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0      196    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        6    1103  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0      475     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1       31     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0       62     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        7     575  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0      478     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1       13     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0       41     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        0     532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      579     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1       46     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       81     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1     707  swasted          
Birth       ki1101329-Keneba           GAMBIA                         0                0     1322    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         0                1      103    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         1                0       41    1466  swasted          
Birth       ki1101329-Keneba           GAMBIA                         1                1        0    1466  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                0      545     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                1       25     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0       69     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1        2     641  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     0                0       16      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     0                1        1      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     1                0        2      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     1                1        0      19  swasted          
Birth       ki1114097-CONTENT          PERU                           0                0        2       2  swasted          
Birth       ki1114097-CONTENT          PERU                           0                1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           1                0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           1                1        0       2  swasted          
Birth       ki1119695-PROBIT           BELARUS                        0                0    12898   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        0                1      906   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        1                0       26   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        1                1        0   13830  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    11474   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1      753   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0      651   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1       39   12917  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      672     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      0                1       60     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      1                0       24     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        0     756  swasted          
Birth       ki1135781-COHORTS          INDIA                          0                0     5514    6193  swasted          
Birth       ki1135781-COHORTS          INDIA                          0                1      299    6193  swasted          
Birth       ki1135781-COHORTS          INDIA                          1                0      359    6193  swasted          
Birth       ki1135781-COHORTS          INDIA                          1                1       21    6193  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2695    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1      118    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0       83    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1        3    2899  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    14737   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1      290   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     2928   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       59   18014  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0     1939    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1       24    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      426    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        7    2396  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      200     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        2     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       39     241  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      184     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       25     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     209  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                0      193     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                1        5     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                0       37     236  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                1        1     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      208     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       28     236  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     236  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                0      239     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                1        0     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                0       34     273  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     273  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      224     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        3     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     254  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      208     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       39     247  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     247  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      281     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       11     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       75     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     368  swasted          
6 months    ki1000108-IRC              INDIA                          0                0      336     408  swasted          
6 months    ki1000108-IRC              INDIA                          0                1       20     408  swasted          
6 months    ki1000108-IRC              INDIA                          1                0       50     408  swasted          
6 months    ki1000108-IRC              INDIA                          1                1        2     408  swasted          
6 months    ki1000109-EE               PAKISTAN                       0                0      205     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       0                1        4     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       1                0      157     375  swasted          
6 months    ki1000109-EE               PAKISTAN                       1                1        9     375  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       0                0      171     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       0                1        2     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       1                0       59     239  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       1                1        7     239  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      943    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1       26    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      348    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       17    1334  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      222     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       10     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      139     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        9     380  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      447     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        5     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       84     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        1     537  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      538     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        4     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       60     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        1     603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      613     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      102     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     715  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1879    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       11    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      137    2028  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1    2028  swasted          
6 months    ki1101329-Keneba           GAMBIA                         0                0     1865    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         0                1       28    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         1                0      190    2089  swasted          
6 months    ki1101329-Keneba           GAMBIA                         1                1        6    2089  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      228     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1        0     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       71     299  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        0     299  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      468     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        5     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       89     564  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        2     564  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     0                0      149     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     0                1        2     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     1                0       89     243  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     1                1        3     243  swasted          
6 months    ki1114097-CONTENT          PERU                           0                0      197     215  swasted          
6 months    ki1114097-CONTENT          PERU                           0                1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           1                0       18     215  swasted          
6 months    ki1114097-CONTENT          PERU                           1                1        0     215  swasted          
6 months    ki1119695-PROBIT           BELARUS                        0                0    15612   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        0                1       16   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        1                0      130   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        1                1        0   15758  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     7559    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1       73    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      867    8505  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1        6    8505  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      805     963  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      0                1        4     963  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      1                0      152     963  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      1                1        2     963  swasted          
6 months    ki1135781-COHORTS          INDIA                          0                0     5869    6850  swasted          
6 months    ki1135781-COHORTS          INDIA                          0                1      165    6850  swasted          
6 months    ki1135781-COHORTS          INDIA                          1                0      764    6850  swasted          
6 months    ki1135781-COHORTS          INDIA                          1                1       52    6850  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2518    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1       31    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      153    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1        4    2706  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         0                0      530     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1                0      309     839  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     839  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    11527   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      146   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     5027   16784  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       84   16784  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3451    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       22    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     1349    4833  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       11    4833  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      179     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       33     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      149     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       19     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     169  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                0      189     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                1        2     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                0       36     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      201     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        0     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       27     228  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     228  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                0      173     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                1        1     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                0       26     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                1        1     201  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      214     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       24     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     238  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      181     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       33     214  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     214  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      293     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       76     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     372  swasted          
24 months   ki1000108-IRC              INDIA                          0                0      354     409  swasted          
24 months   ki1000108-IRC              INDIA                          0                1        4     409  swasted          
24 months   ki1000108-IRC              INDIA                          1                0       50     409  swasted          
24 months   ki1000108-IRC              INDIA                          1                1        1     409  swasted          
24 months   ki1000109-EE               PAKISTAN                       0                0       99     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       0                1        1     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       1                0       65     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       1                1        3     168  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      348     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        6     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       70     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        4     428  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      511     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        8     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       59     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        1     579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      443     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       67     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        3     514  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        6       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6  swasted          
24 months   ki1101329-Keneba           GAMBIA                         0                0     1521    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         0                1       29    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         1                0      175    1726  swasted          
24 months   ki1101329-Keneba           GAMBIA                         1                1        1    1726  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      390     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       15     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       82     487  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     487  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     0                0      152     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     0                1        1     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     1                0       89     243  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     1                1        1     243  swasted          
24 months   ki1114097-CONTENT          PERU                           0                0      147     164  swasted          
24 months   ki1114097-CONTENT          PERU                           0                1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           1                0       17     164  swasted          
24 months   ki1114097-CONTENT          PERU                           1                1        0     164  swasted          
24 months   ki1119695-PROBIT           BELARUS                        0                0     3957    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        0                1        4    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        1                0       11    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        1                1        0    3972  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      308     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       23     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       94     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1        8     433  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      740    1082  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      0                1        3    1082  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      1                0      338    1082  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      1                1        1    1082  swasted          
24 months   ki1135781-COHORTS          INDIA                          0                0     4608    5291  swasted          
24 months   ki1135781-COHORTS          INDIA                          0                1       46    5291  swasted          
24 months   ki1135781-COHORTS          INDIA                          1                0      627    5291  swasted          
24 months   ki1135781-COHORTS          INDIA                          1                1       10    5291  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     2290    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1       21    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      134    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1        4    2449  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         0                0      365     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         0                1        0     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1                0      197     563  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1                1        1     563  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     5747    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      167    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     2521    8603  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      168    8603  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3316    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       64    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     1290    4735  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1       65    4735  swasted          


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/6bd71ac6-3bd9-4aee-916f-0857db406a59/cf6c7748-7a42-4232-9fc7-df25bc5e6fbc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6bd71ac6-3bd9-4aee-916f-0857db406a59/cf6c7748-7a42-4232-9fc7-df25bc5e6fbc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6bd71ac6-3bd9-4aee-916f-0857db406a59/cf6c7748-7a42-4232-9fc7-df25bc5e6fbc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6bd71ac6-3bd9-4aee-916f-0857db406a59/cf6c7748-7a42-4232-9fc7-df25bc5e6fbc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0255272    0.0120773   0.0389770
Birth       ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0297030   -0.0011491   0.0605550
Birth       ki1017093-NIH-Birth        BANGLADESH   0                    NA                0.0612648    0.0403513   0.0821784
Birth       ki1017093-NIH-Birth        BANGLADESH   1                    NA                0.1014493    0.0301480   0.1727506
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0615850    0.0573237   0.0658463
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0565217    0.0392906   0.0737529
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.0514364    0.0457577   0.0571152
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.0552632    0.0322877   0.0782386
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0192986    0.0166446   0.0219526
Birth       kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0197523    0.0148166   0.0246879
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0122262    0.0059043   0.0185481
Birth       kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0161663    0.0068108   0.0255218
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0268318    0.0168935   0.0367701
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0465753    0.0176093   0.0755413
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0431035    0.0169358   0.0692711
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.0608108    0.0222580   0.0993636
6 months    ki1101329-Keneba           GAMBIA       0                    NA                0.0147913    0.0093520   0.0202307
6 months    ki1101329-Keneba           GAMBIA       1                    NA                0.0306122    0.0064899   0.0547346
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0095650    0.0073812   0.0117488
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0068729    0.0013921   0.0123536
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0273450    0.0232298   0.0314603
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0637255    0.0469648   0.0804862
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0125075    0.0102347   0.0147803
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0164351    0.0125236   0.0203467
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0063346    0.0034734   0.0091958
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0080882    0.0004499   0.0157266
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0694864    0.0420614   0.0969115
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0784314    0.0261967   0.1306660
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0098840    0.0070416   0.0127264
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.0156986    0.0060444   0.0253527
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0282381    0.0238226   0.0326535
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0624768    0.0527563   0.0721972
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0189349    0.0137907   0.0240791
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0479705    0.0349167   0.0610243


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0262919   0.0122874   0.0402964
Birth       ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.0660870   0.0457632   0.0864107
Birth       ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0613145   0.0571772   0.0654519
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.0516712   0.0461576   0.0571849
Birth       kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0193738   0.0169653   0.0217823
Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0129382   0.0075150   0.0183614
6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ki1101329-Keneba           GAMBIA       NA                   NA                0.0162757   0.0108484   0.0217031
6 months    ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0092887   0.0072498   0.0113275
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0316788   0.0275309   0.0358267
6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0137035   0.0116269   0.0157801
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0068281   0.0038634   0.0097927
24 months   ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0715935   0.0472820   0.0959051
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0105840   0.0078264   0.0133416
24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0389399   0.0346167   0.0432631
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0272439   0.0220352   0.0324527


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.1635816   0.4343503   3.117120
Birth       ki1017093-NIH-Birth        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH   1                    0                 1.6559140   0.7580633   3.617179
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 0.9177839   0.6713896   1.254603
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0743971   0.6987960   1.651883
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.0235076   0.7755596   1.350725
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.3222671   0.6048868   2.890442
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.7358272   0.7704191   3.910983
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.4108107   0.5864838   3.393763
6 months    ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA       1                    0                 2.0696064   0.8674280   4.937898
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 0.7185426   0.3134818   1.646996
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 2.3304219   1.7212024   3.155274
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.3140232   0.9896145   1.744777
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2768382   0.4468931   3.648111
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.1287298   0.5204485   2.447948
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 1.5882875   0.8055498   3.131597
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 2.2125003   1.7742644   2.758979
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 2.5334409   1.7187759   3.734241


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0007647   -0.0044690   0.0059985
Birth       ki1017093-NIH-Birth        BANGLADESH   0                    NA                 0.0048221   -0.0041582   0.0138025
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0002705   -0.0012189   0.0006779
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0002348   -0.0012176   0.0016872
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0000752   -0.0008291   0.0009795
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0007120   -0.0013405   0.0027646
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0054021   -0.0035579   0.0143621
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0068966   -0.0112717   0.0250648
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0014844   -0.0008441   0.0038129
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0002763   -0.0008822   0.0003295
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0043338    0.0022590   0.0064086
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0011960   -0.0001156   0.0025077
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0004935   -0.0018113   0.0027983
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0021071   -0.0117951   0.0160093
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0007000   -0.0005127   0.0019127
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0107018    0.0073482   0.0140555
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0083090    0.0042482   0.0123698


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0290865   -0.1870240   0.2058517
Birth       ki1017093-NIH-Birth        BANGLADESH   0                    NA                 0.0729665   -0.0715119   0.1979640
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0044112   -0.0199959   0.0109354
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0045442   -0.0239604   0.0322554
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0038828   -0.0439567   0.0495301
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0550343   -0.1272582   0.2078477
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.1675907   -0.1440123   0.3943201
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.1379310   -0.3069960   0.4313962
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0912029   -0.0600361   0.2208641
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0297498   -0.0967402   0.0331487
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.1368039    0.0712970   0.1976902
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0872791   -0.0123069   0.1770683
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0722718   -0.3172077   0.3465878
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0294318   -0.1852710   0.2052429
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0661413   -0.0543193   0.1728387
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.2748293    0.1898605   0.3508864
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.3049860    0.1544540   0.4287189
