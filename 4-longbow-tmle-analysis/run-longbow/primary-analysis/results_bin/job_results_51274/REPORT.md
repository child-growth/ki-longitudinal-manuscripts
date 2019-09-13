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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      158     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1        6     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20              0       34     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20              1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             0       41     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             1        2     241
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      110     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <20              0       34     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <20              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             0       39     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)          0      158     202
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)          1        5     202
Birth       ki0047075b-MAL-ED          INDIA                          <20              0       22     202
Birth       ki0047075b-MAL-ED          INDIA                          <20              1        2     202
Birth       ki0047075b-MAL-ED          INDIA                          >=30             0       15     202
Birth       ki0047075b-MAL-ED          INDIA                          >=30             1        0     202
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)          0      125     168
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)          1        4     168
Birth       ki0047075b-MAL-ED          NEPAL                          <20              0        4     168
Birth       ki0047075b-MAL-ED          NEPAL                          <20              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             0       35     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             1        0     168
Birth       ki0047075b-MAL-ED          PERU                           [20-30)          0      142     279
Birth       ki0047075b-MAL-ED          PERU                           [20-30)          1        0     279
Birth       ki0047075b-MAL-ED          PERU                           <20              0       73     279
Birth       ki0047075b-MAL-ED          PERU                           <20              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           >=30             0       64     279
Birth       ki0047075b-MAL-ED          PERU                           >=30             1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0      132     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       39     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       85     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        1     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0       70     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       39     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        0     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0       72      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20              0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        1      88
Birth       ki1000108-IRC              INDIA                          [20-30)          0      242     343
Birth       ki1000108-IRC              INDIA                          [20-30)          1       47     343
Birth       ki1000108-IRC              INDIA                          <20              0       26     343
Birth       ki1000108-IRC              INDIA                          <20              1        2     343
Birth       ki1000108-IRC              INDIA                          >=30             0       21     343
Birth       ki1000108-IRC              INDIA                          >=30             1        5     343
Birth       ki1000109-EE               PAKISTAN                       [20-30)          0        0       1
Birth       ki1000109-EE               PAKISTAN                       [20-30)          1        0       1
Birth       ki1000109-EE               PAKISTAN                       <20              0        0       1
Birth       ki1000109-EE               PAKISTAN                       <20              1        0       1
Birth       ki1000109-EE               PAKISTAN                       >=30             0        1       1
Birth       ki1000109-EE               PAKISTAN                       >=30             1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0      117     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20              0       21     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20              1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             0       23     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0       14      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20              0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0       18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20              0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20              1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        0      23
Birth       ki1101329-Keneba           GAMBIA                         [20-30)          0      656    1423
Birth       ki1101329-Keneba           GAMBIA                         [20-30)          1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         <20              0      220    1423
Birth       ki1101329-Keneba           GAMBIA                         <20              1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30             0      536    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30             1        7    1423
Birth       ki1119695-PROBIT           BELARUS                        [20-30)          0     9203   13824
Birth       ki1119695-PROBIT           BELARUS                        [20-30)          1      694   13824
Birth       ki1119695-PROBIT           BELARUS                        <20              0     1321   13824
Birth       ki1119695-PROBIT           BELARUS                        <20              1       79   13824
Birth       ki1119695-PROBIT           BELARUS                        >=30             0     2389   13824
Birth       ki1119695-PROBIT           BELARUS                        >=30             1      138   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     8145   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      534   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1892   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20              1      138   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2057   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      114   12880
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)          0      339     756
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)          1       28     756
Birth       ki1135781-COHORTS          GUATEMALA                      <20              0       91     756
Birth       ki1135781-COHORTS          GUATEMALA                      <20              1       10     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30             0      266     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30             1       22     756
Birth       ki1135781-COHORTS          INDIA                          [20-30)          0     2832    4405
Birth       ki1135781-COHORTS          INDIA                          [20-30)          1      133    4405
Birth       ki1135781-COHORTS          INDIA                          <20              0      317    4405
Birth       ki1135781-COHORTS          INDIA                          <20              1       20    4405
Birth       ki1135781-COHORTS          INDIA                          >=30             0     1045    4405
Birth       ki1135781-COHORTS          INDIA                          >=30             1       58    4405
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1668    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)          1       76    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <20              0      334    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <20              1       20    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30             0      776    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30             1       25    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     7825   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1      119   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20              0     6142   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20              1      103   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1481   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             1       32   15702
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      164     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              0       34     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      125     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20              0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             0       47     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          0      174     234
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          1        5     234
6 months    ki0047075b-MAL-ED          INDIA                          <20              0       34     234
6 months    ki0047075b-MAL-ED          INDIA                          <20              1        0     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30             0       21     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30             1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)          0      185     236
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)          1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20              0        5     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30             0       46     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30             1        0     236
6 months    ki0047075b-MAL-ED          PERU                           [20-30)          0      136     273
6 months    ki0047075b-MAL-ED          PERU                           [20-30)          1        0     273
6 months    ki0047075b-MAL-ED          PERU                           <20              0       76     273
6 months    ki0047075b-MAL-ED          PERU                           <20              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           >=30             0       61     273
6 months    ki0047075b-MAL-ED          PERU                           >=30             1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0      116     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       42     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       93     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0      128     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0       15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0      104     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0      283     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1        9     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       31     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       42     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        1     368
6 months    ki1000108-IRC              INDIA                          [20-30)          0      325     408
6 months    ki1000108-IRC              INDIA                          [20-30)          1       17     408
6 months    ki1000108-IRC              INDIA                          <20              0       36     408
6 months    ki1000108-IRC              INDIA                          <20              1        1     408
6 months    ki1000108-IRC              INDIA                          >=30             0       25     408
6 months    ki1000108-IRC              INDIA                          >=30             1        4     408
6 months    ki1000109-EE               PAKISTAN                       [20-30)          0      159     373
6 months    ki1000109-EE               PAKISTAN                       [20-30)          1        1     373
6 months    ki1000109-EE               PAKISTAN                       <20              0        1     373
6 months    ki1000109-EE               PAKISTAN                       <20              1        0     373
6 months    ki1000109-EE               PAKISTAN                       >=30             0      204     373
6 months    ki1000109-EE               PAKISTAN                       >=30             1        8     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0      980    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1       35    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20              0      168    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20              1        3    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             0      143    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             1        5    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          0      248     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)          1       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20              0       36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20              1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       77     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1        7     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      353     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1        3     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              0       61     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              1        0     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             0      115     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             1        2     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      405     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1        4     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              0       65     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              1        0     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             0      107     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             1        1     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      462     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      131     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0      122     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1308    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1        9    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      144    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        2    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      547    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        1    2011
6 months    ki1101329-Keneba           GAMBIA                         [20-30)          0      972    2080
6 months    ki1101329-Keneba           GAMBIA                         [20-30)          1       15    2080
6 months    ki1101329-Keneba           GAMBIA                         <20              0      283    2080
6 months    ki1101329-Keneba           GAMBIA                         <20              1        5    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30             0      791    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30             1       14    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          0      171     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)          1        0     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              0       46     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20              1        0     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       59     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             1        0     276
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      364     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          1        6     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20              0      108     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0       84     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1        1     563
6 months    ki1119695-PROBIT           BELARUS                        [20-30)          0    11300   15757
6 months    ki1119695-PROBIT           BELARUS                        [20-30)          1       13   15757
6 months    ki1119695-PROBIT           BELARUS                        <20              0     1619   15757
6 months    ki1119695-PROBIT           BELARUS                        <20              1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30             0     2822   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30             1        2   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     5414    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1       49    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1243    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       12    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     1513    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       18    8249
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)          0      467     963
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)          1        4     963
6 months    ki1135781-COHORTS          GUATEMALA                      <20              0      118     963
6 months    ki1135781-COHORTS          GUATEMALA                      <20              1        0     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30             0      372     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30             1        2     963
6 months    ki1135781-COHORTS          INDIA                          [20-30)          0     3229    4897
6 months    ki1135781-COHORTS          INDIA                          [20-30)          1       97    4897
6 months    ki1135781-COHORTS          INDIA                          <20              0      358    4897
6 months    ki1135781-COHORTS          INDIA                          <20              1       13    4897
6 months    ki1135781-COHORTS          INDIA                          >=30             0     1158    4897
6 months    ki1135781-COHORTS          INDIA                          >=30             1       42    4897
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1585    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)          1       15    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <20              0      326    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <20              1        5    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             0      760    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             1       15    2706
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)          0      364     669
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)          1        0     669
6 months    ki1148112-LCNI-5           MALAWI                         <20              0      107     669
6 months    ki1148112-LCNI-5           MALAWI                         <20              1        0     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30             0      198     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30             1        0     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     7560   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1       96   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              0     7792   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20              1      112   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1197   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             1       22   16779
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      146     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              0       29     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             0       37     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          0      102     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20              0       27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       39     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          0      170     225
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)          1        2     225
24 months   ki0047075b-MAL-ED          INDIA                          <20              0       33     225
24 months   ki0047075b-MAL-ED          INDIA                          <20              1        0     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       20     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          0      179     228
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)          1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20              0        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30             0       45     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30             1        0     228
24 months   ki0047075b-MAL-ED          PERU                           [20-30)          0       98     201
24 months   ki0047075b-MAL-ED          PERU                           [20-30)          1        0     201
24 months   ki0047075b-MAL-ED          PERU                           <20              0       54     201
24 months   ki0047075b-MAL-ED          PERU                           <20              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           >=30             0       48     201
24 months   ki0047075b-MAL-ED          PERU                           >=30             1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0      106     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       39     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       93     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0      113     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       92     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0      293     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1        3     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              0       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       42     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        0     372
24 months   ki1000108-IRC              INDIA                          [20-30)          0      341     409
24 months   ki1000108-IRC              INDIA                          [20-30)          1        2     409
24 months   ki1000108-IRC              INDIA                          <20              0       36     409
24 months   ki1000108-IRC              INDIA                          <20              1        1     409
24 months   ki1000108-IRC              INDIA                          >=30             0       27     409
24 months   ki1000108-IRC              INDIA                          >=30             1        2     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      280     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1        8     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              0       44     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              1        0     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       92     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1        2     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      402     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1        6     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              0       64     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              1        0     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0      103     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1        3     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      332     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      100     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20              1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0       78     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        1     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        0       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)          0      776    1715
24 months   ki1101329-Keneba           GAMBIA                         [20-30)          1       15    1715
24 months   ki1101329-Keneba           GAMBIA                         <20              0      214    1715
24 months   ki1101329-Keneba           GAMBIA                         <20              1        3    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30             0      696    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30             1       11    1715
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      313     498
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          1        9     498
24 months   ki1113344-GMS-Nepal        NEPAL                          <20              0       95     498
24 months   ki1113344-GMS-Nepal        NEPAL                          <20              1        3     498
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       75     498
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1        3     498
24 months   ki1119695-PROBIT           BELARUS                        [20-30)          0     2843    3971
24 months   ki1119695-PROBIT           BELARUS                        [20-30)          1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        <20              0      364    3971
24 months   ki1119695-PROBIT           BELARUS                        <20              1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30             0      760    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30             1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0      249     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1       22     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0       67     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1        2     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0       76     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1        6     422
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          0      530    1076
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)          1        2    1076
24 months   ki1135781-COHORTS          GUATEMALA                      <20              0      154    1076
24 months   ki1135781-COHORTS          GUATEMALA                      <20              1        0    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             0      388    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             1        2    1076
24 months   ki1135781-COHORTS          INDIA                          [20-30)          0     2418    3665
24 months   ki1135781-COHORTS          INDIA                          [20-30)          1       28    3665
24 months   ki1135781-COHORTS          INDIA                          <20              0      245    3665
24 months   ki1135781-COHORTS          INDIA                          <20              1        1    3665
24 months   ki1135781-COHORTS          INDIA                          >=30             0      961    3665
24 months   ki1135781-COHORTS          INDIA                          >=30             1       12    3665
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          0     1446    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)          1       15    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <20              0      290    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <20              1        3    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             0      688    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             1        7    2449
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          0      241     461
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)          1        0     461
24 months   ki1148112-LCNI-5           MALAWI                         <20              0       77     461
24 months   ki1148112-LCNI-5           MALAWI                         <20              1        1     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30             0      142     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30             1        0     461
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     3888    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1      153    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              0     3697    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20              1      148    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0      678    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1       34    8598


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/37434a3a-3b34-47cf-89d7-56c5e60e6855/b8ec621b-4d59-452c-afb2-65294a5aedd7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/37434a3a-3b34-47cf-89d7-56c5e60e6855/b8ec621b-4d59-452c-afb2-65294a5aedd7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/37434a3a-3b34-47cf-89d7-56c5e60e6855/b8ec621b-4d59-452c-afb2-65294a5aedd7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/37434a3a-3b34-47cf-89d7-56c5e60e6855/b8ec621b-4d59-452c-afb2-65294a5aedd7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS       [20-30)              NA                0.0702353   0.0350863   0.1053842
Birth       ki1119695-PROBIT     BELARUS       <20                  NA                0.0567261   0.0283811   0.0850711
Birth       ki1119695-PROBIT     BELARUS       >=30                 NA                0.0537544   0.0236492   0.0838595
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [20-30)              NA                0.0615306   0.0564599   0.0666012
Birth       ki1126311-ZVITAMBO   ZIMBABWE      <20                  NA                0.0676050   0.0565435   0.0786665
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=30                 NA                0.0530248   0.0434627   0.0625868
Birth       ki1135781-COHORTS    GUATEMALA     [20-30)              NA                0.0746339   0.0479206   0.1013473
Birth       ki1135781-COHORTS    GUATEMALA     <20                  NA                0.1023582   0.0424129   0.1623035
Birth       ki1135781-COHORTS    GUATEMALA     >=30                 NA                0.0744442   0.0442431   0.1046453
Birth       ki1135781-COHORTS    INDIA         [20-30)              NA                0.0445862   0.0371498   0.0520225
Birth       ki1135781-COHORTS    INDIA         <20                  NA                0.0574034   0.0333989   0.0814080
Birth       ki1135781-COHORTS    INDIA         >=30                 NA                0.0531017   0.0397236   0.0664799
Birth       ki1135781-COHORTS    PHILIPPINES   [20-30)              NA                0.0436378   0.0339824   0.0532932
Birth       ki1135781-COHORTS    PHILIPPINES   <20                  NA                0.0532616   0.0298779   0.0766452
Birth       ki1135781-COHORTS    PHILIPPINES   >=30                 NA                0.0319489   0.0194940   0.0444039
Birth       kiGH5241-JiVitA-3    BANGLADESH    [20-30)              NA                0.0149777   0.0120211   0.0179344
Birth       kiGH5241-JiVitA-3    BANGLADESH    <20                  NA                0.0164763   0.0127330   0.0202196
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=30                 NA                0.0212434   0.0126972   0.0297895
6 months    ki1101329-Keneba     GAMBIA        [20-30)              NA                0.0151976   0.0075635   0.0228316
6 months    ki1101329-Keneba     GAMBIA        <20                  NA                0.0173611   0.0022728   0.0324495
6 months    ki1101329-Keneba     GAMBIA        >=30                 NA                0.0173913   0.0083587   0.0264239
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [20-30)              NA                0.0089440   0.0064481   0.0114398
6 months    ki1126311-ZVITAMBO   ZIMBABWE      <20                  NA                0.0096552   0.0042477   0.0150627
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=30                 NA                0.0118115   0.0064086   0.0172144
6 months    ki1135781-COHORTS    INDIA         [20-30)              NA                0.0290680   0.0233532   0.0347829
6 months    ki1135781-COHORTS    INDIA         <20                  NA                0.0381555   0.0175473   0.0587636
6 months    ki1135781-COHORTS    INDIA         >=30                 NA                0.0346868   0.0242371   0.0451365
6 months    ki1135781-COHORTS    PHILIPPINES   [20-30)              NA                0.0093750   0.0046521   0.0140979
6 months    ki1135781-COHORTS    PHILIPPINES   <20                  NA                0.0151057   0.0019632   0.0282483
6 months    ki1135781-COHORTS    PHILIPPINES   >=30                 NA                0.0193548   0.0096536   0.0290561
6 months    kiGH5241-JiVitA-3    BANGLADESH    [20-30)              NA                0.0125438   0.0098419   0.0152456
6 months    kiGH5241-JiVitA-3    BANGLADESH    <20                  NA                0.0141226   0.0109334   0.0173119
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=30                 NA                0.0179738   0.0109035   0.0250442
24 months   kiGH5241-JiVitA-3    BANGLADESH    [20-30)              NA                0.0379964   0.0320282   0.0439647
24 months   kiGH5241-JiVitA-3    BANGLADESH    <20                  NA                0.0383165   0.0315866   0.0450465
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=30                 NA                0.0480162   0.0321193   0.0639132


### Parameter: E(Y)


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS       NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0610248   0.0568907   0.0651590
Birth       ki1135781-COHORTS    GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS    INDIA         NA                   NA                0.0479001   0.0415930   0.0542073
Birth       ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0161763   0.0138129   0.0185396
6 months    ki1101329-Keneba     GAMBIA        NA                   NA                0.0163462   0.0108955   0.0217968
6 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0095769   0.0074751   0.0116787
6 months    ki1135781-COHORTS    INDIA         NA                   NA                0.0310394   0.0261816   0.0358972
6 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0137076   0.0116310   0.0157842
24 months   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0389625   0.0346386   0.0432864


### Parameter: RR


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT     BELARUS       <20                  [20-30)           0.8076588   0.6395905   1.0198912
Birth       ki1119695-PROBIT     BELARUS       >=30                 [20-30)           0.7653474   0.6364127   0.9204036
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE      <20                  [20-30)           1.0987217   0.9148013   1.3196192
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=30                 [20-30)           0.8617629   0.7067746   1.0507385
Birth       ki1135781-COHORTS    GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS    GUATEMALA     <20                  [20-30)           1.3714695   0.6907458   2.7230401
Birth       ki1135781-COHORTS    GUATEMALA     >=30                 [20-30)           0.9974577   0.5804409   1.7140795
Birth       ki1135781-COHORTS    INDIA         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS    INDIA         <20                  [20-30)           1.2874720   0.8208163   2.0194339
Birth       ki1135781-COHORTS    INDIA         >=30                 [20-30)           1.1909910   0.8804268   1.6111044
Birth       ki1135781-COHORTS    PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS    PHILIPPINES   <20                  [20-30)           1.2205378   0.7464866   1.9956320
Birth       ki1135781-COHORTS    PHILIPPINES   >=30                 [20-30)           0.7321386   0.4676153   1.1462989
Birth       kiGH5241-JiVitA-3    BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3    BANGLADESH    <20                  [20-30)           1.1000516   0.8271882   1.4629242
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=30                 [20-30)           1.4183281   0.9054760   2.2216541
6 months    ki1101329-Keneba     GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba     GAMBIA        <20                  [20-30)           1.1423611   0.4186513   3.1171262
6 months    ki1101329-Keneba     GAMBIA        >=30                 [20-30)           1.1443478   0.5555970   2.3569817
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE      <20                  [20-30)           1.0795192   0.5773501   2.0184661
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=30                 [20-30)           1.3206100   0.7727172   2.2569847
6 months    ki1135781-COHORTS    INDIA         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS    INDIA         <20                  [20-30)           1.3126264   0.7387837   2.3321955
6 months    ki1135781-COHORTS    INDIA         >=30                 [20-30)           1.1932954   0.8327651   1.7099107
6 months    ki1135781-COHORTS    PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS    PHILIPPINES   <20                  [20-30)           1.6112790   0.5895856   4.4034656
6 months    ki1135781-COHORTS    PHILIPPINES   >=30                 [20-30)           2.0645161   1.0143478   4.2019384
6 months    kiGH5241-JiVitA-3    BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH    <20                  [20-30)           1.1258669   0.8305435   1.5262010
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=30                 [20-30)           1.4328867   0.9254272   2.2186126
24 months   kiGH5241-JiVitA-3    BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH    <20                  [20-30)           1.0084251   0.7971699   1.2756644
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=30                 [20-30)           1.2637039   0.8808013   1.8130622


### Parameter: PAR


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT     BELARUS       [20-30)              NA                -0.0043354   -0.0074765   -0.0011942
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [20-30)              NA                -0.0005057   -0.0033836    0.0023722
Birth       ki1135781-COHORTS    GUATEMALA     [20-30)              NA                 0.0047311   -0.0148320    0.0242942
Birth       ki1135781-COHORTS    INDIA         [20-30)              NA                 0.0033139   -0.0012252    0.0078531
Birth       ki1135781-COHORTS    PHILIPPINES   [20-30)              NA                -0.0018993   -0.0078336    0.0040351
Birth       kiGH5241-JiVitA-3    BANGLADESH    [20-30)              NA                 0.0011985   -0.0009362    0.0033333
6 months    ki1101329-Keneba     GAMBIA        [20-30)              NA                 0.0011486   -0.0045680    0.0068652
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [20-30)              NA                 0.0006330   -0.0009111    0.0021770
6 months    ki1135781-COHORTS    INDIA         [20-30)              NA                 0.0019714   -0.0014767    0.0054194
6 months    ki1135781-COHORTS    PHILIPPINES   [20-30)              NA                 0.0035592   -0.0001903    0.0073087
6 months    kiGH5241-JiVitA-3    BANGLADESH    [20-30)              NA                 0.0011638   -0.0009403    0.0032680
24 months   kiGH5241-JiVitA-3    BANGLADESH    [20-30)              NA                 0.0009661   -0.0035221    0.0054544


### Parameter: PAF


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT     BELARUS       [20-30)              NA                -0.0657872   -0.1031934   -0.0296492
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [20-30)              NA                -0.0082870   -0.0565619    0.0377821
Birth       ki1135781-COHORTS    GUATEMALA     [20-30)              NA                 0.0596123   -0.2217392    0.2761719
Birth       ki1135781-COHORTS    INDIA         [20-30)              NA                 0.0691845   -0.0301581    0.1589471
Birth       ki1135781-COHORTS    PHILIPPINES   [20-30)              NA                -0.0455037   -0.1975324    0.0872246
Birth       kiGH5241-JiVitA-3    BANGLADESH    [20-30)              NA                 0.0740921   -0.0665184    0.1961644
6 months    ki1101329-Keneba     GAMBIA        [20-30)              NA                 0.0702664   -0.3532073    0.3612179
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [20-30)              NA                 0.0660917   -0.1091455    0.2136426
6 months    ki1135781-COHORTS    INDIA         [20-30)              NA                 0.0635117   -0.0539878    0.1679122
6 months    ki1135781-COHORTS    PHILIPPINES   [20-30)              NA                 0.2751786   -0.0602189    0.5044739
6 months    kiGH5241-JiVitA-3    BANGLADESH    [20-30)              NA                 0.0849043   -0.0803480    0.2248792
24 months   kiGH5241-JiVitA-3    BANGLADESH    [20-30)              NA                 0.0247964   -0.0972572    0.1332734
