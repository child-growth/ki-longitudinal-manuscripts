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

agecat      studyid                    country                        mage       wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)         0      143     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)         1       21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20             0       24     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20             1       10     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30            0       34     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30            1        9     241
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)         0      106     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)         1        4     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <20             0       34     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <20             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30            0       37     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30            1        2     183
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)         0      136     202
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)         1       27     202
Birth       ki0047075b-MAL-ED          INDIA                          <20             0       20     202
Birth       ki0047075b-MAL-ED          INDIA                          <20             1        4     202
Birth       ki0047075b-MAL-ED          INDIA                          >=30            0       13     202
Birth       ki0047075b-MAL-ED          INDIA                          >=30            1        2     202
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)         0      112     168
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)         1       17     168
Birth       ki0047075b-MAL-ED          NEPAL                          <20             0        4     168
Birth       ki0047075b-MAL-ED          NEPAL                          <20             1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            0       32     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            1        3     168
Birth       ki0047075b-MAL-ED          PERU                           [20-30)         0      139     279
Birth       ki0047075b-MAL-ED          PERU                           [20-30)         1        3     279
Birth       ki0047075b-MAL-ED          PERU                           <20             0       71     279
Birth       ki0047075b-MAL-ED          PERU                           <20             1        2     279
Birth       ki0047075b-MAL-ED          PERU                           >=30            0       63     279
Birth       ki0047075b-MAL-ED          PERU                           >=30            1        1     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         0      122     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         1       10     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20             0       36     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20             1        4     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            0       82     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            1        4     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         0       70     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            0       38     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         0       65      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         1       11      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             0        5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             1        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            1        1      88
Birth       ki1000108-IRC              INDIA                          [20-30)         0      210     343
Birth       ki1000108-IRC              INDIA                          [20-30)         1       79     343
Birth       ki1000108-IRC              INDIA                          <20             0       20     343
Birth       ki1000108-IRC              INDIA                          <20             1        8     343
Birth       ki1000108-IRC              INDIA                          >=30            0       21     343
Birth       ki1000108-IRC              INDIA                          >=30            1        5     343
Birth       ki1000109-EE               PAKISTAN                       [20-30)         0        0       1
Birth       ki1000109-EE               PAKISTAN                       [20-30)         1        0       1
Birth       ki1000109-EE               PAKISTAN                       <20             0        0       1
Birth       ki1000109-EE               PAKISTAN                       <20             1        0       1
Birth       ki1000109-EE               PAKISTAN                       >=30            0        1       1
Birth       ki1000109-EE               PAKISTAN                       >=30            1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)         0      113     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)         1        8     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20             0       20     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20             1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30            0       22     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30            1        1     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)         0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)         1        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         0       16      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         1        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            0        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1        0      23
Birth       ki1101329-Keneba           GAMBIA                         [20-30)         0      646    1423
Birth       ki1101329-Keneba           GAMBIA                         [20-30)         1       12    1423
Birth       ki1101329-Keneba           GAMBIA                         <20             0      219    1423
Birth       ki1101329-Keneba           GAMBIA                         <20             1        3    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30            0      530    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30            1       13    1423
Birth       ki1119695-PROBIT           BELARUS                        [20-30)         0     7799   13824
Birth       ki1119695-PROBIT           BELARUS                        [20-30)         1     2098   13824
Birth       ki1119695-PROBIT           BELARUS                        <20             0     1094   13824
Birth       ki1119695-PROBIT           BELARUS                        <20             1      306   13824
Birth       ki1119695-PROBIT           BELARUS                        >=30            0     2043   13824
Birth       ki1119695-PROBIT           BELARUS                        >=30            1      484   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         0     7314   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         1     1365   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20             0     1649   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20             1      381   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0     1866   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1      305   12880
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)         0      277     756
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)         1       90     756
Birth       ki1135781-COHORTS          GUATEMALA                      <20             0       68     756
Birth       ki1135781-COHORTS          GUATEMALA                      <20             1       33     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30            0      219     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30            1       69     756
Birth       ki1135781-COHORTS          INDIA                          [20-30)         0     2472    4405
Birth       ki1135781-COHORTS          INDIA                          [20-30)         1      493    4405
Birth       ki1135781-COHORTS          INDIA                          <20             0      264    4405
Birth       ki1135781-COHORTS          INDIA                          <20             1       73    4405
Birth       ki1135781-COHORTS          INDIA                          >=30            0      905    4405
Birth       ki1135781-COHORTS          INDIA                          >=30            1      198    4405
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)         0     1466    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)         1      278    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <20             0      281    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <20             1       73    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30            0      701    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30            1      100    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         0     7239   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         1      705   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20             0     5615   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20             1      630   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30            0     1343   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30            1      170   15702
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)         0      160     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)         1        5     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20             0       33     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20             1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30            0       40     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30            1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)         0      125     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)         1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20             0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30            0       46     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30            1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)         0      162     234
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)         1       17     234
6 months    ki0047075b-MAL-ED          INDIA                          <20             0       33     234
6 months    ki0047075b-MAL-ED          INDIA                          <20             1        1     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30            0       21     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30            1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)         0      181     236
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)         1        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20             0        5     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30            0       46     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30            1        0     236
6 months    ki0047075b-MAL-ED          PERU                           [20-30)         0      136     273
6 months    ki0047075b-MAL-ED          PERU                           [20-30)         1        0     273
6 months    ki0047075b-MAL-ED          PERU                           <20             0       76     273
6 months    ki0047075b-MAL-ED          PERU                           <20             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           >=30            0       61     273
6 months    ki0047075b-MAL-ED          PERU                           >=30            1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         0      115     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20             0       40     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20             1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            0       92     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            1        2     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         0      127     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             0       15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            0      104     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         0      251     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         1       41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20             0       31     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20             1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30            0       40     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30            1        3     368
6 months    ki1000108-IRC              INDIA                          [20-30)         0      299     408
6 months    ki1000108-IRC              INDIA                          [20-30)         1       43     408
6 months    ki1000108-IRC              INDIA                          <20             0       32     408
6 months    ki1000108-IRC              INDIA                          <20             1        5     408
6 months    ki1000108-IRC              INDIA                          >=30            0       23     408
6 months    ki1000108-IRC              INDIA                          >=30            1        6     408
6 months    ki1000109-EE               PAKISTAN                       [20-30)         0      143     373
6 months    ki1000109-EE               PAKISTAN                       [20-30)         1       17     373
6 months    ki1000109-EE               PAKISTAN                       <20             0        1     373
6 months    ki1000109-EE               PAKISTAN                       <20             1        0     373
6 months    ki1000109-EE               PAKISTAN                       >=30            0      180     373
6 months    ki1000109-EE               PAKISTAN                       >=30            1       32     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)         0      885    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)         1      130    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20             0      158    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20             1       13    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30            0      125    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30            1       23    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)         0      220     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)         1       40     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20             0       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20             1        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30            0       59     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30            1       25     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)         0      334     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)         1       22     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20             0       58     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20             1        3     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30            0      108     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30            1        9     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)         0      392     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)         1       17     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20             0       63     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20             1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30            0      103     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30            1        5     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         0      450     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         1       12     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20             0      128     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20             1        3     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30            0      116     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         0     1266    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         1       51    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             0      140    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1        6    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            0      518    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            1       30    2011
6 months    ki1101329-Keneba           GAMBIA                         [20-30)         0      943    2080
6 months    ki1101329-Keneba           GAMBIA                         [20-30)         1       44    2080
6 months    ki1101329-Keneba           GAMBIA                         <20             0      274    2080
6 months    ki1101329-Keneba           GAMBIA                         <20             1       14    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30            0      743    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30            1       62    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)         0      171     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)         1        0     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20             0       45     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20             1        1     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30            0       57     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30            1        2     276
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)         0      341     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)         1       29     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20             0       97     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20             1       11     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30            0       74     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30            1       11     563
6 months    ki1119695-PROBIT           BELARUS                        [20-30)         0    11212   15757
6 months    ki1119695-PROBIT           BELARUS                        [20-30)         1      101   15757
6 months    ki1119695-PROBIT           BELARUS                        <20             0     1613   15757
6 months    ki1119695-PROBIT           BELARUS                        <20             1        7   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30            0     2802   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30            1       22   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         0     5293    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         1      170    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20             0     1222    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20             1       33    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0     1469    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1       62    8249
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)         0      454     963
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)         1       17     963
6 months    ki1135781-COHORTS          GUATEMALA                      <20             0      116     963
6 months    ki1135781-COHORTS          GUATEMALA                      <20             1        2     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30            0      361     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30            1       13     963
6 months    ki1135781-COHORTS          INDIA                          [20-30)         0     2910    4897
6 months    ki1135781-COHORTS          INDIA                          [20-30)         1      416    4897
6 months    ki1135781-COHORTS          INDIA                          <20             0      311    4897
6 months    ki1135781-COHORTS          INDIA                          <20             1       60    4897
6 months    ki1135781-COHORTS          INDIA                          >=30            0     1029    4897
6 months    ki1135781-COHORTS          INDIA                          >=30            1      171    4897
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)         0     1510    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)         1       90    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <20             0      311    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <20             1       20    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30            0      724    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30            1       51    2706
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)         0      358     669
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)         1        6     669
6 months    ki1148112-LCNI-5           MALAWI                         <20             0      107     669
6 months    ki1148112-LCNI-5           MALAWI                         <20             1        0     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30            0      192     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30            1        6     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         0     7026   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         1      630   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20             0     7232   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20             1      672   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30            0     1100   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30            1      119   16779
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)         0      133     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)         1       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20             0       24     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20             1        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30            0       34     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30            1        3     212
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)         0      101     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)         1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20             0       27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30            0       38     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30            1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)         0      148     225
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)         1       24     225
24 months   ki0047075b-MAL-ED          INDIA                          <20             0       30     225
24 months   ki0047075b-MAL-ED          INDIA                          <20             1        3     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30            0       20     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30            1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)         0      175     228
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)         1        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20             0        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30            0       44     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30            1        1     228
24 months   ki0047075b-MAL-ED          PERU                           [20-30)         0       97     201
24 months   ki0047075b-MAL-ED          PERU                           [20-30)         1        1     201
24 months   ki0047075b-MAL-ED          PERU                           <20             0       53     201
24 months   ki0047075b-MAL-ED          PERU                           <20             1        2     201
24 months   ki0047075b-MAL-ED          PERU                           >=30            0       48     201
24 months   ki0047075b-MAL-ED          PERU                           >=30            1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         0      106     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20             0       39     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            0       92     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            1        1     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         0      110     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            0       91     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            1        1     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         0      276     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         1       20     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20             0       33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20             1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30            0       40     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30            1        2     372
24 months   ki1000108-IRC              INDIA                          [20-30)         0      318     409
24 months   ki1000108-IRC              INDIA                          [20-30)         1       25     409
24 months   ki1000108-IRC              INDIA                          <20             0       36     409
24 months   ki1000108-IRC              INDIA                          <20             1        1     409
24 months   ki1000108-IRC              INDIA                          >=30            0       24     409
24 months   ki1000108-IRC              INDIA                          >=30            1        5     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)         0      252     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)         1       36     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20             0       41     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20             1        3     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30            0       80     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30            1       14     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)         0      367     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)         1       41     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20             0       52     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20             1       12     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30            0       94     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30            1       12     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         0      302     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         1       32     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20             0       94     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20             1        7     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30            0       73     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1        6     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            1        0       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)         0      706    1715
24 months   ki1101329-Keneba           GAMBIA                         [20-30)         1       85    1715
24 months   ki1101329-Keneba           GAMBIA                         <20             0      196    1715
24 months   ki1101329-Keneba           GAMBIA                         <20             1       21    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30            0      625    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30            1       82    1715
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)         0      265     498
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)         1       57     498
24 months   ki1113344-GMS-Nepal        NEPAL                          <20             0       77     498
24 months   ki1113344-GMS-Nepal        NEPAL                          <20             1       21     498
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30            0       65     498
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30            1       13     498
24 months   ki1119695-PROBIT           BELARUS                        [20-30)         0     2814    3971
24 months   ki1119695-PROBIT           BELARUS                        [20-30)         1       33    3971
24 months   ki1119695-PROBIT           BELARUS                        <20             0      361    3971
24 months   ki1119695-PROBIT           BELARUS                        <20             1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30            0      752    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30            1        8    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         0      215     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         1       56     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20             0       61     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20             1        8     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0       70     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1       12     422
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)         0      507    1076
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)         1       25    1076
24 months   ki1135781-COHORTS          GUATEMALA                      <20             0      145    1076
24 months   ki1135781-COHORTS          GUATEMALA                      <20             1        9    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30            0      374    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30            1       16    1076
24 months   ki1135781-COHORTS          INDIA                          [20-30)         0     2212    3665
24 months   ki1135781-COHORTS          INDIA                          [20-30)         1      234    3665
24 months   ki1135781-COHORTS          INDIA                          <20             0      226    3665
24 months   ki1135781-COHORTS          INDIA                          <20             1       20    3665
24 months   ki1135781-COHORTS          INDIA                          >=30            0      876    3665
24 months   ki1135781-COHORTS          INDIA                          >=30            1       97    3665
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)         0     1367    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)         1       94    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <20             0      272    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <20             1       21    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30            0      643    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30            1       52    2449
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)         0      237     461
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)         1        4     461
24 months   ki1148112-LCNI-5           MALAWI                         <20             0       75     461
24 months   ki1148112-LCNI-5           MALAWI                         <20             1        3     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30            0      141     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30            1        1     461
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         0     3198    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         1      843    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20             0     2983    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20             1      862    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30            0      541    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30            1      171    8598


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/fe4a880f-b8a8-41be-925c-4da7d1d02fe3/423d19da-3c5c-45d9-afa9-bad5ee657d09/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fe4a880f-b8a8-41be-925c-4da7d1d02fe3/423d19da-3c5c-45d9-afa9-bad5ee657d09/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fe4a880f-b8a8-41be-925c-4da7d1d02fe3/423d19da-3c5c-45d9-afa9-bad5ee657d09/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fe4a880f-b8a8-41be-925c-4da7d1d02fe3/423d19da-3c5c-45d9-afa9-bad5ee657d09/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1280488   0.0768024   0.1792951
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2941176   0.1406424   0.4475929
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2093023   0.0874570   0.3311477
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                0.2733564   0.2218977   0.3248151
Birth       ki1000108-IRC              INDIA                          <20                  NA                0.2857143   0.1181409   0.4532877
Birth       ki1000108-IRC              INDIA                          >=30                 NA                0.1923077   0.0405968   0.3440186
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2121871   0.1456340   0.2787401
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                0.2193999   0.1479322   0.2908676
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1899196   0.1251087   0.2547306
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1572716   0.1496004   0.1649427
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1861836   0.1691190   0.2032481
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1390894   0.1244671   0.1537117
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.2427862   0.1971209   0.2884515
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3428438   0.2389267   0.4467610
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2385339   0.1877857   0.2892821
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1658071   0.1523665   0.1792478
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                0.2109898   0.1674184   0.2545613
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.1800754   0.1570198   0.2031311
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1600017   0.1427114   0.1772920
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.1999734   0.1584430   0.2415038
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1262419   0.1029971   0.1494866
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0890198   0.0818794   0.0961602
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1001244   0.0920650   0.1081838
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1126305   0.0959268   0.1293342
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.1257310   0.0905497   0.1609123
6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1351351   0.0248446   0.2454257
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592839   0.3545092
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1285052   0.0975313   0.1594791
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0720846   0.0339172   0.1102520
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1478792   0.0956202   0.2001383
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0387244   0.0283017   0.0491471
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0410959   0.0088877   0.0733041
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0547445   0.0356938   0.0737952
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0445184   0.0316719   0.0573649
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0400458   0.0178717   0.0622198
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0761953   0.0576310   0.0947596
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0785819   0.0510789   0.1060848
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1023490   0.0445656   0.1601324
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1290470   0.0566208   0.2014732
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0089278   0.0069420   0.0109136
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0043210   0.0000728   0.0085692
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0077904   0.0041484   0.0114323
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0310536   0.0264449   0.0356623
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0262720   0.0173678   0.0351762
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0412848   0.0313193   0.0512504
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1244903   0.1132520   0.1357286
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.1647889   0.1259496   0.2036281
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1415292   0.1216310   0.1614273
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0559758   0.0447193   0.0672324
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0557861   0.0306547   0.0809175
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0654295   0.0479896   0.0828694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0825641   0.0759083   0.0892199
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0847308   0.0778866   0.0915749
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0963924   0.0800060   0.1127788
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1011692   0.0719057   0.1304328
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2021191   0.1048152   0.2994230
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1171759   0.0569599   0.1773919
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0958084   0.0642126   0.1274042
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0693069   0.0197275   0.1188864
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0759494   0.0174748   0.1344240
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1080875   0.0859079   0.1302672
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1012224   0.0593533   0.1430915
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1149140   0.0913630   0.1384651
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1765834   0.1347840   0.2183827
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2126883   0.1308658   0.2945108
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1620498   0.0776102   0.2464895
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2066421   0.1583781   0.2549060
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1159420   0.0403111   0.1915730
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1463415   0.0697497   0.2229332
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0469925   0.0290014   0.0649835
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0584416   0.0213757   0.0955074
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0410256   0.0213310   0.0607203
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0959455   0.0842048   0.1076862
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.0840130   0.0488821   0.1191439
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.0998633   0.0806807   0.1190459
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0641351   0.0515410   0.0767292
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0636239   0.0360485   0.0911994
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0767504   0.0568129   0.0966879
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2093421   0.1961684   0.2225158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2232521   0.2083862   0.2381180
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2410590   0.2083346   0.2737833


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1659751   0.1189041   0.2130461
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1592391   0.1529198   0.1655584
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1734393   0.1622569   0.1846217
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0958477   0.0906460   0.1010493
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432621   0.0343680   0.0521561
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0576923   0.0476698   0.0677148
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0321251   0.0283197   0.0359306
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1321217   0.1226366   0.1416069
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0846892   0.0798858   0.0894926
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1096210   0.0948307   0.1244113
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1827309   0.1487560   0.2167058
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800948   0.1433886   0.2168010
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0464684   0.0338852   0.0590516
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0957708   0.0862423   0.1052993
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2181903   0.2083363   0.2280442


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           2.2969188   1.1899986   4.4334805
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.6345515   0.8064786   3.3128696
Birth       ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          <20                  [20-30)           1.0452080   0.5645305   1.9351651
Birth       ki1000108-IRC              INDIA                          >=30                 [20-30)           0.7035054   0.3126330   1.5830697
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0339928   0.8794505   1.2156923
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8950575   0.7865798   1.0184955
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1838350   1.0670815   1.3133630
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.8843902   0.7876242   0.9930447
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.4121225   0.9883837   2.0175263
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9824854   0.7396782   1.3049968
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2725015   1.0193470   1.5885268
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.0860536   0.9333457   1.2637466
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2498206   0.9889981   1.5794282
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.7890033   0.6373206   0.9767867
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1247429   1.0059291   1.2575903
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2652298   1.0721466   1.4930853
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           1.0747957   0.4535482   2.5469971
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           1.6455493   0.7646819   3.5411231
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.5609469   0.3039111   1.0353735
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1507646   0.7656671   1.7295494
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0612409   0.4633734   2.4305072
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.4136969   0.9105335   2.1949097
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8995333   0.4819535   1.6789173
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.7115465   1.1759103   2.4911691
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3024501   0.6701768   2.5312367
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.6421980   0.8473212   3.1827535
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.4839934   0.1919646   1.2202749
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8725984   0.4996759   1.5238436
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8460220   0.5843671   1.2248348
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.3294704   1.0013617   1.7650881
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3237085   1.0284002   1.7038155
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1368689   0.9618801   1.3436923
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9966112   0.6085130   1.6322312
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1688886   0.8369592   1.6324578
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0262419   0.9212413   1.1432101
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1674855   0.9668367   1.4097751
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.9978311   1.1392207   3.5035609
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1582167   0.6420451   2.0893640
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.7233911   0.3290579   1.5902815
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.7927215   0.3430583   1.8317802
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9364854   0.5903642   1.4855322
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0631571   0.7955310   1.4208158
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.2044641   0.7665684   1.8925039
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9176960   0.5176622   1.6268640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.5610766   0.2806160   1.1218423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.7081882   0.3992478   1.2561885
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2436364   0.5928628   2.6087508
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.8730256   0.4724528   1.6132273
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8756323   0.5663929   1.3537103
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.0408337   0.8288426   1.3070452
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9920300   0.6164021   1.5965609
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1966988   0.8640136   1.6574831
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0664462   0.9757591   1.1655618
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1515073   0.9924158   1.3361024


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0379263    0.0023224    0.0735302
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.0051348   -0.0248945    0.0146249
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0032750   -0.0100071    0.0034570
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0019676   -0.0024641    0.0063992
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0111821   -0.0228472    0.0452114
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0076321   -0.0003476    0.0156118
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0044308   -0.0152008    0.0063392
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0068278    0.0018601    0.0117956
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0066219   -0.0090812    0.0223251
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0040674   -0.0162266    0.0080917
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0045377   -0.0022040    0.0112794
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0131739    0.0027701    0.0235778
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0120043   -0.0061372    0.0301457
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0006775   -0.0016219    0.0002670
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0010715   -0.0016895    0.0038326
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0076314    0.0009258    0.0143370
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0035216   -0.0039771    0.0110204
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0021251   -0.0026420    0.0068921
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0112875   -0.0065135    0.0290885
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0082597   -0.0255539    0.0090344
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0015334   -0.0149681    0.0180350
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0061476   -0.0192963    0.0315915
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0265473   -0.0527189   -0.0003756
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0005241   -0.0132499    0.0122017
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0001747   -0.0069847    0.0066353
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0040560   -0.0042858    0.0123978
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0088482   -0.0009837    0.0186801


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.2285061   -0.0097342    0.4105351
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.0191440   -0.0955205    0.0519078
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0156766   -0.0481576    0.0157979
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0123561   -0.0158677    0.0397957
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0440294   -0.0998226    0.1690662
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0440046   -0.0030863    0.0888848
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0284809   -0.1000577    0.0384386
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0712364    0.0178405    0.1217294
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0500325   -0.0758153    0.1611587
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0326865   -0.1332902    0.0589866
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1048883   -0.0636953    0.2467534
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.2283480    0.0302225    0.3859965
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.1325178   -0.0896312    0.3093761
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0821159   -0.2022268    0.0259951
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0333547   -0.0564499    0.1155254
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0577604    0.0057339    0.1070645
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0591892   -0.0753525    0.1768978
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0250925   -0.0328227    0.0797601
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.1003720   -0.0709501    0.2442874
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0943446   -0.3091652    0.0852260
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0139886   -0.1486601    0.1536065
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0336428   -0.1160657    0.1632694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.1474073   -0.3005762   -0.0122771
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0112782   -0.3257854    0.2286206
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0018241   -0.0755145    0.0668173
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0594798   -0.0708787    0.1739698
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0405525   -0.0054220    0.0844248
