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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        birthlen      n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  -----------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37     216  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm           102     216  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        77     216  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           29      62  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            17      62  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16      62  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8      42  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm            19      42  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      42  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      27  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            12      27  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      27  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm           49     218  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm            84     218  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        85     218  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           36     102  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            25     102  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        41     102  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     119  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            37     119  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        50     119  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           13      83  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            35      83  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        35      83  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          >=50 cm          138     377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          <48 cm           104     377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm       135     377  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm           19     202  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm           137     202  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm        46     202  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm           11      32  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm            12      32  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         9      32  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          189    1261  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           667    1261  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       405    1261  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          125     550  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           217     550  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       208     550  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          154     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           228     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       258     640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          156     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           278     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       287     721  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm          617    1254  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm           232    1254  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       405    1254  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           88     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           270     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       151     509  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0      11  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     <48 cm             5      11  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      11  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm        13900   15319  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm           168   15319  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1251   15319  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2371    7982  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2487    7982  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3124    7982  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          371     728  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           136     728  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       221     728  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm         1385    6465  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm          2688    6465  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm      2392    6465  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1091   19024  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         13545   19024  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      4388   19024  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          703    2517  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1227    2517  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       587    2517  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           35     203  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm            94     203  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        74     203  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           28      59  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            15      59  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16      59  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8      41  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm            18      41  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      41  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm           48     211  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm            84     211  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        79     211  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34      92  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20      92  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        38      92  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     113  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            35     113  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        47     113  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12      87  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            44      87  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31      87  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          >=50 cm          138     379  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          <48 cm           106     379  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm       135     379  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm           17     175  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm           118     175  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm        40     175  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm           10      23  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm             6      23  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         7      23  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          166    1114  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           584    1114  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       364    1114  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          118     505  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           193     505  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       194     505  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          142     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           210     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       246     598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          153     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           264     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       278     695  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm          477     959  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm           171     959  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       311     959  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           81     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           243     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       145     469  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0       9  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     <48 cm             3       9  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         6       9  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm        12090   13309  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm           146   13309  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1073   13309  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1811    6109  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1884    6109  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2414    6109  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          313     620  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           118     620  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       189     620  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm         1293    5975  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm          2452    5975  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm      2230    5975  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          616   10596  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          7452   10596  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      2528   10596  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          486    1748  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           818    1748  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       444    1748  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37     197  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm            88     197  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        72     197  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           25      53  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            14      53  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        14      53  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8      41  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm            18      41  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      41  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm           41     192  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm            81     192  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        70     192  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34      86  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            18      86  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        34      86  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     108  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     108  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        44     108  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12      86  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            41      86  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        33      86  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          >=50 cm          142     389  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          <48 cm           109     389  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm       138     389  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm           20     194  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm           131     194  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm        43     194  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       >=50 cm            8      20  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       <48 cm             4      20  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         8      20  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          171    1133  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           598    1133  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       364    1133  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          108     480  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           187     480  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       185     480  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          134     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           199     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       232     565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          160     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           257     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       271     688  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm          293     574  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm            95     574  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       186     574  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           84     480  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           244     480  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       152     480  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0       8  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     <48 cm             4       8  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         4       8  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm        11297   12428  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm           130   12428  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1001   12428  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1748    5860  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1805    5860  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2307    5860  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          298     598  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           122     598  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       178     598  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm         1162    5274  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm          2167    5274  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm      1945    5274  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          690    2674  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1267    2674  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       717    2674  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           38     198  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm            88     198  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        72     198  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm           25      52  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm            13      52  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        14      52  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            7      40  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm            18      40  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      40  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm           40     183  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm            76     183  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm        67     183  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           31      83  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            19      83  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        33      83  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     109  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            33     109  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        45     109  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12      89  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            40      89  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        37      89  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          >=50 cm          139     382  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          <48 cm           108     382  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm       135     382  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm           21     214  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm           145     214  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm        48     214  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            8      21  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm             6      21  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         7      21  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          161    1136  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           604    1136  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       371    1136  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          107     466  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm           183     466  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       176     466  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          137     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           203     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       226     566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          153     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           261     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       260     674  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm          295     568  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm            90     568  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm       183     568  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm           74     468  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm           244     468  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       150     468  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0       7  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     <48 cm             3       7  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         4       7  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm        11528   12682  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm           127   12682  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1027   12682  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1736    5860  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1835    5860  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2289    5860  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          319     632  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           129     632  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       184     632  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm          993    4531  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm          1853    4531  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm      1685    4531  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          752    2961  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1455    2961  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       754    2961  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           36     186  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            82     186  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68     186  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           22      47  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            12      47  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        13      47  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            7      40  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      40  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      40  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm           38     175  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm            70     175  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        67     175  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           28      83  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20      83  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35      83  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     111  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     111  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        45     111  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      93  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            44      93  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        35      93  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          >=50 cm          138     374  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          <48 cm           106     374  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm       130     374  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm           21     194  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm           134     194  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm        39     194  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       >=50 cm            5      14  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       <48 cm             4      14  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm         5      14  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          169    1157  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm           611    1157  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       377    1157  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          105     445  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           172     445  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       168     445  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          134     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           188     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       210     532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          151     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           252     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       257     660  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm          456     888  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm           149     888  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       283     888  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           71     468  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           252     468  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       145     468  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       7  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     <48 cm             2       7  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         5       7  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm          904    1001  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        <48 cm            10    1001  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        87    1001  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          632    2513  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           922    2513  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       959    2513  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          273     555  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           114     555  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       168     555  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          787    2990  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1469    2990  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       734    2990  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           36     186  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            83     186  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        67     186  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           22      44  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             9      44  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        13      44  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm           37     165  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm            68     165  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        60     165  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           30      85  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20      85  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35      85  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     107  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     107  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        43     107  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      91  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            46      91  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31      91  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          >=50 cm          137     366  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          <48 cm           102     366  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm       127     366  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm           21     180  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm           120     180  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm        39     180  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          173    1161  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm           614    1161  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       374    1161  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          101     432  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           167     432  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       164     432  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          132     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           185     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       211     528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          143     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           231     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       230     604  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm          463     886  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm           148     886  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       275     886  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           82     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           251     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       147     480  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       6  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     <48 cm             3       6  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         3       6  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm          245     275  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        <48 cm             6     275  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        24     275  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          480    2012  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           779    2012  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       753    2012  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          244     509  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           108     509  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       157     509  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          793    2997  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1458    2997  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       746    2997  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37     186  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            81     186  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68     186  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           20      41  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             9      41  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12      41  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm           36     162  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm            68     162  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        58     162  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32      88  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      88  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35      88  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     102  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     102  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        39     102  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      82  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            39      82  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        29      82  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          >=50 cm          132     362  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          <48 cm           102     362  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm       128     362  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm           18     165  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm           104     165  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm        43     165  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           93     407  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           156     407  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       158     407  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          130     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           192     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       219     541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          129     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           209     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       208     546  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm          447     869  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm           145     869  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       277     869  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           79     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           228     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       138     445  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       7  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     <48 cm             4       7  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         3       7  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        >=50 cm          193     218  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        <48 cm             4     218  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        21     218  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          361    1568  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           624    1568  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       583    1568  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          232     490  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           108     490  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       150     490  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           38     184  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            79     184  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        67     184  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           19      41  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            10      41  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12      41  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm           33     154  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm            66     154  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        55     154  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32      89  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      89  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        36      89  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     101  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            33     101  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        39     101  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      83  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            38      83  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31      83  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          >=50 cm          133     371  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          <48 cm           105     371  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm       133     371  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm            6      70  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm            46      70  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm        18      70  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           94     396  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           151     396  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       151     396  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          108     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           173     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       190     471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          121     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           190     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       179     490  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          403     788  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm           137     788  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       248     788  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           61     341  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           169     341  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       111     341  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             0       1  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         1       1  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm          184     209  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        <48 cm             4     209  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        21     209  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          215    1144  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           501    1144  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       428    1144  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          242     519  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           111     519  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       166     519  y_rate_haz       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/9eb215fb-20c3-4248-bea1-b8c252a6a6d0/5e6ac4f7-10c0-4dff-b921-b6905cf14669/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9eb215fb-20c3-4248-bea1-b8c252a6a6d0/5e6ac4f7-10c0-4dff-b921-b6905cf14669/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9eb215fb-20c3-4248-bea1-b8c252a6a6d0/5e6ac4f7-10c0-4dff-b921-b6905cf14669/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.3059351   -0.3860944   -0.2257757
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0052062   -0.0539552    0.0435429
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.2123462   -0.2581957   -0.1664967
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0031783   -0.1106298    0.1042732
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.2944995    0.1357098    0.4532891
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0495057   -0.1455779    0.2445894
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.3253719   -0.4158433   -0.2349006
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0581773   -0.1874750    0.0711204
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.3476902   -0.4454241   -0.2499563
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.2721301   -0.4298421   -0.1144181
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0052574   -0.1105562    0.1210709
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.1332710   -0.3403514    0.0738094
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.3707710   -0.4442186   -0.2973235
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.1896440   -0.2439992   -0.1352888
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.3067917   -0.3614638   -0.2521196
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.4015963   -0.5190669   -0.2841257
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.1440594   -0.2690186   -0.0191002
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.2474459   -0.3459683   -0.1489236
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.3315613   -0.4187325   -0.2443901
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0008551   -0.0913590    0.0896488
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.2073618   -0.2727200   -0.1420035
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.4323281   -0.6864923   -0.1781638
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.0881761   -0.0809425    0.2572948
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1872123   -0.3277676   -0.0466570
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.5871969   -0.6692190   -0.5051747
0-3 months     ki1000108-IRC              INDIA                          <48 cm               NA                 0.0884325   -0.0118801    0.1887450
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.1718180   -0.2422956   -0.1013403
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.6011127   -0.8357557   -0.3664698
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.1582495   -0.2215756   -0.0949235
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.4184145   -0.4779791   -0.3588499
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.7919298   -1.1254546   -0.4584050
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -0.1113599   -0.4344243    0.2117045
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                -0.3898188   -0.7991363    0.0194986
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.4850674   -0.5340881   -0.4360466
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0049527   -0.0313455    0.0214400
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.1673845   -0.1960263   -0.1387427
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.4284009   -0.4798402   -0.3769616
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.1113978   -0.1538189   -0.0689767
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.2551375   -0.2942800   -0.2159951
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.2660581   -0.3029571   -0.2291591
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.1230288   -0.1501997   -0.0958578
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.1992683   -0.2257009   -0.1728358
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.3649904   -0.3991056   -0.3308752
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.1334866   -0.1614800   -0.1054931
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.2534716   -0.2779255   -0.2290177
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.4477246   -0.4766602   -0.4187891
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.0620633   -0.0015697    0.1256963
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.2360823   -0.2666958   -0.2054688
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.1976932   -0.2533315   -0.1420548
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.0463627    0.0109822    0.0817432
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0753822   -0.1143877   -0.0363767
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.4545961   -0.5120815   -0.3971106
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.0029509   -0.0417023    0.0476041
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                -0.1906481   -0.2478062   -0.1334899
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4201693   -0.4374902   -0.4028484
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1157760    0.0988816    0.1326705
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.1332993   -0.1472496   -0.1193490
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.6232327   -0.6525889   -0.5938765
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.3615277   -0.4149216   -0.3081337
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.5015733   -0.5350531   -0.4680934
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1987932   -0.2124799   -0.1851064
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                 0.0372019    0.0264194    0.0479844
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0926352   -0.1029774   -0.0822930
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.1585924   -0.1780752   -0.1391095
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                 0.1054999    0.0999762    0.1110237
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0377814   -0.0465827   -0.0289802
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.9147750   -0.9710194   -0.8585306
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.0425497    0.0233472    0.0617522
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.1780875   -0.2084459   -0.1477291
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0535598   -0.1160846    0.0089649
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.0078073   -0.0303668    0.0459813
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0309111   -0.0694900    0.0076677
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0277339   -0.1333129    0.0778451
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0507076   -0.0674823    0.1688976
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0338667   -0.1633225    0.0955892
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0649493   -0.2308455    0.1009469
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.0196847   -0.1010767    0.1404461
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0813062   -0.1463460   -0.0162665
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0457218   -0.2262854    0.1348419
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0946415    0.0090903    0.1801926
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0602236   -0.1708302    0.0503830
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0732955   -0.1439115   -0.0026795
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.0538465   -0.0105742    0.1182672
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.0225766   -0.0425959    0.0877490
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0565938   -0.1750606    0.0618730
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0202936   -0.1468059    0.1062187
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0089852   -0.1041177    0.0861472
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1157962   -0.1920689   -0.0395234
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0516614   -0.1355330    0.0322102
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0694442   -0.1403182    0.0014297
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2848742   -0.4406629   -0.1290856
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0069399   -0.1466590    0.1327792
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0906322   -0.2425462    0.0612819
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0776478   -0.1337439   -0.0215518
3-6 months     ki1000108-IRC              INDIA                          <48 cm               NA                -0.0329959   -0.0892427    0.0232508
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0256097   -0.0744565    0.0232371
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0237859   -0.0740695    0.1216412
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.0858356    0.0464675    0.1252037
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.0042644   -0.0666994    0.0752282
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                -0.0363448   -0.2471585    0.1744690
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.0222826   -0.2451979    0.2897631
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                 0.2147007   -0.0584337    0.4878351
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0604427   -0.0854538   -0.0354316
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0029575   -0.0359619    0.0300468
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0111543   -0.0471838    0.0248752
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0779516   -0.1248675   -0.0310357
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0413667   -0.0818066   -0.0009269
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0512105   -0.0842618   -0.0181592
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0917963   -0.1242877   -0.0593049
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.0068346   -0.0211670    0.0348363
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0236261   -0.0469427   -0.0003095
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0168289   -0.0513882    0.0177303
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0783525    0.0493241    0.1073809
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.0012545   -0.0230299    0.0255388
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0676373   -0.0979998   -0.0372748
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.0262471   -0.0201141    0.0726084
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0276008   -0.0666142    0.0114126
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.2403401   -0.2825068   -0.1981734
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.1138978   -0.1396658   -0.0881299
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.1964527   -0.2281038   -0.1648015
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0402655    0.0204344    0.0600965
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.1880522    0.1587317    0.2173728
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.1050627    0.0804900    0.1296355
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0200753   -0.0363054   -0.0038453
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0282573    0.0106645    0.0458501
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0094018   -0.0240741    0.0052705
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1485302   -0.1703825   -0.1266779
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0397743   -0.0784998   -0.0010488
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0759165   -0.1038590   -0.0479739
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1064525   -0.1189859   -0.0939192
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0207455   -0.0301492   -0.0113418
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0641157   -0.0736583   -0.0545731
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0913455   -0.1130348   -0.0696561
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                 0.0124337    0.0062021    0.0186653
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                -0.0395590   -0.0497947   -0.0293234
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0340942   -0.0588362   -0.0093522
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.0155845   -0.0062701    0.0374390
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0258922   -0.0500212   -0.0017631
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0954781   -0.1349536   -0.0560025
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0614327   -0.0923240   -0.0305415
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0606136   -0.0905477   -0.0306795
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0028694   -0.1076601    0.1019213
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.0301176   -0.1179559    0.0577208
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0052653   -0.1124466    0.1019160
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.1388221   -0.2278379   -0.0498064
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0868318   -0.2213258    0.0476621
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0312451   -0.1182528    0.0557627
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0143206   -0.1466152    0.1179739
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0721172   -0.1569221    0.0126877
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0890289   -0.1482843   -0.0297735
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0719830   -0.1314905   -0.0124754
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0167480   -0.0627179    0.0292220
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0457015   -0.0959923    0.0045892
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0650400   -0.1220627   -0.0080173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.1760919    0.0684480    0.2837359
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0379297   -0.0943907    0.0185314
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0766371   -0.1576616    0.0043874
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0044422   -0.1446398    0.1535241
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0888571   -0.1521269   -0.0255872
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0262244   -0.2139639    0.1615150
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0337517   -0.1397042    0.0722007
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0427587   -0.1628488    0.0773314
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0416900   -0.0765138   -0.0068662
6-9 months     ki1000108-IRC              INDIA                          <48 cm               NA                 0.0401231   -0.0033488    0.0835950
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0348350   -0.0723401    0.0026700
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.1253427   -0.1948425   -0.0558430
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.0987445   -0.1317978   -0.0656912
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.0784600   -0.1243542   -0.0325659
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0945866   -0.1355229   -0.0536502
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0744519   -0.0872382   -0.0616657
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0907286   -0.1133140   -0.0681432
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0808523   -0.1196892   -0.0420155
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0594232   -0.0901429   -0.0287034
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0576000   -0.0860203   -0.0291797
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0570177   -0.0778911   -0.0361443
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0688135   -0.0863925   -0.0512345
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0577765   -0.0759914   -0.0395615
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0408088   -0.0660144   -0.0156031
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0173490   -0.0391706    0.0044726
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0400104   -0.0603109   -0.0197100
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0217050   -0.0193783    0.0627883
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0613643   -0.1050010   -0.0177276
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0250703   -0.0784723    0.0283316
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0679258   -0.1091221   -0.0267295
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.0290104   -0.0579662   -0.0000545
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0566281   -0.0779399   -0.0353162
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0459952    0.0308736    0.0611167
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.1091722    0.0664894    0.1518551
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.1029761    0.0756329    0.1303193
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0362713   -0.0512746   -0.0212680
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0168870   -0.0326861   -0.0010879
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0391777   -0.0524761   -0.0258793
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1341610   -0.1524455   -0.1158766
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0742876   -0.1058725   -0.0427027
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.1261089   -0.1522925   -0.0999253
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.1054815   -0.1161061   -0.0948569
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0846944   -0.0931278   -0.0762611
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.1048241   -0.1134934   -0.0961548
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0355830   -0.0555705   -0.0155956
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0145885   -0.0285513   -0.0006256
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0408351   -0.0576606   -0.0240096
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.1423110   -0.1823827   -0.1022394
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0642631   -0.0915818   -0.0369445
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0995266   -0.1247280   -0.0743252
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0037176   -0.0914668    0.0840315
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.1024464   -0.0201117    0.2250045
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0042418   -0.1929465    0.2014301
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0454700   -0.1197669    0.0288269
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0747340   -0.1387158   -0.0107521
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0647863   -0.1093723   -0.0202003
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1199535   -0.1728029   -0.0671041
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0697601   -0.1218979   -0.0176223
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.1411722   -0.1852919   -0.0970524
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0871042   -0.1439224   -0.0302859
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0279273   -0.0639910    0.0081364
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0279333   -0.0693927    0.0135262
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.1017974   -0.1820416   -0.0215533
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0779567   -0.1799964    0.0240830
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0558951   -0.1280595    0.0162693
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1763184   -0.2443607   -0.1082762
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.1751574   -0.3164599   -0.0338550
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.1581664   -0.2158099   -0.1005230
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1828364   -0.1029337    0.4686064
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0578322   -0.1590043    0.0433400
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1083511   -0.1990237   -0.0176785
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0338294   -0.0628070   -0.0048517
9-12 months    ki1000108-IRC              INDIA                          <48 cm               NA                -0.0227840   -0.0579361    0.0123682
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0395796   -0.0682685   -0.0108906
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.1247787   -0.1789561   -0.0706014
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.0965996   -0.1184735   -0.0747257
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.1232499   -0.1640765   -0.0824233
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0562573    0.0037071    0.1088075
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.0962892   -0.0950597    0.2876381
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                 0.0477122   -0.1245773    0.2200017
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0743802   -0.1094877   -0.0392728
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0691834   -0.0848954   -0.0534714
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0999595   -0.1286106   -0.0713083
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0553606   -0.0849389   -0.0257824
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0397315   -0.0635904   -0.0158726
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0370385   -0.0611929   -0.0128841
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0682400   -0.0931498   -0.0433301
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0483945   -0.0652538   -0.0315353
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0729544   -0.0906248   -0.0552839
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0571130   -0.0786981   -0.0355279
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0305284   -0.0496265   -0.0114302
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0260987   -0.0436316   -0.0085659
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.1182735   -0.1549031   -0.0816439
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0827260   -0.1225675   -0.0428846
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0992929   -0.1300502   -0.0685355
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0959070   -0.1253947   -0.0664194
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.0772210   -0.0982887   -0.0561532
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0753278   -0.0955606   -0.0550950
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0330902    0.0120684    0.0541120
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.0636025    0.0432664    0.0839387
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.0704770    0.0349429    0.1060110
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0651978   -0.0776517   -0.0527438
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0449443   -0.0591343   -0.0307544
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0665690   -0.0788238   -0.0543141
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1047428   -0.1209619   -0.0885237
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0782867   -0.1054342   -0.0511392
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0760007   -0.0975999   -0.0544015
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0748972   -0.0856283   -0.0641662
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                -0.0909104   -0.0993137   -0.0825072
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                -0.0872604   -0.0958105   -0.0787104
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0571980   -0.0742555   -0.0401405
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0480290   -0.0583724   -0.0376855
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0556531   -0.0705966   -0.0407096
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0494982   -0.0796600   -0.0193365
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0615796   -0.0886351   -0.0345241
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0675817   -0.0952877   -0.0398757
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0459996   -0.1056720    0.0136729
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.0189917   -0.1430765    0.1050931
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0071114   -0.1373419    0.1231190
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.1331540   -0.2572189   -0.0090891
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0684495   -0.1242361   -0.0126629
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0562242   -0.1033751   -0.0090732
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0913121   -0.1673708   -0.0152534
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0996959   -0.1234486   -0.0759433
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.0154929   -0.0547908    0.0857767
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0935062   -0.1361077   -0.0509047
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0485960   -0.0901849   -0.0070072
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0687278   -0.0973465   -0.0401090
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.1112762   -0.2049519   -0.0176005
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0597822   -0.1308663    0.0113020
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0920374   -0.1489133   -0.0351615
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0951541   -0.1584995   -0.0318086
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0713911   -0.1385540   -0.0042283
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0643735   -0.1287712    0.0000242
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0446428   -0.2106510    0.1213653
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0740143   -0.1432000   -0.0048286
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1230351   -0.1816411   -0.0644291
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0630836   -0.0938455   -0.0323217
12-15 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.0357103   -0.0716120    0.0001914
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0451925   -0.0691282   -0.0212569
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0474119   -0.1035120    0.0086881
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.0198099    0.0008117    0.0388081
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.0345434   -0.0709830    0.0018963
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0888672   -0.1398649   -0.0378695
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0695059   -0.0953174   -0.0436945
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.1144083   -0.1357333   -0.0930833
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.1462814   -0.1752334   -0.1173295
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.1070672   -0.1432421   -0.0708922
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.1352698   -0.1566994   -0.1138403
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0570006   -0.0759026   -0.0380987
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0458293   -0.0634824   -0.0281762
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0264043   -0.0425290   -0.0102796
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0666201   -0.0852781   -0.0479621
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0272256   -0.0437559   -0.0106953
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0296635   -0.0443007   -0.0150263
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0578939   -0.0787852   -0.0370026
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0183489   -0.0502917    0.0135939
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0525538   -0.0719180   -0.0331896
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0600184   -0.0870388   -0.0329980
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.0688354   -0.0850792   -0.0525916
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0662945   -0.0834168   -0.0491722
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0021201   -0.1380073    0.1337671
12-15 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.2551214    0.1069283    0.4033145
12-15 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.0737112   -0.0070467    0.1544691
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0726795   -0.0907000   -0.0546591
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0585722   -0.0778276   -0.0393167
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0577448   -0.0751219   -0.0403676
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.1014211   -0.1208348   -0.0820074
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0786648   -0.1094814   -0.0478481
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.1071067   -0.1318015   -0.0824118
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0563425   -0.0695479   -0.0431370
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0396301   -0.0481164   -0.0311438
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0559752   -0.0699899   -0.0419605
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0667556   -0.0936642   -0.0398471
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0408666   -0.0660112   -0.0157221
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0378315   -0.0611493   -0.0145137
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0303088   -0.0859121    0.0252945
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0140754   -0.0456916    0.0738425
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                -0.0602148   -0.1110954   -0.0093342
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0325660   -0.1230412    0.0579092
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                -0.0434292   -0.0824832   -0.0043752
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                -0.0453430   -0.0852287   -0.0054572
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0516812   -0.1471918    0.0438294
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                -0.0194057   -0.0840196    0.0452083
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0948689   -0.1650048   -0.0247331
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0562845   -0.0838080   -0.0287611
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0184415   -0.0502436    0.0133606
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                -0.0245326   -0.0546191    0.0055539
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0070270   -0.0664354    0.0523813
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0172256   -0.0867596    0.0523085
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0160487   -0.0697536    0.0376562
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0694663   -0.1345798   -0.0043529
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0868372   -0.1416142   -0.0320603
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0651190   -0.1078817   -0.0223562
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1542583   -0.2479612   -0.0605555
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0812967   -0.1450072   -0.0175862
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1021674   -0.1571766   -0.0471581
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0561691   -0.0802265   -0.0321118
15-18 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.0186237   -0.0542959    0.0170486
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0255537   -0.0464269   -0.0046805
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0984808   -0.1455019   -0.0514597
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.0184508   -0.0337605   -0.0031411
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.0397503   -0.0632591   -0.0162415
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0359539   -0.0623093   -0.0095985
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                -0.0090535   -0.0264976    0.0083907
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                -0.0002558   -0.0175531    0.0170414
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0654396   -0.0924179   -0.0384614
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0422879   -0.0679336   -0.0166422
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0636513   -0.0880674   -0.0392352
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0475541   -0.0662816   -0.0288267
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0319921   -0.0473736   -0.0166106
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0366135   -0.0502210   -0.0230061
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0235053   -0.0404295   -0.0065810
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0045026   -0.0186233    0.0096181
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0249821   -0.0380525   -0.0119117
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0253101   -0.0464403   -0.0041800
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0417959   -0.0737378   -0.0098540
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0294334   -0.0486147   -0.0102521
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0897307   -0.1300794   -0.0493821
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                -0.0570763   -0.0757897   -0.0383630
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0774220   -0.0931027   -0.0617413
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0073808   -0.1506583    0.1358968
15-18 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                -0.2533373   -0.4815022   -0.0251725
15-18 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.0167014   -1.1826864    1.2160892
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0600874   -0.0810057   -0.0391692
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0585677   -0.0759994   -0.0411360
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0672117   -0.0865968   -0.0478266
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0662642   -0.0850392   -0.0474891
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0602158   -0.0998452   -0.0205864
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0386976   -0.0625884   -0.0148067
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0255226   -0.0389777   -0.0120675
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                -0.0354035   -0.0442500   -0.0265571
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                -0.0415555   -0.0550057   -0.0281054
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0180597   -0.0494705    0.0133511
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                -0.0210742   -0.0424705    0.0003220
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                -0.0108961   -0.0297225    0.0079304
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0430603   -0.0916221    0.0055015
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                -0.0300780   -0.0611738    0.0010177
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0003813   -0.0614446    0.0622073
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0250926   -0.0303548    0.0805400
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.0150384   -0.0180075    0.0480843
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.0092634   -0.0283645    0.0468912
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0197562   -0.0560855    0.0955979
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0099738   -0.0312562    0.0512037
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0388787   -0.1169673    0.0392100
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0282699   -0.0737529    0.0172131
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                -0.0075044   -0.0357727    0.0207638
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.0017962   -0.0256786    0.0292709
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0153291   -0.0801309    0.0494727
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                -0.0624455   -0.1096956   -0.0151955
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                -0.0466272   -0.1013036    0.0080491
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0043538   -0.0712902    0.0625826
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0606238   -0.1189472   -0.0023003
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0584476   -0.1052429   -0.0116523
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2002169   -0.2495000   -0.1509339
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0538445   -0.1265802    0.0188912
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0272668   -0.1139949    0.0594612
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0616570   -0.0863872   -0.0369268
18-21 months   ki1000108-IRC              INDIA                          <48 cm               NA                -0.0258314   -0.0480781   -0.0035847
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0175182   -0.0411495    0.0061131
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0443913   -0.0844964   -0.0042862
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.0238236   -0.0391486   -0.0084986
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                -0.0273565   -0.0480247   -0.0066883
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0384820   -0.0666789   -0.0102852
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0325052   -0.0532532   -0.0117572
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0370642   -0.0575171   -0.0166113
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0199880   -0.0370969   -0.0028791
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                -0.0018004   -0.0150471    0.0114463
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                -0.0137204   -0.0268168   -0.0006239
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0488409   -0.0635695   -0.0341124
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                -0.0082862   -0.0214420    0.0048696
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                -0.0346710   -0.0479519   -0.0213901
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0217070   -0.0422371   -0.0011770
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                -0.0193785   -0.0537667    0.0150098
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                -0.0089208   -0.0306932    0.0128515
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0207488   -0.0268660    0.0683635
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.0118092   -0.0037164    0.0273347
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.0150580    0.0001136    0.0300025
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0990214   -0.1248578   -0.0731851
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0655155   -0.0844401   -0.0465908
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0559407   -0.0747406   -0.0371408
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0255339   -0.0422692   -0.0087987
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                -0.0115439   -0.0440174    0.0209295
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0072018   -0.0294695    0.0150660
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0371229    0.0084661    0.0657797
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.0308473    0.0098090    0.0518855
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.0236092    0.0027910    0.0444273
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0296447   -0.0257678    0.0850573
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0104266   -0.0316722    0.0525254
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.0490197   -0.0188204    0.1168598
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0113504   -0.0663568    0.0890575
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.0364153   -0.0084114    0.0812419
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.0292718   -0.0218704    0.0804139
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0354196   -0.0969377    0.0260985
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0149242   -0.0318549    0.0617034
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                -0.0402892   -0.0851263    0.0045480
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0637434    0.0195202    0.1079667
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.0519578    0.0275629    0.0763527
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.0434348    0.0126270    0.0742426
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0028736   -0.0399147    0.0341674
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.0163590   -0.0456472    0.0783652
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.0880834    0.0233665    0.1528002
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0023135   -0.0483672    0.0529941
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0526884    0.0028401    0.1025366
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0056638   -0.0477882    0.0364605
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0399831   -0.0378428    0.1178091
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.0440976   -0.0099060    0.0981012
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0396355   -0.1091532    0.0298823
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0195639   -0.0405805    0.0014528
21-24 months   ki1000108-IRC              INDIA                          <48 cm               NA                 0.0013000   -0.0261542    0.0287542
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                -0.0119269   -0.0372894    0.0134357
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0054154   -0.0473485    0.0365177
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                -0.0068989   -0.0276938    0.0138961
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.0081495   -0.0226860    0.0389849
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0323051    0.0104796    0.0541306
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.0416862    0.0208477    0.0625247
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.0477153    0.0282076    0.0672230
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0359102    0.0170314    0.0547890
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.0445345    0.0300321    0.0590370
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                 0.0530942    0.0400594    0.0661290
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0574353    0.0423726    0.0724979
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.0612266    0.0479209    0.0745323
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.0575303    0.0432242    0.0718363
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0024663   -0.0154181    0.0203508
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.0224005    0.0000302    0.0447709
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 0.0328454    0.0070838    0.0586069
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0258495   -0.0181264    0.0698255
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.0482255    0.0285579    0.0678930
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.0585266    0.0295416    0.0875115
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0333670    0.0012710    0.0654630
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0187221   -0.0003601    0.0378043
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.0089317   -0.0105702    0.0284337
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0059500   -0.0211067    0.0092067
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.0029213   -0.0184379    0.0242806
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0046133   -0.0237790    0.0145524


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1288107   -0.1645003   -0.0931211
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1057573    0.0215866    0.1899280
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.2124690   -0.2948399   -0.1300980
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.1128463   -0.2116291   -0.0140635
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2714043   -0.3044939   -0.2383148
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.2749398   -0.3421388   -0.2077408
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1725233   -0.2225329   -0.1225137
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0804539   -0.1873181    0.0264103
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2540269   -0.3077185   -0.2003353
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.4236224   -0.6503899   -0.1968549
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.2365683   -0.2634819   -0.2096547
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2854099   -0.3086816   -0.2621381
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4284466   -0.4876727   -0.3692205
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1402392   -0.1504678   -0.1300106
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5371921   -0.5589495   -0.5154346
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0616410   -0.0685327   -0.0547493
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0582194    0.0532019    0.0632368
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2753025   -0.3035698   -0.2470352
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0152268   -0.0404775    0.0100239
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0119744   -0.0757352    0.0517864
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0337772   -0.1019162    0.0343619
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0097583   -0.0683446    0.0878612
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0100159   -0.0252133    0.0452451
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0269887   -0.0891098    0.0351323
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0785678   -0.1223800   -0.0347556
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0717545   -0.1612872    0.0177782
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0449501   -0.0761141   -0.0137861
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0667346    0.0339823    0.0994870
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0553545   -0.0937023    0.2044112
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0135420   -0.0341135    0.0070296
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0529028   -0.0754199   -0.0303858
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0388978   -0.0598050   -0.0179906
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009896   -0.0102485    0.0082694
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1056524   -0.1218342   -0.0894706
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0555413   -0.0614176   -0.0496651
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0054428   -0.0108732   -0.0000124
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0084552   -0.0224890    0.0055787
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0692794   -0.0881554   -0.0504034
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0092429   -0.0679017    0.0494159
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0766397   -0.1470005   -0.0062788
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0588868   -0.1166939   -0.0010797
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0350859   -0.0632862   -0.0068856
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0036117   -0.0456412    0.0384177
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693360   -0.1247146   -0.0139573
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0342505   -0.1021710    0.0336700
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0169816   -0.0391805    0.0052173
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0972754   -0.1227055   -0.0718453
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0829998   -0.0911701   -0.0748294
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0625218   -0.0807337   -0.0443099
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0070150   -0.0343815    0.0203516
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0435425   -0.0610734   -0.0260116
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0509267    0.0363627    0.0654908
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0317458   -0.0401487   -0.0233429
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1196774   -0.1333805   -0.1059743
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0963562   -0.1015702   -0.0911423
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0278677   -0.0372571   -0.0184782
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0892262   -0.1065065   -0.0719459
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0189538   -0.0515868    0.0894944
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0658824   -0.1017749   -0.0299899
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.1044306   -0.1366405   -0.0722206
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0385690   -0.0632221   -0.0139159
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0774964   -0.1211816   -0.0338112
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1682491   -0.2192291   -0.1172692
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0908657   -0.1637926   -0.0179388
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0365561   -0.0541057   -0.0190066
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1052709   -0.1231844   -0.0873575
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0648466   -0.0174111    0.1471043
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0800096   -0.0926342   -0.0673849
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0423937   -0.0570582   -0.0277292
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1070377   -0.1286360   -0.0854395
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0799887   -0.0936094   -0.0663679
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0366309    0.0156987    0.0575632
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0593111   -0.0668013   -0.0518210
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0900882   -0.1017213   -0.0784552
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0864969   -0.0916917   -0.0813021
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0519832   -0.0596831   -0.0442833
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0591303   -0.0754662   -0.0427943
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0438435   -0.0956997    0.0080128
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0751883   -0.1137557   -0.0366209
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0661039   -0.1033273   -0.0288806
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0643960   -0.0845824   -0.0442097
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0740521   -0.1157250   -0.0323792
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0785467   -0.1158631   -0.0412303
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0913693   -0.1342016   -0.0485370
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0481389   -0.0649672   -0.0313106
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                 0.0022047   -0.0141239    0.0185332
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0860747   -0.1006947   -0.0714548
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1257162   -0.1430906   -0.1083418
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0506219   -0.0641194   -0.0371243
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0665123   -0.0773867   -0.0556379
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0076044   -0.1165585    0.1317673
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0619845   -0.0726429   -0.0513262
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0975213   -0.1108911   -0.0841514
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0481591   -0.0546791   -0.0416392
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0464934   -0.0609701   -0.0320168
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0300661   -0.0648220    0.0046898
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0424940   -0.0699871   -0.0150009
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0496536   -0.0956074   -0.0036999
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0284835   -0.0467715   -0.0101956
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0215686   -0.0550502    0.0119130
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0685937   -0.0987634   -0.0384240
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0968548   -0.1360889   -0.0576208
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0371212   -0.0523570   -0.0218854
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0290642   -0.0418582   -0.0162702
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0101074   -0.0203356    0.0001209
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0565325   -0.0714057   -0.0416592
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0286539   -0.0423775   -0.0149304
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0106454   -0.1735842    0.1522935
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0627734   -0.0738240   -0.0517229
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0568458   -0.0706558   -0.0430357
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0343451   -0.0409104   -0.0277798
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0167771   -0.0296227   -0.0039315
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0274959   -0.0586170    0.0036252
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0143640   -0.0083881    0.0371161
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0001688   -0.0372942    0.0369565
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0129787   -0.0296379    0.0036804
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0275794   -0.0597867    0.0046279
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0389901   -0.0707574   -0.0072229
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0640776   -0.1095171   -0.0186380
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0388639   -0.0526645   -0.0250634
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0266330   -0.0382245   -0.0150416
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0363472   -0.0490347   -0.0236597
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0155450   -0.0296316   -0.0014584
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0694981   -0.0813876   -0.0576087
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0175680   -0.0299848   -0.0051512
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0260692    0.0129571    0.0391812
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0316802    0.0002791    0.0630814
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0298116   -0.0012564    0.0608797
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0154313   -0.0470551    0.0161925
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0512791    0.0340658    0.0684925
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0381049    0.0074832    0.0687266
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0165584   -0.0106055    0.0437223
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0090679   -0.0289298    0.0470656
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0115982   -0.0256273    0.0024308
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0029021   -0.0191776    0.0133733
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                 0.0395499    0.0276352    0.0514645
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0159718    0.0031459    0.0287977
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0477538    0.0321932    0.0633143
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0186078    0.0061089    0.0311066
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0031708   -0.0134686    0.0071271


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.3007289    0.2072279    0.3942299
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0935889    0.0013341    0.1858436
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.2976778    0.1050754    0.4902802
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0526840   -0.1710103    0.2763784
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.2671947    0.1093880    0.4250014
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0223183   -0.1554985    0.1108620
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.2773875    0.0817198    0.4730552
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1388591   -0.1214395    0.3991577
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1811271    0.0895330    0.2727211
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0639793   -0.0279285    0.1558872
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.2575370    0.0856059    0.4294680
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1541504    0.0016577    0.3066431
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.3307062    0.2047505    0.4566620
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1241996    0.0142913    0.2341078
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.5205042    0.2172892    0.8237192
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2451158   -0.0482385    0.5384700
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.6756293    0.5465639    0.8046948
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.4153789    0.3074810    0.5232767
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.4428632    0.1994572    0.6862691
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.1826983   -0.0596093    0.4250058
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.6805698    0.2162322    1.1449074
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.4021109   -0.1258849    0.9301067
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.4801146    0.4422706    0.5179586
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.3176828    0.2601750    0.3751907
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.3170031    0.2503509    0.3836553
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.1732634    0.1085992    0.2379275
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.1430293    0.0971903    0.1888682
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0667897    0.0213698    0.1122097
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.2315039    0.1872771    0.2757306
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.1115188    0.0695147    0.1535229
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.5097879    0.4398798    0.5796961
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.2116423    0.1695393    0.2537454
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.2440559    0.1780018    0.3101100
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1223109    0.0540220    0.1905999
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.4575470    0.3914037    0.5236903
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.2639480    0.2095678    0.3183282
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.5359453    0.5117308    0.5601598
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.2868699    0.2646241    0.3091158
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.2617051    0.2006742    0.3227359
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1216594    0.0771078    0.1662110
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.2359950    0.2185941    0.2533960
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1061579    0.0890385    0.1232774
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.2640923    0.2441605    0.2840241
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.1208109    0.0999569    0.1416649
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.9573247    0.8986620    1.0159873
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.7366875    0.6718780    0.8014971
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0613671   -0.0124041    0.1351382
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0226487   -0.0505352    0.0958325
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0784415   -0.0803555    0.2372385
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0061328   -0.1730285    0.1607630
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0846340   -0.1205607    0.2898287
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0163569   -0.1945470    0.1618332
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.1403632   -0.0594423    0.3401687
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0145019   -0.2262495    0.1972457
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1271420    0.0312581    0.2230259
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0958721   -0.0002735    0.1920176
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0363002   -0.1368885    0.2094888
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0476085   -0.1051003    0.2003174
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0641348   -0.0492836    0.1775532
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0463519   -0.0583056    0.1510094
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.2779344    0.0686015    0.4872672
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1942421   -0.0217604    0.4102446
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0446519   -0.0346572    0.1239611
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0520382   -0.0221929    0.1262692
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0620497   -0.0433146    0.1674140
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0195215   -0.1398717    0.1008287
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0586273   -0.2819431    0.3991978
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.2510455   -0.0939832    0.5960741
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0574852    0.0125673    0.1024031
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0492884    0.0065500    0.0920268
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0365849   -0.0255720    0.0987417
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0267411   -0.0303319    0.0838141
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0986309    0.0556969    0.1415650
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0681702    0.0281524    0.1081880
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0951814    0.0503256    0.1400373
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0180834   -0.0240125    0.0601793
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0938844    0.0380602    0.1497087
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0400364   -0.0095041    0.0895770
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.1264422    0.0770198    0.1758647
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0438874   -0.0088857    0.0966605
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.1477868    0.1181347    0.1774388
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0647973    0.0428202    0.0867743
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0483326    0.0243837    0.0722815
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0106735   -0.0112365    0.0325836
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.1087559    0.0642909    0.1532209
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0726137    0.0371435    0.1080839
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0857070    0.0700447    0.1013693
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0423369    0.0265929    0.0580808
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.1037791    0.0813565    0.1262018
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.0517864    0.0281936    0.0753792
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0496786    0.0169640    0.0823933
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0082020   -0.0259471    0.0423511
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0340453   -0.0161318    0.0842225
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0348645   -0.0146818    0.0844108
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0272482   -0.1651201    0.1106237
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0023959   -0.1530404    0.1482486
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0519903   -0.1092934    0.2132739
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.1075771   -0.0168985    0.2320526
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0577966   -0.2149389    0.0993457
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0747082   -0.2196670    0.0702505
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0552350   -0.0197126    0.1301826
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0262814   -0.0512305    0.1037933
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.2411319    0.1185160    0.3637478
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0271104   -0.0535495    0.1077702
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0810793   -0.0917679    0.2539264
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0122200   -0.1160275    0.0915876
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0075273   -0.2226496    0.2075950
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0165343   -0.2407547    0.2076861
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0818131    0.0260841    0.1375421
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0068550   -0.0446171    0.0583270
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0265982   -0.0504087    0.1036052
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0468827   -0.0363828    0.1301482
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0201346   -0.0322446    0.0725138
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0038580   -0.0352199    0.0429360
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0214292   -0.0280492    0.0709075
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0232523   -0.0248750    0.0713797
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0117958   -0.0391386    0.0155469
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0007588   -0.0284501    0.0269326
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0234598   -0.0098598    0.0567793
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0007984   -0.0316334    0.0332301
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0830694   -0.1430842   -0.0230546
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0467754   -0.1141273    0.0205766
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0389154   -0.0116538    0.0894846
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0112977   -0.0352976    0.0578930
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0631771    0.0203622    0.1059919
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0569809    0.0298935    0.0840683
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0193843   -0.0024263    0.0411949
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0029064   -0.0229681    0.0171553
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0598734    0.0233869    0.0963599
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0080521   -0.0238467    0.0399510
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.0207871    0.0072339    0.0343403
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0006574   -0.0130572    0.0143721
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0209946   -0.0031491    0.0451383
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0052521   -0.0320100    0.0215058
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0780479    0.0294658    0.1266299
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0427844   -0.0046765    0.0902454
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.1061640   -0.0458263    0.2581543
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0079594   -0.2100576    0.2259764
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0292640   -0.1273135    0.0687856
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0193162   -0.1059646    0.0673321
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0501934   -0.0240454    0.1244323
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0212186   -0.0900635    0.0476262
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0591769   -0.0086670    0.1270207
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0591709   -0.0111644    0.1295062
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0238408   -0.1063307    0.1540122
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0459024   -0.0626456    0.1544503
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0011610   -0.1556654    0.1579874
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0181520   -0.0709561    0.1072601
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.2406685   -0.5476073    0.0662703
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.2911875   -0.5897657    0.0073908
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0110454   -0.0345133    0.0566040
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0057502   -0.0466747    0.0351742
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0281791   -0.0294643    0.0858226
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0015288   -0.0662848    0.0693424
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0400319   -0.1584018    0.2384656
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.0085451   -0.1886706    0.1715804
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0051968   -0.0432233    0.0536170
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0255793   -0.0769641    0.0258056
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0156292   -0.0222411    0.0534994
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0183222   -0.0199784    0.0566227
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0198454   -0.0102691    0.0499600
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0047144   -0.0353058    0.0258770
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0265846   -0.0023523    0.0555216
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0310143    0.0030814    0.0589473
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0355475   -0.0186833    0.0897782
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0189806   -0.0287207    0.0666819
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0186861   -0.0177142    0.0550864
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0205793   -0.0153898    0.0565483
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0305123    0.0042814    0.0567432
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0373867    0.0082378    0.0665356
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0202534    0.0013567    0.0391501
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0013712   -0.0188494    0.0161070
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0264561   -0.0053269    0.0582390
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0287420    0.0017071    0.0557770
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0160132   -0.0296413   -0.0023851
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0123632   -0.0260877    0.0013613
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0091690   -0.0110533    0.0293914
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0015449   -0.0211678    0.0242576
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0120813   -0.0529105    0.0287479
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0180834   -0.0592109    0.0230440
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0270078   -0.1117525    0.1657682
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0388882   -0.1046628    0.1824391
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0647045   -0.0713258    0.2007348
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0769298   -0.0557929    0.2096525
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0083838   -0.0880651    0.0712975
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1068051    0.0032448    0.2103653
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0449102   -0.0148539    0.1046742
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0247784   -0.0264691    0.0760260
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0514940   -0.0684515    0.1714396
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0192388   -0.0926282    0.1311059
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0237629   -0.0687060    0.1162318
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0307805   -0.0601746    0.1217357
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0293715   -0.2088111    0.1500682
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0783923   -0.2552805    0.0984959
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0273732   -0.0201631    0.0749095
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0178910   -0.0210699    0.0568519
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0672218    0.0081382    0.1263055
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0128686   -0.0536432    0.0793803
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0193612   -0.0494980    0.0882205
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0255411   -0.0853980    0.0343158
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0392143   -0.0071173    0.0855458
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0110116   -0.0249615    0.0469847
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0111713   -0.0146774    0.0370200
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0305963    0.0057458    0.0554468
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0393945    0.0143994    0.0643896
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0369566    0.0133023    0.0606109
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0395450    0.0011950    0.0778949
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0053401   -0.0232757    0.0339559
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0088170   -0.0403223    0.0226883
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0062761   -0.0383416    0.0257895
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.2572415    0.0695714    0.4449116
12-15 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0758313   -0.0735614    0.2252239
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0141074   -0.0123111    0.0405258
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0149348   -0.0101293    0.0399988
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0227564   -0.0137202    0.0592329
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0056855   -0.0374554    0.0260843
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0167123    0.0012732    0.0321515
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0003673   -0.0190394    0.0197739
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0258890   -0.0107713    0.0625493
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0289241   -0.0064647    0.0643130
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0443842   -0.0372481    0.1260165
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0299060   -0.1052756    0.0454635
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0108632   -0.1094075    0.0876810
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0127770   -0.1116538    0.0860999
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0322755   -0.0830381    0.1475892
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0431877   -0.1616838    0.0753083
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0378430   -0.0043266    0.0800126
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0317519   -0.0090304    0.0725342
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.0101985   -0.1017544    0.0813573
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0090217   -0.0892233    0.0711800
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0173709   -0.1022090    0.0674672
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0043474   -0.0734155    0.0821102
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0729616   -0.0406235    0.1865468
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0520910   -0.0569769    0.1611589
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0375454   -0.0055502    0.0806411
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0306154   -0.0013787    0.0626095
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0800300    0.0304947    0.1295653
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0587305    0.0057880    0.1116730
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0269004   -0.0082422    0.0620430
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0356980    0.0079090    0.0634871
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0231517   -0.0141055    0.0604089
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0017883   -0.0347026    0.0382792
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0155620   -0.0086919    0.0398159
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0109406   -0.0122264    0.0341076
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0190027   -0.0030427    0.0410481
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0014769   -0.0228665    0.0199128
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0164858   -0.0549497    0.0219781
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0041233   -0.0329514    0.0247049
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0326544   -0.0118410    0.0771497
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0123087   -0.0309983    0.0556157
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.2459566   -0.5142149    0.0223018
15-18 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0240822   -1.1903825    1.2385469
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0015197   -0.0257247    0.0287641
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0071243   -0.0356668    0.0214182
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0060484   -0.0378416    0.0499384
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0275666   -0.0031353    0.0582686
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0098809   -0.0256535    0.0058916
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0160329   -0.0350334    0.0029676
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0030145   -0.0412657    0.0352367
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0071637   -0.0295466    0.0438739
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0129823   -0.0446822    0.0706468
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0434416   -0.0351758    0.1220591
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0100543   -0.0746023    0.0544938
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0158292   -0.0828387    0.0511803
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0097824   -0.0961067    0.0765418
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0586349   -0.1674917    0.0502219
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0207654   -0.0329949    0.0745258
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0300660   -0.0229297    0.0830617
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.0471164   -0.1298047    0.0355719
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0312981   -0.1174203    0.0548240
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0562700   -0.1455220    0.0329820
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0540938   -0.1358446    0.0276570
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.1463724    0.0577949    0.2349499
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1729501    0.0733305    0.2725697
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0358256    0.0028137    0.0688375
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0441388    0.0098141    0.0784635
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0205677   -0.0224229    0.0635583
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0170349   -0.0282993    0.0623690
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0059769   -0.0290680    0.0410217
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0014178   -0.0335354    0.0363710
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0181876   -0.0034760    0.0398511
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0062676   -0.0152860    0.0278213
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0405547    0.0208317    0.0602778
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0141699   -0.0056828    0.0340226
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0023286   -0.0378898    0.0425469
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0127862   -0.0174063    0.0429787
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0089396   -0.0591531    0.0412739
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0056907   -0.0553933    0.0440118
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0335059    0.0014316    0.0655802
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0430807    0.0110798    0.0750817
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0139900   -0.0227510    0.0507310
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0183322   -0.0098738    0.0465381
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0062756   -0.0419622    0.0294109
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0135137   -0.0490422    0.0220147
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0192181   -0.0889604    0.0505242
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0193750   -0.0694242    0.1081742
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0250649   -0.0646449    0.1147746
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0179214   -0.0751050    0.1109479
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0503439   -0.0269398    0.1276275
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0048695   -0.0809934    0.0712543
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0117856   -0.0624333    0.0388621
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0203086   -0.0743649    0.0337476
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0192326   -0.0529345    0.0913997
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0909570    0.0182648    0.1636492
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0503749   -0.0207952    0.1215451
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0079773   -0.0741017    0.0581471
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0041144   -0.0909761    0.0992050
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0796186   -0.1840212    0.0247840
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0208639   -0.0138660    0.0555937
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0076370   -0.0253106    0.0405846
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.0014835   -0.0482896    0.0453226
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0135649   -0.0384852    0.0656149
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0093811   -0.0209561    0.0397183
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0154102   -0.0137597    0.0445801
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0086243   -0.0151754    0.0324240
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0171840   -0.0057053    0.0400733
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0037913   -0.0162702    0.0238528
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0000950   -0.0206080    0.0207980
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0199342   -0.0087015    0.0485699
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0303790   -0.0011531    0.0619111
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0223759   -0.0258478    0.0705997
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0326771   -0.0200504    0.0854045
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0146449   -0.0520929    0.0228030
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0244353   -0.0620785    0.0132079
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0088713   -0.0173769    0.0351195
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0013367   -0.0231250    0.0257984


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.1771243    0.1022224    0.2520263
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.1089356    0.0159079    0.2019633
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.1129030    0.0040364    0.2217695
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.1592838    0.0182465    0.3003211
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0993667    0.0321918    0.1665416
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1266566    0.0309540    0.2223591
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1590380    0.0792731    0.2388030
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3518742    0.1147792    0.5889692
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.3313697    0.2618365    0.4009029
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.3470858    0.1284246    0.5657470
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.3683074    0.0747335    0.6618813
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.3577107    0.3252328    0.3901887
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1918326    0.1451436    0.2385216
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0780179    0.0462526    0.1097831
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1337297    0.1023566    0.1651028
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1623148    0.1386531    0.1859764
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1659251    0.1140512    0.2177990
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0261494    0.0183665    0.0339323
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.2799301    0.2648643    0.2949958
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0860406    0.0645253    0.1075560
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1371522    0.1247203    0.1495840
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.2168117    0.1981001    0.2355233
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.6394725    0.5921604    0.6867847
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0383330   -0.0192532    0.0959193
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0157594   -0.0570530    0.0885718
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0311721   -0.1151985    0.1775428
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0554801   -0.0810474    0.1920076
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0833114    0.0181850    0.1484378
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0296050   -0.0584362    0.1176463
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0372283   -0.0308841    0.1053408
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2131198    0.0515371    0.3747024
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0326977   -0.0100070    0.0754025
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0429488   -0.0512123    0.1371098
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0916992   -0.0756768    0.2590753
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0469008    0.0147484    0.0790531
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0250488   -0.0162994    0.0663970
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0648338    0.0362265    0.0934411
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0436030    0.0129144    0.0742915
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0287395    0.0073526    0.0501264
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0789424    0.0400195    0.1178653
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0068126    0.0045031    0.0091220
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0190858    0.0051838    0.0329877
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0428778    0.0268428    0.0589128
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.0509112    0.0397390    0.0620835
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.0859026    0.0649628    0.1068424
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0256390    0.0041666    0.0471114
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0261987   -0.0103867    0.0627841
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0063735   -0.0730871    0.0603401
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0621825   -0.0367227    0.1610876
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0445662   -0.1449312    0.0557989
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0368971   -0.0181568    0.0919510
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0614283    0.0100644    0.1127921
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0073011   -0.0755954    0.0901976
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0080261   -0.1831944    0.1671423
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0247084   -0.0044432    0.0538600
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0280673   -0.0392220    0.0953567
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0115868   -0.0267181    0.0498917
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0183305   -0.0160153    0.0526763
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0044087   -0.0229984    0.0141811
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0094450   -0.0131432    0.0320331
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0287200   -0.0554431   -0.0019969
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0243833   -0.0133698    0.0621364
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0049316    0.0027759    0.0070872
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0045255   -0.0082069    0.0172580
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0144836    0.0007335    0.0282337
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.0091253   -0.0003608    0.0186114
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0077153   -0.0092122    0.0246429
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0530848    0.0169771    0.0891926
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0226715   -0.0532108    0.0985538
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0204124   -0.0902428    0.0494181
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0155230   -0.0304306    0.0614766
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0485352   -0.0018236    0.0988940
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0243011   -0.0398640    0.0884661
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0080693   -0.0605936    0.0767322
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2737021   -0.5264684   -0.0209357
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0027268   -0.0261162    0.0206626
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0195078   -0.0326280    0.0716436
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0085893   -0.0775724    0.0947510
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0056293   -0.0469022    0.0356435
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0129669   -0.0135087    0.0394426
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0051930   -0.0159338    0.0263197
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0228135    0.0031797    0.0424474
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0112358   -0.0108093    0.0332808
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0159184   -0.0123741    0.0442108
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0035407    0.0011455    0.0059360
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0058866   -0.0050386    0.0168118
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0146545    0.0029151    0.0263939
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0115997   -0.0211569   -0.0020425
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0052148   -0.0091750    0.0196046
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0096320   -0.0387950    0.0195310
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0021561   -0.0528111    0.0571233
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0579657   -0.0492365    0.1651679
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0252082   -0.0348796    0.0852960
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0291102   -0.0095098    0.0677301
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0372241   -0.0316197    0.1060680
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0166074   -0.0394399    0.0726546
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0467264   -0.1986583    0.1052054
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0149447   -0.0084682    0.0383575
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0496166   -0.0023816    0.1016148
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0027925   -0.0513199    0.0569048
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0205652   -0.0068001    0.0479306
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0160899   -0.0005618    0.0327416
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0282888    0.0114920    0.0450856
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0072720   -0.0055900    0.0201340
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0064939   -0.0316241    0.0186363
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0097245   -0.0044183    0.0238673
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0106950   -0.0058992    0.0272892
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0038999   -0.0100214    0.0178211
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0081833   -0.0028675    0.0192341
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0202622   -0.0055431    0.0460675
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0002427   -0.0345132    0.0349986
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0099280   -0.0900712    0.0702152
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0020276   -0.0729412    0.0769964
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0278010    0.0005220    0.0550799
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0145415   -0.0616937    0.0326106
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0008727   -0.0520847    0.0538301
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0574035   -0.0310877    0.1458947
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0190479   -0.0005371    0.0386330
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0694166    0.0258125    0.1130207
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0258465   -0.0001816    0.0518746
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0089072   -0.0158658    0.0336801
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0099104   -0.0063103    0.0261311
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0065979   -0.0082624    0.0214583
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0033438   -0.0163699    0.0096823
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0207731   -0.0147782    0.0563244
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0032646   -0.1125013    0.1059721
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0026860   -0.0214517    0.0160797
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0094184   -0.0054862    0.0243230
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0088225   -0.0201154    0.0024703
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0012826   -0.0267069    0.0292721
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0155644   -0.0164675    0.0475963
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0107286   -0.0621689    0.0407117
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0199250   -0.0798465    0.0399964
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0152911   -0.0251702    0.0557525
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0122503   -0.0610797    0.0365791
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0346364   -0.0903597    0.0210870
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1361394    0.0727493    0.1995294
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0227931    0.0035813    0.0420049
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0177583   -0.0203094    0.0558260
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0021348   -0.0225549    0.0268246
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0090481   -0.0058235    0.0239197
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0208722    0.0074914    0.0342530
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0061620   -0.0074526    0.0197767
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0051561   -0.0458201    0.0355078
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0295233    0.0070093    0.0520373
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0079659   -0.0053552    0.0212870
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0110537   -0.0369251    0.0148177
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0020355   -0.0350520    0.0391231
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0184613   -0.0532720    0.0901945
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0199883   -0.0295660    0.0695426
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0124643   -0.0505424    0.0256138
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0409785    0.0033495    0.0786076
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0142450   -0.0292084    0.0576983
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0309152   -0.1061005    0.0442702
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0079656   -0.0101132    0.0260445
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0025133   -0.0389818    0.0440083
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0072448   -0.0126325    0.0271220
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0103240   -0.0060677    0.0267158
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0013268   -0.0121322    0.0147858
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0135055    0.0008929    0.0261180
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0219042   -0.0166677    0.0604762
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0147592   -0.0431818    0.0136633
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0027792   -0.0083668    0.0139252
