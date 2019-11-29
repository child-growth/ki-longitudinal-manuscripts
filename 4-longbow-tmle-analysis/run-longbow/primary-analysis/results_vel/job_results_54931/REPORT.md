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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        mhtcm           n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  -------------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            157     243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        63     243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm            94     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             48     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        26     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            44     183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm             87     183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        52     183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            27     156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm             87     156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        42     156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm            55     264  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm            154     264  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        55     264  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           156     205  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             25     205  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        24     205  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           138     228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             43     228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     228  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           470    1164  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            413    1164  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       281    1164  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           103     566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            327     566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       136     566  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           138     639  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            348     639  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       153     639  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            421     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       166     721  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm           984    1184  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm             44    1184  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       156    1184  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm         12116   12599  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm            115   12599  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       368   12599  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5568    7020  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            406    7020  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1046    7020  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm            99     724  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            469     724  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       156     724  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm           514    1721  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm            747    1721  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm       460    1721  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2963   19798  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          11842   19798  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4993   19798  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            149     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        59     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             50     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            54     229  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm            108     229  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        67     229  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            41     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            130     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm            57     266  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm            154     266  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        55     266  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        28     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           142     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             46     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51     239  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           423    1037  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            366    1037  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       248    1037  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            93     523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            302     523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       128     523  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           128     597  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            327     597  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       142     597  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           129     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            405     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       161     695  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1025    1635  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            253    1635  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       357    1635  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm          1085    1285  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm             46    1285  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       154    1285  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm         10636   11063  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm            105   11063  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       322   11063  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4471    5639  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            337    5639  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       831    5639  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm           100     796  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            532     796  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       164     796  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm           516    1747  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm            765    1747  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm       466    1747  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1975   12548  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           7354   12548  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      3219   12548  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            145     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        56     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           112     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             49     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            55     229  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm            110     229  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        64     229  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            39     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            129     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm            51     244  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm            143     244  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        50     244  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           171     227  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     227  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        25     227  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           132     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             44     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49     225  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           435    1056  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            366    1056  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       255    1056  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            62     314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            170     314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        82     314  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            91     498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            287     498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       120     498  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           115     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            314     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       136     565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           130     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            396     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       162     688  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           914    1460  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            222    1460  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       324    1460  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm           687     818  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm             26     818  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       105     818  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            30     181  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            109     181  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        42     181  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm         10040   10431  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm             97   10431  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       294   10431  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4288    5369  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            313    5369  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       768    5369  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm           107     813  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            536     813  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       170     813  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm           483    1645  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm            722    1645  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm       440    1645  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm           351     561  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm             92     561  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm       118     561  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            147     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        55     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           110     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             47     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            53     226  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm            109     226  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        64     226  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            39     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            128     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm            50     234  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm            135     234  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        49     234  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           172     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           131     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             45     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     224  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           448    1055  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            357    1055  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       250    1055  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            60     311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            167     311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        84     311  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            91     482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            277     482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       114     482  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           117     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            312     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       137     566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           126     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            390     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       158     674  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           672    1065  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            163    1065  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       230    1065  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm           680     808  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm             24     808  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       104     808  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            28     163  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             99     163  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        36     163  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm           996    1105  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm             30    1105  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm        79    1105  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm         10265   10666  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm             98   10666  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       303   10666  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4252    5334  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            315    5334  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       767    5334  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           123     908  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            593     908  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       192     908  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm           431    1457  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm            639    1457  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm       387    1457  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           242     385  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm             64     385  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm        79     385  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            140     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm           104     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             45     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        35     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109     225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            39     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm            50     223  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm            126     223  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        47     223  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           166     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             29     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        29     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           133     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             42     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51     226  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           466    1072  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm            353    1072  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       253    1072  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            57     303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            159     303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        87     303  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            85     461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            266     461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       110     461  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           111     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            296     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       125     532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           124     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            380     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       156     660  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           479     778  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            126     778  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       173     778  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1054    1262  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm             48    1262  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       160    1262  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            10      86  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             56      86  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        20      86  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm           883     962  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm             24     962  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm        55     962  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm           960     993  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              7     993  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm        26     993  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1828    2266  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            140    2266  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       298    2266  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           117     848  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            546     848  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       185     848  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm            72     127  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm             29     127  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        26     127  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            139     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        52     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            99     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             42     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        34     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            37     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm            47     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm            124     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        42     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           166     221  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28     221  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     221  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           129     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             39     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49     217  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           467    1076  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm            359    1076  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       250    1076  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            57     291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            152     291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        82     291  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            79     449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            260     449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       110     449  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           109     527  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            291     527  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       127     527  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           121     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            339     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       144     604  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           395     656  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            115     656  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       146     656  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1073    1282  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm             44    1282  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       165    1282  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm           918    1008  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm             30    1008  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm        60    1008  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        >=155 cm           264     274  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        <151 cm              1     274  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         9     274  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1460    1809  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            114    1809  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       235    1809  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           106     760  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            489     760  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       165     760  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm            69     120  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm             26     120  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        25     120  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            136     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            94     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             42     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm            108     225  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        64     225  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            37     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm            44     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm            119     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        39     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           174     229  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28     229  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     229  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           120     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             37     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     204  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            73     422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            246     422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       103     422  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           112     540  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            297     540  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       131     540  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           105     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            308     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       133     546  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             7       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1       9  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1064    1272  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm             39    1272  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       169    1272  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        >=155 cm           207     215  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     215  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         8     215  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1123    1401  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             93    1401  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       185    1401  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            95     752  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            497     752  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       160     752  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           287     474  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm             82     474  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       105     474  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            134     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            91     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109     225  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     225  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            43     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm            108     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        38     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           177     231  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27     231  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     231  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           120     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             38     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        46     204  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            74     411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            240     411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm        97     411  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm            97     470  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            265     470  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       108     470  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm            96     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            271     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       123     490  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm           957    1138  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm             32    1138  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       149    1138  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm           197     206  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     206  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         9     206  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           800    1019  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             74    1019  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       145    1019  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           105     829  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            546     829  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       178     829  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           245     408  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             74     408  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        89     408  y_rate_haz       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/0f537fb4-d267-4cfe-bca7-eeb6546d0b5f/dfbdcefc-3b50-4646-bb55-6e0b9f94c46e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0f537fb4-d267-4cfe-bca7-eeb6546d0b5f/dfbdcefc-3b50-4646-bb55-6e0b9f94c46e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0f537fb4-d267-4cfe-bca7-eeb6546d0b5f/dfbdcefc-3b50-4646-bb55-6e0b9f94c46e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0571851   -0.1338816    0.0195114
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.1387755   -0.1816910   -0.0958599
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.1034357   -0.1729426   -0.0339287
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1317433    0.0568728    0.2066139
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.1083110   -0.0076594    0.2242814
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1173964   -0.0259345    0.2607274
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0615791   -0.1618040    0.0386458
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0702220   -0.1463033    0.0058592
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.0284672   -0.1430776    0.0861432
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0743922   -0.0121103    0.1608947
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.0081035   -0.0492068    0.0654138
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.0900661   -0.0119099    0.1920422
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.2800572   -0.3540353   -0.2060792
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.2475280   -0.2939725   -0.2010835
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.2844105   -0.3635231   -0.2052980
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1678711   -0.2252352   -0.1105071
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.2429202   -0.4205688   -0.0652716
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.1358658   -0.2471757   -0.0245559
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1564199   -0.2093457   -0.1034942
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1211055   -0.2035830   -0.0386280
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1202905   -0.2075248   -0.0330561
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1038161   -0.1454719   -0.0621603
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.1603565   -0.1845464   -0.1361666
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.1364761   -0.1802083   -0.0927439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1995397   -0.2708369   -0.1282425
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.2569056   -0.2912513   -0.2225599
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.1925060   -0.2459733   -0.1390387
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1173885   -0.1512653   -0.0835118
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.2124226   -0.2363229   -0.1885223
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.1972264   -0.2327387   -0.1617140
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2195478   -0.2624397   -0.1766559
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.2346545   -0.2576950   -0.2116141
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.2256564   -0.2607786   -0.1905343
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2869943   -0.3128122   -0.2611763
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.3779016   -0.5553896   -0.2004136
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.2818961   -0.3626861   -0.2011062
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.4310438   -0.4906181   -0.3714695
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.5281617   -0.5521668   -0.5041565
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.4349514   -0.4967097   -0.3731931
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1321321   -0.1443563   -0.1199079
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.2442372   -0.2900371   -0.1984373
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.2044860   -0.2319594   -0.1770125
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.4913119   -0.5474472   -0.4351766
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.5377621   -0.5641608   -0.5113633
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.5538275   -0.6049381   -0.5027169
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0356028   -0.0604865   -0.0107191
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0743093   -0.0962908   -0.0523278
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.0547082   -0.0802676   -0.0291488
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0867276    0.0755525    0.0979027
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                 0.0479696    0.0420871    0.0538521
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                 0.0690111    0.0604560    0.0775661
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0110910   -0.0590501    0.0812321
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0142339   -0.0430275    0.0145597
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0627127   -0.1153040   -0.0101214
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0448239   -0.0046529    0.0943007
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0446230   -0.0222924    0.1115384
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1065837    0.0149212    0.1982461
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0145077   -0.0840209    0.0550055
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0578862   -0.1029322   -0.0128402
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.0252740   -0.0741320    0.0235840
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0486987   -0.1130013    0.0156039
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0234184   -0.0580280    0.0111912
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0099497   -0.0662632    0.0463638
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0230054   -0.0590927    0.1051034
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.0080797   -0.0300362    0.0461955
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.0750414    0.0066991    0.1433837
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0177346   -0.0629146    0.0274453
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.0166224   -0.0727010    0.1059457
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.0201155   -0.0954263    0.1356572
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0605624   -0.1022429   -0.0188818
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0963798   -0.1828355   -0.0099242
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0613759   -0.1225319   -0.0002200
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0024502   -0.0277392    0.0228389
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.0122674   -0.0500324    0.0254977
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.0137711   -0.0444642    0.0169220
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0514574   -0.1052186    0.0023038
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0577514   -0.0866429   -0.0288599
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0289052   -0.0776556    0.0198453
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0294300   -0.0653045    0.0064446
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0183667   -0.0394007    0.0026672
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0442888   -0.0776739   -0.0109037
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0073145   -0.0318871    0.0465162
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                 0.0269325    0.0046836    0.0491813
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0358730    0.0006625    0.0710834
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0803210   -0.1014229   -0.0592190
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0792979   -0.1266671   -0.0319288
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0944334   -0.1282307   -0.0606361
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0182256   -0.0392469    0.0027956
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                 0.0425424   -0.0455199    0.1306047
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0451818   -0.0986341    0.0082704
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0468609    0.0281030    0.0656187
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.0291983    0.0042889    0.0541077
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.0382380   -0.0116288    0.0881047
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0023377   -0.0084269    0.0131023
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0219703   -0.0587210    0.0147804
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.0073232   -0.0179626    0.0326091
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0472927   -0.0923767   -0.0022087
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.1019788   -0.1194047   -0.0845528
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.1131725   -0.1460633   -0.0802817
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0401951   -0.0612162   -0.0191739
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0542302   -0.0715946   -0.0368658
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.0587889   -0.0785066   -0.0390712
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0086011   -0.0023809    0.0195832
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.0066295   -0.0129294   -0.0003296
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.0045173   -0.0140835    0.0050489
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0843303   -0.1261091   -0.0425515
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0740822   -0.0948690   -0.0532954
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0552206   -0.0956559   -0.0147852
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0041355   -0.0438577    0.0355867
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0112135   -0.0868655    0.1092925
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0107435   -0.0872808    0.0657938
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0843195   -0.1381130   -0.0305260
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0459159   -0.0763352   -0.0154966
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.1046381   -0.1487168   -0.0605594
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0043812   -0.0566576    0.0478952
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0536072   -0.0789798   -0.0282346
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0148399   -0.0517742    0.0220944
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0182866   -0.0791791    0.0426059
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0360606   -0.0676708   -0.0044505
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.0280770   -0.0842404    0.0280863
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0244316   -0.0548934    0.0060302
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.0124956   -0.0834953    0.1084865
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.0892112   -0.1755459   -0.0028765
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1050865   -0.1411983   -0.0689747
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0583980   -0.1337688    0.0169727
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1005349   -0.2035797    0.0025100
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0653462   -0.0768280   -0.0538644
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.1063615   -0.1287501   -0.0839729
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.0741200   -0.1088491   -0.0393908
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.1106911   -0.1505132   -0.0708690
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.0931952   -0.1174381   -0.0689524
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -0.1224914   -0.1609841   -0.0839987
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0270899   -0.0675849    0.0134052
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0684141   -0.0923798   -0.0444483
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0584557   -0.0944407   -0.0224706
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0400109   -0.0635985   -0.0164233
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0725999   -0.0876118   -0.0575880
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0574811   -0.0781292   -0.0368330
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0168086   -0.0124913    0.0461085
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0370862   -0.0540258   -0.0201466
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.0493190   -0.0757627   -0.0228753
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0526611   -0.0733630   -0.0319593
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0596941   -0.0978409   -0.0215474
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0484434   -0.0831053   -0.0137814
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0145150   -0.0407929    0.0117630
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.0796163   -0.1663937    0.0071611
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0176843   -0.0734886    0.0381200
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0342353   -0.0811842    0.0127135
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.1046354   -0.1311893   -0.0780815
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0883650   -0.1383704   -0.0383596
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0508607    0.0360829    0.0656385
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.0722996    0.0359463    0.1086529
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.0287446   -0.0190855    0.0765747
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0295882   -0.0395267   -0.0196497
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0282461   -0.0589398    0.0024477
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0485942   -0.0708774   -0.0263110
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0883889   -0.1193518   -0.0574260
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.1199069   -0.1347081   -0.1051057
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.1441179   -0.1709433   -0.1172924
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0772962   -0.0955830   -0.0590094
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.1020123   -0.1163075   -0.0877170
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.0976695   -0.1153554   -0.0799835
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0414186    0.0223048    0.0605324
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.0129128   -0.0382902    0.0641158
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                 0.0062622   -0.0262446    0.0387691
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0821583   -0.1394577   -0.0248589
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0895658   -0.1084716   -0.0706601
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0711901   -0.1081070   -0.0342732
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0191604   -0.0168373    0.0551581
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0611354   -0.0162805    0.1385512
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0705917   -0.1386818   -0.0025016
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0978821   -0.1302997   -0.0654646
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0809453   -0.1052318   -0.0566588
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.1056633   -0.1339169   -0.0774097
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0719368   -0.1080984   -0.0357752
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0555762   -0.0791195   -0.0320330
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0686148   -0.1016957   -0.0355339
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0364909   -0.0829671    0.0099852
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0433035   -0.0727466   -0.0138603
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.0313691   -0.0763558    0.0136177
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0632910   -0.0927514   -0.0338305
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.1476756   -0.2222508   -0.0731005
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.1527964   -0.2538514   -0.0517415
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1518901   -0.1890960   -0.1146843
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1501767   -0.2204724   -0.0798809
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1698686   -0.2740534   -0.0656837
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0862953   -0.1050737   -0.0675168
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.0864221   -0.1106155   -0.0622288
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.0489519   -0.0819818   -0.0159221
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.1688392   -0.2683362   -0.0693422
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.1078657   -0.1939644   -0.0217670
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -0.1626688   -0.2514796   -0.0738579
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0397076   -0.0756686   -0.0037466
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0520965   -0.0702559   -0.0339372
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0317559   -0.0647164    0.0012046
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0717633   -0.0947674   -0.0487591
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0587869   -0.0737369   -0.0438370
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0706792   -0.0941409   -0.0472176
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0356710   -0.0580031   -0.0133389
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0351347   -0.0497164   -0.0205531
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.0296544   -0.0540573   -0.0052515
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0606793   -0.0785132   -0.0428454
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0746648   -0.1111148   -0.0382148
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0637334   -0.0955863   -0.0318805
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.1055665   -0.1258142   -0.0853189
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                 0.0060773   -0.1055355    0.1176900
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.1211317   -0.1699978   -0.0722656
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0271158   -0.0794037    0.0251720
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0733522   -0.0941336   -0.0525708
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0704133   -0.1098372   -0.0309893
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0483985   -0.0619108   -0.0348863
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                -0.0367112   -0.2148456    0.1414232
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                -0.0638877   -0.1000666   -0.0277088
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0383339    0.0171604    0.0595074
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.0656858    0.0423966    0.0889749
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.0441432   -0.0045219    0.0928083
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0597178   -0.0686387   -0.0507968
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0580156   -0.0859191   -0.0301121
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0544918   -0.0736625   -0.0353212
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1105184   -0.1395536   -0.0814832
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0862304   -0.0983548   -0.0741060
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0879436   -0.1117808   -0.0641065
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0652629   -0.0818309   -0.0486949
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0928712   -0.1070431   -0.0786993
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.1055571   -0.1229566   -0.0881577
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0495609   -0.0751568   -0.0239649
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0245876   -0.0740763    0.0249010
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0333577   -0.0710548    0.0043395
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0201568   -0.0585091    0.0181955
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0628576   -0.0840131   -0.0417022
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0383055   -0.0635382   -0.0130728
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0110898   -0.0202834    0.0424631
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.0553586   -0.0939842   -0.0167330
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.0270566   -0.0316061    0.0857193
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0346704   -0.0682971   -0.0010437
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0724114   -0.0941598   -0.0506630
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.0475159   -0.0753845   -0.0196472
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0903033   -0.1225474   -0.0580591
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0586906   -0.0802842   -0.0370970
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0428137   -0.0735052   -0.0121223
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0231460   -0.0656035    0.0193114
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0819721   -0.1060444   -0.0578998
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.0626785   -0.0920453   -0.0333117
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0690668   -0.0949945   -0.0431390
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.0893113   -0.1426769   -0.0359457
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.0217090   -0.0588170    0.1022351
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0562260   -0.0915686   -0.0208835
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0803766   -0.1376766   -0.0230765
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0892314   -0.1363232   -0.0421396
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0764724   -0.0928283   -0.0601164
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.0715539   -0.0913446   -0.0517631
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.1095971   -0.1381957   -0.0809986
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0579113    0.0261089    0.0897137
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                 0.0256649   -0.0237963    0.0751262
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -0.0172395   -0.1053189    0.0708399
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1385856   -0.1684488   -0.1087223
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.1195342   -0.1445422   -0.0945262
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.1326767   -0.1623200   -0.1030334
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0337716   -0.0551330   -0.0124102
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0414735   -0.0553079   -0.0276391
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0464772   -0.0674197   -0.0255347
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0405428   -0.0643738   -0.0167119
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0336725   -0.0458743   -0.0214707
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.0507374   -0.0702943   -0.0311805
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0755125   -0.0941085   -0.0569165
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0507586   -0.0863142   -0.0152030
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0460130   -0.0778394   -0.0141867
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0596508   -0.0733246   -0.0459770
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.0605335   -0.1096272   -0.0114398
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0287751   -0.0587219    0.0011717
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.0223815   -0.0879364    0.1326994
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0011230   -0.0343780    0.0321319
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0408280   -0.0852164    0.0035605
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0436243   -0.0615409   -0.0257076
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                -0.0652131   -0.1187639   -0.0116623
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                -0.0328119   -0.0654533   -0.0001705
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0057221   -0.1222304    0.1336746
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.3494276    0.1224212    0.5764340
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.0101641   -0.2049089    0.1845807
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0618860   -0.0743754   -0.0493966
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0658334   -0.1103442   -0.0213227
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0607920   -0.0888321   -0.0327519
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0729740   -0.1058381   -0.0401098
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0980142   -0.1108832   -0.0851452
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0735838   -0.0950862   -0.0520814
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0348846   -0.0926832    0.0229140
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0726575   -0.1288679   -0.0164471
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0205790   -0.0908371    0.0496790
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0254580   -0.0708395    0.0199235
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0417453   -0.0589227   -0.0245678
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0645670   -0.0898565   -0.0392775
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0237476   -0.0523839    0.0048887
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.0013121   -0.0475803    0.0449561
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0435939   -0.0835135   -0.0036742
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0303458   -0.0534321   -0.0072594
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0468233   -0.0655768   -0.0280698
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.0298331   -0.0573125   -0.0023538
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0396553   -0.0754583   -0.0038523
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0633027   -0.0832964   -0.0433091
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0613362   -0.0911079   -0.0315645
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0298752   -0.0666818    0.0069314
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0397413   -0.0597689   -0.0197137
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.0369187   -0.0720422   -0.0017953
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0342062   -0.0576622   -0.0107503
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.0110933   -0.0422951    0.0644817
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.0076783   -0.0464490    0.0310923
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0843299   -0.1147532   -0.0539066
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0742455   -0.1226374   -0.0258536
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0891253   -0.1385489   -0.0397017
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0043170   -0.0203759    0.0117418
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.0248388   -0.0486295   -0.0010481
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.0105898   -0.0459816    0.0248019
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0505288   -0.0779814   -0.0230762
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.0371304   -0.0555072   -0.0187535
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -0.0337408   -0.0599616   -0.0075200
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0583034   -0.0925272   -0.0240797
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0547623   -0.0743145   -0.0352102
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0606425   -0.0908066   -0.0304785
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0572628   -0.0742178   -0.0403078
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0332718   -0.0452441   -0.0212995
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0354235   -0.0545568   -0.0162901
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0031152   -0.0228599    0.0166295
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0211457   -0.0321961   -0.0100952
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.0180359   -0.0349197   -0.0011521
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0129750   -0.0340665    0.0081164
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0250127   -0.0575102    0.0074849
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0348398   -0.0640622   -0.0056174
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0280647   -0.0411041   -0.0150254
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.0594585   -0.1067857   -0.0121313
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0524790   -0.0852969   -0.0196611
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0153850   -0.0273652   -0.0034048
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                -0.0174301   -0.1605426    0.1256824
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                -0.0460332   -0.0849226   -0.0071439
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0630204   -0.0759873   -0.0500535
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0641926   -0.1095829   -0.0188023
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0628079   -0.0944805   -0.0311353
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0520349   -0.0819212   -0.0221486
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0510877   -0.0650408   -0.0371345
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0635527   -0.0873974   -0.0397081
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0438412   -0.0779434   -0.0097390
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0222773   -0.0727077    0.0281531
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0742644   -0.1347599   -0.0137690
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0025522   -0.0389504    0.0338459
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0240245   -0.0378149   -0.0102340
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                 0.0007846   -0.0265401    0.0281094
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0389549   -0.0661324   -0.0117774
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0154846   -0.0660807    0.0970498
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0271177   -0.0684899    0.0142545
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0242076   -0.0025184    0.0509336
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                 0.0043799   -0.0114096    0.0201694
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.0085281   -0.0299469    0.0128907
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0146671   -0.0450124    0.0156783
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0337045   -0.0518663   -0.0155428
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0178302   -0.0417889    0.0061285
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0023155   -0.0396839    0.0443148
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0034384   -0.0218244    0.0149477
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.0161110   -0.0475957    0.0153737
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0382695   -0.0601266   -0.0164124
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.0004458   -0.0719173    0.0710256
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.0450530   -0.0879795   -0.0021265
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0181430   -0.0449500    0.0086640
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0622168   -0.1173828   -0.0070508
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0554928   -0.1154564    0.0044708
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0328312   -0.0662732    0.0006109
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0388302   -0.0547810   -0.0228794
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0402462   -0.0672993   -0.0131931
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0046015   -0.0128940    0.0220969
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0131961   -0.0245438   -0.0018484
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0168965   -0.0325403   -0.0012527
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0155488   -0.0336246    0.0025270
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0366381   -0.0475865   -0.0256897
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.0163702   -0.0322645   -0.0004759
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0218580   -0.0351487   -0.0085672
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.0229590   -0.0638958    0.0179778
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                 0.0009951   -0.0332735    0.0352638
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0718416   -0.0861628   -0.0575204
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0466614   -0.0923494   -0.0009734
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0512102   -0.0880916   -0.0143287
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0245830   -0.0549072    0.0057411
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0192919   -0.0312909   -0.0072929
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0224481   -0.0455688    0.0006725
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0150414   -0.0340588    0.0039759
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0084831   -0.0686455    0.0516793
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0080313   -0.0386702    0.0226076
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0316337   -0.0090388    0.0723061
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                 0.0257762    0.0104190    0.0411334
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                 0.0187397   -0.0060279    0.0435073
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0189023   -0.0017947    0.0395992
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0212253   -0.0094631    0.0519137
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0079087   -0.0498883    0.0340708
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0275260    0.0059645    0.0490875
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                 0.0305995    0.0138707    0.0473282
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                 0.0318391    0.0108709    0.0528073
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0239230   -0.0498156    0.0019696
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.0079890   -0.0105080    0.0264860
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.0160367   -0.0147614    0.0468349
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0586490    0.0242547    0.0930434
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.0551735    0.0334441    0.0769029
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.0413738    0.0167634    0.0659841
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0494685    0.0309378    0.0679992
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.0625959   -0.0080705    0.1332623
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.0486999    0.0047509    0.0926488
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0033206   -0.0251122    0.0317534
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0189921   -0.0706732    0.0326890
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0406792   -0.0115153    0.0928737
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0586403    0.0287048    0.0885759
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                 0.0335183    0.0190651    0.0479715
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                 0.0427670    0.0156398    0.0698942
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0472198    0.0271110    0.0673286
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                 0.0460771    0.0346975    0.0574567
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                 0.0411289    0.0231813    0.0590765
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0665075    0.0466464    0.0863686
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                 0.0608657    0.0497772    0.0719541
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0531718    0.0368740    0.0694696
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0160112    0.0031491    0.0288733
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                 0.0466818    0.0074840    0.0858796
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                 0.0072457   -0.0198599    0.0343514
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0186651    0.0040061    0.0333241
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0137667   -0.0740417    0.0465083
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.0333844   -0.0050735    0.0718422
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0043126   -0.0288443    0.0202191
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0004851   -0.0098108    0.0088406
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0245093   -0.0425778   -0.0064408
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0267917    0.0049618    0.0486216
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.0456066    0.0101001    0.0811130
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                 0.0129141   -0.0140527    0.0398809


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2618635   -0.2960359   -0.2276911
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1762601   -0.2261696   -0.1263506
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1310305   -0.1594783   -0.1025827
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1875263   -0.2048955   -0.1701570
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2887887   -0.3134896   -0.2640878
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4320348   -0.4910045   -0.3730651
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1495856   -0.1604488   -0.1387225
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5365497   -0.5583847   -0.5147148
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0582849   -0.0721635   -0.0444062
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0589349    0.0540225    0.0638472
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0375957   -0.0670579   -0.0081335
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0256338   -0.0057477    0.0570153
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0091896   -0.0472785    0.0288994
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0098351   -0.0281172    0.0084471
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0271792   -0.0431005   -0.0112579
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0837277   -0.1004553   -0.0670001
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0195798   -0.0386524   -0.0005072
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0464949    0.0273999    0.0655900
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0014297   -0.0081164    0.0109757
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0957993   -0.1105012   -0.0810975
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0514792   -0.0626143   -0.0403442
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0035307   -0.0084020    0.0013406
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0713068   -0.0942272   -0.0483864
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0330997   -0.0572939   -0.0089056
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0231170   -0.0506622    0.0044281
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0823248   -0.0908399   -0.0738096
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0527773   -0.0688986   -0.0366560
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0166431   -0.0399582    0.0066721
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0954873   -0.1168026   -0.0741720
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0504345    0.0357938    0.0650752
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0321314   -0.0408532   -0.0234097
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1207922   -0.1327588   -0.1088255
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0937321   -0.1032138   -0.0842503
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0289231    0.0129358    0.0449105
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0919508   -0.1077840   -0.0761177
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0413365   -0.0628572   -0.0198159
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0814634   -0.1083205   -0.0546062
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0790426   -0.0933302   -0.0647549
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0648773   -0.0790908   -0.0506638
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1040073   -0.1223963   -0.0856184
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0642537   -0.0813044   -0.0472030
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0492418   -0.0639013   -0.0345823
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0387133    0.0172260    0.0602006
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0589491   -0.0667403   -0.0511580
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0906593   -0.1007699   -0.0805488
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0876183   -0.0967695   -0.0784672
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0441370   -0.0635936   -0.0246805
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0564431   -0.0717375   -0.0411487
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0658390   -0.0837720   -0.0479060
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0566955   -0.0797700   -0.0336210
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0826021   -0.0977850   -0.0674191
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0637337   -0.0783330   -0.0491344
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0561392   -0.0682695   -0.0440088
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0059822   -0.0310598    0.0190953
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0428959   -0.0591047   -0.0266870
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0077290   -0.1166702    0.1321283
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0624783   -0.0735129   -0.0514437
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0890448   -0.0994790   -0.0786107
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0398116   -0.0766125   -0.0030107
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0380016   -0.0508948   -0.0251084
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0279240   -0.0472295   -0.0086185
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0124388   -0.0250108    0.0001332
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0379764   -0.0467131   -0.0292397
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0200720   -0.0354178   -0.0047262
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0321094   -0.0438971   -0.0203218
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0176373   -0.0308203   -0.0044542
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0628851   -0.0744481   -0.0513220
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0539992   -0.0650725   -0.0429259
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0456083   -0.0712437   -0.0199728
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0059994   -0.0054729    0.0174717
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0313891   -0.0507513   -0.0120268
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0108178   -0.0189879   -0.0026477
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0200082   -0.0320465   -0.0079700
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0681355   -0.0808990   -0.0553719
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0211359   -0.0310704   -0.0112015
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0156975   -0.0319463    0.0005513
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0295109    0.0185329    0.0404890
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0458597    0.0290311    0.0626883
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0466450    0.0380173    0.0552728
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0159349    0.0045018    0.0273680
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0201135    0.0066785    0.0335484
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0050892   -0.0130144    0.0028360
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0260736    0.0105895    0.0415576


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0815904   -0.1695413    0.0063605
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0462506   -0.1499997    0.0574986
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0234323   -0.1621156    0.1152510
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0143469   -0.1760766    0.1473828
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0086429   -0.1345300    0.1172441
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0331119   -0.1197255    0.1859493
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0662887   -0.1701755    0.0375982
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0156740   -0.1168930    0.1482410
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0325292   -0.0556024    0.1206607
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0043533   -0.1128016    0.1040950
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0750490   -0.2618704    0.1117723
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0320053   -0.0931219    0.1571326
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0353144   -0.0624907    0.1331196
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0361294   -0.0660409    0.1382998
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0565404   -0.1031167   -0.0099642
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0326600   -0.0573806   -0.0079394
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0573659   -0.1367286    0.0219968
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0070337   -0.0820973    0.0961647
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0950341   -0.1365060   -0.0535622
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0798378   -0.1289650   -0.0307107
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0151067   -0.0639254    0.0337120
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0061086   -0.0615545    0.0493372
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0909073   -0.2702671    0.0884524
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0050981   -0.0797535    0.0899498
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0971179   -0.1488933   -0.0453425
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0039076   -0.0464488    0.0386336
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.1121051   -0.1595201   -0.0646901
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0723539   -0.1024302   -0.0422775
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0464502   -0.1084689    0.0155685
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0625156   -0.1380542    0.0130230
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0387065   -0.0719085   -0.0055046
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0191054   -0.0548052    0.0165945
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0387580   -0.0505554   -0.0269606
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0177165   -0.0311487   -0.0042843
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0253249   -0.1013114    0.0506615
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0738037   -0.1615675    0.0139601
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0002009   -0.0835120    0.0831103
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0617598   -0.0424084    0.1659280
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0433785   -0.1266450    0.0398880
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0107663   -0.0958215    0.0742888
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0252803   -0.0478600    0.0984206
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0387490   -0.0467489    0.1242468
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0149257   -0.1053641    0.0755127
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0520360   -0.0548044    0.1588765
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0343570   -0.0658212    0.1345352
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0378501   -0.0862821    0.1619823
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0358175   -0.1320134    0.0603785
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0008136   -0.0749445    0.0733174
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0098172   -0.0507103    0.0310759
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0113209   -0.0449192    0.0222773
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0062940   -0.0675267    0.0549388
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0225523   -0.0503446    0.0954491
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0110633   -0.0303774    0.0525039
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0148588   -0.0638190    0.0341013
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm           0.0196179   -0.0253844    0.0646202
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm           0.0285584   -0.0241841    0.0813009
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0010230   -0.0509333    0.0529793
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0141124   -0.0539458    0.0257210
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0607680   -0.0297694    0.1513055
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0269562   -0.0843485    0.0304361
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0176625   -0.0455801    0.0102550
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0086229   -0.0491381    0.0318923
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0243080   -0.0626149    0.0139988
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0049855   -0.0225066    0.0324777
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0546861   -0.1029362   -0.0064359
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0658798   -0.1217292   -0.0100304
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0140352   -0.0412573    0.0131870
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0185939   -0.0474344    0.0102467
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0152306   -0.0274053   -0.0030558
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0131184   -0.0277982    0.0015614
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0102481   -0.0362806    0.0567768
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0291098   -0.0289892    0.0872088
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0153490   -0.0906330    0.1213310
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0066080   -0.0927384    0.0795224
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0384036   -0.0236422    0.1004494
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0203187   -0.0898175    0.0491802
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0492260   -0.1074833    0.0090313
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0104587   -0.0745987    0.0536813
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0177740   -0.0861310    0.0505830
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0097904   -0.0932742    0.0736933
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0369272   -0.0639406    0.1377950
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0647796   -0.1566543    0.0270951
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0466885   -0.0374081    0.1307851
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0045516   -0.1051452    0.1142485
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0410153   -0.0593629   -0.0226676
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0087738   -0.0521548    0.0346072
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0174959   -0.0292886    0.0642804
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0118003   -0.0672791    0.0436786
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0413242   -0.0883986    0.0057503
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0313658   -0.0856385    0.0229069
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0325890   -0.0605734   -0.0046047
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0174703   -0.0488136    0.0138731
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0538948   -0.0878004   -0.0199892
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0661276   -0.1055681   -0.0266871
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0070330   -0.0504307    0.0363648
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0042178   -0.0362441    0.0446796
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0651013   -0.1557517    0.0255490
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0031694   -0.0648681    0.0585294
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0704001   -0.1250756   -0.0157245
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0541297   -0.1215566    0.0132973
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0214389   -0.0133105    0.0561883
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0221161   -0.0710994    0.0268672
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0013422   -0.0309290    0.0336133
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0190060   -0.0434108    0.0053988
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0315180   -0.0658049    0.0027689
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0557289   -0.0966114   -0.0148465
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0247161   -0.0479405   -0.0014917
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0203733   -0.0458412    0.0050947
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0285058   -0.0830793    0.0260677
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0351564   -0.0728067    0.0024940
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0074075   -0.0678817    0.0530667
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0109682   -0.0571852    0.0791217
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0419749   -0.0433485    0.1272984
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0897521   -0.1670596   -0.0124447
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0169368   -0.0235695    0.0574431
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0077812   -0.0508110    0.0352486
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0163606   -0.0267296    0.0594507
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0033219   -0.0455906    0.0522345
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0068125   -0.0619938    0.0483688
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0051219   -0.0596701    0.0699139
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0843847   -0.1647277   -0.0040417
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0895055   -0.1947897    0.0157788
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0017135   -0.0778431    0.0812700
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0179784   -0.1285428    0.0925860
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0001269   -0.0325141    0.0322603
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm           0.0373433   -0.0084723    0.0831589
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0609735   -0.0710928    0.1930398
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0061704   -0.1267943    0.1391352
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0123889   -0.0526450    0.0278671
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0079517   -0.0408965    0.0567999
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0129763   -0.0145353    0.0404879
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm           0.0010840   -0.0317567    0.0339247
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm           0.0005363   -0.0260855    0.0271580
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm           0.0060166   -0.0270803    0.0391135
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0139855   -0.0545452    0.0265742
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0030541   -0.0395775    0.0334692
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.1116438   -0.0018777    0.2251654
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0155652   -0.0684465    0.0373162
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0462364   -0.1025315    0.0100587
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0432974   -0.1087326    0.0221377
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm           0.0116873   -0.1632007    0.1865754
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0154892   -0.0509697    0.0199913
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0273519    0.0003057    0.0543981
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm           0.0058093   -0.0326929    0.0443116
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0017022   -0.0276000    0.0310043
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0052259   -0.0159299    0.0263818
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0242880   -0.0071292    0.0557052
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0225748   -0.0149466    0.0600961
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0276083   -0.0494160   -0.0058006
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0402943   -0.0643474   -0.0162411
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0249732   -0.0309743    0.0809207
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0162032   -0.0293227    0.0617292
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0427009   -0.0867054    0.0013037
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0181487   -0.0644927    0.0281953
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0664484   -0.1162006   -0.0166962
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0159667   -0.0503458    0.0822793
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0377410   -0.0778448    0.0023629
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0128454   -0.0565163    0.0308254
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0316126   -0.0072987    0.0705240
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0474896    0.0028281    0.0921510
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0588261   -0.1076909   -0.0099613
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0395325   -0.0912038    0.0121389
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0202445   -0.0795236    0.0390345
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0907758    0.0060072    0.1755444
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0241505   -0.0911895    0.0428884
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0330054   -0.0926279    0.0266172
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm           0.0049185   -0.0160725    0.0259095
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0331248   -0.0587081   -0.0075414
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.0322464   -0.0913658    0.0268730
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0751508   -0.1685547    0.0182531
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0190514   -0.0201110    0.0582137
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0059089   -0.0362188    0.0480366
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0077019   -0.0331772    0.0177734
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0127056   -0.0426042    0.0171930
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm           0.0068703   -0.0199308    0.0336715
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0101946   -0.0409268    0.0205377
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0247539   -0.0154513    0.0649592
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0294995   -0.0074460    0.0664450
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0008827   -0.0517947    0.0500293
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0308757   -0.0021165    0.0638679
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0235045   -0.1390484    0.0920394
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0632094   -0.1819672    0.0555483
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0215889   -0.0805666    0.0373888
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm           0.0108123   -0.0261399    0.0477645
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.3437055    0.0707673    0.6166436
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0158862   -0.2242081    0.1924357
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0039474   -0.0501859    0.0422910
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0010940   -0.0296513    0.0318393
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0250402   -0.0603619    0.0102815
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0006098   -0.0398704    0.0386507
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0377729   -0.1190176    0.0434718
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0143056   -0.0777647    0.1063758
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0162873   -0.0648258    0.0322512
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0391090   -0.0909310    0.0127130
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0224355   -0.0319809    0.0768519
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0198463   -0.0688994    0.0292069
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0164775   -0.0462647    0.0133096
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0005126   -0.0354824    0.0365077
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0236475   -0.0644867    0.0171917
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0216809   -0.0682425    0.0248807
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0098661   -0.0518007    0.0320685
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0070435   -0.0579950    0.0439080
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0452995   -0.0130482    0.1036473
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0265279   -0.0188794    0.0719353
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0100844   -0.0471860    0.0673547
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0047954   -0.0628825    0.0532916
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0205218   -0.0515264    0.0104829
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0062728   -0.0402497    0.0277041
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0133985   -0.0196810    0.0464779
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0167881   -0.0213481    0.0549242
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0035411   -0.0359058    0.0429879
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0023391   -0.0481094    0.0434311
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0239910    0.0031751    0.0448069
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm           0.0218393   -0.0037542    0.0474328
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0180305   -0.0405758    0.0045148
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0149207   -0.0409751    0.0111337
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0120376   -0.0507527    0.0266774
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0218647   -0.0578430    0.0141135
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0313937   -0.0804675    0.0176800
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0244143   -0.0597433    0.0109147
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0020451   -0.1431961    0.1391059
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0306482   -0.0691408    0.0078444
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0011722   -0.0483810    0.0460365
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0002125   -0.0340302    0.0344552
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0009472   -0.0320462    0.0339406
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0115178   -0.0499246    0.0268890
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0215639   -0.0395935    0.0827213
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0304233   -0.1000671    0.0392205
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0214722   -0.0605657    0.0176212
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0033369   -0.0422078    0.0488815
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0544395   -0.0318843    0.1407632
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0118372   -0.0387383    0.0624128
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0198277   -0.0509847    0.0113293
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0327357   -0.0668604    0.0013890
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0190375   -0.0544854    0.0164105
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0031631   -0.0418080    0.0354817
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0057538   -0.0515817    0.0400740
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0184265   -0.0711192    0.0342663
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0378237   -0.0367687    0.1124161
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0067835   -0.0547540    0.0411871
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0440738   -0.1055023    0.0173547
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0373498   -0.1035658    0.0288662
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0059990   -0.0432374    0.0312393
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0074151   -0.0504475    0.0356174
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0177976   -0.0385930    0.0029978
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0214980   -0.0448975    0.0019016
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0210893   -0.0422061    0.0000275
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0008214   -0.0249223    0.0232794
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0011010   -0.0440695    0.0418675
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0228531   -0.0139003    0.0596065
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0251802   -0.0226980    0.0730584
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0206314   -0.0190247    0.0602875
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0052911   -0.0274083    0.0379906
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0021349   -0.0359952    0.0402650
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0065584   -0.0571837    0.0703004
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0070102   -0.0288810    0.0429013
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0058575   -0.0494155    0.0377006
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0128940   -0.0607072    0.0349193
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0023230   -0.0346587    0.0393047
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0268110   -0.0737738    0.0201518
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0030735   -0.0241799    0.0303269
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0043131   -0.0257358    0.0343620
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0319120    0.0000151    0.0638090
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0399597   -0.0004879    0.0804074
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0034755   -0.0441835    0.0372325
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0172753   -0.0595159    0.0249653
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0131274   -0.0598816    0.0861364
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0007686   -0.0490451    0.0475079
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0223127   -0.0817560    0.0371306
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0373586   -0.0225723    0.0972896
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0251221   -0.0583950    0.0081509
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0158733   -0.0560438    0.0242971
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0011427   -0.0242894    0.0220039
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0060909   -0.0330092    0.0208273
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0056418   -0.0283444    0.0170608
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0133357   -0.0390128    0.0123415
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0306706   -0.0105407    0.0718819
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0087654   -0.0387645    0.0212336
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0324318   -0.0945014    0.0296378
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0147193   -0.0265499    0.0559885
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0038275   -0.0224044    0.0300594
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0201967   -0.0506071    0.0102137
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0188148   -0.0230055    0.0606352
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0138776   -0.0489075    0.0211523


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0650576   -0.1425920    0.0124768
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0023281   -0.0495140    0.0541702
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0025408   -0.0875773    0.0926589
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0196296   -0.1031265    0.0638673
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0181937   -0.0489301    0.0853176
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0083890   -0.0364836    0.0197056
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0188333   -0.0123721    0.0500388
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0272144   -0.0447251   -0.0097037
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0324468   -0.0958724    0.0309788
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0701377   -0.1011165   -0.0391589
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0117129   -0.0502554    0.0268295
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0017945   -0.0147568    0.0111678
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0009910   -0.0025265    0.0005446
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0174535   -0.0229945   -0.0119125
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0452379   -0.0978221    0.0073464
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0226821   -0.0438034   -0.0015607
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0277928   -0.0375393   -0.0180462
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0335318   -0.1015519    0.0344883
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0149053   -0.0162224    0.0460330
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0230880   -0.0825649    0.0363888
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0256202   -0.0329397    0.0841802
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0026285   -0.0672840    0.0725409
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0085451   -0.0123026    0.0293928
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0099825   -0.0370098    0.0170449
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0073849   -0.0218597    0.0070898
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0005567   -0.0486994    0.0498129
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0022508   -0.0292950    0.0337966
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0194595   -0.0160433    0.0549623
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0034068   -0.0164288    0.0096153
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0013541   -0.0091413    0.0064331
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0003659   -0.0016449    0.0009131
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0009080   -0.0057574    0.0039414
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0485066   -0.0902178   -0.0067955
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0112842   -0.0287673    0.0061990
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0121318   -0.0221651   -0.0020985
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0143072   -0.0268751    0.0554894
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0129188   -0.0193656    0.0452032
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0130127   -0.0325181    0.0585435
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0301784   -0.0773702    0.0170135
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0148131   -0.0682637    0.0386374
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0013146   -0.0162368    0.0188660
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0116767   -0.0188761    0.0422294
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0169786   -0.0279306   -0.0060265
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0054607   -0.0308644    0.0417858
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0324649   -0.0694216    0.0044917
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0214155   -0.0425802   -0.0002509
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0481724   -0.0748664   -0.0214784
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0001162   -0.0125301    0.0122977
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0021281   -0.0106846    0.0064284
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0612520   -0.1051893   -0.0173146
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0004262   -0.0022815    0.0014291
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0025432   -0.0067007    0.0016143
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0324033   -0.0616569   -0.0031497
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0164359   -0.0316101   -0.0012617
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0124955   -0.0253775    0.0003866
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0050471   -0.0586643    0.0485702
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0109820   -0.0389660    0.0170019
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0059313   -0.0226350    0.0344975
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0096403   -0.0243206    0.0436012
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0048456   -0.0463882    0.0366970
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0181724   -0.0352575   -0.0010873
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0030759   -0.0332275    0.0270756
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0072527   -0.0150209    0.0295262
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0225755   -0.0739961    0.1191471
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0027672   -0.0350314    0.0294970
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0087162   -0.0122957    0.0297282
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0013715   -0.0195010    0.0222441
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0041979   -0.0151575    0.0067616
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0015592   -0.0063298    0.0094482
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0371379   -0.0842982    0.0100225
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0008433   -0.0056776    0.0039911
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0003794   -0.0007335    0.0014924
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0007686   -0.0029190    0.0044562
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0198591   -0.0069185    0.0466367
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0223554   -0.0363984   -0.0083125
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0054238   -0.0093100    0.0201577
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0355555   -0.0736567    0.0025457
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0141328   -0.0341083    0.0058426
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0217727   -0.0506701    0.0071247
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0328483    0.0022600    0.0634366
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0426929   -0.0790174   -0.0063684
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0123713   -0.0022306    0.0269731
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0131303   -0.0339992    0.0077386
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0061297   -0.0143954    0.0021360
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0490367   -0.0935531   -0.0045204
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0126268   -0.0168760    0.0421295
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0071391   -0.0263021    0.0120238
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0022115   -0.0188928    0.0233158
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0117788    0.0000076    0.0235500
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0035116   -0.0012215    0.0082448
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0283637   -0.1326132    0.0758858
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0007284   -0.0024885    0.0039453
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0020069   -0.0079546    0.0119685
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0005923   -0.0057448    0.0045602
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0160709   -0.0461057    0.0139640
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0049270   -0.0386924    0.0288385
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0203363   -0.0635842    0.0229116
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0034054   -0.0150124    0.0218231
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0076558   -0.0285885    0.0132768
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0152793   -0.0483028    0.0177443
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0061813   -0.0380308    0.0256683
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0062822   -0.0037487    0.0163131
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0013043   -0.0198263    0.0172177
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0081218   -0.0215297    0.0052861
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0136163   -0.0116577    0.0388903
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0006128   -0.0307477    0.0319733
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0192864    0.0034734    0.0350994
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0137922   -0.0312557    0.0036714
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0070970   -0.0192404    0.0050465
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0040447   -0.0090097    0.0009203
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0022522   -0.0067050    0.0022005
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0001353   -0.0054073    0.0056780
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0019643   -0.0297463    0.0258177
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0017671   -0.0253446    0.0218105
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0129696   -0.0480610    0.0221217
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0185960   -0.0051498    0.0423418
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0182082   -0.0410177    0.0046013
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0134382   -0.0417765    0.0149001
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0104296   -0.0457981    0.0249390
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0068805   -0.0043600    0.0181210
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0100602   -0.0304528    0.0103324
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0055579   -0.0358103    0.0246946
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0154193   -0.0310998    0.0002613
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0124199   -0.0288283    0.0039884
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0018497   -0.0032626    0.0069620
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0037061   -0.0026274    0.0100396
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0034471   -0.0248119    0.0317061
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0006561   -0.0148579    0.0135458
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0060155   -0.0445183    0.0324873
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0024152   -0.0173621    0.0125317
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0019849   -0.0169804    0.0209503
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0293778    0.0037030    0.0550526
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0016747   -0.0315540    0.0282047
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0036088   -0.0139097    0.0066922
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0055191   -0.0137287    0.0247670
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0179489   -0.0447741    0.0088763
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0005748   -0.0182830    0.0171334
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0077454   -0.0253336    0.0098428
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0000763   -0.0043287    0.0041761
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0014484   -0.0062560    0.0091528
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0007766   -0.0234027    0.0218495
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0007181   -0.0131315    0.0116952
