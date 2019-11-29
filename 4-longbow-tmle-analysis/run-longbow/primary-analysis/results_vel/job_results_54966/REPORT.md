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

**Outcome Variable:** y_rate_len

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37     216  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm           102     216  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        77     216  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           29      62  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            17      62  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16      62  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8      42  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm            19      42  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      42  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      27  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            12      27  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      27  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm           49     218  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm            84     218  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        85     218  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           36     102  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            25     102  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        41     102  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     119  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            37     119  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        50     119  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           13      83  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            35      83  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        35      83  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          >=50 cm          138     377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          <48 cm           104     377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm       135     377  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm           19     202  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm           137     202  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm        46     202  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm           11      32  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm            12      32  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         9      32  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          189    1261  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           667    1261  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       405    1261  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          125     550  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           217     550  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       208     550  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          154     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           228     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       258     640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          156     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           278     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       287     721  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm          617    1254  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm           232    1254  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       405    1254  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           88     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           270     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       151     509  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0      11  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     <48 cm             5      11  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      11  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm        13900   15319  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm           168   15319  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1251   15319  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2371    7982  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2487    7982  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3124    7982  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          371     728  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           136     728  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       221     728  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm         1385    6465  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm          2688    6465  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm      2392    6465  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1091   19024  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         13545   19024  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      4388   19024  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          703    2517  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1227    2517  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       587    2517  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           35     203  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm            94     203  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        74     203  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           28      59  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            15      59  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16      59  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8      41  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm            18      41  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      41  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm           48     211  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm            84     211  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        79     211  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34      92  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20      92  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        38      92  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     113  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            35     113  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        47     113  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12      87  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            44      87  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31      87  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          >=50 cm          138     379  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          <48 cm           106     379  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm       135     379  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm           17     175  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm           118     175  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm        40     175  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm           10      23  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm             6      23  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         7      23  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          166    1114  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           584    1114  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       364    1114  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          118     505  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           193     505  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       194     505  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          142     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           210     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       246     598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          153     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           264     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       278     695  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm          477     959  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm           171     959  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       311     959  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           81     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           243     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       145     469  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0       9  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     <48 cm             3       9  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         6       9  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm        12090   13309  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm           146   13309  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1073   13309  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1811    6109  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1884    6109  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2414    6109  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          313     620  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           118     620  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       189     620  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm         1293    5975  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm          2452    5975  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm      2230    5975  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          616   10596  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          7452   10596  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      2528   10596  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          486    1748  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           818    1748  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       444    1748  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37     197  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm            88     197  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        72     197  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           25      53  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            14      53  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        14      53  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8      41  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm            18      41  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      41  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm           41     192  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm            81     192  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        70     192  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34      86  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            18      86  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        34      86  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     108  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     108  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        44     108  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12      86  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            41      86  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        33      86  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          >=50 cm          142     389  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          <48 cm           109     389  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm       138     389  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm           20     194  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm           131     194  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm        43     194  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       >=50 cm            8      20  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       <48 cm             4      20  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         8      20  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          171    1133  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           598    1133  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       364    1133  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          108     480  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           187     480  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       185     480  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          134     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           199     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       232     565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          160     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           257     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       271     688  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm          293     574  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm            95     574  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       186     574  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           84     480  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           244     480  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       152     480  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0       8  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     <48 cm             4       8  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         4       8  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm        11297   12428  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm           130   12428  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1001   12428  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1748    5860  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1805    5860  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2307    5860  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          298     598  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           122     598  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       178     598  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm         1162    5274  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm          2167    5274  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm      1945    5274  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          690    2674  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1267    2674  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       717    2674  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           38     198  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm            88     198  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        72     198  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm           25      52  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm            13      52  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        14      52  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            7      40  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm            18      40  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      40  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm           40     183  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm            76     183  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm        67     183  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           31      83  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            19      83  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        33      83  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     109  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            33     109  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        45     109  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12      89  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            40      89  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        37      89  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          >=50 cm          139     382  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          <48 cm           108     382  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm       135     382  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm           21     214  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm           145     214  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm        48     214  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            8      21  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm             6      21  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         7      21  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          161    1136  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           604    1136  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       371    1136  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          107     466  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm           183     466  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       176     466  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          137     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           203     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       226     566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          153     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           261     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       260     674  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm          295     568  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm            90     568  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm       183     568  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm           74     468  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm           244     468  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       150     468  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0       7  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     <48 cm             3       7  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         4       7  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm        11528   12682  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm           127   12682  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1027   12682  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1736    5860  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1835    5860  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2289    5860  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          319     632  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           129     632  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       184     632  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm          993    4531  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm          1853    4531  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm      1685    4531  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          752    2961  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1455    2961  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       754    2961  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           36     186  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            82     186  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68     186  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           22      47  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            12      47  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        13      47  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            7      40  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      40  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      40  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm           38     175  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm            70     175  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        67     175  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           28      83  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20      83  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35      83  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     111  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     111  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        45     111  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      93  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            44      93  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        35      93  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          >=50 cm          138     374  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          <48 cm           106     374  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm       130     374  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm           21     194  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm           134     194  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm        39     194  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       >=50 cm            5      14  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       <48 cm             4      14  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm         5      14  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          169    1157  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm           611    1157  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       377    1157  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          105     445  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           172     445  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       168     445  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          134     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           188     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       210     532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          151     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           252     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       257     660  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm          456     888  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm           149     888  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       283     888  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           71     468  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           252     468  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       145     468  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       7  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     <48 cm             2       7  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         5       7  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm          904    1001  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        <48 cm            10    1001  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        87    1001  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          632    2513  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           922    2513  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       959    2513  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          273     555  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           114     555  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       168     555  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          787    2990  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1469    2990  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       734    2990  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           36     186  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            83     186  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        67     186  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           22      44  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             9      44  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        13      44  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm           37     165  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm            68     165  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        60     165  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           30      85  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20      85  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35      85  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     107  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     107  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        43     107  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      91  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            46      91  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31      91  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          >=50 cm          137     366  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          <48 cm           102     366  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm       127     366  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm           21     180  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm           120     180  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm        39     180  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          173    1161  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm           614    1161  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       374    1161  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          101     432  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           167     432  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       164     432  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          132     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           185     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       211     528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          143     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           231     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       230     604  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm          463     886  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm           148     886  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       275     886  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           82     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           251     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       147     480  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       6  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     <48 cm             3       6  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         3       6  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm          245     275  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        <48 cm             6     275  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        24     275  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          480    2012  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           779    2012  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       753    2012  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          244     509  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           108     509  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       157     509  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          793    2997  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1458    2997  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       746    2997  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37     186  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            81     186  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68     186  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           20      41  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             9      41  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12      41  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm           36     162  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm            68     162  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        58     162  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32      88  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      88  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35      88  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     102  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     102  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        39     102  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      82  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            39      82  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        29      82  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          >=50 cm          132     362  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          <48 cm           102     362  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm       128     362  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm           18     165  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm           104     165  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm        43     165  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           93     407  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           156     407  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       158     407  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          130     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           192     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       219     541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          129     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           209     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       208     546  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm          447     869  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm           145     869  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       277     869  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           79     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           228     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       138     445  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       7  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     <48 cm             4       7  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         3       7  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        >=50 cm          193     218  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        <48 cm             4     218  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        21     218  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          361    1568  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           624    1568  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       583    1568  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          232     490  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           108     490  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       150     490  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           38     184  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            79     184  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        67     184  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           19      41  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            10      41  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12      41  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm           33     154  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm            66     154  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        55     154  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32      89  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      89  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        36      89  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     101  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            33     101  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        39     101  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      83  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            38      83  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31      83  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          >=50 cm          133     371  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          <48 cm           105     371  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm       133     371  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm            6      70  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm            46      70  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm        18      70  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           94     396  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           151     396  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       151     396  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          108     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           173     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       190     471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          121     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           190     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       179     490  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          403     788  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm           137     788  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       248     788  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           61     341  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           169     341  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       111     341  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             0       1  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         1       1  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm          184     209  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        <48 cm             4     209  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        21     209  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          215    1144  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           501    1144  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       428    1144  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          242     519  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           111     519  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       166     519  y_rate_len       


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
![](/tmp/1f909bf1-bf07-47dd-a1d8-612e4535e873/717bda5e-7c17-43b5-a5ab-552f5445f6aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1f909bf1-bf07-47dd-a1d8-612e4535e873/717bda5e-7c17-43b5-a5ab-552f5445f6aa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1f909bf1-bf07-47dd-a1d8-612e4535e873/717bda5e-7c17-43b5-a5ab-552f5445f6aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                3.1331927    2.9673968   3.2989886
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                3.5217579    3.4183155   3.6252004
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                3.2180320    3.1200280   3.3160360
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                3.6804694    3.4661374   3.8948013
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                4.0430135    3.7382539   4.3477731
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                3.6097601    3.2095055   4.0100147
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                2.9817880    2.7987324   3.1648436
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                3.4364443    3.1758303   3.6970583
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                2.9258197    2.7134362   3.1382033
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                3.1825187    2.8139392   3.5510981
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                3.5173766    3.2295900   3.8051631
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                3.3087792    2.8412038   3.7763547
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                2.9674563    2.8172404   3.1176721
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                3.1522404    3.0423899   3.2620908
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                2.9925095    2.8802513   3.1047677
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                2.9123507    2.6841848   3.1405165
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                3.2971249    3.0221310   3.5721188
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                3.1768477    2.9711912   3.3825041
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                3.1085109    2.9458744   3.2711473
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                3.5401043    3.3613109   3.7188976
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                3.2201272    3.0828969   3.3573576
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                2.7235324    2.1568459   3.2902189
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                3.8080367    3.4562108   4.1598626
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                3.3163555    3.0349406   3.5977703
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                2.5548484    2.3875413   2.7221556
0-3 months     ki1000108-IRC              INDIA                          <48 cm               NA                3.7095474    3.5014952   3.9175995
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                3.2969077    3.1495242   3.4442913
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                2.5440786    2.0392067   3.0489505
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                3.1582479    3.0336117   3.2828841
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                2.8698778    2.7272792   3.0124764
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                2.0063740    1.3247806   2.6879674
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                3.3239316    2.6885503   3.9593129
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                2.7987213    1.9183105   3.6791320
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                2.7520786    2.6602129   2.8439442
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                3.5409490    3.4863074   3.5955907
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                3.3072675    3.2516589   3.3628760
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                2.7966832    2.6888766   2.9044899
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                3.2908718    3.2035610   3.3781826
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                3.1000361    3.0178842   3.1821880
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                3.1968634    3.1204094   3.2733173
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                3.3141523    3.2545841   3.3737206
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                3.2447540    3.1866165   3.3028916
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                2.9536835    2.8769556   3.0304114
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                3.2440965    3.1844199   3.3037732
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                3.1149329    3.0605296   3.1693362
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                2.8451260    2.7853093   2.9049428
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                3.6766208    3.5488320   3.8044095
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                3.1768176    3.1111559   3.2424794
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                3.3994551    3.2824614   3.5164489
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                3.6972957    3.6231844   3.7714069
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                3.5424450    3.4593319   3.6255580
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                2.7699926    2.6595935   2.8803916
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                3.5316868    3.4466651   3.6167085
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                3.2061584    3.0896102   3.3227067
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                2.8469558    2.8116202   2.8822914
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                3.7791381    3.7445412   3.8137351
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                3.3551363    3.3260096   3.3842629
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                2.4871091    2.4272443   2.5469739
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                2.7881892    2.6787891   2.8975893
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                2.6195552    2.5484736   2.6906368
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                3.3268211    3.2986672   3.3549750
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                3.6436085    3.6212634   3.6659535
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                3.4667443    3.4450644   3.4884242
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                3.3662255    3.3266510   3.4058000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                3.7347974    3.7230399   3.7465550
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                3.5416988    3.5233793   3.5600184
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                1.8523997    1.7450519   1.9597475
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                3.5645804    3.5250873   3.6040734
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                3.2164762    3.1498574   3.2830951
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                1.9210392    1.7883029   2.0537756
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                1.9699934    1.8873170   2.0526699
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                1.9372635    1.8520099   2.0225172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                2.0172896    1.8009666   2.2336125
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                2.1574475    1.8788280   2.4360670
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                2.0117693    1.6974571   2.3260814
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                1.8465470    1.4799670   2.2131269
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                1.9985049    1.7346587   2.2623511
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                1.7980779    1.6550463   1.9411096
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                1.9466695    1.5843663   2.3089727
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                2.1608314    1.9777977   2.3438651
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                1.8530405    1.6014589   2.1046221
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                1.8323518    1.6788951   1.9858084
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                2.0474049    1.9034239   2.1913859
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                2.0196489    1.8789738   2.1603241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                1.8474529    1.5886813   2.1062245
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                1.9390285    1.6899026   2.1881544
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                1.9506012    1.7694789   2.1317234
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                1.7045772    1.5409673   1.8681870
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                1.8049398    1.6178929   1.9919866
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                1.8110088    1.6574439   1.9645737
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.5220137    1.1767745   1.8672529
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                1.9746014    1.6884241   2.2607787
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                1.8602179    1.5227547   2.1976810
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                1.8487644    1.7288729   1.9686558
3-6 months     ki1000108-IRC              INDIA                          <48 cm               NA                1.8926487    1.7732692   2.0120282
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                1.9415667    1.8378265   2.0453070
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                2.0873979    1.8570607   2.3177350
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                2.1016819    2.0177441   2.1856197
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                2.0264373    1.8646588   2.1882157
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                1.8383272    1.4059771   2.2706774
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                2.0231752    1.4541012   2.5922492
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                2.4180878    1.8202878   3.0158878
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                1.8920397    1.8325012   1.9515783
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                1.9456484    1.8732001   2.0180967
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                1.9688796    1.8911817   2.0465776
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                1.8010326    1.7023573   1.8997079
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                1.8322368    1.7455922   1.9188814
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.8427863    1.7720535   1.9135191
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                1.8786393    1.8095890   1.9476896
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                2.0067655    1.9465512   2.0669798
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                1.9763439    1.9264718   2.0262159
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                1.9615626    1.8874893   2.0356358
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                2.0769456    2.0129850   2.1409062
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                1.9621360    1.9088136   2.0154584
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                1.9094143    1.8438940   1.9749347
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                2.0616815    1.9644131   2.1589498
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                1.9515203    1.8703090   2.0327316
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                1.5925434    1.5004192   1.6846676
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                1.7849264    1.7297520   1.8401008
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                1.6492019    1.5815404   1.7168635
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                2.0815556    2.0392507   2.1238605
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                2.3369361    2.2721734   2.4016987
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                2.1695434    2.1181850   2.2209017
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.9561323    1.9215545   1.9907101
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                2.0156893    1.9780407   2.0533378
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.9602412    1.9289070   1.9915754
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                1.6879255    1.6410081   1.7348428
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                1.8234572    1.7409885   1.9059259
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                1.7853964    1.7256079   1.8451848
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                1.8065008    1.7796613   1.8333403
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                1.9181610    1.8978827   1.9384393
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                1.8669184    1.8463166   1.8875201
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                1.7847559    1.7372856   1.8322261
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                1.9391673    1.9258975   1.9524370
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                1.8734343    1.8510958   1.8957729
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                1.8733920    1.8196342   1.9271498
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                1.9284949    1.8810798   1.9759100
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                1.8788906    1.8270793   1.9307018
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                1.2170327    1.1260322   1.3080333
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                1.2480253    1.1758359   1.3202148
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                1.2671162    1.2008472   1.3333851
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                1.4946652    1.2580986   1.7312318
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                1.3762229    1.1927544   1.5596914
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                1.4279131    1.1934856   1.6623407
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                1.1172692    0.9081854   1.3263529
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                1.1760474    0.8679775   1.4841173
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                1.3145811    1.1256642   1.5034981
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                1.4231646    1.1266115   1.7197176
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                1.2552098    1.0483993   1.4620202
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                1.2242873    1.0834491   1.3651256
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                1.2774403    1.1404907   1.4143899
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                1.3347739    1.2334154   1.4361323
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                1.3075102    1.1967540   1.4182664
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                1.2681743    1.1358598   1.4004887
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                1.8156865    1.5590696   2.0723033
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                1.3343759    1.2096758   1.4590761
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                1.2697931    1.0887997   1.4507865
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                1.4892348    1.1147045   1.8637651
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                1.2160564    1.0663559   1.3657569
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.0024423    0.5772939   1.4275907
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                1.2795508    1.0421741   1.5169274
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                1.3015660    1.0545569   1.5485751
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              NA                1.3282725    1.2493385   1.4072064
6-9 months     ki1000108-IRC              INDIA                          <48 cm               NA                1.4824795    1.3845077   1.5804513
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                1.3341995    1.2497232   1.4186758
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                1.1348547    0.9835373   1.2861721
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                1.1277838    1.0513239   1.2042436
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                1.2277357    1.1220771   1.3333944
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                1.2277689    1.1358681   1.3196698
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                1.2144992    1.1877951   1.2412034
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                1.2133098    1.1612526   1.2653670
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                1.2418015    1.1559349   1.3276681
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                1.2350653    1.1664925   1.3036381
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.2631677    1.1976924   1.3286430
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                1.3189587    1.2696571   1.3682603
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                1.2379623    1.1974641   1.2784604
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                1.2977261    1.2557178   1.3397345
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                1.3405882    1.2824870   1.3986893
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                1.3365686    1.2857117   1.3874255
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                1.3134477    1.2668856   1.3600099
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                1.4925650    1.3989421   1.5861879
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                1.2634297    1.1648707   1.3619888
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                1.3852874    1.2674362   1.5031386
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                1.2882535    1.1954217   1.3810854
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                1.3364812    1.2685456   1.4044167
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                1.2988466    1.2507770   1.3469161
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                1.5685143    1.5360848   1.6009438
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                1.6451738    1.5494539   1.7408936
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                1.6641925    1.6010548   1.7273301
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.3515468    1.3175515   1.3855421
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                1.3616532    1.3256689   1.3976376
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.3329823    1.3027766   1.3631881
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                1.1018598    1.0597870   1.1439327
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                1.1699753    1.0983712   1.2415794
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                1.0858543    1.0243872   1.1473215
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                1.2079460    1.1836160   1.2322760
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                1.1980214    1.1789439   1.2170990
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                1.1811804    1.1613819   1.2009789
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                1.3310791    1.2857830   1.3763753
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                1.3378053    1.3059347   1.3696759
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                1.3115534    1.2726823   1.3504245
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.8997002    0.8004722   0.9989281
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                1.0287678    0.9634928   1.0940428
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.9709385    0.9101771   1.0316998
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                1.2843714    1.0755107   1.4932322
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                1.4170895    1.0936220   1.7405569
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                1.2631983    0.8390306   1.6873660
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                1.1257876    0.9422056   1.3093695
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                0.9962376    0.8401923   1.1522829
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                1.0316972    0.9253385   1.1380559
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                0.9683314    0.8479517   1.0887111
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                1.0499564    0.9250570   1.1748558
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                0.8794095    0.7672287   0.9915902
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                1.0515993    0.8949496   1.2082491
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                1.1007388    1.0111404   1.1903371
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                1.1559648    1.0622187   1.2497110
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                1.0078482    0.8369549   1.1787414
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.9919383    0.7811397   1.2027369
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                1.1011742    0.9254982   1.2768502
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8327903    0.6727293   0.9928513
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.7405581    0.3762049   1.1049112
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.8040128    0.6607715   0.9472541
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.0764090    0.4735413   1.6792767
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                1.0072079    0.7754220   1.2389938
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.9307210    0.7132949   1.1481471
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                1.1399455    1.0719345   1.2079566
9-12 months    ki1000108-IRC              INDIA                          <48 cm               NA                1.1334591    1.0476610   1.2192572
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                1.1092843    1.0434413   1.1751272
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                0.9324630    0.7944772   1.0704489
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                0.9074977    0.8550502   0.9599453
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                0.8772076    0.7867697   0.9676456
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                1.3443657    1.1698970   1.5188344
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm               NA                1.4089121    0.9578370   1.8599872
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                1.3110788    0.9026035   1.7195541
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                1.0550375    0.9727065   1.1373685
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                1.0080854    0.9704060   1.0457648
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.9703914    0.8990218   1.0417611
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                1.1066037    1.0360824   1.1771250
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                1.0721336    1.0140491   1.1302181
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.1134330    1.0540019   1.1728641
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                1.0751568    1.0142349   1.1360786
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                1.0554298    1.0138777   1.0969819
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                1.0325406    0.9891574   1.0759239
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                1.1064860    1.0565890   1.1563830
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                1.1096841    1.0641076   1.1552606
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                1.1476912    1.1058699   1.1895124
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.9427909    0.8606705   1.0249113
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.9920844    0.9049464   1.0792224
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.9818587    0.9031253   1.0605920
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                0.9978641    0.9302894   1.0654387
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                0.9904704    0.9395885   1.0413524
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                1.0141202    0.9652037   1.0630367
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                1.3670986    1.3161749   1.4180223
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                1.3928557    1.3410023   1.4447092
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                1.4229776    1.3335682   1.5123869
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.0873842    1.0578283   1.1169400
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                1.0977982    1.0633059   1.1322904
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.0627443    1.0333382   1.0921504
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.9428678    0.9029876   0.9827479
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.9369905    0.8710423   1.0029387
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.9754933    0.9210143   1.0299724
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                1.0629985    1.0367414   1.0892556
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                0.9629614    0.9422701   0.9836526
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                1.0022171    0.9815817   1.0228525
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                1.0796563    1.0382879   1.1210247
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                1.0640377    1.0384827   1.0895928
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                1.0784848    1.0428608   1.1141088
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.9557233    0.8802525   1.0311941
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.8800452    0.8094971   0.9505934
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.8856665    0.8138777   0.9574552
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                1.0333311    0.8794212   1.1872409
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                0.9691245    0.6432105   1.2950386
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                1.0543702    0.7071409   1.4015995
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                0.7478316    0.4322279   1.0634354
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                0.8509626    0.7061047   0.9958206
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                0.8942383    0.7712483   1.0172283
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                0.8745856    0.6878925   1.0612788
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                0.8180386    0.7482967   0.8877806
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                1.1189397    0.9464330   1.2914464
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.8122393    0.7028573   0.9216212
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.9301758    0.8174467   1.0429049
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.8942960    0.8155373   0.9730547
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.8250793    0.5809674   1.0691913
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.9539137    0.7857279   1.1220994
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.8943624    0.7480963   1.0406285
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8397149    0.6710328   1.0083970
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8498157    0.6802882   1.0193432
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.8831521    0.7231565   1.0431478
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.7801990    0.3976022   1.1627957
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.8486062    0.6825484   1.0146640
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7296461    0.5781876   0.8811046
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              NA                0.9340881    0.8613071   1.0068692
12-15 months   ki1000108-IRC              INDIA                          <48 cm               NA                0.9503106    0.8626135   1.0380076
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.9586789    0.8993460   1.0180117
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                0.9227662    0.7659317   1.0796007
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                1.0433886    0.9957581   1.0910191
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                0.9551256    0.8594812   1.0507699
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.8664016    0.7303102   1.0024931
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.8521441    0.7872092   0.9170790
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.7706103    0.7200886   0.8211320
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7170724    0.6431721   0.7909727
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.7505537    0.6529880   0.8481194
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7104874    0.6553792   0.7655956
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.9604873    0.9114872   1.0094874
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.9120678    0.8662369   0.9578987
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                1.0017928    0.9607752   1.0428103
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.9283412    0.8813874   0.9752949
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.9711607    0.9282987   1.0140226
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.9955306    0.9570103   1.0340510
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.9399623    0.8877804   0.9921442
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.9918642    0.9108075   1.0729208
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.9313234    0.8822364   0.9804105
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                0.9369776    0.8646845   1.0092707
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                0.8553488    0.8113437   0.8993539
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                0.8921097    0.8466775   0.9375418
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                1.1630438    0.8052913   1.5207964
12-15 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                1.9144078    1.5842563   2.2445593
12-15 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                1.3602804    1.1397022   1.5808586
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.9156178    0.8695625   0.9616732
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.9127692    0.8632163   0.9623220
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.9353605    0.8912930   0.9794281
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.7787874    0.7297331   0.8278417
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.7887580    0.7071682   0.8703478
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.7214328    0.6581296   0.7847361
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.9314715    0.8974704   0.9654726
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.9371897    0.9150151   0.9593642
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.9300592    0.8935466   0.9665717
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.7875920    0.7187663   0.8564177
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.8188392    0.7510901   0.8865883
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.8325869    0.7696040   0.8955697
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                0.9915575    0.8352191   1.1478958
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                1.0705358    0.9045388   1.2365329
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                0.8543630    0.7335301   0.9751960
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                0.8942104    0.6629492   1.1254715
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                0.7863257    0.6831383   0.8895131
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                0.8062050    0.6934808   0.9189292
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                0.8581242    0.6136482   1.1026001
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                0.9193378    0.7253225   1.1133530
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                0.7150814    0.5314257   0.8987371
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.8151305    0.7359908   0.8942701
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.8826269    0.7943199   0.9709338
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.8966870    0.8139636   0.9794104
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.9371410    0.7661580   1.1081240
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.8208783    0.6136402   1.0281164
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.8828979    0.7282484   1.0375474
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8090128    0.6182971   0.9997286
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.7071236    0.5538368   0.8604104
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.8003248    0.6804642   0.9201855
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.5282721    0.2868923   0.7696518
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7073947    0.5258197   0.8889697
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.6681137    0.5063367   0.8298908
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              NA                0.8297474    0.7640211   0.8954736
15-18 months   ki1000108-IRC              INDIA                          <48 cm               NA                0.8961289    0.7935969   0.9986608
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.8934900    0.8341924   0.9527876
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                0.7575181    0.6231436   0.8918925
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                0.8375496    0.7942229   0.8808763
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                0.8335693    0.7681345   0.8990042
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.8843169    0.8126348   0.9559990
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.8916114    0.8443000   0.9389228
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.9500970    0.9029498   0.9972442
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7748535    0.6984357   0.8512713
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.7852071    0.7135755   0.8568387
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7661616    0.6988901   0.8334331
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.8713588    0.8218260   0.9208917
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.8355839    0.7931506   0.8780172
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.8653987    0.8275975   0.9031998
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.9320046    0.8862290   0.9777803
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.9259463    0.8867366   0.9651559
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.9003867    0.8642669   0.9365065
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.9147874    0.8569180   0.9726568
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.8380856    0.7502390   0.9259321
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.8786432    0.8251493   0.9321371
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                0.7412047    0.6298605   0.8525490
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                0.7644327    0.7122206   0.8166449
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                0.7424865    0.6987844   0.7861885
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                1.0473332    0.6538635   1.4408030
15-18 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.3689257   -0.2212794   0.9591308
15-18 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                1.0641373   -2.1038399   4.2321146
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.8213728    0.7643537   0.8783920
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.7883020    0.7405280   0.8360759
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.7956499    0.7428298   0.8484699
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.7458409    0.6945762   0.7971055
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.7061606    0.5952785   0.8170428
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.7724175    0.7066242   0.8382108
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.8983238    0.8629855   0.9336621
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.8361650    0.8124640   0.8598659
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.8475072    0.8107328   0.8842816
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.8420533    0.7536478   0.9304588
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.7885103    0.7259222   0.8510983
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.8568225    0.8004113   0.9132338
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                0.8612611    0.7235862   0.9989360
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                0.8614128    0.7434664   0.9793591
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                0.9431874    0.7508077   1.1355671
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                0.9744292    0.7866548   1.1622037
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                0.8605984    0.7636390   0.9575579
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                0.8688946    0.7547946   0.9829947
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                0.9762766    0.7431103   1.2094428
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                0.9153585    0.7778440   1.0528730
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                0.7653704    0.5173762   1.0133647
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.8278309    0.6949765   0.9606852
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.8210840    0.7397690   0.9023989
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.8858668    0.8073485   0.9643850
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.8618789    0.6750725   1.0486853
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.7329055    0.5888746   0.8769364
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.7532981    0.5997423   0.9068539
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8204937    0.6284550   1.0125323
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.6346961    0.4672604   0.8021318
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.6635737    0.5285867   0.7985608
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.3511813    0.2390468   0.4633158
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.6718122    0.4631470   0.8804773
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7697708    0.5358116   1.0037300
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              NA                0.6988901    0.6262867   0.7714935
18-21 months   ki1000108-IRC              INDIA                          <48 cm               NA                0.7637353    0.6992451   0.8282254
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.8070110    0.7380055   0.8760165
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                0.7373616    0.6159007   0.8588226
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                0.7360942    0.6887115   0.7834770
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                0.7534672    0.6881554   0.8187790
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7741726    0.6944979   0.8538474
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.7148303    0.6542437   0.7754168
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7340231    0.6760313   0.7920149
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.8503437    0.8016546   0.8990328
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.8355153    0.7962554   0.8747752
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.8367589    0.7979083   0.8756096
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.7694036    0.7264408   0.8123665
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.8358493    0.7955801   0.8761184
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.7875296    0.7482977   0.8267615
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.8357708    0.7775812   0.8939605
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.7973101    0.6934505   0.9011696
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.8465489    0.7821337   0.9109640
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                0.9470961    0.8163939   1.0777983
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                0.8784165    0.8344470   0.9223861
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                0.9129805    0.8685995   0.9573615
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.6208029    0.5467735   0.6948324
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.6726905    0.6172917   0.7280893
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.7240627    0.6695753   0.7785500
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.7554343    0.7072777   0.8035908
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.7432656    0.6495347   0.8369966
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.7653479    0.7019078   0.8287880
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.8295610    0.7479763   0.9111457
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.7614737    0.6998763   0.8230712
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.7687217    0.7076684   0.8297750
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                0.8777482    0.7313762   1.0241201
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                0.7041611    0.5537230   0.8545993
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                0.8402363    0.6610156   1.0194570
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                0.7561604    0.5631256   0.9491952
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                0.8171008    0.6791277   0.9550740
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                0.7911986    0.6666821   0.9157151
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                0.7380914    0.5515837   0.9245990
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                0.8082759    0.6895680   0.9269838
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                0.6504490    0.5563123   0.7445858
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.7928413    0.6544175   0.9312651
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.7134496    0.6414420   0.7854572
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.7426386    0.6519779   0.8332993
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.7485336    0.6391686   0.8578986
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.7885942    0.6159658   0.9612226
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.9816337    0.7769677   1.1862997
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8015164    0.6518817   0.9511512
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8514196    0.6906660   1.0121731
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.6748410    0.5516805   0.7980014
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.7418746    0.5081259   0.9756234
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7754021    0.6191196   0.9316846
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.5573115    0.3655634   0.7490596
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                0.7022822    0.6377994   0.7667649
21-24 months   ki1000108-IRC              INDIA                          <48 cm               NA                0.7193255    0.6377368   0.8009142
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.7354669    0.6580269   0.8129069
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                0.7721849    0.6680957   0.8762740
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                0.6525063    0.5911250   0.7138876
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                0.6926066    0.5937935   0.7914197
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7106865    0.6434161   0.7779569
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.6758920    0.6143181   0.7374659
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7517679    0.6929528   0.8105829
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.7564460    0.7023615   0.8105304
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.7304032    0.6877997   0.7730068
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.7953594    0.7558768   0.8348419
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.8000986    0.7539053   0.8462918
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.7930709    0.7526276   0.8335142
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.8017719    0.7600100   0.8435339
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.6969778    0.6444999   0.7494557
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.7185547    0.6524865   0.7846229
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.7491337    0.6699939   0.8282735
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                0.7299194    0.6304559   0.8293830
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                0.7974225    0.7405943   0.8542507
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                0.8300677    0.7430853   0.9170501
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.7502470    0.6522970   0.8481970
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.6820611    0.6241946   0.7399276
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.6662139    0.6065351   0.7258926
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.6886969    0.6439772   0.7334166
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.6819635    0.6193515   0.7445755
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.6686589    0.6129847   0.7243331


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3381144   3.2680821   3.4081467
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.8423890   3.6776693   4.0071087
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.1674772   3.0046748   3.3302796
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.3640786   3.1494051   3.5787522
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0506278   2.9850894   3.1161661
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.0831860   2.9500513   3.2163208
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2456715   3.1496784   3.3416646
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4904155   3.2740036   3.7068274
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                3.0360901   2.9324950   3.1396851
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.7233058   2.2630483   3.1835633
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.1045079   3.0503454   3.1586704
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1061627   3.0599463   3.1523792
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8134611   2.7000362   2.9268861
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3370617   3.3165207   3.3576028
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5828382   2.5396287   2.6260477
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5089109   3.4948295   3.5229924
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6692731   3.6588337   3.6797125
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.0073628   2.9543803   3.0603453
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9430741   1.8895320   1.9966162
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.9946196   1.8572903   2.1319490
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8955276   1.7468738   2.0441814
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                2.0120686   1.8517601   2.1723772
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.9804098   1.9060668   2.0547528
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9274394   1.7975575   2.0573213
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8060525   1.7128891   1.8992158
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8615517   1.6707264   2.0523769
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8963844   1.8303319   1.9624368
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0837031   2.0139070   2.1534991
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0629973   1.7450643   2.3809303
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9466547   1.9003261   1.9929832
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8284951   1.7795462   1.8774440
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9507505   1.9059588   1.9955422
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9760533   1.9562736   1.9958330
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7456394   1.7115844   1.7796945
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8751782   1.8624443   1.8879121
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9157168   1.9040672   1.9273664
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.9000274   1.8695360   1.9305188
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2499779   1.2065843   1.2933714
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4439338   1.3084002   1.5794673
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2152615   1.0561220   1.3744010
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2985629   1.1625337   1.4345921
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3164777   1.2531671   1.3797882
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.4087709   1.3141055   1.5034362
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.2497270   1.1192557   1.3801983
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.3332342   1.1800541   1.4864143
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3711353   1.3213481   1.4209225
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                1.1477771   1.0894464   1.2061078
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2149436   1.1946616   1.2352257
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.2484616   1.2072078   1.2897155
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4202127   1.3576869   1.4827385
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3179573   1.2772204   1.3586943
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5766239   1.5455412   1.6077067
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3466210   1.3275127   1.3657293
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.1114652   1.0801624   1.1427680
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.1948816   1.1830403   1.2067228
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.3267865   1.3051725   1.3484005
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9851594   0.9440621   1.0262567
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3271517   1.1578093   1.4964941
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.0322062   0.9441033   1.1203091
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9789246   0.9026393   1.0552098
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.1072832   1.0485689   1.1659975
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0354643   0.9312962   1.1396323
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7837971   0.6609083   0.9066860
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9717651   0.8024124   1.1411178
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1226151   1.0817887   1.1634415
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.9007356   0.8578657   0.9436055
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.3517119   1.1520734   1.5513504
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0025134   0.9726273   1.0323994
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.0882312   1.0525404   1.1239219
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9646719   0.9133593   1.0159845
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9980141   0.9654660   1.0305622
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3722990   1.3216012   1.4229968
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0807767   1.0628144   1.0987389
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9521771   0.9236946   0.9806596
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9987869   0.9860597   1.0115142
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0722360   1.0535985   1.0908735
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9054278   0.8626926   0.9481629
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0377891   0.9011291   1.1744491
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8491431   0.7507612   0.9475250
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9164495   0.8229819   1.0099171
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8954656   0.8430609   0.9478703
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8864616   0.7797432   0.9931801
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8371664   0.7421509   0.9321819
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8222591   0.7136830   0.9308351
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9487591   0.9070419   0.9904762
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                1.0127323   0.9714760   1.0539886
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8302163   0.7911776   0.8692550
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7243319   0.6786653   0.7699985
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9445101   0.9104291   0.9785911
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8802996   0.8513400   0.9092592
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.1869393   0.8605053   1.5133732
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9214211   0.8942339   0.9486082
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7651176   0.7305855   0.7996497
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9336171   0.9165979   0.9506362
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8213670   0.7817814   0.8609527
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9671774   0.8718070   1.0625478
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8105692   0.7360667   0.8850718
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8455107   0.7193888   0.9716326
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8755130   0.8253940   0.9256321
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9073204   0.8157932   0.9988477
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7396381   0.6557436   0.8235327
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6728213   0.5667854   0.7788572
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8633844   0.8225675   0.9042013
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8250125   0.7893587   0.8606662
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9090153   0.8838772   0.9341535
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7757022   0.7349342   0.8164703
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8891195   0.8516050   0.9266340
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.0339982   0.5968654   1.4711310
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7983880   0.7682058   0.8285702
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7419068   0.7040097   0.7798040
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8551846   0.8372768   0.8730924
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8091078   0.7710650   0.8471506
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.8852728   0.7931627   0.9773829
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8813017   0.8111314   0.9514720
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8937211   0.7752979   1.0121443
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8290356   0.7799563   0.8781148
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7979007   0.7037059   0.8920955
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7196904   0.6260949   0.8132858
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6483895   0.5168933   0.7798857
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7638749   0.7240049   0.8037448
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7417815   0.7058751   0.7776879
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7343577   0.6975310   0.7711845
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8359482   0.7951898   0.8767066
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6792522   0.6449086   0.7135958
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7566700   0.7208762   0.7924638
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7723882   0.7344609   0.8103155
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.8242330   0.7377181   0.9107478
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7977630   0.7124596   0.8830664
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7441888   0.6599855   0.8283921
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7424804   0.6896824   0.7952785
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8209010   0.7269807   0.9148213
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7481384   0.6682146   0.8280622
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7031193   0.5947945   0.8114441
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7161799   0.6738335   0.7585262
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6730760   0.6238820   0.7222700
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7123568   0.6763975   0.7483161
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7189400   0.6804627   0.7574172
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7982404   0.7527824   0.8436984
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6955637   0.6574758   0.7336517
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6805386   0.6502643   0.7108129


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.3885652    0.1942672    0.5828632
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0848393   -0.1073048    0.2769835
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.3625442   -0.0111228    0.7362112
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0707092   -0.5377474    0.3963289
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.4546563    0.1361771    0.7731355
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0559683   -0.3363540    0.2244174
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.3348579   -0.1327657    0.8024816
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.1262606   -0.4691197    0.7216408
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1847841   -0.0011660    0.3707342
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0250533   -0.1622467    0.2123532
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.3847742    0.0270472    0.7425013
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.2644970   -0.0373852    0.5663792
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.4315934    0.1916080    0.6715788
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1116164   -0.1036719    0.3269047
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            1.0845043    0.4141362    1.7548723
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.5928231   -0.0400279    1.2256740
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.1546989    0.8898200    1.4195779
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.7420593    0.5208044    0.9633142
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.6141693    0.0938129    1.1345257
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.3257992   -0.1991620    0.8507604
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            1.3175576    0.3857427    2.2493724
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.7923473   -0.3210676    1.9057621
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.7888704    0.7233791    0.8543618
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.5551889    0.4405143    0.6698635
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.4941886    0.3556471    0.6327301
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.3033528    0.1691205    0.4375852
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.1172890    0.0209562    0.2136217
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0478907   -0.0475612    0.1433426
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.2904130    0.1931224    0.3877037
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.1612494    0.0671862    0.2553126
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.8314947    0.6905405    0.9724490
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.3316916    0.2431068    0.4202764
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.2978405    0.1597007    0.4359803
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1429898    0.0000201    0.2859595
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.7616942    0.6377204    0.8856681
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.4361659    0.3310143    0.5413174
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.9321823    0.8829421    0.9814225
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.5081804    0.4626457    0.5537152
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.3010801    0.1766222    0.4255379
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1324461    0.0397228    0.2251694
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.3167874    0.2812196    0.3523552
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1399232    0.1047819    0.1750645
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.3685720    0.3280707    0.4090732
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.1754734    0.1335351    0.2174117
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            1.7121806    1.5997639    1.8245973
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.3640765    1.2352422    1.4929108
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0489542   -0.1076761    0.2055845
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0162243   -0.1412720    0.1737207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.1401580   -0.2238644    0.5041803
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0055203   -0.3926212    0.3815806
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.1519579   -0.2997009    0.6036167
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0484690   -0.4419648    0.3450267
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.2141619   -0.1917505    0.6200744
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0936290   -0.5347150    0.3474570
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.2150531    0.0043924    0.4257138
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.1872972   -0.0208424    0.3954367
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0915756   -0.2679675    0.4511187
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1031483   -0.2105655    0.4168620
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.1003626   -0.1473203    0.3480456
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1064316   -0.1198711    0.3327343
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.4525877    0.0041190    0.9010563
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.3382042   -0.1444384    0.8208468
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0438843   -0.1253371    0.2131057
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0928024   -0.0659454    0.2515501
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0142840   -0.2307985    0.2593665
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0609606   -0.3423917    0.2204705
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1848479   -0.5298351    0.8995310
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.5797606   -0.1580006    1.3175217
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0536087   -0.0469637    0.1541810
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0768399   -0.0180400    0.1717198
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0312042   -0.0997748    0.1621832
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0417536   -0.0790429    0.1625502
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.1281262    0.0365721    0.2196804
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0977046    0.0125725    0.1828367
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.1153830    0.0178223    0.2129437
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0005734   -0.0905138    0.0916606
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.1522671    0.0343550    0.2701793
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0421060   -0.0621683    0.1463802
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.1923830    0.0851436    0.2996224
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0566586   -0.0576291    0.1709462
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.2553804    0.1882678    0.3224930
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0879877    0.0424455    0.1335299
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0595570    0.0084360    0.1106779
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0041089   -0.0425729    0.0507907
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.1355317    0.0406285    0.2304350
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0974709    0.0215661    0.1733756
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            0.1116602    0.0780868    0.1452336
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0604176    0.0266733    0.0941618
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.1544114    0.1054109    0.2034119
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.0886785    0.0370735    0.1402834
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0551029   -0.0159530    0.1261588
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0054986   -0.0678828    0.0788799
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0309926   -0.0855378    0.1475230
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0500834   -0.0623801    0.1625470
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.1184423   -0.4194910    0.1826064
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0667520   -0.4017729    0.2682688
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0587782   -0.3135430    0.4310994
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.1973120   -0.0844781    0.4791020
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.1679548   -0.5294991    0.1935895
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.1988772   -0.5271745    0.1294201
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0573336   -0.1129432    0.2276103
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0300699   -0.1461746    0.2063143
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.5475122    0.2582392    0.8367851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0662016   -0.1166937    0.2490970
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.2194417   -0.1991472    0.6380306
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0537367   -0.2911153    0.1836419
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.2771085   -0.2154157    0.7696326
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2991237   -0.1870003    0.7852478
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.1542070    0.0285033    0.2799107
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0059270   -0.1107666    0.1226207
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.0070710   -0.1770488    0.1629068
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0928810   -0.0919183    0.2776803
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.0132697   -0.1291946    0.1026552
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0144592   -0.0967364    0.0678181
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0067362   -0.1164276    0.1029552
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0213662   -0.0868569    0.1295892
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0809965   -0.1448171   -0.0171758
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0212326   -0.0860001    0.0435349
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0040196   -0.0810881    0.0730490
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0271404   -0.1017201    0.0474392
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2291353   -0.3650929   -0.0931777
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1072776   -0.2577382    0.0431830
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0482276   -0.0670158    0.1634711
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0105930   -0.0942925    0.1154786
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0766594   -0.0197441    0.1730630
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0956782    0.0315167    0.1598396
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0101064   -0.0394398    0.0596527
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0185644   -0.0640642    0.0269353
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0681154   -0.0148258    0.1510566
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0160055   -0.0904042    0.0583932
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0099246   -0.0408358    0.0209867
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0267656   -0.0581341    0.0046029
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0067262   -0.0479993    0.0614516
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0195258   -0.0804720    0.0414205
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.1290676    0.0101489    0.2479864
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0712383   -0.0450882    0.1875647
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.1327181   -0.2548837    0.5203198
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0211731   -0.4987612    0.4564150
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.1295500   -0.3704907    0.1113908
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0940903   -0.3062566    0.1180759
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0816250   -0.0918430    0.2550929
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0889220   -0.2534692    0.0756252
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0491394   -0.1320793    0.2303582
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.1043655   -0.0769087    0.2856397
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.0159099   -0.2873536    0.2555339
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0933260   -0.1523178    0.3389698
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0922322   -0.4911205    0.3066561
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0287775   -0.2454289    0.1878739
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0692011   -0.7167750    0.5783727
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.1456880   -0.7958189    0.5044430
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.0064865   -0.1160450    0.1030721
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0306613   -0.1251830    0.0638604
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.0249653   -0.1711050    0.1211744
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0552554   -0.2200107    0.1095000
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0645464   -0.4190941    0.5481868
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.0332869   -0.4774619    0.4108881
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.0469521   -0.1595883    0.0656841
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0846461   -0.2108210    0.0415288
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0344701   -0.1255773    0.0566370
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0068293   -0.0854649    0.0991236
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0197270   -0.0935700    0.0541161
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0426161   -0.1174763    0.0322440
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0031981   -0.0644166    0.0708128
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0412051   -0.0239604    0.1063707
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0492935   -0.0708488    0.1694359
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0390678   -0.0747245    0.1528600
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0073937   -0.0922652    0.0774779
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0162561   -0.0674863    0.0999985
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0257571   -0.0378007    0.0893149
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0558789   -0.0198240    0.1315819
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0104140   -0.0350267    0.0558547
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0246399   -0.0663407    0.0170609
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0058773   -0.0832630    0.0715084
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0326256   -0.0350518    0.1003029
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.1000371   -0.1334309   -0.0666433
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0607814   -0.0941700   -0.0273927
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0156185   -0.0650044    0.0337674
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0011715   -0.0559565    0.0536135
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0756780   -0.1795773    0.0282212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0700568   -0.1746592    0.0345455
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0642065   -0.4265528    0.2981398
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0210392   -0.3658044    0.4078827
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.1031310   -0.2441291    0.4503911
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.1464067   -0.1923149    0.4851282
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0565470   -0.2558414    0.1427474
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.2443541   -0.0098366    0.4985448
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.1179366   -0.0404370    0.2763101
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0820567   -0.0530508    0.2171643
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.1288343   -0.1687607    0.4264294
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0692830   -0.2155663    0.3541324
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0101008   -0.2288259    0.2490274
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0434372   -0.1899272    0.2768016
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0684073   -0.3501051    0.4869197
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0505529   -0.4618610    0.3607553
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0162224   -0.0976587    0.1301035
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0245907   -0.0693899    0.1185713
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.1206224   -0.0424200    0.2836649
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0323594   -0.1509720    0.2156908
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.0142575   -0.1916268    0.1631117
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0957913   -0.2497301    0.0581474
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0334813   -0.0886045    0.1555671
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0065850   -0.0990293    0.0858593
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0484195   -0.1155560    0.0187170
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0413055   -0.0225606    0.1051715
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0428195   -0.0206683    0.1063074
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0671895    0.0065718    0.1278072
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0519019   -0.0448776    0.1486814
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0086389   -0.0805522    0.0632744
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0816288   -0.1662656    0.0030080
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0448679   -0.1305945    0.0408587
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.7513639    0.2963638    1.2063640
12-15 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.1972366   -0.1958549    0.5903280
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0028487   -0.0706009    0.0649035
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0197427   -0.0441007    0.0835862
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0099706   -0.0851929    0.1051341
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0573545   -0.1378860    0.0231769
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0057181   -0.0341840    0.0456202
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0014124   -0.0516276    0.0488029
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0312472   -0.0653854    0.1278798
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0449949   -0.0485160    0.1385057
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0789784   -0.1490494    0.3070062
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.1371944   -0.3347856    0.0603968
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.1078846   -0.3611223    0.1453531
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0880054   -0.3452765    0.1692658
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0612136   -0.2508928    0.3733200
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.1430428   -0.4488171    0.1627316
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0674964   -0.0512959    0.1862887
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0815566   -0.0328810    0.1959941
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.1162627   -0.3890746    0.1565492
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0542431   -0.2869868    0.1785006
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.1018893   -0.3474014    0.1436228
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0086880   -0.2347097    0.2173336
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.1791226   -0.1250622    0.4833075
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1398417   -0.1524656    0.4321490
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0663815   -0.0553655    0.1881285
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0637427   -0.0247297    0.1522151
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0800316   -0.0612246    0.2212877
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0760513   -0.0734102    0.2255127
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0072945   -0.0894798    0.1040688
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0657801   -0.0113865    0.1429466
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0103536   -0.0940619    0.1147692
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0086919   -0.1111184    0.0937346
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0357749   -0.1010926    0.0295427
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0059602   -0.0684223    0.0565019
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0060584   -0.0663659    0.0542492
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0316179   -0.0899393    0.0267035
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0767018   -0.1825021    0.0290985
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0361442   -0.1159178    0.0436294
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0232280   -0.0992367    0.1456928
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0012817   -0.1182613    0.1208248
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.6784075   -1.3832017    0.0263866
15-18 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0168041   -3.1939904    3.2275986
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0330708   -0.1074104    0.0412687
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0257230   -0.1035864    0.0521404
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0396802   -0.1620802    0.0827198
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0265767   -0.0574982    0.1106515
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0621588   -0.1037607   -0.0205569
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0508166   -0.1018008    0.0001676
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0535431   -0.1624293    0.0553432
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0147692   -0.0902755    0.1198139
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0001517   -0.1811374    0.1814407
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0819263   -0.1546415    0.3184941
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.1138308   -0.3251608    0.0974992
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.1055346   -0.3252573    0.1141881
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0609181   -0.3316148    0.2097787
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.2109061   -0.5512995    0.1294872
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0067469   -0.1644920    0.1509983
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0580359   -0.0962605    0.2123323
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.1289734   -0.3654693    0.1075225
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.1085808   -0.3531304    0.1359689
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.1857976   -0.4442888    0.0726936
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.1569200   -0.3907630    0.0769230
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.3206309    0.0833691    0.5578927
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.4185895    0.1579818    0.6791972
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0648452   -0.0315615    0.1612519
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.1081209    0.0075432    0.2086987
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.0012674   -0.1319790    0.1294442
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0161056   -0.1218670    0.1540782
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0593424   -0.1593442    0.0406594
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0401495   -0.1386626    0.0583635
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0148284   -0.0772272    0.0475704
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0135848   -0.0757543    0.0485848
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0664456    0.0073991    0.1254922
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0181260   -0.0399537    0.0762056
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0384608   -0.1579508    0.0810293
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0107780   -0.0770105    0.0985665
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0686796   -0.2063313    0.0689721
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0341156   -0.1714947    0.1032635
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0518876   -0.0408019    0.1445771
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.1032597    0.0112119    0.1953076
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0121686   -0.1175706    0.0932333
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0099137   -0.0699638    0.0897911
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0680873   -0.1701189    0.0339443
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0608393   -0.1625921    0.0409135
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.1735870   -0.3850600    0.0378859
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0375119   -0.2715957    0.1965719
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0609405   -0.1763337    0.2982146
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0350382   -0.1946720    0.2647484
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0701845   -0.1508961    0.2912652
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0876423   -0.2965606    0.1212759
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0793917   -0.2354696    0.0766861
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0502027   -0.2157792    0.1153738
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0400607   -0.1681695    0.2482909
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.2331001    0.0047803    0.4614199
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0499031   -0.1686496    0.2684559
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.1266755   -0.3202948    0.0669438
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0335274   -0.2488459    0.3159008
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.1845632   -0.4865965    0.1174702
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0170433   -0.0872816    0.1213683
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0331847   -0.0676640    0.1340334
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.1196785   -0.2405181    0.0011611
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0795783   -0.2231003    0.0639438
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0347945   -0.1259644    0.0563753
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0410814   -0.0483250    0.1304878
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0260427   -0.0948994    0.0428140
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0389134   -0.0278488    0.1056757
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0070277   -0.0683891    0.0543338
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0016734   -0.0605662    0.0639129
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0215770   -0.0628825    0.1060365
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0521559   -0.0430133    0.1473252
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0675030   -0.0472845    0.1822906
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1001483   -0.0330419    0.2333384
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0681859   -0.1822846    0.0459128
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0840332   -0.1987063    0.0306400
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0067334   -0.0835358    0.0700689
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0200380   -0.0913825    0.0513065


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.2049217    0.0519243    0.3579191
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.1619197   -0.0201416    0.3439810
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.1856892   -0.0316781    0.4030564
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.1815600   -0.1369229    0.5000428
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0831715   -0.0522200    0.2185631
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1708354   -0.0136169    0.3552877
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1371606   -0.0087396    0.2830609
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.7668830    0.2320377    1.3017284
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.5834008    0.4448898    0.7219118
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.4920115    0.0204366    0.9635863
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.7169317    0.1194245    1.3144390
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.5994820    0.5370428    0.6619213
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.3078247    0.2113061    0.4043432
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0608177   -0.0048899    0.1265252
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1755613    0.1067160    0.2444067
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.2610367    0.2142123    0.3078611
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1995132    0.0917467    0.3072797
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0434686    0.0292763    0.0576608
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.4901059    0.4598191    0.5203927
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0957291    0.0536216    0.1378365
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1820898    0.1569058    0.2072738
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.3030476    0.2651470    0.3409483
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 1.1549631    1.0647592    1.2451670
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0220349   -0.0991011    0.1431709
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0226699   -0.1831062    0.1377663
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0489807   -0.2735678    0.3715291
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0653992   -0.2106168    0.3414151
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1480580    0.0066564    0.2894596
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0799865   -0.1092589    0.2692319
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1014753   -0.0470320    0.2499826
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3395380   -0.0163588    0.6954347
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0476200   -0.0437712    0.1390112
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0036948   -0.2247455    0.2173559
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.2246701   -0.1295376    0.5788778
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0546149   -0.0184370    0.1276668
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0274625   -0.0588754    0.1138004
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0871064    0.0264922    0.1477207
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0442347   -0.0218457    0.1103150
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0413362   -0.0043368    0.0870091
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1170251    0.0324482    0.2016021
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0099306    0.0054475    0.0144137
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0199210   -0.0097145    0.0495564
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0577140    0.0233615    0.0920665
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.0686774    0.0447989    0.0925559
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.1309609    0.0851961    0.1767258
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0266354   -0.0199306    0.0732015
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0329451   -0.0517610    0.1176512
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0507314   -0.2007175    0.0992547
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0979924   -0.1300021    0.3259868
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.1246017   -0.3533558    0.1041524
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0390374   -0.0876939    0.1657686
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1405966    0.0244823    0.2567108
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0200661   -0.2076559    0.1675236
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3307919   -0.0695438    0.7311276
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0428628   -0.0230455    0.1087712
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0129223   -0.1347638    0.1606085
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0128253   -0.0970683    0.0714176
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0066601   -0.0695466    0.0828668
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0365403   -0.0803751    0.0072946
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0123187   -0.0644186    0.0397812
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0723523   -0.1337294   -0.0109751
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0297038   -0.0560723    0.1154799
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0081096    0.0032153    0.0130039
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0049258   -0.0338127    0.0239612
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0096053   -0.0223027    0.0415134
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0130644   -0.0348350    0.0087061
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0042926   -0.0426008    0.0340155
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0854593   -0.0032468    0.1741653
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0427803   -0.1392493    0.2248100
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0935814   -0.2658272    0.0786645
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0105931   -0.0961449    0.1173311
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0556838   -0.0830239    0.1943916
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0276161   -0.1096343    0.1648665
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0489932   -0.2158658    0.1178794
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1046439   -0.6293211    0.4200332
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0173305   -0.0719007    0.0372398
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0317274   -0.1640815    0.1006267
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0073462   -0.2096860    0.2243784
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0525241   -0.1501303    0.0450820
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0183725   -0.0816183    0.0448733
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0251818   -0.0770125    0.0266489
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0169884   -0.0285817    0.0625586
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0218810   -0.0273576    0.0711197
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0001500   -0.0648887    0.0651888
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0052004   -0.0004117    0.0108124
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0066075   -0.0326769    0.0194619
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0093093   -0.0196292    0.0382479
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0642116   -0.0876523   -0.0407708
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0074202   -0.0425913    0.0277509
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0502955   -0.1238873    0.0232963
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0044581   -0.1429702    0.1518863
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.1013115   -0.1714939    0.3741168
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0418639   -0.1069370    0.1906648
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0832264   -0.0169889    0.1834416
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0613823   -0.1186693    0.2414338
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0025486   -0.1511184    0.1460212
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0420601   -0.3055730    0.3896932
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0146709   -0.0411909    0.0705328
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0899661   -0.0563830    0.2363152
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0361854   -0.1768496    0.1044789
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0072595   -0.0633127    0.0778317
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0007373   -0.0439841    0.0425095
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0427983    0.0004589    0.0851377
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0045478   -0.0279656    0.0370612
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0566780   -0.1242614    0.0109054
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0238954   -0.0141726    0.0619634
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0058032   -0.0366469    0.0482534
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0136698   -0.0491313    0.0217917
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0021455   -0.0263173    0.0306084
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0337750   -0.0336115    0.1011616
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0243800   -0.1197505    0.0709904
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0836411   -0.2899817    0.1226995
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0126134   -0.2098307    0.1846038
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0603826   -0.0165806    0.1373457
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0298206   -0.1688500    0.1092088
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0693747   -0.2257010    0.0869516
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1445492   -0.0881167    0.3772151
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0336370   -0.0198421    0.0871161
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0674944   -0.0565839    0.1915727
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0246984   -0.0451405    0.0945374
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0008487   -0.0691023    0.0707998
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0152590   -0.0585595    0.0280415
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0142879   -0.0547464    0.0261707
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0256679   -0.0618902    0.0105543
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0137472   -0.0840411    0.1115356
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0133351   -0.2967219    0.2700517
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0229848   -0.0742504    0.0282807
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0039340   -0.0447662    0.0368982
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0431391   -0.0726805   -0.0135978
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0329455   -0.1121614    0.0462704
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0240117   -0.0705746    0.1185980
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0931275   -0.2643996    0.0781446
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0825555   -0.2694625    0.1043516
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0012047   -0.1175325    0.1199420
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0639782   -0.2038520    0.0758955
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1008033   -0.2628206    0.0612140
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2972082    0.1354643    0.4589521
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0649848    0.0088198    0.1211497
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0044198   -0.1105499    0.1193895
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0398149   -0.1093959    0.0297660
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0110060   -0.0534434    0.0314314
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0283719   -0.0109828    0.0677266
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0001774   -0.0391830    0.0395377
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0432006   -0.1541250    0.0677239
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0584493   -0.0061892    0.1230878
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0012358   -0.0364548    0.0389263
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0571728   -0.1314520    0.0171064
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0535152   -0.1556718    0.0486413
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0416026   -0.1402592    0.2234644
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0060974   -0.1369727    0.1491676
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0503609   -0.1688445    0.0681228
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0723674   -0.0419261    0.1866609
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0533781   -0.1820959    0.0753398
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0387553   -0.2610580    0.1835473
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0138977   -0.0409850    0.0687803
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0991089   -0.2058668    0.0076490
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0016703   -0.0592204    0.0625609
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0066931   -0.0406770    0.0540631
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0007632   -0.0418496    0.0403232
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0219622   -0.0152856    0.0592100
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0683210   -0.0197503    0.1563922
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0546833   -0.1414316    0.0320650
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0081584   -0.0411142    0.0247975
