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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/c3eb8a92-25b9-406f-a8d6-b0d9c138c9a1/e9dde352-4123-4e2f-9db5-941c56c4e13f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c3eb8a92-25b9-406f-a8d6-b0d9c138c9a1/e9dde352-4123-4e2f-9db5-941c56c4e13f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c3eb8a92-25b9-406f-a8d6-b0d9c138c9a1/e9dde352-4123-4e2f-9db5-941c56c4e13f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c3eb8a92-25b9-406f-a8d6-b0d9c138c9a1/e9dde352-4123-4e2f-9db5-941c56c4e13f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2407407   0.1263204   0.3551611
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4102564   0.2553543   0.5651585
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3333333   0.2071717   0.4594949
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5000000   0.3517571   0.6482429
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5084746   0.3804740   0.6364752
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3863636   0.2420001   0.5307272
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2619048   0.1282518   0.3955577
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.3928571   0.2110299   0.5746844
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3571429   0.1787512   0.5355345
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1627907   0.0519425   0.2736389
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2162162   0.0829646   0.3494679
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2333333   0.0812918   0.3853749
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3911917   0.3550083   0.4273751
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4525661   0.3744447   0.5306875
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3825364   0.3114525   0.4536203
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.4363636   0.3435748   0.5291525
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4625850   0.3818875   0.5432826
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5031056   0.4257811   0.5804300
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2887931   0.2304344   0.3471518
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4285714   0.3656552   0.4914876
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3347826   0.2737506   0.3958146
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3175676   0.2644991   0.3706361
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3719008   0.3109675   0.4328341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3000000   0.2394055   0.3605945
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2093541   0.1717143   0.2469940
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2393701   0.2158976   0.2628426
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2500000   0.2170576   0.2829424
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.6153846   0.5419824   0.6887868
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6061644   0.5500819   0.6622468
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5515695   0.4862473   0.6168917
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2355982   0.1795897   0.2916067
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2583359   0.1950426   0.3216292
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2608151   0.2007990   0.3208313
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2106855   0.1853079   0.2360631
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2469352   0.2292494   0.2646210
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2330937   0.2249250   0.2412623
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2900433   0.2315016   0.3485850
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2491039   0.2132045   0.2850033
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2584270   0.2177367   0.2991172
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3192240   0.2808394   0.3576085
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3538136   0.3106623   0.3969648
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3406863   0.2946827   0.3866898
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3774319   0.3477945   0.4070693
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4188862   0.3852341   0.4525383
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.4112426   0.3809510   0.4415342
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0637450   0.0335038   0.0939862
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0824742   0.0508487   0.1140997
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0922509   0.0577763   0.1267255
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2422418   0.2298117   0.2546719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2668046   0.2574263   0.2761828
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2570009   0.2465162   0.2674856
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2686447   0.2347605   0.3025290
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3331627   0.3088387   0.3574867
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3131021   0.2908487   0.3353556
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1666667   0.0669272   0.2664062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3076923   0.1623454   0.4530393
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2222222   0.1109581   0.3334863
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.3181818   0.1800875   0.4562762
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3050847   0.1871938   0.4229757
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2500000   0.1216179   0.3783821
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1974026   0.1644818   0.2303234
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2328125   0.1777545   0.2878705
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2201258   0.1638145   0.2764371
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1545455   0.0869146   0.2221763
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1768707   0.1151158   0.2386257
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2173913   0.1536019   0.2811807
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2241379   0.1704391   0.2778367
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2983193   0.2401518   0.3564868
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2521739   0.1960116   0.3083362
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2601351   0.2101242   0.3101460
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2892562   0.2320919   0.3464205
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2181818   0.1635701   0.2727935
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1202673   0.0901743   0.1503602
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1433071   0.1240326   0.1625816
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1460843   0.1192145   0.1729541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4437870   0.3688269   0.5187471
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3219178   0.2682902   0.3755454
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3991031   0.3347817   0.4634246
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2307976   0.1737983   0.2877970
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2505453   0.1863405   0.3147501
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2539660   0.1933465   0.3145856
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1725888   0.1489888   0.1961889
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1789335   0.1631616   0.1947053
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1802621   0.1728106   0.1877136
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2315789   0.1715669   0.2915910
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1986456   0.1614736   0.2358176
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1868132   0.1467529   0.2268735
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2477558   0.2118913   0.2836204
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2205240   0.1825403   0.2585078
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2736318   0.2300355   0.3172282
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2529183   0.2263416   0.2794950
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2142857   0.1862983   0.2422731
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2171767   0.1917812   0.2425723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1714729   0.1602301   0.1827156
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1797000   0.1714109   0.1879892
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1741592   0.1651592   0.1831592
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1012766   0.0769919   0.1255613
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1125068   0.0969073   0.1281063
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1076210   0.0918681   0.1233739
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1250000   0.0310816   0.2189184
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2432432   0.1044687   0.3820178
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2173913   0.0977375   0.3370451
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.2558140   0.1249236   0.3867043
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3703704   0.2410989   0.4996419
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2891892   0.2489867   0.3293917
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3426573   0.2855335   0.3997811
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2702703   0.2128666   0.3276739
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3364486   0.2468103   0.4260869
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3642857   0.2844721   0.4440993
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3612903   0.2855716   0.4370090
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1074766   0.0659467   0.1490066
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2403846   0.1822654   0.2985039
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1347150   0.0865080   0.1829221
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0804196   0.0488813   0.1119579
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1790393   0.1293499   0.2287287
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1488372   0.1012283   0.1964462
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1440000   0.1084566   0.1795434
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1548507   0.1331896   0.1765119
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1814947   0.1496211   0.2133682
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4068966   0.3268689   0.4869242
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5335968   0.4720729   0.5951208
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4397906   0.3693377   0.5102434
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0083460   0.0048560   0.0118360
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0113906   0.0071370   0.0156442
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0099010   0.0066493   0.0131527
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0711297   0.0523144   0.0899451
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1174848   0.1026623   0.1323073
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0915475   0.0852175   0.0978775
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1380952   0.0914131   0.1847774
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1291585   0.1000673   0.1582497
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1237624   0.0916364   0.1558883
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1001822   0.0750581   0.1253062
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1830065   0.1476199   0.2183931
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1183879   0.0865972   0.1501786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2036836   0.1776970   0.2296703
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3239075   0.2910182   0.3567967
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2809224   0.2523967   0.3094482
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0607287   0.0309255   0.0905320
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0830450   0.0512103   0.1148797
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0864662   0.0526703   0.1202620
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1355044   0.1250848   0.1459241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1821121   0.1720556   0.1921685
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1662878   0.1559323   0.1766433
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2088353   0.1783437   0.2393270
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2703533   0.2469011   0.2938055
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2472289   0.2271990   0.2672589


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.7041420   0.9287226   3.1269833
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3846154   0.7541594   2.5421150
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0169492   0.6892628   1.5004227
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7727273   0.4795940   1.2450269
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.5000000   0.7531655   2.9873912
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.3636364   0.6676922   2.7849720
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.3281853   0.5301512   3.3274963
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.4333333   0.5585186   3.6783812
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1568908   0.9848916   1.3589276
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9778745   0.8552862   1.1180334
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0600907   0.8051807   1.3957020
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1529503   0.8868795   1.4988444
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.4840085   1.1560081   1.9050742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1592472   0.8830377   1.5218536
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.1710920   0.9267297   1.4798882
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9446809   0.7268340   1.2278208
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1433741   0.9316394   1.4032300
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1941489   0.9555445   1.4923341
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9850171   0.8470029   1.1455199
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.8963004   0.7576257   1.0603581
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.0965105   0.9348485   1.2861285
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1070335   0.9894355   1.2386085
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1720561   1.0187970   1.3483702
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1063584   0.9759216   1.2542288
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8588509   0.6702082   1.1005906
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8909945   0.6897641   1.1509313
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.1083552   0.9338951   1.3154059
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.0672327   0.8907063   1.2787444
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1098325   0.9919031   1.2417828
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0895809   0.9783663   1.2134377
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.2938144   0.7029928   2.3811848
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.4471863   0.7911260   2.6473004
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1013978   1.0376775   1.1690308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0609272   0.9962605   1.1297915
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2401610   1.0722817   1.4343240
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1654876   1.0063468   1.3497945
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.8461538   0.8613068   3.9571080
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3333333   0.6110452   2.9094047
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              0.9588378   0.5362574   1.7144191
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.7857143   0.4011063   1.5391105
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1793791   0.9791045   1.4206197
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1151109   0.9198225   1.3518611
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1444578   0.6538346   2.0032338
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4066496   0.8305456   2.3823656
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3309632   0.9772688   1.8126670
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1250836   0.8111926   1.5604348
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.1119459   0.8440042   1.4649497
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.8387249   0.6117168   1.1499758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1915719   0.8969084   1.5830419
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2146642   0.8904033   1.6570123
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.7253881   0.5721884   0.9196061
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.8993124   0.7120640   1.1358007
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0855629   0.9184621   1.2830651
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.1003841   0.9789852   1.2368370
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0367615   0.8810979   1.2199261
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0444600   0.9054230   1.2048475
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8577878   0.6231042   1.1808617
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8066933   0.5762727   1.1292467
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.8900861   0.7107522   1.1146687
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.1044416   0.8905416   1.3697184
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8472527   0.7164924   1.0018770
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.8586833   0.7337644   1.0048688
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0479794   0.9703457   1.1318242
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0156663   0.9376044   1.1002273
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1108867   0.8371002   1.4742193
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0626444   0.8006286   1.4104082
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.9459459   0.7575571   4.9985748
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.7391304   0.6852334   4.4139335
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4478114   0.7793310   2.6896889
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7818182   0.3493801   1.7494977
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1848899   1.0009621   1.4026145
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9345794   0.7622741   1.1458328
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0827381   0.7668611   1.5287276
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.0738351   0.7651063   1.5071395
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.2366221   1.4178638   3.5281798
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2534355   0.7402509   2.1223891
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.2263148   1.3769991   3.5994778
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.8507583   1.1157368   3.0699951
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0753524   0.8097231   1.4281214
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2603796   0.9309814   1.7063249
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3113821   1.0440402   1.6471807
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0808412   0.8386818   1.3929213
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.3648013   0.7550068   2.4671071
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1863186   0.6821912   2.0629875
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.6516985   1.2321187   2.2141600
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2870506   0.9791640   1.6917484
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9352858   0.6230612   1.4039705
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8962103   0.5852077   1.3724921
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.8267379   1.3309055   2.5072941
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1817266   0.8183643   1.7064254
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5902478   1.3509832   1.8718871
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3792096   1.1716943   1.6234774
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.3674740   0.7336171   2.5489937
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.4238095   0.7602936   2.6663824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3439565   1.2232901   1.4765254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2271761   1.1133012   1.3526989
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2945764   1.0942585   1.5315649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1838462   1.0008076   1.4003608


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0789872   -0.0169095    0.1748838
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0306122   -0.1546020    0.0933776
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0646259   -0.0414912    0.1707429
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0372093   -0.0540031    0.1284218
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0233778   -0.0177992    0.0645548
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0349282   -0.0449075    0.1147640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0626355    0.0136372    0.1116337
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0122477   -0.0294467    0.0539422
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0273223   -0.0069446    0.0615893
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0247413   -0.0886580    0.0391753
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0200561   -0.0039368    0.0440489
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0230999   -0.0014066    0.0476064
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0299136   -0.0822936    0.0224664
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0173344   -0.0128631    0.0475319
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0238931    0.0000055    0.0477806
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0162058   -0.0102108    0.0426223
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0150936    0.0048236    0.0253637
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0413799    0.0123428    0.0704170
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0578231   -0.0271469    0.1427932
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0256648   -0.1401162    0.0887866
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0223045   -0.0050858    0.0496947
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0320574   -0.0276489    0.0917637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0344335   -0.0105749    0.0794419
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0028792   -0.0418325    0.0360741
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0194726   -0.0080628    0.0470079
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0665940   -0.1311203   -0.0020677
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0179763   -0.0066454    0.0425980
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0068888   -0.0158605    0.0296381
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0309771   -0.0843370    0.0223827
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0014608   -0.0293651    0.0264434
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0237589   -0.0446531   -0.0028647
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0042863   -0.0048964    0.0134691
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0066458   -0.0140811    0.0273727
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0658397   -0.0173452    0.1490246
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0288576   -0.0812767    0.1389918
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0160056   -0.0182741    0.0502853
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0192728   -0.0578841    0.0964297
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0534990    0.0164930    0.0905050
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0510873    0.0225018    0.0796727
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0162787   -0.0161124    0.0486699
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0650899   -0.0047621    0.1349418
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0018868   -0.0022908    0.0060643
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0235009    0.0051427    0.0418591
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0092063   -0.0510318    0.0326191
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0322022    0.0109375    0.0534669
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0629830    0.0408737    0.0850924
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0165780   -0.0095602    0.0427162
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0288338    0.0195432    0.0381243
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0378933    0.0117906    0.0639960


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2470449   -0.1189307    0.4933186
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0652174   -0.3652769    0.1688953
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1979167   -0.2011331    0.4643910
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1860465   -0.4198366    0.5333827
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0563906   -0.0418538    0.1453708
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0741117   -0.1119031    0.2290073
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1782310    0.0264289    0.3063637
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0371351   -0.0979534    0.1556028
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1154417   -0.0417379    0.2489057
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0418888   -0.1559940    0.0609534
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0784500   -0.0168060    0.1647822
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0988081   -0.0123348    0.1977488
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1149951   -0.3356090    0.0691782
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0515049   -0.0425973    0.1371137
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0595354   -0.0019267    0.1172273
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2026969   -0.2022753    0.4712590
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0586535    0.0177912    0.0978157
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1334729    0.0335917    0.2230311
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2575758   -0.2285454    0.5513444
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0877378   -0.5585357    0.2408428
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1015191   -0.0173762    0.2065197
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1717949   -0.2170762    0.4364168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1331682   -0.0592168    0.2906105
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0111920   -0.1745329    0.1294334
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1393487   -0.0816372    0.3151857
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1765515   -0.3610989   -0.0170264
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0722595   -0.0287721    0.1633691
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0383827   -0.0970984    0.1571332
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1544211   -0.4531960    0.0829262
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0059313   -0.1258536    0.1012173
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1036784   -0.1986289   -0.0162496
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0243876   -0.0293619    0.0753305
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0615794   -0.1526473    0.2359908
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3450000   -0.2511462    0.6570944
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1013715   -0.3817356    0.4155660
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0524439   -0.0633361    0.1556174
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0541795   -0.1896159    0.2480123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3323421    0.0662098    0.5226261
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3884761    0.1417210    0.5642892
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1015652   -0.1248504    0.2824067
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1379062   -0.0238534    0.2741093
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1843841   -0.3056393    0.4904954
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2483436    0.0276175    0.4189660
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0714286   -0.4502719    0.2084525
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2432477    0.0674593    0.3858992
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2361863    0.1492748    0.3142189
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2144443   -0.2028818    0.4869839
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1754537    0.1175413    0.2295656
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1535828    0.0397185    0.2539458
