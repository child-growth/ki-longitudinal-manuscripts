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
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
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
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       29     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       30     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       27     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       17     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       31      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       11      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       17      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       11      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       18      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       10      98
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0      111     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        9     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       65     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        4     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       54     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       36     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        7     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       29     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        8     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       23     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        7     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      113     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       17     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       52     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        9     211
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
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      202     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       94     758
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       65     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1      104     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      115     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      177     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0      100     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      123     684
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2070   16315
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      638   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     4760   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1658   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     5314   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1875   16315
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      783   13568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      209   13568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1720   13568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      564   13568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     7893   13568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     2399   13568
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     4908   25970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1569   25970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7799   25970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2838   25970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6580   25970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     2276   25970
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      912    5277
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      335    5277
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1303    5277
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      651    5277
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0     1426    5277
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      650    5277
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0       45     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1        9     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0       27     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       12     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0       42     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       12     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0       30     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       14     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       41     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       18     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0       33     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       11     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0       33      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1        9      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0       21      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1        7      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0       25      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1        3      98
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0      118     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0       67     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        2     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0       58     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        3     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       39     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        4     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       33     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        4     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       29     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        1     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      125     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        5     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       58     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        3     211
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      219     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       77     758
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       94     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       75     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      198     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1       94     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0      134     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       89     684
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0     2083   16312
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      625   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0     4810   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1608   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0     5361   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1825   16312
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      815   13478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      170   13478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1863   13478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      406   13478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     8381   13478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     1843   13478
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0     5344   25882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1106   25882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     8696   25882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1905   25882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     7293   25882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1538   25882
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0     1056    4948
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1      119    4948
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1625    4948
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      206    4948
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0     1733    4948
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      209    4948
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
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0       98     223
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        8     223
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
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      115     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       13     202
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      666   10504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1       51   10504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1600   10504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      213   10504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     7244   10504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      730   10504
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
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      985    5273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      260    5273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1425    5273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      528    5273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0     1562    5273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      513    5273


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
![](/tmp/e19d4315-95a5-4f07-ba8f-da95137d2f32/626fab86-66ff-4abe-8bed-24d27c6701b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e19d4315-95a5-4f07-ba8f-da95137d2f32/626fab86-66ff-4abe-8bed-24d27c6701b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e19d4315-95a5-4f07-ba8f-da95137d2f32/626fab86-66ff-4abe-8bed-24d27c6701b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e19d4315-95a5-4f07-ba8f-da95137d2f32/626fab86-66ff-4abe-8bed-24d27c6701b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2366255   0.1232566   0.3499943
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4184472   0.2592287   0.5776658
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3507553   0.2214879   0.4800228
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5425884   0.3908532   0.6943237
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5459606   0.4142455   0.6776758
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3969231   0.2529584   0.5408878
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2695875   0.1350325   0.4041424
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.4154756   0.2256311   0.6053201
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3725789   0.1879442   0.5572136
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1627907   0.0519425   0.2736389
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2162162   0.0829646   0.3494679
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2333333   0.0812918   0.3853749
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4249498   0.3808825   0.4690171
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4311067   0.3585021   0.5037113
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3848064   0.3111227   0.4584900
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.4380236   0.3441376   0.5319095
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4592010   0.3782601   0.5401419
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5046614   0.4269216   0.5824012
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3423850   0.2877048   0.3970652
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4067123   0.3493844   0.4640402
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3100808   0.2610722   0.3590894
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3162400   0.2652211   0.3672588
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3599108   0.2986073   0.4212143
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2975613   0.2343829   0.3607396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2144689   0.1766577   0.2522802
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2363343   0.2130310   0.2596377
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2522770   0.2188897   0.2856643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.6069860   0.5368726   0.6770995
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6065107   0.5518505   0.6611709
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5590377   0.4960604   0.6220151
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2550413   0.1957538   0.3143289
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2535838   0.1979351   0.3092325
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2565078   0.1962446   0.3167710
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2116325   0.1930017   0.2302632
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2454355   0.2304473   0.2604237
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2335118   0.2257479   0.2412757
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2887506   0.2391847   0.3383165
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2701217   0.2369311   0.3033123
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2503532   0.2114323   0.2892740
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3322363   0.2980267   0.3664459
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3526856   0.3122399   0.3931314
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3229710   0.2822009   0.3637412
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3631898   0.3358183   0.3905612
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4234887   0.3915538   0.4554236
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.4163632   0.3876084   0.4451179
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0629049   0.0326397   0.0931700
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0832278   0.0511508   0.1153049
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0929217   0.0580520   0.1277915
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2502895   0.2388058   0.2617731
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2630692   0.2536520   0.2724864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2591561   0.2486827   0.2696296
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2747269   0.2426633   0.3067905
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3301063   0.3067054   0.3535073
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3120159   0.2911947   0.3328370
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1666667   0.0669272   0.2664062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3076923   0.1623454   0.4530393
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2222222   0.1109581   0.3334863
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.3007736   0.1623262   0.4392209
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2828301   0.1610803   0.4045800
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2326960   0.1027547   0.3626372
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2193464   0.1779079   0.2607850
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2201633   0.1694004   0.2709262
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2207475   0.1666193   0.2748757
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1568847   0.0880544   0.2257149
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1759750   0.1141001   0.2378499
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2174933   0.1533386   0.2816480
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2509005   0.1945239   0.3072770
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2918973   0.2313610   0.3524336
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2433424   0.1862295   0.3004554
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2497474   0.2011442   0.2983506
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3091842   0.2512925   0.3670758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2185643   0.1636901   0.2734385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1191115   0.0891896   0.1490335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1411625   0.1219823   0.1603427
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1480899   0.1210463   0.1751336
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4075986   0.3389591   0.4762381
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3448267   0.2952547   0.3943987
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3988834   0.3393445   0.4584223
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2520127   0.1915778   0.3124476
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2452126   0.1888947   0.3015305
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2507241   0.1900031   0.3114451
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1677154   0.1555432   0.1798876
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1823833   0.1712663   0.1935002
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1800097   0.1731689   0.1868504
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2428474   0.1825827   0.3031121
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2173338   0.1789519   0.2557157
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1814764   0.1406438   0.2223090
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2535960   0.2231593   0.2840327
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2360518   0.2025300   0.2695735
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2571326   0.2231360   0.2911291
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2261643   0.2052071   0.2471215
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2329924   0.2092134   0.2567713
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2252624   0.2038793   0.2466455
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1700542   0.1603443   0.1797641
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1777526   0.1701537   0.1853516
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1778025   0.1692514   0.1863536
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0987143   0.0804998   0.1169289
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1136081   0.1008233   0.1263929
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1070122   0.0939504   0.1200740
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1250000   0.0310816   0.2189184
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2432432   0.1044687   0.3820178
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2173913   0.0977375   0.3370451
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.2558140   0.1249236   0.3867043
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3703704   0.2410989   0.4996419
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3321765   0.2900437   0.3743092
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3176636   0.2666395   0.3686876
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2752580   0.2174844   0.3330315
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3399630   0.2493173   0.4306087
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3641928   0.2838205   0.4445651
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3606784   0.2846813   0.4366755
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1163599   0.0748869   0.1578329
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2329019   0.1740741   0.2917297
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1268487   0.0801663   0.1735312
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0844533   0.0524097   0.1164969
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1774725   0.1274349   0.2275101
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1422591   0.0945941   0.1899241
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1478960   0.1118187   0.1839733
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1519890   0.1304671   0.1735109
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1854204   0.1535370   0.2173038
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4128363   0.3300433   0.4956292
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5256614   0.4641398   0.5871830
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4544628   0.3847036   0.5242221
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0082390   0.0048477   0.0116303
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0114030   0.0071257   0.0156803
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0099208   0.0065909   0.0132508
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0780880   0.0559937   0.1001823
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1203892   0.1035040   0.1372745
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0922223   0.0857733   0.0986713
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1435152   0.0949409   0.1920895
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1288533   0.0993827   0.1583239
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1225552   0.0895237   0.1555866
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1038800   0.0787522   0.1290078
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1715498   0.1363255   0.2067741
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1214051   0.0878417   0.1549685
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2150023   0.1886432   0.2413614
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3146339   0.2818342   0.3474337
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2782223   0.2497655   0.3066790
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0598170   0.0303107   0.0893233
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0832377   0.0509944   0.1154810
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0880957   0.0534397   0.1227518
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1528641   0.1408060   0.1649222
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1767365   0.1662706   0.1872024
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1668202   0.1559488   0.1776915
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2164035   0.1859585   0.2468484
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2656388   0.2425181   0.2887594
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2474109   0.2276163   0.2672055


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3197279   0.2440789   0.3953769
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4693878   0.3884360   0.5503395
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3265306   0.2332088   0.4198524
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2000000   0.1249078   0.2750922
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4145695   0.3576236   0.4715155
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2366765   0.2196074   0.2537455
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5906433   0.5537666   0.6275199
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2556543   0.1980936   0.3132150
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2337854   0.2266636   0.2409072
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2601297   0.2356425   0.2846169
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3365584   0.3122030   0.3609138
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4013250   0.3833827   0.4192673
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0799508   0.0612962   0.0986054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2573354   0.2507501   0.2639207
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3100246   0.2953385   0.3247108
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2244898   0.1568093   0.2921703
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2925170   0.2187257   0.3663083
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2197071   0.1750081   0.2644060
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1397398   0.1258162   0.1536634
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3771930   0.3408437   0.4135423
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2487739   0.1904535   0.3070943
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1794777   0.1729988   0.1859566
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2006018   0.1757323   0.2254713
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2462950   0.2238538   0.2687361
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2291594   0.2137721   0.2445467
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1757592   0.1700164   0.1815020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1079224   0.0978937   0.1179511
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1908397   0.1232893   0.2583901
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2846715   0.2088306   0.3605124
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3051948   0.2633957   0.3469939
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1602787   0.1442326   0.1763249
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4719864   0.4316361   0.5123367
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0102327   0.0075781   0.0128874
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0946306   0.0890328   0.1002285
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1288889   0.1093000   0.1484778
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1323843   0.1146569   0.1501118
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666667   0.2498425   0.2834908
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0773067   0.0588111   0.0958024
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1643382   0.1581062   0.1705701
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2467286   0.2329282   0.2605290


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.7683948   0.9595894   3.258915
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.4823229   0.8080275   2.719315
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0062150   0.6920090   1.463086
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7315363   0.4622653   1.157658
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.5411532   0.7791658   3.048328
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.3820334   0.6840951   2.792033
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.3281853   0.5301512   3.327496
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.4333333   0.5585186   3.678381
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0144887   0.8940072   1.151207
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9055337   0.7988990   1.026402
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0483478   0.7940415   1.384100
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1521330   0.8843534   1.500995
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.1878801   0.9760515   1.445681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9056495   0.7402551   1.107998
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.1380939   0.9026997   1.434871
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9409351   0.7231795   1.224259
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1019514   0.9010115   1.347704
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1762871   0.9440245   1.465694
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9992169   0.8657857   1.153212
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9210059   0.7868225   1.078073
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.9942852   0.9186985   1.076091
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0057497   0.9236678   1.095126
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1597252   1.0470017   1.284585
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1033836   1.0103725   1.204957
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9354844   0.7699625   1.136589
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8670221   0.6970604   1.078425
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.0615506   0.9190351   1.226166
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              0.9721124   0.8360713   1.130289
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1660260   1.0522307   1.292128
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1464066   1.0399390   1.263774
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.3230749   0.7139586   2.451861
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.4771791   0.8019397   2.720975
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0510598   0.9938023   1.111616
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0354256   0.9789129   1.095201
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2015798   1.0527535   1.371446
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1357310   0.9937859   1.297950
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.8461538   0.8613068   3.957108
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3333333   0.6110452   2.909405
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              0.9403425   0.5003631   1.767205
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.7736583   0.3764930   1.589796
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0037241   0.8653051   1.164285
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0063873   0.9018597   1.123030
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1216838   0.6396924   1.966843
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3863259   0.8168913   2.352699
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.1633988   0.8570845   1.579187
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9698763   0.7013603   1.341194
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2379875   0.9487072   1.615475
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.8751414   0.6399196   1.196826
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1851288   0.8911500   1.576087
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2432883   0.9117413   1.695399
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.8459958   0.6866482   1.042322
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9786182   0.7886260   1.214382
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              0.9730168   0.8958162   1.056871
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              0.9948867   0.9125738   1.084624
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0874570   1.0004976   1.181975
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0733045   1.0027524   1.148821
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8949399   0.6641710   1.205890
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.7472858   0.5379611   1.038060
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.9308182   0.7900633   1.096650
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.0139456   0.8687622   1.183391
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.0301907   0.9128296   1.162641
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9960121   0.8888796   1.116057
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0452708   0.9796349   1.115304
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0455640   0.9812204   1.114127
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1508777   0.9466538   1.399159
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0840593   0.8880921   1.323269
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.9459459   0.7575571   4.998575
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.7391304   0.6852334   4.413933
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4478114   0.7793310   2.689689
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7818182   0.3493801   1.749498
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.9563097   0.8316471   1.099659
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.8286499   0.6833713   1.004813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0712718   0.7575773   1.514860
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.0609342   0.7551010   1.490637
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.0015655   1.2956814   3.092013
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0901417   0.6553543   1.813384
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.1014274   1.3095190   3.372228
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6844704   1.0155742   2.793927
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0276751   0.7755270   1.361804
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2537215   0.9306160   1.689007
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2732926   1.0103155   1.604721
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1008306   0.8566660   1.414586
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.3840280   0.7687809   2.491651
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.2041281   0.6916064   2.096459
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.5417125   1.1243706   2.113962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1810048   0.8824927   1.580492
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8978371   0.5967450   1.350847
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8539522   0.5540706   1.316140
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.6514231   1.2035869   2.265892
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1687053   0.8099768   1.686310
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4633980   1.2465798   1.717928
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2940432   1.1041276   1.516625
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.3915399   0.7429188   2.606453
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.4727545   0.7835065   2.768331
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1561675   1.0478253   1.275712
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0912973   0.9858422   1.208033
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2275163   1.0439407   1.443374
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1432854   0.9723843   1.344223


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0831024   -0.0122868   0.1784916
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0732007   -0.2023763   0.0559749
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0569432   -0.0507096   0.1645960
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0372093   -0.0540031   0.1284218
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0103802   -0.0406670   0.0199065
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0332683   -0.0475397   0.1140763
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0090436   -0.0328546   0.0509418
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0135753   -0.0264496   0.0536003
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0222075   -0.0122052   0.0566203
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0163428   -0.0764698   0.0437843
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0006130   -0.0162061   0.0174320
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0221529    0.0046830   0.0396228
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0286210   -0.0717738   0.0145318
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0043221   -0.0208168   0.0294610
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0381352    0.0166674   0.0596030
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0170459   -0.0094458   0.0435377
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0070459   -0.0026390   0.0167309
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0352977    0.0084661   0.0621293
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0578231   -0.0271469   0.1427932
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0082565   -0.1228481   0.1063350
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0003606   -0.0124231   0.0131443
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0297182   -0.0310498   0.0904862
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0076710   -0.0399430   0.0552849
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0075085   -0.0301403   0.0451574
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0206283   -0.0068353   0.0480919
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0304056   -0.0871840   0.0263728
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0032388   -0.0203368   0.0138592
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0117623    0.0011516   0.0223730
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0422456   -0.0960878   0.0115966
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0073010   -0.0278726   0.0132706
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0029951   -0.0114920   0.0174821
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0057051   -0.0018115   0.0132216
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0092080   -0.0049629   0.0233790
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0658397   -0.0173452   0.1490246
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0288576   -0.0812767   0.1389918
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0269816   -0.0576691   0.0037058
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0157584   -0.0623716   0.0938883
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0446157    0.0078287   0.0814028
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0470535    0.0181511   0.0759560
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0123827   -0.0204297   0.0451952
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0591501   -0.0130887   0.1313889
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0019937   -0.0021307   0.0061182
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0165426   -0.0050309   0.0381162
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0146264   -0.0585125   0.0292598
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0285044    0.0071926   0.0498161
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0516644    0.0293705   0.0739583
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0174897   -0.0084715   0.0434510
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0114741    0.0004700   0.0224782
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0303251    0.0044375   0.0562128


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2599161   -0.1044494   0.5040749
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1559493   -0.4686858   0.0901943
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1743884   -0.2283383   0.4450760
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1860465   -0.4198366   0.5333827
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0250386   -0.1031881   0.0475748
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0705896   -0.1178745   0.2272803
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0257338   -0.1011043   0.1379612
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0411604   -0.0880775   0.1550479
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0938308   -0.0637586   0.2280743
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0276694   -0.1347231   0.0692844
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0023976   -0.0655866   0.0660444
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0947575    0.0169107   0.1664399
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1100258   -0.2893561   0.0443624
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0128420   -0.0647120   0.0847470
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0950232    0.0399359   0.1469497
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2132054   -0.1942517   0.4816455
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0273804   -0.0109693   0.0642752
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1138545    0.0220613   0.1970317
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2575758   -0.2285454   0.5513444
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0282259   -0.5047777   0.2974056
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0016414   -0.0581359   0.0580418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1592591   -0.2371087   0.4286312
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0296667   -0.1729462   0.1972805
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0291870   -0.1287737   0.1650427
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1476194   -0.0728327   0.3227717
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0806102   -0.2419981   0.0598066
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0130190   -0.0842732   0.0535527
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0655363    0.0045732   0.1227658
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2105943   -0.5112717   0.0302614
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0296434   -0.1166973   0.0506241
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0130699   -0.0522079   0.0742979
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0324595   -0.0113415   0.0743635
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0853210   -0.0571285   0.2085753
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3450000   -0.2511462   0.6570944
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1013715   -0.3817356   0.4155660
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0884080   -0.1991589   0.0121143
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0442998   -0.2026407   0.2405355
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2771584    0.0162856   0.4688499
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3578030    0.1088466   0.5372099
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0772575   -0.1518342   0.2607846
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1253217   -0.0424021   0.2660585
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1948379   -0.2849594   0.4954813
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1748125   -0.0875915   0.3739062
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1134803   -0.5116912   0.1798336
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2153153    0.0399000   0.3586812
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1937414    0.1062026   0.2727067
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2262383   -0.1883115   0.4961698
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0698201    0.0006365   0.1342143
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1229089    0.0104824   0.2225618
