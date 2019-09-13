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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        feducyrs    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       41     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       13     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       23     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       16     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       36     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       18     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       22     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       22     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       28     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       31     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       27     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       17     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       32      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       10      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       18      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       10      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       19      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        9      98
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0      112     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        8     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       65     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        4     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       54     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       36     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        7     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       30     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        7     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       23     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        7     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      114     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       16     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       53     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        8     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0       19     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1     211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      235    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1      151    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      352    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      291    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      297    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      184    1510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       62     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       48     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       79     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       68     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       80     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       81     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      165     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       67     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      136     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1      102     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      153     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       77     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      201     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       95     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      152     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       90     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      154     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       66     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      355    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       94    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      966    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      304    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      498    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      166    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       70     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       77     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0       90     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      167     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       86     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      111     601
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2070   16315
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      638   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     4760   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1658   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     5314   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1875   16315
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      783   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      209   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1722   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      561   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     7914   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     2373   13562
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      164    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       67    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      419    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1      139    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      330    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1      115    1234
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      386    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                  1      181    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0      305    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1      167    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0      269    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1      139    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      640    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      388    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      480    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      346    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      597    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      417    2868
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      235     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       16     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      267     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       24     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      246     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       25     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     4907   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1570   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7803   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2838   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6578   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     2278   25974
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      275    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      112    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1547    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      691    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      313    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      141    3079
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0       45     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1        9     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0       28     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       11     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0       42     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       12     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0       31     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       13     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       40     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       19     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0       33     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       11     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0       34      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1        8      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0       22      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1        6      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0       26      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1        2      98
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0      118     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0       67     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        2     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0       58     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        3     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       39     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        4     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       34     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        3     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       29     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        1     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      125     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        5     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       59     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        2     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0       19     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1     211
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0      309    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       76    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0      491    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1      149    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0      372    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1      105    1502
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       93     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       17     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      121     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       26     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0      126     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       35     418
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0      180     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       52     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0      167     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       71     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0      172     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       58     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      218     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       78     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      172     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       70     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      172     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       48     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      395    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       54    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0     1088    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      182    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      567    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       97    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0      108     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       39     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      187     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1       70     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0      128     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       69     601
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0     2083   16312
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      625   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0     4810   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1608   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0     5361   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1825   16312
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      815   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      170   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1863   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      405   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     8377   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     1842   13472
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0      146     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       44     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0      355     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1       88     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0      296     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       68     997
0-6 months    ki1135781-COHORTS          INDIA                          High                  0      419    1417
0-6 months    ki1135781-COHORTS          INDIA                          High                  1      138    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0      357    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1      101    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0      292    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1      110    1417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0      768    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      260    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0      649    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      177    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0      793    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      220    2867
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0       72     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        1     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0      104     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0       87     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        3     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0     5343   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1107   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     8700   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1905   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     7290   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1541   25886
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0      322    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1       36    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1878    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      226    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      384    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       43    2889
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       42     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        6     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       28     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1        9     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       36     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       10     131
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       32     137
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       11     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       34     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       20     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       32     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1        8     137
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       36      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        3      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       23      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1        4      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       20      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        8      94
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0       99     223
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        7     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       58     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        2     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       53     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        4     223
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       33      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        3      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       30      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        6      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       17      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        7      96
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      116     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       12     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       47     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0       19     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        0     202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      263    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1      107    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      376    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      196    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      324    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      120    1386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       71     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       36     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       89     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       51     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       99     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       56     402
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      191     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       23     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      158     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       50     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      167     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       26     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      263     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       23     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      188     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       41     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      183     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       32     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      321    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       54    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      906    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      166    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      460    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      102    2009
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       86     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       59     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      118     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      135     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0      107     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       84     589
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2614   16027
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1       22   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     6249   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       72   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     7000   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       70   16027
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      656   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1       51   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1583   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      208   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     7185   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      703   10386
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      181    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       29    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      445    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       66    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      354    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       50    1125
6-24 months   ki1135781-COHORTS          INDIA                          High                  0      494    1405
6-24 months   ki1135781-COHORTS          INDIA                          High                  1       55    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0      375    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1       84    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0      350    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1       47    1405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      735    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      188    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      526    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      252    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      686    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      268    2655
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      232     802
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       15     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      265     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       24     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      243     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       23     802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     3796   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1      595   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     5313   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1183   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     4768   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      951   16606
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      297    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       90    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1684    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      548    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      341    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      112    3072


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/363f372e-4e1a-4701-a535-72780a17402f/86012055-5bdb-4350-8d8b-058f50763eb1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/363f372e-4e1a-4701-a535-72780a17402f/86012055-5bdb-4350-8d8b-058f50763eb1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/363f372e-4e1a-4701-a535-72780a17402f/86012055-5bdb-4350-8d8b-058f50763eb1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/363f372e-4e1a-4701-a535-72780a17402f/86012055-5bdb-4350-8d8b-058f50763eb1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2520595   0.1348968   0.3692223
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4161382   0.2568895   0.5753870
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3360023   0.2070560   0.4649487
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.4961426   0.3447464   0.6475388
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5226076   0.3922921   0.6529231
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3922983   0.2423797   0.5422169
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2380952   0.1086231   0.3675674
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.3571429   0.1787512   0.5355345
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3214286   0.1475539   0.4953032
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1627907   0.0519425   0.2736389
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1891892   0.0624128   0.3159655
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2333333   0.0812918   0.3853749
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4147031   0.3744305   0.4549756
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4411227   0.3675442   0.5147012
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3793485   0.3096135   0.4490835
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.4369652   0.3435330   0.5303975
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4576585   0.3761914   0.5391256
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5036065   0.4257360   0.5814770
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3209729   0.2691429   0.3728030
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4080032   0.3520372   0.4639693
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3244961   0.2741329   0.3748592
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3177868   0.2686971   0.3668765
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3755188   0.3228390   0.4281987
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3027880   0.2473877   0.3581884
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2081905   0.1708384   0.2455425
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2375998   0.2141923   0.2610073
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2513135   0.2180958   0.2845312
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5256185   0.4426574   0.6085797
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6439527   0.5847560   0.7031495
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5642864   0.4920688   0.6365041
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2568386   0.1983847   0.3152924
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2534748   0.1978319   0.3091176
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2578687   0.1975276   0.3182098
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2087341   0.1899988   0.2274695
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2487602   0.2334872   0.2640333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2305047   0.2228115   0.2381979
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2801164   0.2293928   0.3308401
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2652013   0.2319091   0.2984935
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2562184   0.2175861   0.2948507
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3347399   0.3002196   0.3692603
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3548781   0.3139324   0.3958238
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3280369   0.2881823   0.3678915
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3669617   0.3394948   0.3944285
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4218616   0.3897545   0.4539688
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.4145907   0.3857561   0.4434253
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0637160   0.0332227   0.0942092
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0831097   0.0510224   0.1151971
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0924281   0.0576191   0.1272371
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2511013   0.2398542   0.2623484
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2623747   0.2532788   0.2714706
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2579502   0.2476853   0.2682151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2860443   0.2327534   0.3393352
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3085763   0.2857394   0.3314132
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3103655   0.2624297   0.3583013
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1666667   0.0669272   0.2664062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2820513   0.1403386   0.4237640
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2222222   0.1109581   0.3334863
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2744137   0.1415097   0.4073178
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3074981   0.1859802   0.4290159
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2373669   0.1069965   0.3677372
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2151976   0.1745530   0.2558423
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2232521   0.1732675   0.2732367
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2193943   0.1666952   0.2720934
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1546817   0.0855267   0.2238368
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1754770   0.1132097   0.2377444
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2167628   0.1520183   0.2815074
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2569348   0.2127540   0.3011156
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2688845   0.2231017   0.3146673
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2484986   0.2090423   0.2879548
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2535104   0.2049568   0.3020641
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3061608   0.2486786   0.3636431
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2189848   0.1639731   0.2739965
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1203718   0.0903420   0.1504017
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1426757   0.1234186   0.1619328
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1488198   0.1212060   0.1764337
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2606643   0.1892855   0.3320431
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2720979   0.2174067   0.3267892
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3496209   0.2819676   0.4172742
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2525814   0.1916603   0.3135025
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2465476   0.1906385   0.3024566
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2493651   0.1886059   0.3101243
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1689626   0.1556323   0.1822930
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1853313   0.1739380   0.1967246
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1796227   0.1727893   0.1864560
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2381294   0.1770535   0.2992053
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2158041   0.1774957   0.2541126
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1773726   0.1373760   0.2173692
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2512696   0.2205612   0.2819780
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2366110   0.2033474   0.2698747
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2529921   0.2185673   0.2874169
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2249562   0.2037686   0.2461438
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2315455   0.2079469   0.2551441
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2260313   0.2046154   0.2474473
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1706273   0.1612067   0.1800479
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1771688   0.1698583   0.1844793
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1782706   0.1699752   0.1865660
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0973057   0.0612630   0.1333485
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1054786   0.0912018   0.1197555
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1100201   0.0825329   0.1375074
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1250000   0.0310816   0.2189184
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2432432   0.1044687   0.3820178
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2173913   0.0977375   0.3370451
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.2558140   0.1249236   0.3867043
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3703704   0.2410989   0.4996419
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3085650   0.2693686   0.3477613
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3370973   0.2809201   0.3932745
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2654298   0.2121411   0.3187184
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3357031   0.2454697   0.4259365
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3618989   0.2815653   0.4422325
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3624003   0.2862082   0.4385924
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1192336   0.0761603   0.1623069
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2329641   0.1743629   0.2915653
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1239241   0.0774999   0.1703482
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0853083   0.0531455   0.1174712
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1763094   0.1265419   0.2260769
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1426887   0.0954966   0.1898809
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1474120   0.1114357   0.1833883
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1526456   0.1311560   0.1741352
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1832743   0.1512904   0.2152582
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4124279   0.3322991   0.4925568
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5296252   0.4674872   0.5917632
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4424960   0.3705276   0.5144644
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0084115   0.0050441   0.0117789
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0113747   0.0070719   0.0156775
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0098553   0.0065293   0.0131812
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0767447   0.0553589   0.0981304
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1192966   0.1025140   0.1360792
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0893953   0.0829984   0.0957923
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1514117   0.1014707   0.2013527
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1307499   0.1010318   0.1604679
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1232072   0.0896035   0.1568110
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1046069   0.0793974   0.1298164
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1750881   0.1391722   0.2110040
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1187462   0.0859220   0.1515705
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2146683   0.1881325   0.2412041
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3136620   0.2809330   0.3463909
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2787552   0.2503553   0.3071552
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0603464   0.0307642   0.0899286
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0835438   0.0515634   0.1155243
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0856714   0.0520428   0.1193001
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1522455   0.1402771   0.1642139
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1747065   0.1641601   0.1852528
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1655438   0.1546964   0.1763913
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2291511   0.1782432   0.2800591
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2459965   0.2241280   0.2678649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2477023   0.1995700   0.2958347


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3197279   0.2440789   0.3953769
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4761905   0.3951786   0.5572024
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2959184   0.2050820   0.3867547
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1909091   0.1171277   0.2646905
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4145695   0.3576236   0.4715155
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2366765   0.2196074   0.2537455
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5906822   0.5513381   0.6300263
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2556543   0.1980936   0.3132150
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2317505   0.2246488   0.2388522
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2601297   0.2356425   0.2846169
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3365584   0.3122030   0.3609138
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4013250   0.3833827   0.4192673
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0799508   0.0612962   0.0986054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2574113   0.2508319   0.2639906
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3065930   0.2872641   0.3259220
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2176871   0.1507482   0.2846259
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2925170   0.2187257   0.3663083
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2197071   0.1750081   0.2644060
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1397398   0.1258162   0.1536634
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2961730   0.2596406   0.3327054
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2487739   0.1904535   0.3070943
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1794091   0.1729298   0.1858885
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2006018   0.1757323   0.2254713
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2462950   0.2238538   0.2687361
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2291594   0.2137721   0.2445467
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1758866   0.1701478   0.1816254
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1055729   0.0925062   0.1186395
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1908397   0.1232893   0.2583901
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2846715   0.2088306   0.3605124
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3051948   0.2633957   0.3469939
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1602787   0.1442326   0.1763249
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4719864   0.4316361   0.5123367
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0102327   0.0075781   0.0128874
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0926247   0.0870490   0.0982004
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1288889   0.1093000   0.1484778
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1323843   0.1146569   0.1501118
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666667   0.2498425   0.2834908
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0773067   0.0588111   0.0958024
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1643382   0.1581062   0.1705701
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2441406   0.2256713   0.2626100


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.6509520   0.9025384   3.019974
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3330276   0.7268414   2.444774
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0533415   0.7099429   1.562842
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7906967   0.4848005   1.289605
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.5000000   0.7168352   3.138797
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.3500000   0.6269331   2.907009
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.1621622   0.4470567   3.021140
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.4333333   0.5585186   3.678381
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0637074   0.9354526   1.209547
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9147473   0.8163904   1.024954
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0473568   0.7928373   1.383583
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1525093   0.8850380   1.500814
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.2711452   1.0465019   1.544011
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0109764   0.8277282   1.234793
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.1816689   0.9733263   1.434608
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9528023   0.7600669   1.194411
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1412616   0.9303286   1.400019
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2071325   0.9662691   1.508036
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2251332   1.0205967   1.470661
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0735665   0.8760830   1.315566
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.9869031   0.9171482   1.061963
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0040109   0.9266851   1.087789
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1917563   1.0741598   1.322227
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1042981   1.0096152   1.207861
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9467538   0.7715706   1.161712
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9146854   0.7320022   1.142960
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.0601606   0.9171498   1.225471
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              0.9799754   0.8464913   1.134509
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1496068   1.0373250   1.274042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1297930   1.0246932   1.245673
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.3043779   0.7051356   2.412872
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.4506265   0.7889259   2.667319
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0448959   0.9906840   1.102074
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0272755   0.9721388   1.085539
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0787711   0.8818797   1.319621
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0850260   0.8488973   1.386836
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.6923077   0.7746872   3.696854
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3333333   0.6110452   2.909405
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.1205636   0.6027754   2.083135
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.8649962   0.4192002   1.784871
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0374284   0.9047433   1.189572
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0195015   0.9196463   1.130199
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1344392   0.6407531   2.008500
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4013472   0.8175534   2.402013
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.0465090   0.8548182   1.281186
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9671660   0.8043140   1.162991
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2076853   0.9271392   1.573123
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.8638099   0.6325992   1.179527
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1852915   0.8930583   1.573151
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2363343   0.9064074   1.686353
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0438633   0.7431990   1.466163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3412690   0.9589187   1.876074
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              0.9761114   0.8969310   1.062282
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              0.9872663   0.9014274   1.081279
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0968777   1.0030393   1.199495
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0630911   0.9866069   1.145505
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9062475   0.6675334   1.230327
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.7448583   0.5320717   1.042743
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.9416618   0.7983819   1.110655
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.0068551   0.8577410   1.181892
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.0292917   0.9110243   1.162912
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0047794   0.8954450   1.127464
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0383378   0.9777939   1.102630
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0447953   0.9833872   1.110038
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0839920   0.7410429   1.585655
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1306647   0.7325611   1.745114
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.9459459   0.7575571   4.998575
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.7391304   0.6852334   4.413933
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4478114   0.7793310   2.689689
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7818182   0.3493801   1.749498
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0924677   0.9348079   1.276718
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.8602071   0.7165515   1.032663
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0780327   0.7604891   1.528167
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.0795263   0.7671624   1.519075
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.9538462   1.2608525   3.027725
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0393385   0.6195116   1.743671
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.0667315   1.2911191   3.308277
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6726240   1.0134411   2.760566
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0355033   0.7816462   1.371806
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2432792   0.9212050   1.677958
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2841642   1.0235781   1.611091
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0729050   0.8329775   1.381940
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.3522759   0.7554269   2.420684
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1716418   0.6788617   2.022127
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.5544616   1.1378765   2.123562
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1648408   0.8737889   1.552840
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8635388   0.5785076   1.289005
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8137233   0.5303547   1.248496
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.6737719   1.2205277   2.295329
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1351665   0.7873052   1.636726
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4611473   1.2435722   1.716789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2985395   1.1073862   1.522689
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.3844042   0.7433484   2.578300
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.4196609   0.7573583   2.661141
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1475311   1.0390073   1.267390
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0873478   0.9816863   1.204382
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0735119   0.8444860   1.364650
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0809561   0.7994422   1.461602


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0676683   -0.0303777   0.1657144
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0199521   -0.1466887   0.1067844
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0578231   -0.0453561   0.1610024
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0281184   -0.0620180   0.1182548
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0001335   -0.0307657   0.0304987
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0343266   -0.0461176   0.1147708
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0304556   -0.0087769   0.0696882
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0133477   -0.0223147   0.0490102
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0284860   -0.0055795   0.0625515
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0650637   -0.0071886   0.1373159
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0011842   -0.0168510   0.0144825
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0230163    0.0054599   0.0405728
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0199868   -0.0642186   0.0242451
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0018185   -0.0234279   0.0270648
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0343633    0.0127515   0.0559751
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0162348   -0.0104523   0.0429219
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0063099   -0.0033125   0.0159324
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0205488   -0.0300104   0.0711079
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0510204   -0.0333601   0.1354009
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0181033   -0.0929897   0.1291962
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0045094   -0.0069501   0.0159690
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0319211   -0.0292562   0.0930985
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0016367   -0.0278446   0.0311179
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0050648   -0.0324403   0.0425698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0193680   -0.0081908   0.0469268
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0355087   -0.0273706   0.0983881
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0038075   -0.0215877   0.0139728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0104465   -0.0014164   0.0223095
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0375276   -0.0921469   0.0170918
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0049746   -0.0259080   0.0159587
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0042032   -0.0104973   0.0189038
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0052593   -0.0020639   0.0125825
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0082671   -0.0241282   0.0406625
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0658397   -0.0173452   0.1490246
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0288576   -0.0812767   0.1389918
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0033702   -0.0355761   0.0288357
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0200183   -0.0577478   0.0977844
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0417420    0.0036821   0.0798020
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0461985    0.0172266   0.0751705
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0128667   -0.0198903   0.0456238
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0595585   -0.0105434   0.1296604
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0018212   -0.0022832   0.0059257
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0158800   -0.0049666   0.0367267
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0225228   -0.0676747   0.0226290
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0277774    0.0064103   0.0491446
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0519984    0.0295405   0.0744563
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0169603   -0.0090518   0.0429725
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0120927    0.0010770   0.0231083
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0149895   -0.0332837   0.0632628


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2116435   -0.1612173   0.4647807
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0418995   -0.3451188   0.1929675
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1954023   -0.2384488   0.4772675
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1472868   -0.4798679   0.5086590
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0003221   -0.0770436   0.0709343
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0728352   -0.1147256   0.2288375
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0866623   -0.0320955   0.1917553
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0403091   -0.0737774   0.1422742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1203583   -0.0358298   0.2529956
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1101500   -0.0213970   0.2247549
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0046322   -0.0679173   0.0549026
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0993151    0.0203171   0.1719430
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0768338   -0.2611462   0.0805419
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0054031   -0.0724992   0.0776469
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0856247    0.0301929   0.1378881
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2030601   -0.2071824   0.4738880
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0245131   -0.0135512   0.0611479
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0670229   -0.1131879   0.2180598
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2343750   -0.2638627   0.5361983
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0618879   -0.4065900   0.3743348
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0205247   -0.0311402   0.0696009
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1710645   -0.2297513   0.4412414
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0063296   -0.1145015   0.1140606
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0195872   -0.1367327   0.1544105
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1386004   -0.0824573   0.3145141
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1198919   -0.1200736   0.3084470
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0153049   -0.0894597   0.0538025
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0582274   -0.0102337   0.1220491
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1870749   -0.4929718   0.0561464
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0201979   -0.1088508   0.0613672
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0183420   -0.0479515   0.0804417
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0299015   -0.0126793   0.0706919
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0783074   -0.2872698   0.3400629
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3450000   -0.2511462   0.6570944
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1013715   -0.3817356   0.4155660
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0110426   -0.1230599   0.0898017
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0562753   -0.1897640   0.2514345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2593065   -0.0127940   0.4583036
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3513013    0.1017897   0.5315017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0802773   -0.1484370   0.2634426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1261869   -0.0358967   0.2629097
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1779814   -0.2994115   0.4799842
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1714448   -0.0869812   0.3684309
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1747460   -0.5828046   0.1281121
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2098242    0.0339313   0.3536922
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1949939    0.1067225   0.2745427
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2193900   -0.1954818   0.4902875
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0735841    0.0043773   0.1379802
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0613970   -0.1585105   0.2395618
