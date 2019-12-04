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

**Outcome Variable:** y_rate_wtkg

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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        birthlen      n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  -----------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37     217  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm           103     217  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        77     217  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           29      62  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            17      62  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16      62  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8      42  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm            19      42  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      42  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      27  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            12      27  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      27  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm           49     218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm            84     218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        85     218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           36     102  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            25     102  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        41     102  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     119  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            37     119  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        50     119  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      97  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            48      97  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        35      97  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          >=50 cm          136     376  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          <48 cm           106     376  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm       134     376  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm           19     202  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm           137     202  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm        46     202  y_rate_wtkg      
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm           11      32  y_rate_wtkg      
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm            12      32  y_rate_wtkg      
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         9      32  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          191    1262  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           666    1262  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       405    1262  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          125     549  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           216     549  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       208     549  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          154     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           228     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       258     640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          158     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           280     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       287     725  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm          612    1249  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm           235    1249  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       402    1249  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           88     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           270     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       151     509  y_rate_wtkg      
0-3 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0      11  y_rate_wtkg      
0-3 months     ki1114097-CMIN             BANGLADESH                     <48 cm             5      11  y_rate_wtkg      
0-3 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         6      11  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm        13907   15327  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm           168   15327  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1252   15327  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2387    8079  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2547    8079  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3145    8079  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          349     681  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           126     681  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       206     681  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm         1404    6532  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm          2722    6532  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm      2406    6532  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1099   19115  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         13607   19115  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      4409   19115  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          691    2482  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1210    2482  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       581    2482  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           35     205  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm            96     205  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        74     205  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           28      59  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            15      59  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        16      59  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8      41  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm            18      41  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      41  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm           48     211  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm            84     211  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        79     211  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34      92  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20      92  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        38      92  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     113  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            35     113  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        47     113  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           13      91  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            47      91  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31      91  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          >=50 cm          138     380  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          <48 cm           107     380  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm       135     380  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm           17     171  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm           114     171  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm        40     171  y_rate_wtkg      
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm           10      23  y_rate_wtkg      
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm             6      23  y_rate_wtkg      
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         7      23  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          166    1106  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           576    1106  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       364    1106  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          117     504  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           193     504  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       194     504  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          143     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           212     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       246     601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          155     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           269     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       278     702  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm          478     960  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm           171     960  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       311     960  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           81     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           243     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       145     469  y_rate_wtkg      
3-6 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0       9  y_rate_wtkg      
3-6 months     ki1114097-CMIN             BANGLADESH                     <48 cm             3       9  y_rate_wtkg      
3-6 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         6       9  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm        12098   13318  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm           146   13318  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1074   13318  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1773    6067  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1885    6067  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2409    6067  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          314     625  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           121     625  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       190     625  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm         1311    6045  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm          2484    6045  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm      2250    6045  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          621   10703  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          7542   10703  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      2540   10703  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          475    1725  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           808    1725  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       442    1725  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37     197  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm            88     197  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        72     197  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm           25      53  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm            14      53  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        14      53  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm            8      41  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm            18      41  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      41  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm           41     192  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm            81     192  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm        70     192  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           34      86  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            18      86  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        34      86  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     108  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     108  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        44     108  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12      87  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            42      87  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        33      87  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          >=50 cm          142     391  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          <48 cm           111     391  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm       138     391  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm           20     191  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm           128     191  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm        43     191  y_rate_wtkg      
6-9 months     ki1000109-ResPak           PAKISTAN                       >=50 cm            8      20  y_rate_wtkg      
6-9 months     ki1000109-ResPak           PAKISTAN                       <48 cm             4      20  y_rate_wtkg      
6-9 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm         8      20  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          171    1127  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm           592    1127  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       364    1127  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          108     480  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm           187     480  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       185     480  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          136     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm           204     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       236     576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          160     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           260     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       273     693  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm          293     574  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm            95     574  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm       186     574  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm           83     476  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm           242     476  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       151     476  y_rate_wtkg      
6-9 months     ki1114097-CMIN             BANGLADESH                     >=50 cm            0       8  y_rate_wtkg      
6-9 months     ki1114097-CMIN             BANGLADESH                     <48 cm             4       8  y_rate_wtkg      
6-9 months     ki1114097-CMIN             BANGLADESH                     [48-50) cm         4       8  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm        11303   12437  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm           130   12437  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm      1004   12437  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1554    5507  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1766    5507  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      2187    5507  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm          300     600  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm           124     600  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm       176     600  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm         1162    5289  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm          2165    5289  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm      1962    5289  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          697    2692  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1272    2692  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       723    2692  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           38     198  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm            88     198  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        72     198  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm           25      52  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm            13      52  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        14      52  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            7      40  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm            18      40  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      40  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm           40     183  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm            76     183  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm        67     183  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           31      83  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            19      83  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        33      83  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     108  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            33     108  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        44     108  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12      90  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            41      90  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        37      90  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          >=50 cm          139     384  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          <48 cm           110     384  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm       135     384  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm           21     213  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm           144     213  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm        48     213  y_rate_wtkg      
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            8      21  y_rate_wtkg      
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm             6      21  y_rate_wtkg      
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         7      21  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          161    1130  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           598    1130  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       371    1130  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          107     465  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm           182     465  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       176     465  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          138     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           203     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       228     569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          155     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           263     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       265     683  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm          295     568  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm            90     568  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm       183     568  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm           72     453  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm           235     453  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       146     453  y_rate_wtkg      
9-12 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0       7  y_rate_wtkg      
9-12 months    ki1114097-CMIN             BANGLADESH                     <48 cm             3       7  y_rate_wtkg      
9-12 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         4       7  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm        11531   12687  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm           127   12687  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1029   12687  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         1329    4993  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          1702    4993  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      1962    4993  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          319     634  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           130     634  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       185     634  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm          997    4553  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm          1856    4553  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm      1700    4553  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          766    2977  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1452    2977  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       759    2977  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           36     186  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            82     186  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68     186  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           22      47  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            12      47  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        13      47  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            7      40  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      40  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      40  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm           38     175  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm            70     175  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        67     175  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           28      83  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20      83  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35      83  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     110  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     110  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        44     110  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      93  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            44      93  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        35      93  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          >=50 cm          138     375  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          <48 cm           107     375  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm       130     375  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm           21     195  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm           135     195  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm        39     195  y_rate_wtkg      
12-15 months   ki1000109-ResPak           PAKISTAN                       >=50 cm            5      14  y_rate_wtkg      
12-15 months   ki1000109-ResPak           PAKISTAN                       <48 cm             4      14  y_rate_wtkg      
12-15 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm         5      14  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          169    1153  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm           607    1153  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       377    1153  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          105     445  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           172     445  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       168     445  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          136     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           189     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       212     537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          153     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           253     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       260     666  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm          456     888  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm           149     888  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       283     888  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           69     451  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           242     451  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       140     451  y_rate_wtkg      
12-15 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       7  y_rate_wtkg      
12-15 months   ki1114097-CMIN             BANGLADESH                     <48 cm             2       7  y_rate_wtkg      
12-15 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         5       7  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm          904    1001  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        <48 cm            11    1001  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        86    1001  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          389    1836  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           767    1836  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       680    1836  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          274     559  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           115     559  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       170     559  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          790    2994  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1463    2994  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       741    2994  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           36     186  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            83     186  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        67     186  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           22      44  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             9      44  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        13      44  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm           37     166  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm            68     166  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        61     166  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           30      85  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            20      85  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35      85  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     109  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     109  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        45     109  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      91  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            46      91  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31      91  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          >=50 cm          137     366  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          <48 cm           102     366  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm       127     366  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm           21     179  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm           119     179  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm        39     179  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          173    1160  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm           613    1160  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       374    1160  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm          101     432  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           167     432  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       164     432  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          134     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           186     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       213     533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          143     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           231     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       231     605  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm          464     888  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm           149     888  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       275     888  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           81     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           250     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       146     477  y_rate_wtkg      
15-18 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       6  y_rate_wtkg      
15-18 months   ki1114097-CMIN             BANGLADESH                     <48 cm             3       6  y_rate_wtkg      
15-18 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         3       6  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm          249     279  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        <48 cm             6     279  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        24     279  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          222    1186  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           553    1186  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       411    1186  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          245     512  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           108     512  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       159     512  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          785    2962  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1432    2962  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       745    2962  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           37     186  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            81     186  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        68     186  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           20      41  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             9      41  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12      41  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm           36     162  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm            68     162  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        58     162  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32      88  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      88  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        35      88  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     105  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            34     105  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        42     105  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      82  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            39      82  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        29      82  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          >=50 cm          132     362  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          <48 cm           102     362  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm       128     362  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm           18     166  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm           105     166  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm        43     166  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           93     407  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           156     407  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       158     407  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          130     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           192     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       220     542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          129     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           210     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       208     547  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm          447     870  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm           146     870  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       277     870  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           80     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           229     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       138     447  y_rate_wtkg      
18-21 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       7  y_rate_wtkg      
18-21 months   ki1114097-CMIN             BANGLADESH                     <48 cm             4       7  y_rate_wtkg      
18-21 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         3       7  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           <48 cm             1       2  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        >=50 cm          190     215  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        <48 cm             4     215  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        21     215  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm          104     648  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           334     648  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       210     648  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          234     498  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           112     498  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       152     498  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           38     184  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm            79     184  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        67     184  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           19      41  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            10      41  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        12      41  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            6      39  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm            18      39  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        15      39  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            8      26  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            11      26  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         7      26  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm           33     154  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm            66     154  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        55     154  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           32      89  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            21      89  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        36      89  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     103  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            33     103  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        40     103  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           14      83  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            38      83  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        31      83  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          >=50 cm          133     371  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          <48 cm           105     371  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm       133     371  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm            6      70  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm            46      70  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm        18      70  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           94     396  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm           151     396  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm       151     396  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          113     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           176     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       196     485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          122     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           191     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       180     493  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          403     789  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm           138     789  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       248     789  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm           62     342  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm           168     342  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm       112     342  y_rate_wtkg      
21-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1  y_rate_wtkg      
21-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             0       1  y_rate_wtkg      
21-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         1       1  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm          185     210  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        <48 cm             4     210  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        21     210  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm           29     296  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           179     296  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm        88     296  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          244     527  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           115     527  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       168     527  y_rate_wtkg      


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
![](/tmp/3470d884-04f0-4ab7-979a-5114f8c77663/946a3450-6eb1-48bf-b7ce-470192d9617f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3470d884-04f0-4ab7-979a-5114f8c77663/946a3450-6eb1-48bf-b7ce-470192d9617f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3470d884-04f0-4ab7-979a-5114f8c77663/946a3450-6eb1-48bf-b7ce-470192d9617f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.9487533    0.8793248   1.0181817
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.8477838    0.8143822   0.8811855
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.8951575    0.8504862   0.9398289
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 1.1062379    1.0066145   1.2058612
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 1.0319760    0.9246724   1.1392797
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 1.0400210    0.8915786   1.1884634
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.8054809    0.6493834   0.9615785
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.7399684    0.6541198   0.8258171
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.6847233    0.5899695   0.7794772
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.9187260    0.8018897   1.0355622
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.8701309    0.7807218   0.9595399
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.9222228    0.7940129   1.0504328
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.9829880    0.9027400   1.0632360
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.9652351    0.9261448   1.0043254
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.9633478    0.9240533   1.0026423
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.9576348    0.8895602   1.0257094
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.9413924    0.8520258   1.0307591
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.8871468    0.8267310   0.9475626
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.9141139    0.8439620   0.9842659
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.8053605    0.7358163   0.8749047
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.8594436    0.7972288   0.9216584
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.8533253    0.7093886   0.9972619
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.7586855    0.7057510   0.8116200
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.7945097    0.7286391   0.8603803
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.7929994    0.7605108   0.8254880
0-3 months     ki1000108-IRC              INDIA                          <48 cm               NA                 0.7445018    0.7101858   0.7788179
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                 0.7691163    0.7335259   0.8047067
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.8049402    0.7141500   0.8957304
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.6593506    0.6278742   0.6908271
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.7087076    0.6462358   0.7711795
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.6564380    0.5036985   0.8091776
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.7581997    0.6360861   0.8803134
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                 0.8159595    0.7012623   0.9306567
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.7324621    0.7086377   0.7562865
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                 0.7911337    0.7631764   0.8190910
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                 0.8191905    0.7911725   0.8472086
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.8621611    0.8264486   0.8978737
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.8014653    0.7741389   0.8287916
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.7985021    0.7735543   0.8234499
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.9655494    0.9340877   0.9970111
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.8508521    0.8294022   0.8723020
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                 0.9088448    0.8853551   0.9323345
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.9263604    0.8934989   0.9592218
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.8571048    0.8347370   0.8794726
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.8881592    0.8653834   0.9109350
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.9546204    0.9379644   0.9712764
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.9049198    0.8751533   0.9346864
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 0.9182747    0.8959198   0.9406296
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.8838832    0.8434092   0.9243573
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.8173859    0.7941507   0.8406210
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.8250360    0.7956982   0.8543738
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.8342766    0.8235440   0.8450091
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.8344668    0.8208575   0.8480760
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.8501684    0.8375491   0.8627878
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.9579120    0.9481770   0.9676470
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.9341361    0.9251348   0.9431375
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.9547286    0.9467774   0.9626799
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.8455255    0.8200119   0.8710391
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.6811635    0.6390106   0.7233164
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.8054704    0.7754962   0.8354447
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.8510973    0.8414614   0.8607331
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                 0.7706634    0.7635551   0.7777717
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                 0.8263032    0.8186620   0.8339445
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.8964135    0.8840793   0.9087477
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                 0.8444728    0.8410441   0.8479015
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                 0.8786969    0.8728737   0.8845200
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.4920515    0.4622069   0.5218962
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.8404543    0.8273903   0.8535183
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                 0.8203864    0.8012320   0.8395408
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.5202668    0.4691787   0.5713549
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.4645472    0.4394910   0.4896033
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.4717010    0.4420502   0.5013518
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.5574053    0.4769881   0.6378225
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.5508235    0.4397833   0.6618637
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.6125563    0.5030554   0.7220573
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.3626973    0.3018257   0.4235689
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.5000915    0.4477963   0.5523868
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.4330380    0.3557896   0.5102865
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.4699984    0.4224246   0.5175722
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.4402671    0.3724702   0.5080639
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.4138178    0.3053341   0.5223015
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.5207710    0.4779819   0.5635602
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.4876617    0.4571229   0.5182006
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.4867009    0.4479669   0.5254350
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.4690799    0.4066029   0.5315569
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.5094423    0.4338608   0.5850238
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.4112519    0.3548396   0.4676641
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.5048884    0.4279397   0.5818370
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.4298174    0.3793872   0.4802476
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.4442987    0.3903010   0.4982964
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.5459563    0.3794002   0.7125124
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.5092572    0.4541790   0.5643355
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.4756799    0.4192575   0.5321022
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.4878215    0.4546102   0.5210329
3-6 months     ki1000108-IRC              INDIA                          <48 cm               NA                 0.4457795    0.4134475   0.4781115
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                 0.4564543    0.4296094   0.4832992
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.4597898    0.3855400   0.5340397
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.4443827    0.4160232   0.4727421
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.4793866    0.4224201   0.5363530
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.4367188    0.3807315   0.4927060
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm               NA                 0.6080679    0.5130065   0.7031293
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                 0.4908196    0.3827659   0.5988733
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.4810111    0.4642907   0.4977315
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                 0.4390240    0.4173973   0.4606507
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                 0.4588126    0.4372230   0.4804022
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4561889    0.4223685   0.4900093
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.4331377    0.4024539   0.4638215
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.4745563    0.4490814   0.5000313
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.5158668    0.4930529   0.5386807
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.4650824    0.4449761   0.4851886
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                 0.4943224    0.4705674   0.5180774
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.5003649    0.4777891   0.5229408
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.5051574    0.4851415   0.5251733
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.4916088    0.4755896   0.5076280
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.4434281    0.4279856   0.4588706
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.4593336    0.4326820   0.4859851
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 0.4378055    0.4181668   0.4574443
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.5275014    0.4898324   0.5651705
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.4910599    0.4735273   0.5085925
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.4942115    0.4684554   0.5199675
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.6657270    0.6571446   0.6743094
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.6802219    0.6626211   0.6978227
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.6639072    0.6519324   0.6758819
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.4817557    0.4735347   0.4899766
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.4777800    0.4696040   0.4859561
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.4765451    0.4691223   0.4839679
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.4644728    0.4473245   0.4816212
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.4767350    0.4481051   0.5053649
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.4641728    0.4412477   0.4870979
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.4997789    0.4912352   0.5083226
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                 0.4712788    0.4650434   0.4775141
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                 0.4826321    0.4758153   0.4894489
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.4360302    0.4241695   0.4478908
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                 0.4386441    0.4348664   0.4424218
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                 0.4390126    0.4324658   0.4455593
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.4555328    0.4408682   0.4701974
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.4374191    0.4227848   0.4520534
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                 0.4243775    0.4109524   0.4378026
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.2130081    0.1819845   0.2440317
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.2438571    0.2226978   0.2650163
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.2416004    0.2156574   0.2675435
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.3713019    0.3187680   0.4238357
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.2912848    0.1996377   0.3829319
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.3295290    0.2447242   0.4143338
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.3115097    0.2440428   0.3789766
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.1886486    0.1408661   0.2364311
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.1917611    0.1306184   0.2529037
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.2631954    0.2362385   0.2901524
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.2590818    0.2074918   0.3106718
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.2045428    0.1181485   0.2909371
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.2460445    0.2207665   0.2713225
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.2620346    0.2378326   0.2862365
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.2695261    0.2342497   0.3048025
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.2152681    0.1581227   0.2724136
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.3100927    0.2525394   0.3676460
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.2950939    0.2470501   0.3431377
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2126422    0.1707883   0.2544961
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.2596807    0.1906500   0.3287114
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.2345299    0.1794150   0.2896447
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2625883    0.1674253   0.3577513
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.2543435    0.2227689   0.2859181
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.2621856    0.2193571   0.3050141
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.2476446    0.2239537   0.2713356
6-9 months     ki1000108-IRC              INDIA                          <48 cm               NA                 0.2855338    0.2558213   0.3152462
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm           NA                 0.2646830    0.2427564   0.2866097
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.2384644    0.1867591   0.2901696
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.2474081    0.2234140   0.2714023
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.2590703    0.2216197   0.2965210
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2102774    0.1873036   0.2332512
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                 0.2108187    0.1941399   0.2274975
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                 0.2057283    0.1801437   0.2313130
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2423572    0.2091261   0.2755882
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.2363107    0.2152088   0.2574127
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.2332691    0.2112798   0.2552583
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.2701951    0.2475171   0.2928731
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.2389234    0.2232327   0.2546141
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                 0.2459087    0.2231146   0.2687028
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.2615900    0.2366741   0.2865060
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.2680312    0.2527056   0.2833568
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.2712898    0.2541249   0.2884548
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.2165986    0.1956172   0.2375800
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.1833463    0.1335395   0.2331532
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 0.1955957    0.1714759   0.2197154
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1776415    0.1513697   0.2039132
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.1932904    0.1750571   0.2115236
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1816539    0.1635880   0.1997197
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.4734932    0.4643351   0.4826513
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.4554754    0.4335037   0.4774470
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.4776319    0.4608425   0.4944212
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.2661217    0.2578607   0.2743828
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2518053    0.2438742   0.2597364
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.2573738    0.2498667   0.2648808
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.2121367    0.1964598   0.2278137
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.2263841    0.2032810   0.2494872
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.2190732    0.1986106   0.2395358
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.3036474    0.2947269   0.3125680
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm               NA                 0.2662702    0.2595946   0.2729457
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm           NA                 0.2836651    0.2766177   0.2907125
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2373567    0.2274409   0.2472725
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.2378293    0.2301063   0.2455523
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                 0.2433604    0.2332965   0.2534244
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.1718334    0.1343830   0.2092838
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.1627646    0.1420423   0.1834868
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.1762164    0.1532308   0.1992020
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.2422470    0.1764157   0.3080783
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.2270592    0.1219344   0.3321840
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.3144627    0.1853559   0.4435695
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.1477142    0.0875108   0.2079176
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.1653194    0.1178047   0.2128340
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.1668996    0.1322059   0.2015933
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.2183025    0.1683446   0.2682603
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.1632485    0.1030045   0.2234925
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.1918312    0.0815618   0.3021005
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1959194    0.1598539   0.2319849
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.1757783    0.1448927   0.2066639
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.1919668    0.1627922   0.2211413
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1998706    0.1460498   0.2536915
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.2020199    0.1366244   0.2674154
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.2000554    0.1307344   0.2693764
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1860985    0.1156808   0.2565161
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1621306    0.1180406   0.2062207
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1327165    0.0941216   0.1713115
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2601054    0.1495240   0.3706868
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.2505227    0.1969652   0.3040801
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.2308220    0.1873173   0.2743266
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1928757    0.1673684   0.2183830
9-12 months    ki1000108-IRC              INDIA                          <48 cm               NA                 0.1975216    0.1711836   0.2238595
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                 0.2478917    0.2238922   0.2718912
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.1567079    0.0895516   0.2238642
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.2656696    0.2384234   0.2929158
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.2590784    0.2174662   0.3006906
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0329406   -0.0588777   0.1247588
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm               NA                -0.0068060   -0.0635186   0.0499065
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           NA                 0.1232946    0.0496863   0.1969028
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2251366    0.1971218   0.2531514
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                 0.1894015    0.1771614   0.2016416
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                 0.1890094    0.1806932   0.1973256
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1589842    0.1316799   0.1862886
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1644862    0.1457419   0.1832305
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1538481    0.1290579   0.1786383
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1736327    0.1513815   0.1958839
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.1705280    0.1554603   0.1855958
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                 0.1831340    0.1693073   0.1969607
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.2119932    0.1870471   0.2369394
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.1948666    0.1795006   0.2102326
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.1932989    0.1770061   0.2095918
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1744792    0.1550870   0.1938715
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.1578173    0.1245772   0.1910575
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 0.1626023    0.1390568   0.1861477
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1410196    0.1144830   0.1675563
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.1470683    0.1290253   0.1651114
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1394967    0.1161119   0.1628815
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.3670896    0.3519350   0.3822441
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.3939369    0.3744039   0.4134700
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.3578492    0.3408211   0.3748773
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1750117    0.1665866   0.1834367
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1872326    0.1794716   0.1949936
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1769793    0.1693459   0.1846126
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1581998    0.1440530   0.1723466
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.1731736    0.1510027   0.1953446
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1530323    0.1356954   0.1703691
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.2251116    0.2151351   0.2350881
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                 0.2198029    0.2126565   0.2269494
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                 0.2161389    0.2090353   0.2232424
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.1610822    0.1512743   0.1708901
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.1446547    0.1388772   0.1504322
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                 0.1519795    0.1438577   0.1601013
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.1172701    0.0756165   0.1589237
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.1392684    0.1172105   0.1613264
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.1230851    0.0943540   0.1518163
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.2071570    0.1458659   0.2684480
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.3460409    0.2133241   0.4787576
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.2064961    0.0884065   0.3245857
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.1413507    0.0850079   0.1976935
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.1798044    0.1106156   0.2489931
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.1899570    0.1330759   0.2468382
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.1114406    0.0589002   0.1639810
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.2001215    0.1680184   0.2322246
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.1685299    0.1227418   0.2143181
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1818166    0.1395651   0.2240682
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.1356360    0.1033625   0.1679094
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.1255727    0.0967213   0.1544242
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.2576199    0.1831164   0.3321233
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.2569326    0.1575888   0.3562765
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.2174808    0.1569533   0.2780084
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1807946    0.1002723   0.2613169
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1599060    0.0908370   0.2289751
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1511394    0.1010583   0.2012206
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1061416    0.0279721   0.1843110
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1799980    0.1449335   0.2150625
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1438221    0.0954929   0.1921512
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1874161    0.1673134   0.2075188
12-15 months   ki1000108-IRC              INDIA                          <48 cm               NA                 0.1879665    0.1623254   0.2136076
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                 0.1746395    0.1502212   0.1990577
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.1652358    0.1015981   0.2288735
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.1150471    0.0882016   0.1418926
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.1645412    0.1332600   0.1958225
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2015655    0.1739277   0.2292033
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                 0.1797304    0.1672072   0.1922535
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                 0.1854576    0.1739101   0.1970052
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1404068    0.1131433   0.1676704
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1204180    0.1017084   0.1391275
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1376164    0.1168155   0.1584174
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1851011    0.1623039   0.2078982
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.1803331    0.1612227   0.1994435
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                 0.1808097    0.1609716   0.2006477
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1681401    0.1434227   0.1928575
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.1498964    0.1341422   0.1656507
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.1773501    0.1600766   0.1946237
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1718567    0.1555698   0.1881435
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.2016897    0.1711373   0.2322421
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 0.1897224    0.1704378   0.2090070
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2032177    0.1673688   0.2390667
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.1673353    0.1497960   0.1848747
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1658253    0.1420266   0.1896239
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.2217222    0.1412599   0.3021844
12-15 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.3294251    0.0975524   0.5612978
12-15 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.2203133    0.1616161   0.2790105
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1446072    0.1276945   0.1615199
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1503259    0.1380431   0.1626086
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1512220    0.1374034   0.1650406
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1556481    0.1398107   0.1714855
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.1532198    0.1309259   0.1755136
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1470907    0.1249442   0.1692372
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.1367434    0.1281232   0.1453636
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.1255550    0.1194104   0.1316996
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                 0.1401613    0.1315284   0.1487941
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.1864400    0.1369305   0.2359495
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.1368024    0.1128519   0.1607529
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.1245044    0.1015018   0.1475070
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.2233328    0.1749416   0.2717239
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.2330586    0.1602577   0.3058594
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.1996302    0.1199881   0.2792724
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.1991621    0.1170220   0.2813023
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.1646811    0.1094169   0.2199453
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.1570658    0.1130696   0.2010620
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.1933411    0.1504254   0.2362568
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.1199343    0.0567925   0.1830760
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.1029037    0.0365763   0.1692312
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1293194    0.0917710   0.1668677
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.1397614    0.1056149   0.1739079
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.1622326    0.1224777   0.2019874
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1481291    0.0759587   0.2202995
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.2543218    0.1606453   0.3479982
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.2408253    0.1740355   0.3076150
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1614090    0.0849888   0.2378292
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1553015    0.0781984   0.2324047
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1808567    0.1331221   0.2285912
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1792817    0.0924402   0.2661233
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1429911    0.1079739   0.1780084
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1455606    0.0970964   0.1940247
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1714810    0.1467161   0.1962459
15-18 months   ki1000108-IRC              INDIA                          <48 cm               NA                 0.1679900    0.1441628   0.1918171
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                 0.1461407    0.1230369   0.1692445
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.1015716    0.0544365   0.1487067
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.0969111    0.0738785   0.1199437
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.1019402    0.0728337   0.1310468
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.1883637    0.1581388   0.2185885
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                 0.1786887    0.1640750   0.1933025
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                 0.1691867    0.1409992   0.1973741
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1572586    0.1275018   0.1870155
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1406748    0.1185105   0.1628391
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1605452    0.1327584   0.1883321
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1556793    0.1339068   0.1774518
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.1454859    0.1271450   0.1638269
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                 0.1663103    0.1451383   0.1874822
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1703977    0.1447105   0.1960849
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.1557604    0.1400258   0.1714951
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.1606874    0.1440232   0.1773516
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1635599    0.1458422   0.1812776
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.1419411    0.1123003   0.1715819
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 0.1688811    0.1490995   0.1886627
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2613273    0.2183756   0.3042790
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.2193960    0.2001219   0.2386700
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.2474261    0.2166500   0.2782022
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.2227792    0.1605754   0.2849829
15-18 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                 0.2168843    0.1781949   0.2555737
15-18 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                 0.2411638   -0.0539530   0.5362807
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1221062    0.0983257   0.1458867
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1337502    0.1182371   0.1492634
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1389559    0.1197665   0.1581453
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1283800    0.1080106   0.1487495
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.1348994    0.1073291   0.1624698
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1531339    0.1302431   0.1760247
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.1642100    0.1537668   0.1746533
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                 0.1598056    0.1524217   0.1671895
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                 0.1572572    0.1481241   0.1663902
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.1734664    0.1266282   0.2203047
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.1469434    0.1224590   0.1714278
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.1444193    0.1158738   0.1729648
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.1434547    0.0807874   0.2061220
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0533904   -0.0264272   0.1332080
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.1170323    0.0495863   0.1844784
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.1861670    0.1344450   0.2378891
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.1578712    0.1217195   0.1940228
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.1380163    0.1041522   0.1718805
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.2242407    0.1604344   0.2880470
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.1562026    0.0904716   0.2219337
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.1297753    0.0709170   0.1886335
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1714792    0.1306772   0.2122812
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.1424044    0.1098156   0.1749933
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.1481248    0.1151847   0.1810649
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.2299196    0.1611148   0.2987245
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.1289080    0.0115330   0.2462831
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.1638997    0.1095676   0.2182317
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1736253    0.1065319   0.2407187
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1602875    0.0877975   0.2327775
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1497399    0.0913200   0.2081599
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1309216    0.0830843   0.1787588
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1374049    0.0991721   0.1756378
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1437061    0.0876486   0.1997637
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1703551    0.1435870   0.1971232
18-21 months   ki1000108-IRC              INDIA                          <48 cm               NA                 0.1571171    0.1298818   0.1843524
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                 0.1517282    0.1322767   0.1711797
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.1208487    0.0162689   0.2254284
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.1322404    0.1073917   0.1570892
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.1225314    0.0859425   0.1591202
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1831309    0.1475513   0.2187105
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1706871    0.1448035   0.1965708
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1655329    0.1376139   0.1934518
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1495475    0.1231491   0.1759459
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.1288916    0.1122978   0.1454854
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                 0.1257946    0.1070011   0.1445882
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1512029    0.1276254   0.1747803
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.1462763    0.1287749   0.1637776
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.1359177    0.1188621   0.1529734
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1692198    0.1521508   0.1862888
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.1402927    0.1084641   0.1721214
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 0.1409098    0.1184800   0.1633396
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1384056    0.0956965   0.1811146
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.1461387    0.1248215   0.1674559
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1374631    0.1097746   0.1651516
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1115633    0.0656989   0.1574276
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1240856    0.1032876   0.1448837
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1183844    0.0832055   0.1535633
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1770917    0.1578735   0.1963100
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.1699101    0.1427947   0.1970254
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1490012    0.1251963   0.1728062
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.1344384    0.1067985   0.1620783
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                 0.1506750    0.1260942   0.1752557
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                 0.1700110    0.1402390   0.1997831
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.1768272    0.0970849   0.2565694
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               NA                 0.0981570   -0.0398578   0.2361718
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           NA                 0.1239507    0.0744691   0.1734322
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.2048823    0.1404900   0.2692745
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               NA                 0.1305340    0.0845990   0.1764690
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           NA                 0.1474209    0.0987780   0.1960638
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.1455470    0.0731733   0.2179207
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               NA                 0.0923634    0.0277573   0.1569695
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           NA                 0.1112621    0.0197860   0.2027383
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.2237617    0.1794957   0.2680278
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                 0.1808061    0.1459619   0.2156503
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                 0.1570978    0.1197049   0.1944906
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.2572961    0.1908083   0.3237839
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                 0.1984182    0.1271670   0.2696694
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                 0.2045180    0.1568520   0.2521840
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1732718    0.0993787   0.2471648
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1678456    0.1029594   0.2327317
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1498093    0.0842650   0.2153537
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1438783    0.0907977   0.1969589
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1502965    0.1066347   0.1939583
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1653897    0.1164884   0.2142909
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1825590    0.1590969   0.2060210
21-24 months   ki1000108-IRC              INDIA                          <48 cm               NA                 0.1612136    0.1313928   0.1910343
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                 0.1865091    0.1629521   0.2100662
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.2790531    0.1372129   0.4208933
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm               NA                 0.1845354    0.1561805   0.2128903
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           NA                 0.1973179    0.1409431   0.2536926
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1509774    0.1196681   0.1822866
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1577256    0.1318440   0.1836071
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1188319    0.0925800   0.1450839
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1274348    0.1012933   0.1535764
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                 0.1425171    0.1253355   0.1596986
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                 0.1498295    0.1314196   0.1682393
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1631581    0.1382331   0.1880831
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                 0.1770348    0.1585742   0.1954954
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                 0.1800306    0.1574475   0.2026137
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1763008    0.1582882   0.1943135
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                 0.1539089    0.1219347   0.1858832
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                 0.1688496    0.1467553   0.1909439
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1399737    0.0762403   0.2037070
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                 0.1984177    0.1596332   0.2372023
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1719260    0.1285665   0.2152856
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0985633    0.0012679   0.1958586
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1139167    0.0787725   0.1490609
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1049648    0.0486423   0.1612873
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1914331    0.1723492   0.2105170
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                 0.1934347    0.1662178   0.2206515
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1813888    0.1627009   0.2000768


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8762574   0.8507170   0.9017978
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0635029   1.0036742   1.1233316
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7327166   0.6717963   0.7936369
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8980348   0.8349901   0.9610794
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9674736   0.9395417   0.9954054
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9202538   0.8802407   0.9602669
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8735647   0.8345604   0.9125691
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7828439   0.7421312   0.8235566
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7673358   0.7475386   0.7871331
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.6826035   0.6551714   0.7100355
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.7394641   0.6594131   0.8195151
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7913172   0.7705749   0.8120596
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.8154665   0.7984471   0.8324859
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9338086   0.9213719   0.9462452
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8356582   0.8250657   0.8462507
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9495033   0.9443373   0.9546692
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8017272   0.7835305   0.8199238
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8084461   0.8037876   0.8131045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8554680   0.8523784   0.8585576
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7389711   0.7251890   0.7527531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4785794   0.4607723   0.4963865
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5523683   0.4978138   0.6069229
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4487511   0.4072123   0.4902900
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.4422942   0.3980205   0.4865680
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4944379   0.4736657   0.5152100
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4481157   0.4110902   0.4851413
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4636480   0.4294906   0.4978053
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5056841   0.4661191   0.5452492
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4636967   0.4457630   0.4816304
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.4647714   0.4403739   0.4891689
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4978840   0.4419493   0.5538187
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4518719   0.4385255   0.4652183
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4543307   0.4371718   0.4714896
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4435285   0.4325574   0.4544996
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6657039   0.6577349   0.6736730
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4782842   0.4737396   0.4828288
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4641396   0.4517514   0.4765279
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4815372   0.4774631   0.4856112
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4383951   0.4352171   0.4415731
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4394688   0.4306484   0.4482892
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2409787   0.2266745   0.2552830
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3511492   0.3104891   0.3918092
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2137602   0.1772036   0.2503168
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2456640   0.2112777   0.2800502
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2609747   0.2445915   0.2773579
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2640962   0.2311230   0.2970694
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2380629   0.2059710   0.2701548
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2650396   0.2393319   0.2907474
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2662635   0.2519732   0.2805538
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.2460970   0.2273129   0.2648810
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2094391   0.1944139   0.2244644
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2392374   0.2254253   0.2530495
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2051431   0.1902167   0.2200695
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1879225   0.1758605   0.1999845
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4735581   0.4647679   0.4823484
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2582458   0.2537111   0.2627805
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2167783   0.2060093   0.2275474
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2811558   0.2769018   0.2854098
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2391713   0.2339233   0.2444193
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1706284   0.1564930   0.1847637
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2519296   0.2011327   0.3027265
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1628310   0.1355866   0.1900755
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1878835   0.1448587   0.2309083
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1838829   0.1667536   0.2010122
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1982506   0.1613970   0.2351043
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1592864   0.1317047   0.1868680
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2237429   0.1899698   0.2575161
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2148602   0.2001275   0.2295929
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2538004   0.2323665   0.2752343
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.0517024   0.0004205   0.1029843
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1945299   0.1872577   0.2018022
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1597918   0.1465056   0.1730780
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1664769   0.1531192   0.1798347
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1439867   0.1312614   0.1567119
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3667028   0.3522151   0.3811905
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800315   0.1754619   0.1846010
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1597964   0.1500086   0.1695842
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2204422   0.2160177   0.2248666
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1506923   0.1462761   0.1551084
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1316579   0.1154593   0.1478565
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2159651   0.1632452   0.2686849
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1768822   0.1375116   0.2162528
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1643296   0.1357980   0.1928613
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1419123   0.1233883   0.1604364
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2298325   0.1898363   0.2698286
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1576643   0.1208590   0.1944695
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1571115   0.1310480   0.1831750
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1821959   0.1690600   0.1953317
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1310188   0.1099980   0.1520395
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1846619   0.1770524   0.1922714
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1312281   0.1188263   0.1436299
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1839375   0.1724348   0.1954401
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1720672   0.1589120   0.1852223
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2225734   0.1484242   0.2967226
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1497010   0.1416661   0.1577359
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1533040   0.1421603   0.1644477
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1321588   0.1277237   0.1365939
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1439895   0.1275529   0.1604261
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2183191   0.1812358   0.2554024
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1670569   0.1336385   0.2004754
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1379358   0.1002018   0.1756698
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1444862   0.1234076   0.1655648
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2043734   0.1605098   0.2482371
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1622010   0.1253727   0.1990294
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1487055   0.1223612   0.1750497
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1606149   0.1469999   0.1742300
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0946669   0.0773219   0.1120118
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1772884   0.1640389   0.1905378
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1534742   0.1384078   0.1685405
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1606872   0.1484920   0.1728825
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2242339   0.1636201   0.2848477
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1333772   0.1226909   0.1440634
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1372383   0.1238727   0.1506040
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1601275   0.1550180   0.1652370
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1454042   0.1281807   0.1626277
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1159511   0.0741285   0.1577737
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1545879   0.1313920   0.1777838
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1700224   0.1296699   0.2103748
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1538869   0.1334392   0.1743346
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1823803   0.1399030   0.2248575
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1502472   0.1149263   0.1855681
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1378720   0.1103180   0.1654261
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1605534   0.1467138   0.1743931
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1295407   0.1093153   0.1497662
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1734865   0.1569855   0.1899874
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1548373   0.1422247   0.1674498
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1203533   0.1031194   0.1375871
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1665779   0.1535942   0.1795616
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521519   0.1360124   0.1682913
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1609804   0.1143724   0.2075884
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1484672   0.1174482   0.1794861
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1138157   0.0699141   0.1577173
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1809660   0.1586021   0.2033299
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2117977   0.1774950   0.2461004
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1648147   0.1261021   0.2035274
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1458887   0.1178190   0.1739583
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1760436   0.1617872   0.1902999
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1959238   0.1686676   0.2231801
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1414362   0.1257895   0.1570829
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1700504   0.1573333   0.1827674
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1770981   0.1526133   0.2015829
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1089853   0.0806385   0.1373321
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1869768   0.1747567   0.1991969


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.1009694   -0.1778097   -0.0241292
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0535957   -0.1361792    0.0289878
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0742618   -0.2202700    0.0717463
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0662169   -0.2465364    0.1141026
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0655125   -0.2436597    0.1126347
0-3 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.1207576   -0.3033630    0.0618478
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0485951   -0.1957164    0.0985262
0-3 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0034969   -0.1699635    0.1769572
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0177529   -0.1073540    0.0718481
0-3 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0196402   -0.1091223    0.0698419
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.0162424   -0.1289292    0.0964445
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0704880   -0.1614994    0.0205235
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.1087534   -0.2086607   -0.0088461
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0546703   -0.1495537    0.0402131
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0946398   -0.2482860    0.0590064
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0588156   -0.2175227    0.0998915
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.0484976   -0.0958821   -0.0011130
0-3 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0238831   -0.0721044    0.0243382
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.1455896   -0.2418146   -0.0493645
0-3 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0962326   -0.2064025    0.0139374
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1017617   -0.0937917    0.2973151
0-3 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.1595214   -0.0314886    0.3505315
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0586716    0.0373043    0.0800389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            0.0867284    0.0549855    0.1184714
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0606959   -0.1051694   -0.0162223
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0636590   -0.1066171   -0.0207010
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.1146973   -0.1528292   -0.0765654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0567046   -0.0959829   -0.0174263
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0692555   -0.1088609   -0.0296502
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0382011   -0.0780086    0.0016064
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0497006   -0.0836594   -0.0157417
0-3 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0363457   -0.0640035   -0.0086879
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0664974   -0.1127913   -0.0202035
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0588473   -0.1083028   -0.0093917
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0001902   -0.0139215    0.0143020
0-3 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0158919    0.0057955    0.0259882
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0237759   -0.0369207   -0.0106311
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0031834   -0.0156256    0.0092588
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.1643620   -0.2135011   -0.1152229
0-3 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0400551   -0.0793517   -0.0007585
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0804339   -0.0924025   -0.0684653
0-3 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0247941   -0.0370794   -0.0125087
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           -0.0519407   -0.0646627   -0.0392186
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm           -0.0177166   -0.0312120   -0.0042213
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.3484028    0.3159858    0.3808197
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.3283349    0.2924267    0.3642431
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0557196   -0.1128720    0.0014328
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0485657   -0.1083703    0.0112388
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0065818   -0.1443106    0.1311470
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0551510   -0.0817313    0.1920334
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.1373942    0.0571437    0.2176447
3-6 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0703407   -0.0280091    0.1686905
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0297314   -0.1125546    0.0530919
3-6 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0561806   -0.1746373    0.0622760
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0331093   -0.0858604    0.0196418
3-6 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0340701   -0.0919218    0.0237816
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0403624   -0.0578470    0.1385718
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0578280   -0.1425016    0.0268455
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0750710   -0.1669641    0.0168221
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0605897   -0.1556579    0.0344786
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0366990   -0.2121857    0.1387876
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0702764   -0.2464468    0.1058939
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.0420420   -0.0883785    0.0042944
3-6 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0313672   -0.0740233    0.0112888
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.0154072   -0.0952301    0.0644157
3-6 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0195967   -0.0737438    0.1129373
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1713491    0.0610258    0.2816725
3-6 months     ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.0541008   -0.0675963    0.1757978
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.0419871   -0.0743662   -0.0096081
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0221985   -0.0475213    0.0031243
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0230512   -0.0686724    0.0225700
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0183674   -0.0240053    0.0607401
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0507844   -0.0812449   -0.0203239
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0215443   -0.0546843    0.0115957
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0047924   -0.0254399    0.0350248
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0087561   -0.0364918    0.0189796
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0159055   -0.0147983    0.0466093
3-6 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0056226   -0.0306842    0.0194390
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0364415   -0.0779635    0.0050804
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0332899   -0.0787616    0.0121817
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0144949   -0.0055259    0.0345157
3-6 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0018199   -0.0153531    0.0117134
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0039756   -0.0155700    0.0076188
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0052106   -0.0162771    0.0058559
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0122622   -0.0210448    0.0455692
3-6 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0003000   -0.0290586    0.0284585
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0285001   -0.0390414   -0.0179589
3-6 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0171468   -0.0280381   -0.0062555
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            0.0026139   -0.0099056    0.0151335
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            0.0029824   -0.0102199    0.0161847
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0181137   -0.0388063    0.0025789
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0311553   -0.0507879   -0.0115227
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0308490   -0.0070236    0.0687215
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0285923   -0.0119343    0.0691190
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0800171   -0.1857342    0.0257000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0417729   -0.1420681    0.0585223
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.1228611   -0.2055349   -0.0401873
6-9 months     ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.1197486   -0.2107992   -0.0286980
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0041136   -0.0623219    0.0540947
6-9 months     ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0586527   -0.1491549    0.0318496
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0159901   -0.0191753    0.0511554
6-9 months     ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0234816   -0.0201009    0.0670641
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0948245    0.0131764    0.1764727
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0798257    0.0047906    0.1548609
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0470385   -0.0340046    0.1280816
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0218877   -0.0482116    0.0919869
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0082448   -0.1084423    0.0919528
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0004027   -0.1050857    0.1042804
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0378891   -0.0003878    0.0761661
6-9 months     ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0170384   -0.0153749    0.0494516
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0089438   -0.0481886    0.0660762
6-9 months     ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0206060   -0.0432276    0.0844396
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            0.0005413   -0.0281350    0.0292176
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0045491   -0.0361567    0.0270586
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0060464   -0.0454014    0.0333086
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0090881   -0.0490555    0.0308793
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0312717   -0.0588369   -0.0037065
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0242864   -0.0564207    0.0078479
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0064411   -0.0227608    0.0356431
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0096998   -0.0204162    0.0398158
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0332522   -0.0875738    0.0210693
6-9 months     ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0210029   -0.0532299    0.0112241
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0156489   -0.0164222    0.0477200
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0040124   -0.0279487    0.0359735
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0180178   -0.0432694    0.0072337
6-9 months     ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0041387   -0.0114261    0.0197034
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0143164   -0.0257726   -0.0028603
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0087480   -0.0199103    0.0024143
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0142473   -0.0136980    0.0421927
6-9 months     ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0069365   -0.0188672    0.0327402
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0373772   -0.0485174   -0.0262371
6-9 months     ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0199823   -0.0313410   -0.0086237
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            0.0004726   -0.0119059    0.0128512
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0060038   -0.0080527    0.0200603
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0090689   -0.0517042    0.0335664
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0043829   -0.0395102    0.0482760
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0151878   -0.1396912    0.1093157
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm            0.0722157   -0.0738046    0.2182360
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0176051   -0.0590897    0.0943000
9-12 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0191854   -0.0502992    0.0886700
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0550540   -0.1333172    0.0232092
9-12 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0264713   -0.1475296    0.0945870
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0201410   -0.0679089    0.0276268
9-12 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0039526   -0.0505468    0.0426416
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.0021492   -0.0812589    0.0855574
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0001848   -0.0887207    0.0890902
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0239678   -0.1079539    0.0600183
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0533819   -0.1341536    0.0273897
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0095827   -0.1333927    0.1142272
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0292834   -0.1487717    0.0902048
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0046459   -0.0320917    0.0413836
9-12 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0550160    0.0199850    0.0900470
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.1089617    0.0365906    0.1813328
9-12 months    ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.1023705    0.0233690    0.1813720
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       <48 cm               >=50 cm           -0.0397466   -0.1476675    0.0681743
9-12 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.0903540   -0.0273268    0.2080348
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.0357351   -0.0648448   -0.0066254
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0361272   -0.0660286   -0.0062258
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0055020   -0.0277503    0.0387543
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0051361   -0.0420674    0.0317952
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0031047   -0.0300884    0.0238791
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0095013   -0.0168454    0.0358480
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0171267   -0.0463205    0.0120672
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0186943   -0.0483932    0.0110046
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0166619   -0.0551171    0.0217933
9-12 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0118770   -0.0422411    0.0184872
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0060487   -0.0260709    0.0381683
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0015229   -0.0370004    0.0339545
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.0268474    0.0063257    0.0473690
9-12 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0092404   -0.0270209    0.0085401
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0122209    0.0007703    0.0236716
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0019676   -0.0094077    0.0133429
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0149739   -0.0113365    0.0412843
9-12 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0051675   -0.0274960    0.0171609
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           -0.0053087   -0.0175738    0.0069564
9-12 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0089727   -0.0212145    0.0032690
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0164275   -0.0277527   -0.0051022
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0091027   -0.0217004    0.0034951
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0219984   -0.0252382    0.0692349
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0058151   -0.0449298    0.0565599
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.1388839   -0.0102715    0.2880392
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0006609   -0.1341900    0.1328683
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm            0.0384537   -0.0507741    0.1276815
12-15 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm            0.0486064   -0.0314560    0.1286687
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm            0.0886809    0.0271089    0.1502528
12-15 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm            0.0570893   -0.0126032    0.1267818
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0461807   -0.0993800    0.0070186
12-15 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0562439   -0.1073940   -0.0050938
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.0006872   -0.1264420    0.1250675
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0401390   -0.1373070    0.0570289
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0208886   -0.1272640    0.0854868
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0296552   -0.1249159    0.0656055
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0738565   -0.0108478    0.1585607
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0376805   -0.0549799    0.1303409
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.0005504   -0.0319413    0.0330422
12-15 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0127766   -0.0445727    0.0190194
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.0501887   -0.1194718    0.0190944
12-15 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0006945   -0.0719147    0.0705256
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.0218351   -0.0561373    0.0124671
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0161078   -0.0429743    0.0107587
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0199889   -0.0530421    0.0130644
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0027904   -0.0370835    0.0315027
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0047679   -0.0345264    0.0249906
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0042914   -0.0345196    0.0259368
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0182437   -0.0476385    0.0111511
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0092100   -0.0210634    0.0394835
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            0.0298330   -0.0048452    0.0645112
12-15 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0178657   -0.0073635    0.0430949
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0358824   -0.0758417    0.0040768
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0373925   -0.0804700    0.0056850
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            0.1077030   -0.1213010    0.3367069
12-15 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0014089   -0.0942228    0.0914050
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0057187   -0.0152001    0.0266375
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0066148   -0.0152652    0.0284948
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0024283   -0.0297845    0.0249278
12-15 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0085574   -0.0358652    0.0187504
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0111884   -0.0218404   -0.0005363
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            0.0034178   -0.0086781    0.0155138
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0496376   -0.1046070    0.0053318
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0619356   -0.1165564   -0.0073148
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm            0.0097258   -0.0776908    0.0971425
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0237025   -0.1168936    0.0694885
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0344810   -0.1334817    0.0645197
15-18 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0420963   -0.1352772    0.0510845
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0734068   -0.1497523    0.0029387
15-18 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0904373   -0.1694379   -0.0114367
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            0.0104420   -0.0405466    0.0614307
15-18 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.0329132   -0.0219356    0.0877620
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            0.1061926   -0.0132790    0.2256643
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0926961   -0.0054590    0.1908513
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0061075   -0.1150651    0.1028501
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0194476   -0.0714508    0.1103461
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0362906   -0.1296459    0.0570647
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0337212   -0.1333455    0.0659032
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.0034911   -0.0377619    0.0307798
15-18 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0253403   -0.0592906    0.0086100
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.0046605   -0.0574789    0.0481579
15-18 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0003687   -0.0549492    0.0556865
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm           -0.0096749   -0.0378158    0.0184659
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm           -0.0191770   -0.0581662    0.0198122
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0165838   -0.0539624    0.0207948
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0032866   -0.0376037    0.0441769
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0101933   -0.0386746    0.0182879
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0106310   -0.0196417    0.0409037
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0146373   -0.0447912    0.0155167
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0097103   -0.0402960    0.0208754
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0216188   -0.0560853    0.0128477
15-18 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0053212   -0.0212331    0.0318755
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0419314   -0.0890627    0.0052000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0139013   -0.0666456    0.0388431
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0058949   -0.0770289    0.0652392
15-18 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0183846   -0.2854236    0.3221928
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0116440   -0.0167981    0.0400861
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0168497   -0.0137710    0.0474704
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0065194   -0.0277116    0.0407503
15-18 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0247539   -0.0058622    0.0553699
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm           -0.0044044   -0.0168521    0.0080432
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm           -0.0069529   -0.0209482    0.0070425
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm           -0.0265230   -0.0794579    0.0264118
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm           -0.0290472   -0.0843901    0.0262958
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0900643   -0.1915435    0.0114150
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0264224   -0.1184885    0.0656437
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0282958   -0.0913998    0.0348081
18-21 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0481507   -0.1099726    0.0136712
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0680381   -0.1596449    0.0235688
18-21 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0944654   -0.1812729   -0.0076580
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0290748   -0.0812973    0.0231477
18-21 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0233544   -0.0757295    0.0290207
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.1010116   -0.2371725    0.0351494
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0660200   -0.1540700    0.0220301
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0133378   -0.1129991    0.0863235
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0238854   -0.1128981    0.0651273
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0064834   -0.0544474    0.0674141
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0127846   -0.0606719    0.0862410
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.0132380   -0.0515995    0.0251236
18-21 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm           -0.0186269   -0.0516800    0.0144262
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm            0.0113917   -0.0963182    0.1191017
18-21 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0016827   -0.1091486    0.1125140
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0124438   -0.0567532    0.0318657
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0175980   -0.0628219    0.0276259
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm           -0.0206560   -0.0518546    0.0105427
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm           -0.0237529   -0.0561474    0.0086416
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm           -0.0049266   -0.0343559    0.0245027
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm           -0.0152851   -0.0445037    0.0139334
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0289271   -0.0650831    0.0072289
18-21 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0283100   -0.0566368    0.0000168
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0077331   -0.0400295    0.0554957
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0009425   -0.0518914    0.0500064
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0125224   -0.0375778    0.0626226
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0068211   -0.0507031    0.0643453
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0071817   -0.0404336    0.0260702
18-21 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0280905   -0.0587017    0.0025207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            0.0162366   -0.0207515    0.0532246
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            0.0355726   -0.0052760    0.0764212
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               >=50 cm           -0.0786702   -0.2387395    0.0813991
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           >=50 cm           -0.0528765   -0.1476468    0.0418938
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               >=50 cm           -0.0743483   -0.1534456    0.0047491
21-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           >=50 cm           -0.0574614   -0.1381614    0.0232386
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               >=50 cm           -0.0531836   -0.1501986    0.0438314
21-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           >=50 cm           -0.0342849   -0.1509290    0.0823592
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm           -0.0429556   -0.0995738    0.0136626
21-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm           -0.0666639   -0.1247695   -0.0085583
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm           -0.0588779   -0.1565776    0.0388217
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0527781   -0.1350901    0.0295339
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0054262   -0.1027718    0.0919193
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0234624   -0.1223789    0.0754541
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0064182   -0.0624199    0.0752563
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0215114   -0.0514561    0.0944789
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm           -0.0213454   -0.0592650    0.0165743
21-24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            0.0039502   -0.0296352    0.0375356
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       <48 cm               >=50 cm           -0.0945177   -0.2391643    0.0501289
21-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0817352   -0.2343680    0.0708975
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0067482   -0.0336342    0.0471306
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0321454   -0.0730230    0.0087322
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            0.0150822   -0.0162116    0.0463760
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            0.0223946   -0.0095714    0.0543606
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            0.0138767   -0.0169445    0.0446979
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            0.0168725   -0.0164794    0.0502244
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0223919   -0.0589920    0.0142082
21-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0074512   -0.0360824    0.0211799
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0584441   -0.0162765    0.1331647
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0319524   -0.0458508    0.1097556
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0153534   -0.0877876    0.1184945
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0064015   -0.1058638    0.1186667
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0020016   -0.0313033    0.0353065
21-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0100443   -0.0367080    0.0166195


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0724958   -0.1346156   -0.0103761
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0427350   -0.1153852    0.0299153
0-3 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0727643   -0.2098602    0.0643315
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0206912   -0.1183438    0.0769614
0-3 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0155144   -0.0832457    0.0522168
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0373810   -0.0931880    0.0184261
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0405492   -0.1046492    0.0235508
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0704814   -0.1997094    0.0587466
0-3 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0256636   -0.0519370    0.0006098
0-3 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.1223368   -0.2089504   -0.0357231
0-3 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0830260   -0.0340149    0.2000670
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.0588551    0.0452916    0.0724187
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0466946   -0.0777261   -0.0156632
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0639022   -0.0908175   -0.0369869
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0418384   -0.0704246   -0.0132522
0-3 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0208118   -0.0331147   -0.0085090
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0568711   -0.0935073   -0.0202349
0-3 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0013816    0.0005616    0.0022016
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0084087   -0.0163716   -0.0004459
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0437984   -0.0616387   -0.0259581
0-3 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0426512   -0.0512869   -0.0340155
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                -0.0409455   -0.0529081   -0.0289829
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2469196    0.2230064    0.2708327
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0416874   -0.0877963    0.0044216
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0050370   -0.0638681    0.0537941
3-6 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0860538    0.0229282    0.1491794
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0277042   -0.0809081    0.0254997
3-6 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0263332   -0.0641633    0.0114970
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0209642   -0.0704048    0.0284764
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0412404   -0.1038388    0.0213581
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0402721   -0.1901227    0.1095785
3-6 months     ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0241249   -0.0491566    0.0009068
3-6 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0049816   -0.0664816    0.0764448
3-6 months     ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0611652    0.0016880    0.1206425
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0291392   -0.0512609   -0.0070175
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0018582   -0.0320734    0.0283570
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0268056   -0.0479602   -0.0056510
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0023106   -0.0224354    0.0178143
3-6 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0001004   -0.0109342    0.0111350
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0298897   -0.0633720    0.0035926
3-6 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0000231   -0.0011680    0.0011218
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0034715   -0.0104771    0.0035342
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0003332   -0.0127396    0.0120732
3-6 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0182418   -0.0258062   -0.0106773
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.0023649   -0.0092327    0.0139626
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0160640   -0.0290692   -0.0030588
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0279706   -0.0009251    0.0568664
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0201527   -0.0629591    0.0226536
6-9 months     ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0977495   -0.1618733   -0.0336257
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0175315   -0.0557663    0.0207034
6-9 months     ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0149302   -0.0110392    0.0408996
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0488281    0.0060371    0.0916191
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0254207   -0.0180272    0.0688685
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0024514   -0.0834990    0.0884017
6-9 months     ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0186189   -0.0005609    0.0377987
6-9 months     ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0076326   -0.0423188    0.0575840
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0008383   -0.0247774    0.0231009
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0031198   -0.0314533    0.0252138
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0210298   -0.0413124   -0.0007472
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0059196   -0.0151365    0.0269758
6-9 months     ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0114555   -0.0266137    0.0037028
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0102811   -0.0140052    0.0345674
6-9 months     ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0000649   -0.0011975    0.0013274
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0078759   -0.0149967   -0.0007551
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0046416   -0.0062999    0.0155831
6-9 months     ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0224916   -0.0303758   -0.0146075
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0018146   -0.0066487    0.0102779
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0012051   -0.0340781    0.0316680
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0096826   -0.0442552    0.0636204
9-12 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0151168   -0.0405442    0.0707779
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0304190   -0.0834383    0.0226004
9-12 months    ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0120365   -0.0457363    0.0216633
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0016200   -0.0481752    0.0449352
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0268121   -0.0828853    0.0292611
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0363625   -0.1384882    0.0657632
9-12 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0219845    0.0018863    0.0420826
9-12 months    ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0970925    0.0318278    0.1623572
9-12 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              NA                 0.0187618   -0.0493346    0.0868582
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0306067   -0.0560548   -0.0051586
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0008076   -0.0234515    0.0250667
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0038989   -0.0148433    0.0226411
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0141484   -0.0352266    0.0069299
9-12 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0080023   -0.0212592    0.0052547
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0029670   -0.0225623    0.0284963
9-12 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                -0.0003868   -0.0017906    0.0010171
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0050198   -0.0023420    0.0123816
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0015966   -0.0081627    0.0113560
9-12 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                -0.0046694   -0.0134124    0.0040736
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0103899   -0.0184403   -0.0023395
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0143878   -0.0223040    0.0510796
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                 0.0088081   -0.0479978    0.0656140
12-15 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                 0.0355315   -0.0245807    0.0956438
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                 0.0528890    0.0095787    0.0961993
12-15 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0399043   -0.0781017   -0.0017069
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0277874   -0.0891924    0.0336176
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0231304   -0.0883381    0.0420774
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0509699   -0.0217868    0.1237266
12-15 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0052202   -0.0220729    0.0116325
12-15 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0342170   -0.0949552    0.0265212
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0169036   -0.0438770    0.0100699
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0091787   -0.0326268    0.0142694
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0050687   -0.0250547    0.0149173
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0040799   -0.0252571    0.0170973
12-15 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0120808    0.0008341    0.0233274
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0311506   -0.0638065    0.0015054
12-15 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0008512   -0.0085223    0.0102248
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0050938   -0.0100927    0.0202803
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0023441   -0.0137909    0.0091028
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0045846   -0.0120525    0.0028832
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0424504   -0.0852954    0.0003945
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0050137   -0.0420970    0.0320697
15-18 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0321052   -0.1081828    0.0439723
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0554053   -0.1015813   -0.0092292
15-18 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0151668   -0.0201230    0.0504567
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0562443   -0.0039971    0.1164857
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0007920   -0.0628992    0.0644832
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0305763   -0.1098886    0.0487360
15-18 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0108661   -0.0296981    0.0079660
15-18 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0069047   -0.0523295    0.0385201
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                -0.0110753   -0.0353515    0.0132009
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0037844   -0.0305400    0.0229711
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0006722   -0.0187373    0.0200816
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0092004   -0.0307699    0.0123691
15-18 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0028726   -0.0145128    0.0087676
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0265538   -0.0649335    0.0118260
15-18 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0014547   -0.0269077    0.0298171
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0112709   -0.0104426    0.0329845
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0088583   -0.0051836    0.0229002
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                -0.0040826   -0.0129331    0.0047679
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                -0.0280622   -0.0688607    0.0127362
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0275036   -0.0704561    0.0154489
18-21 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0315791   -0.0804677    0.0173095
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0542183   -0.1107355    0.0022988
18-21 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0175923   -0.0547266    0.0195420
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0475394   -0.1042842    0.0092055
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0233781   -0.0837520    0.0369958
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0069505   -0.0409653    0.0548662
18-21 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0098016   -0.0298567    0.0102534
18-21 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                 0.0086921   -0.0883987    0.1057828
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0096444   -0.0409965    0.0217077
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                -0.0170594   -0.0393923    0.0052736
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                -0.0085419   -0.0290214    0.0119375
18-21 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0143825   -0.0267362   -0.0020289
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0039892   -0.0339484    0.0419268
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0087900   -0.0327769    0.0503569
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0105138   -0.0244658    0.0034382
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.0177134   -0.0091103    0.0445372
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              NA                -0.0158468   -0.0705376    0.0388440
21-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              NA                -0.0564151   -0.1183242    0.0054940
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              NA                -0.0317313   -0.0945163    0.0310537
21-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                -0.0427957   -0.0839400   -0.0016514
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                -0.0454984   -0.0970400    0.0060432
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0084570   -0.0703273    0.0534132
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0020104   -0.0498006    0.0538214
21-24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                -0.0065154   -0.0258285    0.0127977
21-24 months   ki1000109-EE               PAKISTAN                       >=50 cm              NA                -0.0831292   -0.2150862    0.0488277
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0095412   -0.0373897    0.0183074
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.0145356   -0.0077268    0.0367980
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.0118920   -0.0097115    0.0334954
21-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                -0.0062505   -0.0187772    0.0062762
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0371245   -0.0220888    0.0963377
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0104220   -0.0817943    0.1026383
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                -0.0044563   -0.0177640    0.0088515
