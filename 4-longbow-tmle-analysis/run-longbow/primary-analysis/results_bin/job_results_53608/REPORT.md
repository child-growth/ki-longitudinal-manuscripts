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
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)          0      142     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)          1        6     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20              0       28     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20              1        0     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             0       37     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             1        2     215
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)          0       39      62
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)          1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         <20              0        8      62
Birth       ki0047075b-MAL-ED          BRAZIL                         <20              1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             0       15      62
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)          0       36      45
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)          1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          <20              0        7      45
Birth       ki0047075b-MAL-ED          INDIA                          <20              1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          >=30             0        2      45
Birth       ki0047075b-MAL-ED          INDIA                          >=30             1        0      45
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)          0       20      26
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)          1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          <20              0        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          <20              1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             0        5      26
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             1        0      26
Birth       ki0047075b-MAL-ED          PERU                           [20-30)          0      113     228
Birth       ki0047075b-MAL-ED          PERU                           [20-30)          1        0     228
Birth       ki0047075b-MAL-ED          PERU                           <20              0       63     228
Birth       ki0047075b-MAL-ED          PERU                           <20              1        0     228
Birth       ki0047075b-MAL-ED          PERU                           >=30             0       52     228
Birth       ki0047075b-MAL-ED          PERU                           >=30             1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          0       65     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)          1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20              0       22     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20              1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       33     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        0     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          0       66     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)          1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              0        7     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20              1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       42     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        0     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          0       74      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)          1        1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20              0        7      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20              1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0        4      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        0      86
Birth       ki1000108-IRC              INDIA                          [20-30)          0      242     343
Birth       ki1000108-IRC              INDIA                          [20-30)          1       47     343
Birth       ki1000108-IRC              INDIA                          <20              0       26     343
Birth       ki1000108-IRC              INDIA                          <20              1        2     343
Birth       ki1000108-IRC              INDIA                          >=30             0       21     343
Birth       ki1000108-IRC              INDIA                          >=30             1        5     343
Birth       ki1000109-EE               PAKISTAN                       [20-30)          0       67     177
Birth       ki1000109-EE               PAKISTAN                       [20-30)          1        1     177
Birth       ki1000109-EE               PAKISTAN                       <20              0        1     177
Birth       ki1000109-EE               PAKISTAN                       <20              1        0     177
Birth       ki1000109-EE               PAKISTAN                       >=30             0      103     177
Birth       ki1000109-EE               PAKISTAN                       >=30             1        5     177
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)          0      822    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)          1       19    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20              0      131    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20              1        7    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             0      121    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             1        3    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      356     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1       29     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20              0       61     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20              1        6     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             0      118     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             1        3     573
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      356     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1       10     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20              0       66     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20              1        1     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30             0       97     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30             1        2     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          0      441     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)          1       28     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20              0      114     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20              1       10     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0      105     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        9     707
Birth       ki1101329-Keneba           GAMBIA                         [20-30)          0      621    1466
Birth       ki1101329-Keneba           GAMBIA                         [20-30)          1       49    1466
Birth       ki1101329-Keneba           GAMBIA                         <20              0      210    1466
Birth       ki1101329-Keneba           GAMBIA                         <20              1       14    1466
Birth       ki1101329-Keneba           GAMBIA                         >=30             0      532    1466
Birth       ki1101329-Keneba           GAMBIA                         >=30             1       40    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      404     641
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)          1       17     641
Birth       ki1113344-GMS-Nepal        NEPAL                          <20              0      118     641
Birth       ki1113344-GMS-Nepal        NEPAL                          <20              1        7     641
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30             0       92     641
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30             1        3     641
Birth       ki1119695-PROBIT           BELARUS                        [20-30)          0     9210   13830
Birth       ki1119695-PROBIT           BELARUS                        [20-30)          1      690   13830
Birth       ki1119695-PROBIT           BELARUS                        <20              0     1324   13830
Birth       ki1119695-PROBIT           BELARUS                        <20              1       78   13830
Birth       ki1119695-PROBIT           BELARUS                        >=30             0     2390   13830
Birth       ki1119695-PROBIT           BELARUS                        >=30             1      138   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     8145   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1      535   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1892   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20              1      138   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2057   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      114   12881
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          0     8872   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)          1      156   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20              0     7100   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20              1      151   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1685   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             1       42   18006
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
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          0      173     234
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)          1        6     234
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
6 months    ki1000109-EE               PAKISTAN                       [20-30)          0      157     372
6 months    ki1000109-EE               PAKISTAN                       [20-30)          1        2     372
6 months    ki1000109-EE               PAKISTAN                       <20              0        1     372
6 months    ki1000109-EE               PAKISTAN                       <20              1        0     372
6 months    ki1000109-EE               PAKISTAN                       >=30             0      201     372
6 months    ki1000109-EE               PAKISTAN                       >=30             1       11     372
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      353     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1        4     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              0       61     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20              1        0     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             0      115     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             1        2     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      420     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1        4     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              0       66     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20              1        0     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             0      112     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             1        1     603
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
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      365     564
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)          1        6     564
6 months    ki1113344-GMS-Nepal        NEPAL                          <20              0      108     564
6 months    ki1113344-GMS-Nepal        NEPAL                          <20              1        0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0       84     564
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1        1     564
6 months    ki1119695-PROBIT           BELARUS                        [20-30)          0    11301   15758
6 months    ki1119695-PROBIT           BELARUS                        [20-30)          1       13   15758
6 months    ki1119695-PROBIT           BELARUS                        <20              0     1619   15758
6 months    ki1119695-PROBIT           BELARUS                        <20              1        1   15758
6 months    ki1119695-PROBIT           BELARUS                        >=30             0     2822   15758
6 months    ki1119695-PROBIT           BELARUS                        >=30             1        2   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0     5582    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1       49    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              0     1280    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20              1       12    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     1548    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       18    8489
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
24 months   ki0047075b-MAL-ED          PERU                           <20              0       53     201
24 months   ki0047075b-MAL-ED          PERU                           <20              1        2     201
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
24 months   ki1000109-EE               PAKISTAN                       [20-30)          0       64     168
24 months   ki1000109-EE               PAKISTAN                       [20-30)          1        2     168
24 months   ki1000109-EE               PAKISTAN                       <20              0        1     168
24 months   ki1000109-EE               PAKISTAN                       <20              1        0     168
24 months   ki1000109-EE               PAKISTAN                       >=30             0       99     168
24 months   ki1000109-EE               PAKISTAN                       >=30             1        2     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          0      280     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)          1        8     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              0       44     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20              1        0     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       92     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1        2     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          0      403     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)          1        6     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              0       64     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20              1        0     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0      103     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1        3     579
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
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          0      308     487
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)          1        9     487
24 months   ki1113344-GMS-Nepal        NEPAL                          <20              0       91     487
24 months   ki1113344-GMS-Nepal        NEPAL                          <20              1        3     487
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       73     487
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1        3     487
24 months   ki1119695-PROBIT           BELARUS                        [20-30)          0     2843    3972
24 months   ki1119695-PROBIT           BELARUS                        [20-30)          1        4    3972
24 months   ki1119695-PROBIT           BELARUS                        <20              0      365    3972
24 months   ki1119695-PROBIT           BELARUS                        <20              1        0    3972
24 months   ki1119695-PROBIT           BELARUS                        >=30             0      760    3972
24 months   ki1119695-PROBIT           BELARUS                        >=30             1        0    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          0      253     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)          1       23     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              0       67     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20              1        2     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0       81     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1        6     432
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/1ad61719-6d4f-4f4b-a838-d47449ed8eb1/acc9e5d5-7627-43a2-a841-11ca207b135a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1ad61719-6d4f-4f4b-a838-d47449ed8eb1/acc9e5d5-7627-43a2-a841-11ca207b135a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1ad61719-6d4f-4f4b-a838-d47449ed8eb1/acc9e5d5-7627-43a2-a841-11ca207b135a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1ad61719-6d4f-4f4b-a838-d47449ed8eb1/acc9e5d5-7627-43a2-a841-11ca207b135a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH    [20-30)              NA                0.0597015   0.0382432   0.0811598
Birth       ki1017093c-NIH-Crypto   BANGLADESH    <20                  NA                0.0806452   0.0326856   0.1286047
Birth       ki1017093c-NIH-Crypto   BANGLADESH    >=30                 NA                0.0789474   0.0294122   0.1284826
Birth       ki1101329-Keneba        GAMBIA        [20-30)              NA                0.0732553   0.0525045   0.0940061
Birth       ki1101329-Keneba        GAMBIA        <20                  NA                0.0702030   0.0341386   0.1062674
Birth       ki1101329-Keneba        GAMBIA        >=30                 NA                0.0731954   0.0511708   0.0952199
Birth       ki1119695-PROBIT        BELARUS       [20-30)              NA                0.0698093   0.0348682   0.1047504
Birth       ki1119695-PROBIT        BELARUS       <20                  NA                0.0555181   0.0255517   0.0854844
Birth       ki1119695-PROBIT        BELARUS       >=30                 NA                0.0542392   0.0258685   0.0826099
Birth       ki1126311-ZVITAMBO      ZIMBABWE      [20-30)              NA                0.0614057   0.0563089   0.0665026
Birth       ki1126311-ZVITAMBO      ZIMBABWE      <20                  NA                0.0647184   0.0538936   0.0755432
Birth       ki1126311-ZVITAMBO      ZIMBABWE      >=30                 NA                0.0564505   0.0460260   0.0668750
Birth       ki1135781-COHORTS       GUATEMALA     [20-30)              NA                0.0736280   0.0470994   0.1001567
Birth       ki1135781-COHORTS       GUATEMALA     <20                  NA                0.1056182   0.0431844   0.1680520
Birth       ki1135781-COHORTS       GUATEMALA     >=30                 NA                0.0751962   0.0447855   0.1056070
Birth       ki1135781-COHORTS       INDIA         [20-30)              NA                0.0446811   0.0372329   0.0521293
Birth       ki1135781-COHORTS       INDIA         <20                  NA                0.0557825   0.0322303   0.0793348
Birth       ki1135781-COHORTS       INDIA         >=30                 NA                0.0524228   0.0391620   0.0656837
Birth       ki1135781-COHORTS       PHILIPPINES   [20-30)              NA                0.0438791   0.0341774   0.0535807
Birth       ki1135781-COHORTS       PHILIPPINES   <20                  NA                0.0525579   0.0294438   0.0756721
Birth       ki1135781-COHORTS       PHILIPPINES   >=30                 NA                0.0316837   0.0193124   0.0440550
Birth       kiGH5241-JiVitA-3       BANGLADESH    [20-30)              NA                0.0171437   0.0141572   0.0201302
Birth       kiGH5241-JiVitA-3       BANGLADESH    <20                  NA                0.0208121   0.0170256   0.0245987
Birth       kiGH5241-JiVitA-3       BANGLADESH    >=30                 NA                0.0249197   0.0147059   0.0351335
6 months    ki1101329-Keneba        GAMBIA        [20-30)              NA                0.0151976   0.0075635   0.0228316
6 months    ki1101329-Keneba        GAMBIA        <20                  NA                0.0173611   0.0022728   0.0324495
6 months    ki1101329-Keneba        GAMBIA        >=30                 NA                0.0173913   0.0083587   0.0264239
6 months    ki1126311-ZVITAMBO      ZIMBABWE      [20-30)              NA                0.0086671   0.0062482   0.0110859
6 months    ki1126311-ZVITAMBO      ZIMBABWE      <20                  NA                0.0092776   0.0040365   0.0145187
6 months    ki1126311-ZVITAMBO      ZIMBABWE      >=30                 NA                0.0115399   0.0062558   0.0168240
6 months    ki1135781-COHORTS       INDIA         [20-30)              NA                0.0291493   0.0234177   0.0348808
6 months    ki1135781-COHORTS       INDIA         <20                  NA                0.0371672   0.0166850   0.0576494
6 months    ki1135781-COHORTS       INDIA         >=30                 NA                0.0339288   0.0236718   0.0441858
6 months    ki1135781-COHORTS       PHILIPPINES   [20-30)              NA                0.0093750   0.0046521   0.0140979
6 months    ki1135781-COHORTS       PHILIPPINES   <20                  NA                0.0151057   0.0019632   0.0282483
6 months    ki1135781-COHORTS       PHILIPPINES   >=30                 NA                0.0193548   0.0096536   0.0290561
6 months    kiGH5241-JiVitA-3       BANGLADESH    [20-30)              NA                0.0127358   0.0100127   0.0154589
6 months    kiGH5241-JiVitA-3       BANGLADESH    <20                  NA                0.0140562   0.0108780   0.0172345
6 months    kiGH5241-JiVitA-3       BANGLADESH    >=30                 NA                0.0181483   0.0106597   0.0256370
24 months   kiGH5241-JiVitA-3       BANGLADESH    [20-30)              NA                0.0379983   0.0320150   0.0439816
24 months   kiGH5241-JiVitA-3       BANGLADESH    <20                  NA                0.0382497   0.0314937   0.0450057
24 months   kiGH5241-JiVitA-3       BANGLADESH    >=30                 NA                0.0487650   0.0328498   0.0646803


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ki1101329-Keneba        GAMBIA        NA                   NA                0.0702592   0.0571716   0.0833469
Birth       ki1119695-PROBIT        BELARUS       NA                   NA                0.0655098   0.0324802   0.0985393
Birth       ki1126311-ZVITAMBO      ZIMBABWE      NA                   NA                0.0610977   0.0569614   0.0652340
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.0479001   0.0415930   0.0542073
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0193824   0.0169738   0.0217910
6 months    ki1101329-Keneba        GAMBIA        NA                   NA                0.0163462   0.0108955   0.0217968
6 months    ki1126311-ZVITAMBO      ZIMBABWE      NA                   NA                0.0093062   0.0072635   0.0113488
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.0310394   0.0261816   0.0358972
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0137076   0.0116310   0.0157842
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0389625   0.0346386   0.0432864


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    <20                  [20-30)           1.3508065   0.6742361   2.7062893
Birth       ki1017093c-NIH-Crypto   BANGLADESH    >=30                 [20-30)           1.3223684   0.6416727   2.7251561
Birth       ki1101329-Keneba        GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba        GAMBIA        <20                  [20-30)           0.9583335   0.5332082   1.7224100
Birth       ki1101329-Keneba        GAMBIA        >=30                 [20-30)           0.9991813   0.6603415   1.5118894
Birth       ki1119695-PROBIT        BELARUS       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT        BELARUS       <20                  [20-30)           0.7952822   0.6471944   0.9772546
Birth       ki1119695-PROBIT        BELARUS       >=30                 [20-30)           0.7769627   0.6340613   0.9520706
Birth       ki1126311-ZVITAMBO      ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO      ZIMBABWE      <20                  [20-30)           1.0539470   0.8744730   1.2702555
Birth       ki1126311-ZVITAMBO      ZIMBABWE      >=30                 [20-30)           0.9193034   0.7508265   1.1255845
Birth       ki1135781-COHORTS       GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       GUATEMALA     <20                  [20-30)           1.4344832   0.7179006   2.8663327
Birth       ki1135781-COHORTS       GUATEMALA     >=30                 [20-30)           1.0212989   0.5939059   1.7562570
Birth       ki1135781-COHORTS       INDIA         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       INDIA         <20                  [20-30)           1.2484591   0.7929827   1.9655537
Birth       ki1135781-COHORTS       INDIA         >=30                 [20-30)           1.1732668   0.8666622   1.5883407
Birth       ki1135781-COHORTS       PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   <20                  [20-30)           1.1977911   0.7321035   1.9597003
Birth       ki1135781-COHORTS       PHILIPPINES   >=30                 [20-30)           0.7220683   0.4609521   1.1310993
Birth       kiGH5241-JiVitA-3       BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    <20                  [20-30)           1.2139796   0.9539030   1.5449646
Birth       kiGH5241-JiVitA-3       BANGLADESH    >=30                 [20-30)           1.4535763   0.9298741   2.2722260
6 months    ki1101329-Keneba        GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba        GAMBIA        <20                  [20-30)           1.1423611   0.4186513   3.1171262
6 months    ki1101329-Keneba        GAMBIA        >=30                 [20-30)           1.1443478   0.5555970   2.3569817
6 months    ki1126311-ZVITAMBO      ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO      ZIMBABWE      <20                  [20-30)           1.0704488   0.5700175   2.0102203
6 months    ki1126311-ZVITAMBO      ZIMBABWE      >=30                 [20-30)           1.3314647   0.7787652   2.2764219
6 months    ki1135781-COHORTS       INDIA         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       INDIA         <20                  [20-30)           1.2750648   0.7102129   2.2891591
6 months    ki1135781-COHORTS       INDIA         >=30                 [20-30)           1.1639669   0.8115192   1.6694846
6 months    ki1135781-COHORTS       PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   <20                  [20-30)           1.6112790   0.5895856   4.4034656
6 months    ki1135781-COHORTS       PHILIPPINES   >=30                 [20-30)           2.0645161   1.0143478   4.2019384
6 months    kiGH5241-JiVitA-3       BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    <20                  [20-30)           1.1036761   0.8147301   1.4950974
6 months    kiGH5241-JiVitA-3       BANGLADESH    >=30                 [20-30)           1.4249809   0.9061066   2.2409842
24 months   kiGH5241-JiVitA-3       BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    <20                  [20-30)           1.0066162   0.7946965   1.2750479
24 months   kiGH5241-JiVitA-3       BANGLADESH    >=30                 [20-30)           1.2833480   0.8979863   1.8340838


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH    [20-30)              NA                 0.0067766   -0.0069064    0.0204596
Birth       ki1101329-Keneba        GAMBIA        [20-30)              NA                -0.0029961   -0.0182847    0.0122925
Birth       ki1119695-PROBIT        BELARUS       [20-30)              NA                -0.0042995   -0.0073815   -0.0012175
Birth       ki1126311-ZVITAMBO      ZIMBABWE      [20-30)              NA                -0.0003080   -0.0032166    0.0026006
Birth       ki1135781-COHORTS       GUATEMALA     [20-30)              NA                 0.0057370   -0.0137319    0.0252060
Birth       ki1135781-COHORTS       INDIA         [20-30)              NA                 0.0032190   -0.0013289    0.0077670
Birth       ki1135781-COHORTS       PHILIPPINES   [20-30)              NA                -0.0021405   -0.0081091    0.0038280
Birth       kiGH5241-JiVitA-3       BANGLADESH    [20-30)              NA                 0.0022387    0.0000017    0.0044757
6 months    ki1101329-Keneba        GAMBIA        [20-30)              NA                 0.0011486   -0.0045680    0.0068652
6 months    ki1126311-ZVITAMBO      ZIMBABWE      [20-30)              NA                 0.0006391   -0.0008579    0.0021361
6 months    ki1135781-COHORTS       INDIA         [20-30)              NA                 0.0018901   -0.0015720    0.0053522
6 months    ki1135781-COHORTS       PHILIPPINES   [20-30)              NA                 0.0035592   -0.0001903    0.0073087
6 months    kiGH5241-JiVitA-3       BANGLADESH    [20-30)              NA                 0.0009718   -0.0011468    0.0030904
24 months   kiGH5241-JiVitA-3       BANGLADESH    [20-30)              NA                 0.0009643   -0.0035385    0.0054670


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH    [20-30)              NA                 0.1019371   -0.1272656    0.2845369
Birth       ki1101329-Keneba        GAMBIA        [20-30)              NA                -0.0426437   -0.2841724    0.1534580
Birth       ki1119695-PROBIT        BELARUS       [20-30)              NA                -0.0656313   -0.1046243   -0.0280148
Birth       ki1126311-ZVITAMBO      ZIMBABWE      [20-30)              NA                -0.0050410   -0.0537871    0.0414502
Birth       ki1135781-COHORTS       GUATEMALA     [20-30)              NA                 0.0722866   -0.2078982    0.2874796
Birth       ki1135781-COHORTS       INDIA         [20-30)              NA                 0.0672029   -0.0323486    0.1571545
Birth       ki1135781-COHORTS       PHILIPPINES   [20-30)              NA                -0.0512841   -0.2041384    0.0821668
Birth       kiGH5241-JiVitA-3       BANGLADESH    [20-30)              NA                 0.1155022   -0.0059210    0.2222687
6 months    ki1101329-Keneba        GAMBIA        [20-30)              NA                 0.0702664   -0.3532073    0.3612179
6 months    ki1126311-ZVITAMBO      ZIMBABWE      [20-30)              NA                 0.0686752   -0.1061052    0.2158378
6 months    ki1135781-COHORTS       INDIA         [20-30)              NA                 0.0608945   -0.0571239    0.1657371
6 months    ki1135781-COHORTS       PHILIPPINES   [20-30)              NA                 0.2751786   -0.0602189    0.5044739
6 months    kiGH5241-JiVitA-3       BANGLADESH    [20-30)              NA                 0.0708930   -0.0956984    0.2121555
24 months   kiGH5241-JiVitA-3       BANGLADESH    [20-30)              NA                 0.0247485   -0.0977291    0.1335608
