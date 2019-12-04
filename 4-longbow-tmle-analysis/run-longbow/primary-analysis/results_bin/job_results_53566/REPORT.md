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

agecat      studyid                    country                        mage       wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)         0      128     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)         1       20     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20             0       20     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20             1        8     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30            0       31     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30            1        8     215
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)         0       37      62
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)         1        2      62
Birth       ki0047075b-MAL-ED          BRAZIL                         <20             0        8      62
Birth       ki0047075b-MAL-ED          BRAZIL                         <20             1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30            0       15      62
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30            1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)         0       32      45
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)         1        4      45
Birth       ki0047075b-MAL-ED          INDIA                          <20             0        7      45
Birth       ki0047075b-MAL-ED          INDIA                          <20             1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          >=30            0        1      45
Birth       ki0047075b-MAL-ED          INDIA                          >=30            1        1      45
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)         0       20      26
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)         1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          <20             0        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          <20             1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            0        4      26
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            1        1      26
Birth       ki0047075b-MAL-ED          PERU                           [20-30)         0      110     228
Birth       ki0047075b-MAL-ED          PERU                           [20-30)         1        3     228
Birth       ki0047075b-MAL-ED          PERU                           <20             0       61     228
Birth       ki0047075b-MAL-ED          PERU                           <20             1        2     228
Birth       ki0047075b-MAL-ED          PERU                           >=30            0       52     228
Birth       ki0047075b-MAL-ED          PERU                           >=30            1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         0       59     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         1        6     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20             0       19     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20             1        3     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            0       30     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            1        3     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         0       66     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             0        7     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            0       41     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            1        1     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         0       66      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         1        9      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             0        5      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             1        2      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            0        4      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            1        0      86
Birth       ki1000108-IRC              INDIA                          [20-30)         0      210     343
Birth       ki1000108-IRC              INDIA                          [20-30)         1       79     343
Birth       ki1000108-IRC              INDIA                          <20             0       20     343
Birth       ki1000108-IRC              INDIA                          <20             1        8     343
Birth       ki1000108-IRC              INDIA                          >=30            0       21     343
Birth       ki1000108-IRC              INDIA                          >=30            1        5     343
Birth       ki1000109-EE               PAKISTAN                       [20-30)         0       62     177
Birth       ki1000109-EE               PAKISTAN                       [20-30)         1        6     177
Birth       ki1000109-EE               PAKISTAN                       <20             0        0     177
Birth       ki1000109-EE               PAKISTAN                       <20             1        1     177
Birth       ki1000109-EE               PAKISTAN                       >=30            0       93     177
Birth       ki1000109-EE               PAKISTAN                       >=30            1       15     177
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)         0      754    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)         1       87    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20             0      122    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20             1       16    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30            0      109    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30            1       15    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)         0      260     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)         1      125     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             0       47     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             1       20     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            0       98     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            1       23     573
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)         0      289     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)         1       77     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20             0       52     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20             1       15     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30            0       74     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30            1       25     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         0      358     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         1      111     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             0       89     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             1       35     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            0       88     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1       26     707
Birth       ki1101329-Keneba           GAMBIA                         [20-30)         0      505    1466
Birth       ki1101329-Keneba           GAMBIA                         [20-30)         1      165    1466
Birth       ki1101329-Keneba           GAMBIA                         <20             0      159    1466
Birth       ki1101329-Keneba           GAMBIA                         <20             1       65    1466
Birth       ki1101329-Keneba           GAMBIA                         >=30            0      438    1466
Birth       ki1101329-Keneba           GAMBIA                         >=30            1      134    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)         0      340     641
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)         1       81     641
Birth       ki1113344-GMS-Nepal        NEPAL                          <20             0       88     641
Birth       ki1113344-GMS-Nepal        NEPAL                          <20             1       37     641
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30            0       81     641
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30            1       14     641
Birth       ki1119695-PROBIT           BELARUS                        [20-30)         0     7803   13830
Birth       ki1119695-PROBIT           BELARUS                        [20-30)         1     2097   13830
Birth       ki1119695-PROBIT           BELARUS                        <20             0     1096   13830
Birth       ki1119695-PROBIT           BELARUS                        <20             1      306   13830
Birth       ki1119695-PROBIT           BELARUS                        >=30            0     2044   13830
Birth       ki1119695-PROBIT           BELARUS                        >=30            1      484   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         0     7314   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         1     1366   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20             0     1649   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20             1      381   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0     1866   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1      305   12881
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         0     8120   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         1      908   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20             0     6411   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20             1      840   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30            0     1503   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30            1      224   18006
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
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)         0      161     234
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)         1       18     234
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
6 months    ki1000109-EE               PAKISTAN                       [20-30)         0      145     372
6 months    ki1000109-EE               PAKISTAN                       [20-30)         1       14     372
6 months    ki1000109-EE               PAKISTAN                       <20             0        1     372
6 months    ki1000109-EE               PAKISTAN                       <20             1        0     372
6 months    ki1000109-EE               PAKISTAN                       >=30            0      179     372
6 months    ki1000109-EE               PAKISTAN                       >=30            1       33     372
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)         0      334     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)         1       23     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20             0       58     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20             1        3     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30            0      108     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30            1        9     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)         0      406     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)         1       18     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20             0       64     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20             1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30            0      108     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30            1        5     603
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
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)         0      342     564
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)         1       29     564
6 months    ki1113344-GMS-Nepal        NEPAL                          <20             0       97     564
6 months    ki1113344-GMS-Nepal        NEPAL                          <20             1       11     564
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30            0       74     564
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30            1       11     564
6 months    ki1119695-PROBIT           BELARUS                        [20-30)         0    11213   15758
6 months    ki1119695-PROBIT           BELARUS                        [20-30)         1      101   15758
6 months    ki1119695-PROBIT           BELARUS                        <20             0     1613   15758
6 months    ki1119695-PROBIT           BELARUS                        <20             1        7   15758
6 months    ki1119695-PROBIT           BELARUS                        >=30            0     2802   15758
6 months    ki1119695-PROBIT           BELARUS                        >=30            1       22   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         0     5461    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         1      170    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20             0     1259    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20             1       33    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0     1504    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1       62    8489
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
24 months   ki0047075b-MAL-ED          PERU                           <20             0       52     201
24 months   ki0047075b-MAL-ED          PERU                           <20             1        3     201
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
24 months   ki1000109-EE               PAKISTAN                       [20-30)         0       55     168
24 months   ki1000109-EE               PAKISTAN                       [20-30)         1       11     168
24 months   ki1000109-EE               PAKISTAN                       <20             0        1     168
24 months   ki1000109-EE               PAKISTAN                       <20             1        0     168
24 months   ki1000109-EE               PAKISTAN                       >=30            0       82     168
24 months   ki1000109-EE               PAKISTAN                       >=30            1       19     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)         0      252     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)         1       36     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20             0       41     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20             1        3     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30            0       80     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30            1       14     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)         0      369     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)         1       40     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20             0       53     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20             1       11     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30            0       95     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30            1       11     579
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
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)         0      260     487
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)         1       57     487
24 months   ki1113344-GMS-Nepal        NEPAL                          <20             0       73     487
24 months   ki1113344-GMS-Nepal        NEPAL                          <20             1       21     487
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30            0       63     487
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30            1       13     487
24 months   ki1119695-PROBIT           BELARUS                        [20-30)         0     2814    3972
24 months   ki1119695-PROBIT           BELARUS                        [20-30)         1       33    3972
24 months   ki1119695-PROBIT           BELARUS                        <20             0      362    3972
24 months   ki1119695-PROBIT           BELARUS                        <20             1        3    3972
24 months   ki1119695-PROBIT           BELARUS                        >=30            0      752    3972
24 months   ki1119695-PROBIT           BELARUS                        >=30            1        8    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         0      218     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         1       58     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20             0       61     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20             1        8     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0       74     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1       13     432
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/cb8f2bf2-cfc1-4372-b490-c1d4667cf3c6/3754d1fc-951a-4597-a888-04ae8ca2f5e7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cb8f2bf2-cfc1-4372-b490-c1d4667cf3c6/3754d1fc-951a-4597-a888-04ae8ca2f5e7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cb8f2bf2-cfc1-4372-b490-c1d4667cf3c6/3754d1fc-951a-4597-a888-04ae8ca2f5e7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cb8f2bf2-cfc1-4372-b490-c1d4667cf3c6/3754d1fc-951a-4597-a888-04ae8ca2f5e7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1351351   0.0799289   0.1903413
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2857143   0.1179949   0.4534337
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2051282   0.0781032   0.3321533
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                0.2733564   0.2218977   0.3248151
Birth       ki1000108-IRC              INDIA                          <20                  NA                0.2857143   0.1181409   0.4532877
Birth       ki1000108-IRC              INDIA                          >=30                 NA                0.1923077   0.0405968   0.3440186
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1031852   0.0783387   0.1280318
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1126284   0.0563850   0.1688717
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1189596   0.0584794   0.1794398
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.3282389   0.2814079   0.3750699
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2789916   0.1673314   0.3906518
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1914755   0.1207655   0.2621855
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2119285   0.1700061   0.2538510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2020104   0.1064880   0.2975328
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2623167   0.1732872   0.3513463
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2375382   0.1990286   0.2760478
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2675479   0.1873960   0.3476999
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2373761   0.1591143   0.3156380
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.2438099   0.2101327   0.2774872
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                0.3087095   0.2427443   0.3746747
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2395594   0.2036253   0.2754934
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1923289   0.1545764   0.2300815
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2953261   0.2145220   0.3761301
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1437695   0.0716263   0.2159127
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2109375   0.1446584   0.2772166
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                0.2156003   0.1442107   0.2869899
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1913611   0.1281414   0.2545808
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1573277   0.1496125   0.1650430
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1820429   0.1646006   0.1994853
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1456507   0.1300086   0.1612928
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.2452201   0.1991738   0.2912665
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3469484   0.2444532   0.4494437
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2387826   0.1877930   0.2897723
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1653263   0.1519290   0.1787237
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                0.2111544   0.1679836   0.2543252
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.1808066   0.1577631   0.2038502
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1598717   0.1425294   0.1772139
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2027920   0.1599752   0.2456089
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1260017   0.1026534   0.1493501
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.1005860   0.0936390   0.1075330
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1149818   0.1069906   0.1229731
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1322488   0.1154064   0.1490912
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.1257310   0.0905497   0.1609123
6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1351351   0.0248446   0.2454257
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592839   0.3545092
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1285052   0.0975313   0.1594791
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0720846   0.0339172   0.1102520
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1478792   0.0956202   0.2001383
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0387244   0.0283017   0.0491471
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0410959   0.0088877   0.0733041
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0547445   0.0356938   0.0737952
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0443266   0.0314808   0.0571724
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0373435   0.0154860   0.0592010
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0748610   0.0565188   0.0932033
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0788888   0.0514248   0.1063528
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1063106   0.0491158   0.1635054
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1351578   0.0634938   0.2068218
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0089270   0.0069413   0.0109127
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0043210   0.0000725   0.0085694
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0077904   0.0041482   0.0114325
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0298182   0.0253123   0.0343242
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0241720   0.0152777   0.0330663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0501984   0.0386097   0.0617872
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1248712   0.1136108   0.1361317
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.1647306   0.1258370   0.2036242
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1415374   0.1215782   0.1614967
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0563984   0.0450572   0.0677397
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0555297   0.0305132   0.0805462
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0652534   0.0478492   0.0826576
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0827489   0.0760394   0.0894583
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0848362   0.0780142   0.0916583
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0977198   0.0809888   0.1144507
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.0985296   0.0696728   0.1273864
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1753871   0.0815483   0.2692259
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1117355   0.0539305   0.1695405
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0958084   0.0642126   0.1274042
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0693069   0.0197275   0.1188864
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0759494   0.0174748   0.1344240
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1079013   0.0859275   0.1298752
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1034058   0.0598635   0.1469482
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1160368   0.0921381   0.1399355
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1803532   0.1379241   0.2227824
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2253921   0.1407912   0.3099931
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1833358   0.0963959   0.2702757
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2101449   0.1620244   0.2582654
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1159420   0.0403132   0.1915709
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1494253   0.0744255   0.2244251
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0469925   0.0290014   0.0649835
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0584416   0.0213757   0.0955074
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0410256   0.0213310   0.0607203
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0959060   0.0841804   0.1076316
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.0821785   0.0476044   0.1167526
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.0991680   0.0800611   0.1182750
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0643114   0.0517055   0.0769174
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0647152   0.0370460   0.0923843
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0754476   0.0556060   0.0952891
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2093584   0.1962135   0.2225033
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2233142   0.2084546   0.2381737
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2408722   0.2079996   0.2737448


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1674419   0.1174176   0.2174661
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2931937   0.2558878   0.3304996
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.2482947   0.2261720   0.2704173
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2059282   0.1745993   0.2372572
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2087491   0.1435025   0.2739957
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1593044   0.1529843   0.1656245
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1734393   0.1622569   0.1846217
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1095191   0.1043958   0.1146423
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432621   0.0343680   0.0521561
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0576923   0.0476698   0.0677148
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0904255   0.0667359   0.1141152
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082498   0.0066007   0.0098989
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0312169   0.0275173   0.0349165
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1321217   0.1226366   0.1416069
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0846892   0.0798858   0.0894926
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1096210   0.0948307   0.1244113
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1868583   0.1522030   0.2215136
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1828704   0.1463759   0.2193648
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0464684   0.0338852   0.0590516
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0957708   0.0862423   0.1052993
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2181903   0.2083363   0.2280442


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           2.1142857   1.0341049   4.3227760
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           1.5179487   0.7228866   3.1874546
Birth       ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          <20                  [20-30)           1.0452080   0.5645305   1.9351651
Birth       ki1000108-IRC              INDIA                          >=30                 [20-30)           0.7035054   0.3126330   1.5830697
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.0915165   0.7830524   1.5214922
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1528746   0.8224362   1.6160764
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.8499650   0.5560925   1.2991371
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.5833419   0.3927943   0.8663255
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           0.9532006   0.5716475   1.5894260
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.2377604   0.8366352   1.8312051
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.1263363   0.8015930   1.5826404
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9993175   0.6924484   1.4421804
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.2661893   0.9817978   1.6329589
Birth       ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.9825661   0.8013021   1.2048342
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.5355261   1.0965892   2.1501583
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.7475189   0.4359271   1.2818300
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0221049   0.8688886   1.2023388
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9071931   0.7926062   1.0383458
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1570938   1.0390485   1.2885500
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9257787   0.8227447   1.0417160
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.4148449   0.9970542   2.0077005
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9737480   0.7330406   1.2934961
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2771974   1.0250634   1.5913486
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.0936347   0.9403622   1.2718896
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2684677   1.0004660   1.6082610
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.7881430   0.6358242   0.9769514
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1431193   1.0380551   1.2588173
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.3147832   1.1398393   1.5165776
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
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.8424626   0.4383775   1.6190230
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.6888512   1.1580661   2.4629150
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3476003   0.7103495   2.5565256
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.7132702   0.9084049   3.2312624
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.4840362   0.1919728   1.2204384
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8726755   0.4997017   1.5240344
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8106451   0.5446209   1.2066108
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.6834815   1.2777893   2.2179792
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3192036   1.0245081   1.6986669
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1334671   0.9587248   1.3400587
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9845961   0.6012798   1.6122767
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1570064   0.8283867   1.6159891
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0252255   0.9205299   1.1418285
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1809201   0.9765893   1.4280027
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.7800452   0.9666156   3.2779949
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.1340298   0.6255174   2.0559356
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.7233911   0.3290579   1.5902815
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.7927215   0.3430583   1.8317802
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9583369   0.6006541   1.5290160
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0753967   0.8052220   1.4362227
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.2497262   0.8025559   1.9460521
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0165375   0.5985457   1.7264319
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.5517241   0.2763654   1.1014385
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.7110583   0.4095527   1.2345268
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2436364   0.5928628   2.6087508
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.8730256   0.4724528   1.6132273
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8568651   0.5528814   1.3279841
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.0340130   0.8230655   1.2990253
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0062776   0.6287634   1.6104543
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1731593   0.8449799   1.6287993
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0666597   0.9761002   1.1656210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1505254   0.9910920   1.3356063


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0323067   -0.0044929    0.0691063
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.0051348   -0.0248945    0.0146249
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0037957   -0.0045469    0.0121384
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0350452   -0.0602889   -0.0098014
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0079963   -0.0160282    0.0320207
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0057432   -0.0169280    0.0284145
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0044848   -0.0206613    0.0296308
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0135993   -0.0096287    0.0368273
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0021884   -0.0089328    0.0045559
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0019767   -0.0025033    0.0064567
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0087481   -0.0255927    0.0430889
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0081129    0.0001680    0.0160578
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0043008   -0.0151397    0.0065382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0089330    0.0040401    0.0138260
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0066219   -0.0090812    0.0223251
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0040674   -0.0162266    0.0080917
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0045377   -0.0022040    0.0112794
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0133657    0.0029534    0.0237780
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0115367   -0.0065748    0.0296483
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0006772   -0.0016216    0.0002672
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0013986   -0.0013146    0.0041119
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0072505    0.0005328    0.0139681
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0030990   -0.0044408    0.0106387
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0019403   -0.0028393    0.0067200
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0085516   -0.0086753    0.0257785
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0082597   -0.0255539    0.0090344
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0017196   -0.0145873    0.0180266
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0065051   -0.0192684    0.0322786
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0272746   -0.0535163   -0.0010329
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0005241   -0.0132499    0.0122017
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0001352   -0.0069329    0.0066625
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0038797   -0.0044637    0.0122230
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0088319   -0.0009699    0.0186337


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.1929429   -0.0529073    0.3813880
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.0191440   -0.0955205    0.0519078
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0354805   -0.0373305    0.1031807
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.1195291   -0.2090447   -0.0366411
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0363591   -0.0792523    0.1395861
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0236074   -0.0741529    0.1124703
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0180623   -0.0886537    0.1143174
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0660390   -0.0536100    0.1721006
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0104836   -0.0431379    0.0211486
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0124082   -0.0161185    0.0401340
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0344458   -0.1107201    0.1606391
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0467768   -0.0000993    0.0914557
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0276451   -0.0996953    0.0396845
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0815661    0.0357683    0.1251888
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0500325   -0.0758153    0.1611587
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0326865   -0.1332902    0.0589866
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1048883   -0.0636953    0.2467534
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.2316721    0.0332956    0.3893400
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.1275826   -0.0944472    0.3045694
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0820889   -0.2022044    0.0260255
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0448039   -0.0461512    0.1278510
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0548772    0.0027502    0.1042794
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0520857   -0.0832630    0.1705232
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0229114   -0.0351767    0.0777399
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0798607   -0.0946759    0.2265690
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0943446   -0.3091652    0.0852260
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0156872   -0.1449077    0.1537556
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0348130   -0.1133633    0.1632687
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.1491469   -0.3002840   -0.0155771
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0112782   -0.3257854    0.2286206
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0014115   -0.0749658    0.0671098
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0568938   -0.0734804    0.1714341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0404778   -0.0053502    0.0842168
