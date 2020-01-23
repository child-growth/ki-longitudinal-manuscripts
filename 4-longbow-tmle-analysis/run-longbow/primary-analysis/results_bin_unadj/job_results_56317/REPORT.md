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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)         0      128     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)         1       20     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20             0       20     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20             1        8     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30            0       31     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30            1        8     215  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)         0       37      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)         1        2      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         <20             0        8      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         <20             1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30            0       15      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30            1        0      62  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)         0       32      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)         1        4      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          <20             0        7      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          <20             1        0      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          >=30            0        1      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          >=30            1        1      45  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)         0       20      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)         1        1      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          <20             0        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          <20             1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            0        4      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            1        1      26  wasted           
Birth       ki0047075b-MAL-ED          PERU                           [20-30)         0      110     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           [20-30)         1        3     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           <20             0       61     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           <20             1        2     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           >=30            0       52     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           >=30            1        0     228  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         0       59     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         1        6     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20             0       19     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20             1        3     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            0       30     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            1        3     120  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         0       66     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             0        7     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            0       41     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            1        1     115  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         0       66      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         1        9      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             0        5      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             1        2      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            0        4      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            1        0      86  wasted           
Birth       ki1000108-IRC              INDIA                          [20-30)         0      210     343  wasted           
Birth       ki1000108-IRC              INDIA                          [20-30)         1       79     343  wasted           
Birth       ki1000108-IRC              INDIA                          <20             0       20     343  wasted           
Birth       ki1000108-IRC              INDIA                          <20             1        8     343  wasted           
Birth       ki1000108-IRC              INDIA                          >=30            0       21     343  wasted           
Birth       ki1000108-IRC              INDIA                          >=30            1        5     343  wasted           
Birth       ki1000109-EE               PAKISTAN                       [20-30)         0       62     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       [20-30)         1        6     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       <20             0        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       <20             1        1     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       >=30            0       93     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       >=30            1       15     177  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)         0      754    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)         1       87    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20             0      122    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20             1       16    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30            0      109    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30            1       15    1103  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)         0      260     573  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)         1      125     573  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             0       47     573  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             1       20     573  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            0       98     573  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            1       23     573  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)         0      289     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)         1       77     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20             0       52     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20             1       15     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30            0       74     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30            1       25     532  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         0      358     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         1      111     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             0       89     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             1       35     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            0       88     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1       26     707  wasted           
Birth       ki1101329-Keneba           GAMBIA                         [20-30)         0      505    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         [20-30)         1      165    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         <20             0      159    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         <20             1       65    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         >=30            0      438    1466  wasted           
Birth       ki1101329-Keneba           GAMBIA                         >=30            1      134    1466  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)         0      340     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)         1       81     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          <20             0       88     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          <20             1       37     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30            0       81     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30            1       14     641  wasted           
Birth       ki1119695-PROBIT           BELARUS                        [20-30)         0     7803   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        [20-30)         1     2097   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        <20             0     1096   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        <20             1      306   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        >=30            0     2044   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        >=30            1      484   13830  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         0     7314   12881  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         1     1366   12881  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20             0     1649   12881  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20             1      381   12881  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0     1866   12881  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1      305   12881  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)         0      277     756  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)         1       90     756  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      <20             0       68     756  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      <20             1       33     756  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      >=30            0      219     756  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      >=30            1       69     756  wasted           
Birth       ki1135781-COHORTS          INDIA                          [20-30)         0     2472    4405  wasted           
Birth       ki1135781-COHORTS          INDIA                          [20-30)         1      493    4405  wasted           
Birth       ki1135781-COHORTS          INDIA                          <20             0      264    4405  wasted           
Birth       ki1135781-COHORTS          INDIA                          <20             1       73    4405  wasted           
Birth       ki1135781-COHORTS          INDIA                          >=30            0      905    4405  wasted           
Birth       ki1135781-COHORTS          INDIA                          >=30            1      198    4405  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)         0     1466    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)         1      278    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    <20             0      281    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    <20             1       73    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30            0      701    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30            1      100    2899  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         0     8120   18006  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         1      908   18006  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20             0     6411   18006  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20             1      840   18006  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30            0     1503   18006  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30            1      224   18006  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)         0      160     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)         1        5     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20             0       33     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20             1        2     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30            0       40     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30            1        1     241  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)         0      125     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)         1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         <20             0       37     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         <20             1        0     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30            0       46     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30            1        1     209  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)         0      161     234  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)         1       18     234  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          <20             0       33     234  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          <20             1        1     234  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          >=30            0       21     234  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          >=30            1        0     234  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)         0      181     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)         1        4     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          <20             0        5     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          <20             1        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          >=30            0       46     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          >=30            1        0     236  wasted           
6 months    ki0047075b-MAL-ED          PERU                           [20-30)         0      136     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           [20-30)         1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           <20             0       76     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           <20             1        0     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           >=30            0       61     273  wasted           
6 months    ki0047075b-MAL-ED          PERU                           >=30            1        0     273  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         0      115     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         1        3     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20             0       40     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20             1        2     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            0       92     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            1        2     254  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         0      127     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         1        1     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             0       15     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            0      104     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            1        0     247  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         0      251     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         1       41     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20             0       31     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20             1        2     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30            0       40     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30            1        3     368  wasted           
6 months    ki1000108-IRC              INDIA                          [20-30)         0      299     408  wasted           
6 months    ki1000108-IRC              INDIA                          [20-30)         1       43     408  wasted           
6 months    ki1000108-IRC              INDIA                          <20             0       32     408  wasted           
6 months    ki1000108-IRC              INDIA                          <20             1        5     408  wasted           
6 months    ki1000108-IRC              INDIA                          >=30            0       23     408  wasted           
6 months    ki1000108-IRC              INDIA                          >=30            1        6     408  wasted           
6 months    ki1000109-EE               PAKISTAN                       [20-30)         0      145     372  wasted           
6 months    ki1000109-EE               PAKISTAN                       [20-30)         1       14     372  wasted           
6 months    ki1000109-EE               PAKISTAN                       <20             0        1     372  wasted           
6 months    ki1000109-EE               PAKISTAN                       <20             1        0     372  wasted           
6 months    ki1000109-EE               PAKISTAN                       >=30            0      179     372  wasted           
6 months    ki1000109-EE               PAKISTAN                       >=30            1       33     372  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)         0      885    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)         1      130    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20             0      158    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20             1       13    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30            0      125    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30            1       23    1334  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)         0      220     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)         1       40     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20             0       32     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20             1        4     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30            0       59     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30            1       25     380  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)         0      334     535  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)         1       23     535  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20             0       58     535  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20             1        3     535  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30            0      108     535  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30            1        9     535  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)         0      406     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)         1       18     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20             0       64     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20             1        2     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30            0      108     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30            1        5     603  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         0      450     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         1       12     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20             0      128     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20             1        3     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30            0      116     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1        6     715  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         0     1266    2011  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         1       51    2011  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             0      140    2011  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1        6    2011  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            0      518    2011  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            1       30    2011  wasted           
6 months    ki1101329-Keneba           GAMBIA                         [20-30)         0      943    2080  wasted           
6 months    ki1101329-Keneba           GAMBIA                         [20-30)         1       44    2080  wasted           
6 months    ki1101329-Keneba           GAMBIA                         <20             0      274    2080  wasted           
6 months    ki1101329-Keneba           GAMBIA                         <20             1       14    2080  wasted           
6 months    ki1101329-Keneba           GAMBIA                         >=30            0      743    2080  wasted           
6 months    ki1101329-Keneba           GAMBIA                         >=30            1       62    2080  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)         0      171     276  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)         1        0     276  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20             0       45     276  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20             1        1     276  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30            0       57     276  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30            1        2     276  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)         0      342     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)         1       29     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          <20             0       97     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          <20             1       11     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30            0       74     564  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30            1       11     564  wasted           
6 months    ki1119695-PROBIT           BELARUS                        [20-30)         0    11213   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        [20-30)         1      101   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        <20             0     1613   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        <20             1        7   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        >=30            0     2802   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        >=30            1       22   15758  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         0     5461    8489  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         1      170    8489  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20             0     1259    8489  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20             1       33    8489  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0     1504    8489  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1       62    8489  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)         0      454     963  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)         1       17     963  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      <20             0      116     963  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      <20             1        2     963  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      >=30            0      361     963  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      >=30            1       13     963  wasted           
6 months    ki1135781-COHORTS          INDIA                          [20-30)         0     2910    4897  wasted           
6 months    ki1135781-COHORTS          INDIA                          [20-30)         1      416    4897  wasted           
6 months    ki1135781-COHORTS          INDIA                          <20             0      311    4897  wasted           
6 months    ki1135781-COHORTS          INDIA                          <20             1       60    4897  wasted           
6 months    ki1135781-COHORTS          INDIA                          >=30            0     1029    4897  wasted           
6 months    ki1135781-COHORTS          INDIA                          >=30            1      171    4897  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)         0     1510    2706  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)         1       90    2706  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    <20             0      311    2706  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    <20             1       20    2706  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30            0      724    2706  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30            1       51    2706  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)         0      358     669  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)         1        6     669  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         <20             0      107     669  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         <20             1        0     669  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         >=30            0      192     669  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         >=30            1        6     669  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         0     7026   16779  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         1      630   16779  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20             0     7232   16779  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20             1      672   16779  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30            0     1100   16779  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30            1      119   16779  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)         0      133     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)         1       13     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20             0       24     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20             1        5     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30            0       34     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30            1        3     212  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)         0      101     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)         1        1     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         <20             0       27     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         <20             1        0     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30            0       38     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30            1        2     169  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)         0      148     225  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)         1       24     225  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          <20             0       30     225  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          <20             1        3     225  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          >=30            0       20     225  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          >=30            1        0     225  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)         0      175     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)         1        4     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          <20             0        4     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          <20             1        0     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          >=30            0       44     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          >=30            1        1     228  wasted           
24 months   ki0047075b-MAL-ED          PERU                           [20-30)         0       97     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           [20-30)         1        1     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           <20             0       52     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           <20             1        3     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           >=30            0       48     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           >=30            1        0     201  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         0      106     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)         1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20             0       39     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20             1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            0       92     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            1        1     238  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         0      110     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)         1        3     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             0        9     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             1        0     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            0       91     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            1        1     214  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         0      276     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)         1       20     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20             0       33     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20             1        1     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30            0       40     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30            1        2     372  wasted           
24 months   ki1000108-IRC              INDIA                          [20-30)         0      318     409  wasted           
24 months   ki1000108-IRC              INDIA                          [20-30)         1       25     409  wasted           
24 months   ki1000108-IRC              INDIA                          <20             0       36     409  wasted           
24 months   ki1000108-IRC              INDIA                          <20             1        1     409  wasted           
24 months   ki1000108-IRC              INDIA                          >=30            0       24     409  wasted           
24 months   ki1000108-IRC              INDIA                          >=30            1        5     409  wasted           
24 months   ki1000109-EE               PAKISTAN                       [20-30)         0       55     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       [20-30)         1       11     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       <20             0        1     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       <20             1        0     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       >=30            0       82     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       >=30            1       19     168  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)         0      252     426  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)         1       36     426  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20             0       41     426  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20             1        3     426  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30            0       80     426  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30            1       14     426  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)         0      369     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)         1       40     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20             0       53     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20             1       11     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30            0       95     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30            1       11     579  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         0      302     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)         1       32     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20             0       94     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20             1        7     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30            0       73     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1        6     514  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         0        3       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             0        1       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            0        2       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            1        0       6  wasted           
24 months   ki1101329-Keneba           GAMBIA                         [20-30)         0      706    1715  wasted           
24 months   ki1101329-Keneba           GAMBIA                         [20-30)         1       85    1715  wasted           
24 months   ki1101329-Keneba           GAMBIA                         <20             0      196    1715  wasted           
24 months   ki1101329-Keneba           GAMBIA                         <20             1       21    1715  wasted           
24 months   ki1101329-Keneba           GAMBIA                         >=30            0      625    1715  wasted           
24 months   ki1101329-Keneba           GAMBIA                         >=30            1       82    1715  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)         0      260     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)         1       57     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          <20             0       73     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          <20             1       21     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30            0       63     487  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30            1       13     487  wasted           
24 months   ki1119695-PROBIT           BELARUS                        [20-30)         0     2814    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        [20-30)         1       33    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        <20             0      362    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        <20             1        3    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        >=30            0      752    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        >=30            1        8    3972  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         0      218     432  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)         1       58     432  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20             0       61     432  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20             1        8     432  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0       74     432  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1       13     432  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)         0      507    1076  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)         1       25    1076  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      <20             0      145    1076  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      <20             1        9    1076  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      >=30            0      374    1076  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      >=30            1       16    1076  wasted           
24 months   ki1135781-COHORTS          INDIA                          [20-30)         0     2212    3665  wasted           
24 months   ki1135781-COHORTS          INDIA                          [20-30)         1      234    3665  wasted           
24 months   ki1135781-COHORTS          INDIA                          <20             0      226    3665  wasted           
24 months   ki1135781-COHORTS          INDIA                          <20             1       20    3665  wasted           
24 months   ki1135781-COHORTS          INDIA                          >=30            0      876    3665  wasted           
24 months   ki1135781-COHORTS          INDIA                          >=30            1       97    3665  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)         0     1367    2449  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)         1       94    2449  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    <20             0      272    2449  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    <20             1       21    2449  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30            0      643    2449  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30            1       52    2449  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)         0      237     461  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)         1        4     461  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         <20             0       75     461  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         <20             1        3     461  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         >=30            0      141     461  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         >=30            1        1     461  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         0     3198    8598  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)         1      843    8598  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20             0     2983    8598  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20             1      862    8598  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30            0      541    8598  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30            1      171    8598  wasted           


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/79995bfe-9cdb-4184-b9f2-bc4906e4f2f3/d30db8c2-9e42-438b-9060-2bbdce026bd0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/79995bfe-9cdb-4184-b9f2-bc4906e4f2f3/d30db8c2-9e42-438b-9060-2bbdce026bd0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/79995bfe-9cdb-4184-b9f2-bc4906e4f2f3/d30db8c2-9e42-438b-9060-2bbdce026bd0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/79995bfe-9cdb-4184-b9f2-bc4906e4f2f3/d30db8c2-9e42-438b-9060-2bbdce026bd0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1034483   0.0784474   0.1284492
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1159420   0.0627558   0.1691283
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1209677   0.0615464   0.1803891
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.3246753   0.2778611   0.3714896
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2985075   0.1888397   0.4081753
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1900826   0.1201103   0.2600550
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2103825   0.1685870   0.2521780
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2238806   0.1239746   0.3237866
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2525253   0.1668630   0.3381876
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2366738   0.1981792   0.2751683
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2822581   0.2029802   0.3615359
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2280702   0.1509929   0.3051474
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.2462687   0.2136346   0.2789028
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                0.2901786   0.2307248   0.3496324
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2342657   0.1995448   0.2689867
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1923990   0.1547160   0.2300821
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2960000   0.2159126   0.3760874
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1473684   0.0760325   0.2187043
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2118182   0.1455099   0.2781265
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                0.2182596   0.1467836   0.2897356
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1914557   0.1260105   0.2569009
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1573733   0.1497122   0.1650343
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1876847   0.1706986   0.2046708
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1404883   0.1258705   0.1551060
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.2452316   0.2011865   0.2892767
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3267327   0.2352024   0.4182630
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2395833   0.1902553   0.2889113
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1662732   0.1528700   0.1796764
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                0.2166172   0.1726311   0.2606034
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.1795104   0.1568592   0.2021616
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.1594037   0.1422209   0.1765864
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2062147   0.1640613   0.2483681
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1248439   0.1019493   0.1477386
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.1005760   0.0936094   0.1075426
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.1158461   0.1078492   0.1238430
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1297047   0.1128924   0.1465170
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.1257310   0.0905497   0.1609123
6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1351351   0.0248446   0.2454257
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592839   0.3545092
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1280788   0.0971502   0.1590075
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0760234   0.0383612   0.1136856
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1554054   0.1033917   0.2074191
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0387244   0.0283017   0.0491471
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0410959   0.0088877   0.0733041
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0547445   0.0356938   0.0737952
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0445795   0.0317012   0.0574578
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0486111   0.0237682   0.0734541
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0770186   0.0585961   0.0954411
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.0781671   0.0508280   0.1055062
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1018519   0.0447592   0.1589445
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1294118   0.0579922   0.2008313
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0089270   0.0069413   0.0109127
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0043210   0.0000725   0.0085694
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0077904   0.0041482   0.0114325
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0301900   0.0257206   0.0346595
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0255418   0.0169388   0.0341448
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0395913   0.0299329   0.0492497
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.1250752   0.1138316   0.1363187
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.1617251   0.1242547   0.1991954
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1425000   0.1227200   0.1622800
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0562500   0.0449583   0.0675417
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0604230   0.0347497   0.0860963
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0658065   0.0483470   0.0832659
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0822884   0.0756719   0.0889049
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0850202   0.0781917   0.0918488
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0976210   0.0808773   0.1143647
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.0977995   0.0689870   0.1266121
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1718750   0.0793652   0.2643848
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1037736   0.0456673   0.1618798
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0958084   0.0642126   0.1274042
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0693069   0.0197275   0.1188864
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0759494   0.0174748   0.1344240
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1074589   0.0858704   0.1290474
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0967742   0.0574262   0.1361222
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1159830   0.0923732   0.1395928
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1798107   0.1374923   0.2221292
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2234043   0.1391147   0.3076938
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1710526   0.0863073   0.2557980
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2101449   0.1620244   0.2582654
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1159420   0.0403132   0.1915709
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1494253   0.0744255   0.2244251
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0469925   0.0290014   0.0649835
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0584416   0.0213757   0.0955074
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0410256   0.0213310   0.0607203
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0956664   0.0840084   0.1073244
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.0813008   0.0471443   0.1154574
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.0996917   0.0808649   0.1185185
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0643395   0.0517558   0.0769232
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0716724   0.0421311   0.1012136
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0748201   0.0552557   0.0943846
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.2086117   0.1954507   0.2217727
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.2241873   0.2093037   0.2390708
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2401685   0.2071566   0.2731804


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1095190   0.1043958   0.1146423
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.1207729   0.8378473   1.4992373
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1693548   0.8469816   1.6144278
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9194030   0.6195886   1.3642953
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.5854545   0.3942723   0.8693408
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0641597   0.6529300   1.7343911
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.2003148   0.8101537   1.7783732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.1926039   0.8620638   1.6498825
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9636479   0.6622674   1.4021786
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.1783009   0.9231791   1.5039258
Birth       ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.9512609   0.7797512   1.1604948
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.5384691   1.1016095   2.1485720
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.7659519   0.4543791   1.2911736
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0304103   0.8755395   1.2126755
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9038681   0.7944881   1.0283068
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1926087   1.0761372   1.3216860
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.8927072   0.7958288   1.0013789
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.3323432   0.9552038   1.8583873
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9769676   0.7433992   1.2839208
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.3027790   1.0471011   1.6208875
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.0796114   0.9294780   1.2539950
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.2936634   1.0267337   1.6299893
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.7831937   0.6331199   0.9688407
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.1518265   1.0458800   1.2685053
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2896189   1.1155998   1.4907826
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           1.0747957   0.4535482   2.5469971
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           1.6455493   0.7646819   3.5411231
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.5935673   0.3339700   1.0549514
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.2133576   0.8004275   1.8393129
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0612409   0.4633734   2.4305072
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.4136969   0.9105335   2.1949097
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0904356   0.6062423   1.9613442
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.7276679   1.1873388   2.5138877
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3030013   0.6729797   2.5228285
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.6555781   0.8613770   3.1820431
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.4840362   0.1919728   1.2204384
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8726755   0.4997017   1.5240344
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8460344   0.5856018   1.2222883
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.3114041   0.9858399   1.7444828
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.2930230   1.0084994   1.6578180
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1393149   0.9656574   1.3442019
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0741860   0.6714180   1.7185650
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1698925   0.8387962   1.6316817
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0331984   0.9279197   1.1504216
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1863276   0.9810703   1.4345284
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.7574218   0.9514729   3.2460532
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           1.0610849   0.5635971   1.9977059
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.7233911   0.3290579   1.5902815
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.7927215   0.3430583   1.8317802
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9005693   0.5722101   1.4173553
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.0793244   0.8108526   1.4366868
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.2424412   0.7964399   1.9382005
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9512927   0.5496757   1.6463486
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.5517241   0.2763654   1.1014385
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.7110583   0.4095527   1.2345268
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2436364   0.5928628   2.6087508
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.8730256   0.4724528   1.6132273
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8498367   0.5487277   1.3161764
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.0420762   0.8323195   1.3046948
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1139714   0.7058941   1.7579581
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1628961   0.8389321   1.6119627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0746628   0.9831500   1.1746936
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.1512705   0.9904793   1.3381641


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0323067   -0.0044929    0.0691063
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.0051348   -0.0248945    0.0146249
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0035327   -0.0047505    0.0118159
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0314816   -0.0567454   -0.0062178
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0095423   -0.0146321    0.0337167
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0066077   -0.0161416    0.0293570
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0020260   -0.0220768    0.0261288
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0135292   -0.0096274    0.0366858
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0030691   -0.0098786    0.0037404
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0019311   -0.0024887    0.0063510
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0087366   -0.0232082    0.0406815
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0071661   -0.0007619    0.0150941
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0038328   -0.0145169    0.0068513
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0089431    0.0040202    0.0138659
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0066219   -0.0090812    0.0223251
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0036410   -0.0149381    0.0076560
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0045377   -0.0022040    0.0112794
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0131128    0.0026771    0.0235484
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0122584   -0.0057779    0.0302947
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0006772   -0.0016216    0.0002672
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0010268   -0.0016493    0.0037030
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0070465    0.0003635    0.0137295
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0032474   -0.0042486    0.0107435
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0024008   -0.0023484    0.0071500
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0092817   -0.0078295    0.0263928
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0082597   -0.0255539    0.0090344
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0021621   -0.0138034    0.0181276
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0070476   -0.0186511    0.0327463
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0272746   -0.0535163   -0.0010329
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0005241   -0.0132499    0.0122017
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0001044   -0.0066256    0.0068344
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0038516   -0.0044626    0.0121658
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0095785   -0.0002718    0.0194289


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.1929429   -0.0529073    0.3813880
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.0191440   -0.0955205    0.0519078
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0330216   -0.0398740    0.1008072
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.1073748   -0.1968882   -0.0245559
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0433889   -0.0729830    0.1471395
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0271607   -0.0709637    0.1162947
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0081598   -0.0938217    0.1006331
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0656986   -0.0535396    0.1714415
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0147023   -0.0476884    0.0172453
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0121223   -0.0160131    0.0394785
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0344005   -0.0999150    0.1523142
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0413176   -0.0054517    0.0859113
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0246369   -0.0956463    0.0417703
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0816576    0.0355743    0.1255389
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0500325   -0.0758153    0.1611587
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0292599   -0.1221406    0.0559330
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1048883   -0.0636953    0.2467534
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.2272881    0.0284512    0.3854310
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.1355637   -0.0854708    0.3115889
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0820889   -0.2022044    0.0260255
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0328941   -0.0566559    0.1148548
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0533337    0.0014848    0.1024903
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0545807   -0.0799220    0.1723314
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0283483   -0.0293346    0.0827987
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0866788   -0.0867337    0.2324194
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0943446   -0.3091652    0.0852260
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0197232   -0.1372735    0.1550471
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0377162   -0.1100131    0.1657845
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.1491469   -0.3002840   -0.0155771
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0112782   -0.3257854    0.2286206
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0010902   -0.0717120    0.0689469
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0564825   -0.0733959    0.1706459
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0439000   -0.0021500    0.0878339
