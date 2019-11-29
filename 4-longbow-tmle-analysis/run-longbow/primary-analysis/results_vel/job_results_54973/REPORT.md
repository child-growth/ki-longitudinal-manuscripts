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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            157     243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        63     243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm            94     168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             48     168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        26     168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            44     183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm             87     183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        52     183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            27     156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm             87     156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        42     156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm            55     264  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm            154     264  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        55     264  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           156     205  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             25     205  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        24     205  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           138     228  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             43     228  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     228  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           470    1164  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            413    1164  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       281    1164  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           103     566  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            327     566  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       136     566  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           138     639  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            348     639  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       153     639  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            421     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       166     721  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm           984    1184  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm             44    1184  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       156    1184  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm         12116   12599  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm            115   12599  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       368   12599  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5568    7020  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            406    7020  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1046    7020  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm            99     724  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            469     724  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       156     724  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm           514    1721  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm            747    1721  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm       460    1721  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2963   19798  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          11842   19798  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4993   19798  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            149     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        59     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             50     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            54     229  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm            108     229  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        67     229  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            41     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            130     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm            57     266  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm            154     266  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        55     266  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        28     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           142     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             46     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51     239  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           423    1037  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            366    1037  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       248    1037  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            93     523  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            302     523  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       128     523  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           128     597  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            327     597  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       142     597  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           129     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            405     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       161     695  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1025    1635  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            253    1635  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       357    1635  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm          1085    1285  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm             46    1285  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       154    1285  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm         10636   11063  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm            105   11063  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       322   11063  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4471    5639  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            337    5639  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       831    5639  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm           100     796  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            532     796  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       164     796  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm           516    1747  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm            765    1747  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm       466    1747  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1975   12548  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           7354   12548  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      3219   12548  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            145     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        56     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           112     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             49     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            55     229  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm            110     229  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        64     229  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            39     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            129     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm            51     244  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm            143     244  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        50     244  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           171     227  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     227  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        25     227  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           132     225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             44     225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49     225  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           435    1056  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            366    1056  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       255    1056  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            62     314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            170     314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        82     314  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            91     498  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            287     498  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       120     498  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           115     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            314     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       136     565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           130     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            396     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       162     688  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           914    1460  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            222    1460  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       324    1460  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm           687     818  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm             26     818  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       105     818  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            30     181  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            109     181  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        42     181  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm         10040   10431  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm             97   10431  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       294   10431  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4288    5369  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            313    5369  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       768    5369  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm           107     813  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            536     813  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       170     813  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm           483    1645  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm            722    1645  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm       440    1645  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm           351     561  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm             92     561  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm       118     561  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            147     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        55     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           110     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             47     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            53     226  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm            109     226  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        64     226  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            39     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            128     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm            50     234  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm            135     234  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        49     234  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           172     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           131     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             45     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     224  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           448    1055  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            357    1055  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       250    1055  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            60     311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            167     311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        84     311  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            91     482  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            277     482  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       114     482  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           117     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            312     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       137     566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           126     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            390     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       158     674  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           672    1065  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            163    1065  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       230    1065  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm           680     808  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm             24     808  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       104     808  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            28     163  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             99     163  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        36     163  y_rate_len       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm           996    1105  y_rate_len       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm             30    1105  y_rate_len       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm        79    1105  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm         10265   10666  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm             98   10666  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       303   10666  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4252    5334  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            315    5334  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       767    5334  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           123     908  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            593     908  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       192     908  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm           431    1457  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm            639    1457  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm       387    1457  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           242     385  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm             64     385  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm        79     385  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            140     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm           104     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             45     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        35     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109     225  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     225  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            39     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm            50     223  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm            126     223  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        47     223  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           166     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             29     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        29     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           133     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             42     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51     226  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           466    1072  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm            353    1072  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       253    1072  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            57     303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            159     303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        87     303  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            85     461  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            266     461  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       110     461  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           111     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            296     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       125     532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           124     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            380     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       156     660  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           479     778  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            126     778  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       173     778  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1054    1262  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm             48    1262  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       160    1262  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            10      86  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             56      86  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        20      86  y_rate_len       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm           883     962  y_rate_len       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm             24     962  y_rate_len       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm        55     962  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm           960     993  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              7     993  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm        26     993  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1828    2266  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            140    2266  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       298    2266  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           117     848  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            546     848  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       185     848  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm            72     127  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm             29     127  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        26     127  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            139     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        52     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            99     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             42     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        34     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            37     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm            47     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm            124     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        42     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           166     221  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28     221  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     221  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           129     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             39     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49     217  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           467    1076  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm            359    1076  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       250    1076  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            57     291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            152     291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        82     291  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            79     449  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            260     449  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       110     449  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           109     527  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            291     527  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       127     527  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           121     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            339     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       144     604  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           395     656  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            115     656  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       146     656  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1073    1282  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm             44    1282  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       165    1282  y_rate_len       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm           918    1008  y_rate_len       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm             30    1008  y_rate_len       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm        60    1008  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        >=155 cm           264     274  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        <151 cm              1     274  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         9     274  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1460    1809  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            114    1809  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       235    1809  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           106     760  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            489     760  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       165     760  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm            69     120  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm             26     120  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        25     120  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            136     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            94     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             42     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm            108     225  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        64     225  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            37     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm            44     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm            119     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        39     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           174     229  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28     229  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     229  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           120     204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             37     204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     204  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            73     422  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            246     422  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       103     422  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           112     540  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            297     540  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       131     540  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           105     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            308     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       133     546  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             7       9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1       9  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1064    1272  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm             39    1272  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       169    1272  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        >=155 cm           207     215  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     215  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         8     215  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1123    1401  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             93    1401  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       185    1401  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            95     752  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            497     752  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       160     752  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           287     474  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm             82     474  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       105     474  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            134     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            91     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109     225  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     225  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            43     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm            108     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        38     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           177     231  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27     231  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     231  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           120     204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             38     204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        46     204  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            74     411  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            240     411  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm        97     411  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm            97     470  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            265     470  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       108     470  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm            96     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            271     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       123     490  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm           957    1138  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm             32    1138  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       149    1138  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm           197     206  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     206  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         9     206  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           800    1019  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             74    1019  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       145    1019  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           105     829  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            546     829  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       178     829  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           245     408  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             74     408  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        89     408  y_rate_len       


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
![](/tmp/373e3d17-eaac-4bf1-b35c-b14689c31ac4/2a3dbd6d-23fa-4b62-a5dd-dd0ae5c3fead/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/373e3d17-eaac-4bf1-b35c-b14689c31ac4/2a3dbd6d-23fa-4b62-a5dd-dd0ae5c3fead/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/373e3d17-eaac-4bf1-b35c-b14689c31ac4/2a3dbd6d-23fa-4b62-a5dd-dd0ae5c3fead/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                3.5022057   3.3521603   3.6522511
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                3.2951527   3.2117870   3.3785184
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                3.4270447   3.2884005   3.5656889
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                3.8143039   3.6685254   3.9600823
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                3.6889023   3.4757821   3.9020226
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                3.7796002   3.4679104   4.0912900
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                3.4125485   3.2373874   3.5877096
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                3.3013523   3.1471956   3.4555089
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                3.3768373   3.1707880   3.5828866
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                3.7933880   3.5973099   3.9894661
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                3.5159766   3.3960149   3.6359382
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                3.7585042   3.5633973   3.9536112
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                3.0392438   2.8960107   3.1824770
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                3.0780427   2.9878663   3.1682190
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                3.0020079   2.8514656   3.1525502
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                3.2185507   3.1047489   3.3323524
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                2.9870349   2.6418197   3.3322500
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                3.2248244   2.9965295   3.4531194
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                3.2342389   3.1306381   3.3378397
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                3.2449705   3.0864612   3.4034797
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                3.3033595   3.1355085   3.4712104
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                3.4139597   3.3277782   3.5001413
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                3.2607060   3.2073043   3.3141078
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                3.3361010   3.2556958   3.4165062
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                3.2293554   3.0808187   3.3778921
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                3.0403496   2.9732488   3.1074505
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                3.1868874   3.0804807   3.2932940
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                3.4316104   3.3562716   3.5069493
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                3.1960530   3.1443822   3.2477238
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                3.2509566   3.1814619   3.3204514
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                3.1991339   3.1125865   3.2856812
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                3.1036688   3.0546097   3.1527279
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                3.1496298   3.0782653   3.2209943
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                3.1086204   3.0574466   3.1597941
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                2.8532024   2.5202187   3.1861861
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                3.0851709   2.9270476   3.2432943
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                2.8116057   2.6974223   2.9257891
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                2.5891664   2.5443159   2.6340169
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                2.7617329   2.6381130   2.8853529
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                3.3585588   3.3340094   3.3831082
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                3.1043933   3.0137682   3.1950184
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                3.1847791   3.1301081   3.2394501
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                2.6993007   2.5843706   2.8142307
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                2.5608563   2.5093059   2.6124066
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                2.5809597   2.4760652   2.6858542
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                3.5738815   3.5229878   3.6247751
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                3.4578497   3.4136464   3.5020531
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                3.4948673   3.4418560   3.5478786
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                3.7456500   3.7225985   3.7687016
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                3.6321580   3.6200895   3.6442265
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                3.6939670   3.6759945   3.7119394
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                2.0612889   1.9201086   2.2024693
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                1.9390129   1.8777829   2.0002429
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                1.8530794   1.7403138   1.9658450
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                2.1365785   2.0303931   2.2427639
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                2.1227015   1.9727920   2.2726110
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                2.3557393   2.1695651   2.5419136
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                1.9352610   1.7884968   2.0820252
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                1.8452896   1.7492752   1.9413039
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                1.9297740   1.8251893   2.0343587
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.9411346   1.8099700   2.0722993
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                1.9495439   1.8763973   2.0226905
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                2.0069782   1.8874956   2.1264608
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                2.0079668   1.8327801   2.1831535
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                1.9759576   1.8953290   2.0565862
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                2.1207531   1.9768026   2.2647036
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                1.9491121   1.8545352   2.0436889
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                1.9467658   1.7558540   2.1376776
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                1.9678643   1.7048275   2.2309010
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.8563935   1.7686819   1.9441050
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.7217897   1.5307711   1.9128083
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.8236686   1.6880376   1.9592996
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                1.9832230   1.9277915   2.0386546
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                1.9317016   1.8408267   2.0225765
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                1.9502498   1.8691169   2.0313828
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                1.8570910   1.7392251   1.9749568
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                1.8044881   1.7415396   1.8674366
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.8847704   1.7799972   1.9895436
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.9808954   1.9042751   2.0575156
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                1.9701565   1.9248225   2.0154906
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                1.9398598   1.8693785   2.0103410
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                2.0009526   1.9144703   2.0874349
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                1.9954910   1.9476142   2.0433679
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                2.0372853   1.9603860   2.1141846
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.8127696   1.7670825   1.8584567
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.7896694   1.6889239   1.8904148
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.7610496   1.6893459   1.8327532
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                1.9950591   1.9502138   2.0399045
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                2.0753101   1.8899982   2.2606220
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                1.9141750   1.8005889   2.0277610
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                2.0923453   2.0523601   2.1323306
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                2.0347425   1.9810207   2.0884644
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                2.0636231   1.9593961   2.1678501
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.9873480   1.9643297   2.0103664
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.9076992   1.8285678   1.9868306
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.9805783   1.9270955   2.0340612
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                1.9100463   1.8162277   2.0038650
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                1.7412470   1.7046744   1.7778195
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                1.7554370   1.6854933   1.8253808
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                1.9196327   1.8743548   1.9649105
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                1.8622186   1.8247021   1.8997351
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                1.8572285   1.8145191   1.8999378
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                1.9670823   1.9430118   1.9911527
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                1.9043870   1.8908168   1.9179573
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                1.9259740   1.9055719   1.9463761
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                1.2452596   1.1547962   1.3357229
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                1.2346070   1.1860517   1.2831624
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                1.2982007   1.2075201   1.3888813
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.4731111   1.3826525   1.5635697
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.4974612   1.2684547   1.7264677
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                1.5176804   1.3435821   1.6917788
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                1.2155328   1.0797315   1.3513340
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                1.2952113   1.2248979   1.3655247
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                1.1863020   1.0886735   1.2839305
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.4645395   1.3539718   1.5751072
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                1.3072343   1.2496261   1.3648426
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                1.4207737   1.3373568   1.5041905
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                1.3204439   1.1894247   1.4514631
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                1.3122997   1.2422529   1.3823465
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                1.3281312   1.2059764   1.4502861
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                1.3670410   1.2981077   1.4359743
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                1.4649013   1.2369035   1.6928990
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                1.2807780   1.0838166   1.4777393
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.1757310   1.0928139   1.2586480
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.2323215   1.0606300   1.4040130
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.2001675   0.9524825   1.4478525
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                1.2681387   1.2414403   1.2948370
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                1.1494510   1.0967950   1.2021069
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                1.2325149   1.1571892   1.3078406
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                1.1371416   1.0481508   1.2261325
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                1.1586088   1.1038077   1.2134099
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                1.1017923   1.0173981   1.1861865
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                1.3446020   1.2512648   1.4379391
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                1.2256600   1.1713530   1.2799670
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.2672669   1.1876599   1.3468739
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.3531573   1.2968420   1.4094726
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                1.2493390   1.2146350   1.2840430
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                1.3088694   1.2593309   1.3584078
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                1.4441613   1.3774181   1.5109046
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                1.3054284   1.2663251   1.3445317
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                1.2864535   1.2255661   1.3473408
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.3313896   1.2842997   1.3784795
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.2955656   1.2088812   1.3822500
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.3193857   1.2394208   1.3993506
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                1.4016912   1.3420580   1.4613243
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                1.1941648   0.9927305   1.3955990
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                1.4024492   1.2745599   1.5303385
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.2823273   1.1670188   1.3976358
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                1.1412719   1.0799695   1.2025743
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                1.1560553   1.0505884   1.2615222
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                1.5772058   1.5454734   1.6089381
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                1.5948783   1.5114106   1.6783461
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                1.5203385   1.4136496   1.6270275
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.3554652   1.3328635   1.3780669
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.3393039   1.2703424   1.4082653
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.2960101   1.2449282   1.3470920
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                1.2089304   1.1389960   1.2788648
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                1.1018589   1.0680783   1.1356394
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                1.0650370   1.0053217   1.1247523
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                1.2600769   1.2186935   1.3014603
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                1.1709253   1.1387038   1.2031469
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                1.1961715   1.1557216   1.2366214
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                1.4934352   1.4501583   1.5367120
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm              NA                1.3992807   1.2830018   1.5155596
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                1.4066718   1.3291853   1.4841584
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.9953446   0.8567112   1.1339780
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.9729271   0.9273832   1.0184711
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                1.0192802   0.9318700   1.1066904
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.3287538   1.2416523   1.4158553
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.3841325   1.1951314   1.5731337
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                1.0974450   0.9459541   1.2489358
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.9838703   0.9034243   1.0643162
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.9971710   0.9382195   1.0561224
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.9484131   0.8814226   1.0154036
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.0903948   1.0068193   1.1739703
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                1.0884653   1.0308999   1.1460307
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                1.0753573   0.9962865   1.1544281
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                1.1286411   1.0134215   1.2438606
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                1.0876667   1.0183375   1.1569960
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                1.1249037   1.0218714   1.2279360
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                1.0721155   1.0015374   1.1426937
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.9259062   0.7559918   1.0958206
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.8635899   0.5982682   1.1289115
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.8349886   0.7457391   0.9242380
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7994542   0.6257832   0.9731252
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.7601295   0.5019924   1.0182666
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                1.0024728   0.9600080   1.0449377
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.9694401   0.9131347   1.0257455
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                1.0734202   0.9955622   1.1512782
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.7393199   0.5005154   0.9781244
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.9018854   0.6852881   1.1184827
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.7457672   0.5220054   0.9695289
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                1.1295792   1.0479063   1.2112521
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                1.0508343   1.0067148   1.0949538
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.1383307   1.0589082   1.2177532
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.0612669   1.0065651   1.1159687
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                1.0486429   1.0120764   1.0852094
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                1.0467089   0.9882424   1.1051755
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                1.1501885   1.0972938   1.2030833
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                1.1139154   1.0786676   1.1491632
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                1.1360292   1.0778367   1.1942218
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.1053466   1.0628646   1.1478287
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.0274748   0.9408519   1.1140977
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.0803095   1.0038793   1.1567396
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.9753695   0.9271103   1.0236288
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                1.1038543   0.8237932   1.3839155
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.9249545   0.8104808   1.0394282
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.1305916   1.0062529   1.2549303
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.9961735   0.9450669   1.0472801
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                1.0217160   0.9229527   1.1204792
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                1.0979554   1.0663706   1.1295402
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                1.0570248   0.5675713   1.5464784
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                1.0174325   0.9334718   1.1013932
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                1.3774088   1.3260403   1.4287774
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                1.4222538   1.3658838   1.4786238
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                1.3753990   1.2553190   1.4954791
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.0852284   1.0638517   1.1066050
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.0424177   0.9755616   1.1092739
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.0802494   1.0340148   1.1264839
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.9303212   0.8579001   1.0027423
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.9492180   0.9196228   0.9788133
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.9553168   0.8975151   1.0131185
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                1.0771465   1.0364617   1.1178313
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.9688108   0.9339745   1.0036471
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.9553058   0.9123143   0.9982973
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                1.0873610   1.0242578   1.1504642
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                1.1203546   1.0041755   1.2365336
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                1.0912030   0.9959247   1.1864813
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                1.0121728   0.9038394   1.1205061
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.8881911   0.8331811   0.9432011
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.9815734   0.9120956   1.0510512
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.1823840   1.1020579   1.2627102
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.0001041   0.9000221   1.1001861
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                1.2056563   1.0573946   1.3539181
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.9746862   0.8877912   1.0615811
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.8622030   0.8063352   0.9180709
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.9458385   0.8754013   1.0162757
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.9155947   0.8272649   1.0039244
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.9412384   0.8862246   0.9962522
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.9837325   0.9083233   1.0591417
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                1.0177243   0.9075533   1.1278953
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.8403786   0.7786664   0.9020908
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.9034721   0.8256402   0.9813040
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.8958948   0.8302173   0.9615723
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.7896181   0.6537845   0.9254518
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                1.0970290   0.8663134   1.3277447
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9037041   0.8138994   0.9935088
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.8138883   0.6647507   0.9630259
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.7829662   0.6689634   0.8969690
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.8727050   0.8298435   0.9155665
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.8467058   0.7940308   0.8993808
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.7698860   0.6972829   0.8424891
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                1.1418974   1.0603733   1.2234215
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                1.0556370   0.9326957   1.1785783
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.9238784   0.7082233   1.1395335
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7311543   0.6537643   0.8085443
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7259519   0.6585950   0.7933089
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7285489   0.6513369   0.8057609
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.9998305   0.9440429   1.0556180
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.9458166   0.9101762   0.9814569
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.9573327   0.9020302   1.0126352
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.9954393   0.9333240   1.0575547
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.9751545   0.9433775   1.0069316
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.9491326   0.8987029   0.9995624
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9123735   0.8646671   0.9600800
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.9322308   0.8433114   1.0211503
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.9503942   0.8685150   1.0322733
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.9245315   0.8899877   0.9590753
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.8863515   0.7505139   1.0221892
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.9704694   0.8947820   1.0461568
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.0967553   0.8661552   1.3273553
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                1.0173760   0.9320000   1.1027521
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.9770762   0.8720879   1.0820645
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.9689321   0.9247169   1.0131473
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.8803344   0.7425030   1.0181659
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.9763128   0.8912858   1.0613399
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                1.1833491   0.8468989   1.5197992
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                1.9769863   1.4068285   2.5471440
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                1.1255339   0.6105892   1.6404785
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.9273174   0.8955942   0.9590406
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.8564814   0.7404937   0.9724691
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.9013597   0.8289630   0.9737564
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.8667518   0.7815584   0.9519452
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7481845   0.7146962   0.7816727
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.8313170   0.7767535   0.8858805
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.9826360   0.8343835   1.1308884
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8405823   0.7004850   0.9806796
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                1.0147885   0.8213008   1.2082762
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.9189326   0.7947953   1.0430699
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.8235375   0.7763471   0.8707279
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.7923159   0.7241904   0.8604414
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.9970883   0.9140354   1.0801412
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.0802697   0.9472060   1.2133334
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.9298319   0.8137418   1.0459220
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.8790388   0.8141428   0.9439347
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.8076186   0.7535844   0.8616528
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.8777869   0.8025691   0.9530046
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.9342602   0.8355242   1.0329962
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.8099863   0.7557117   0.8642610
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.8335020   0.7486967   0.9183072
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.8974579   0.7992039   0.9957119
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.8338849   0.7792156   0.8885541
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.8661086   0.7726167   0.9596004
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.8778746   0.8129674   0.9427817
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.9524528   0.8035855   1.1013202
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.9677653   0.8591466   1.0763841
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.6974860   0.6152201   0.7797518
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6813834   0.5476628   0.8151041
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6594906   0.5285178   0.7904634
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.9436651   0.9012059   0.9861242
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.8495084   0.7878612   0.9111556
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.9024227   0.8028520   1.0019935
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.7914181   0.7164073   0.8664289
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.7845216   0.7334903   0.8355529
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.8181848   0.7477551   0.8886145
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.8030082   0.7041387   0.9018777
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7668572   0.7133468   0.8203676
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7771801   0.6951734   0.8591868
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.8342342   0.7876024   0.8808659
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.8569576   0.8238465   0.8900687
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8674816   0.8149695   0.9199937
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.9778050   0.9248205   1.0307894
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.8982703   0.8673582   0.9291823
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.9190245   0.8736998   0.9643492
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9639509   0.9057510   1.0221509
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.9023366   0.8122931   0.9923802
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.8883519   0.8076834   0.9690205
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.8945368   0.8593185   0.9297550
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7647898   0.6370784   0.8925012
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.8117032   0.7202482   0.9031582
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.9314324   0.8972005   0.9656644
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.8702891   0.3167905   1.4237877
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.8007794   0.6991091   0.9024497
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.8041095   0.7686410   0.8395780
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.7793294   0.6578295   0.9008293
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7770626   0.6913371   0.8627881
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7698074   0.6918176   0.8477972
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7483204   0.7101671   0.7864736
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7261587   0.6603742   0.7919432
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.8378828   0.7425078   0.9332579
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8626831   0.7076411   1.0177252
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.7528554   0.5847269   0.9209838
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.8572787   0.7701670   0.9443903
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.7759802   0.7353290   0.8166314
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.8716741   0.7907724   0.9525758
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.8670396   0.7884621   0.9456170
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.0402123   0.8006000   1.2798246
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.9020146   0.7937991   1.0102301
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.9621813   0.8775786   1.0467839
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.8599365   0.8119992   0.9078737
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.8449483   0.7799144   0.9099822
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.8606191   0.7721323   0.9491059
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.7808138   0.7280636   0.8335641
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.8482205   0.7777554   0.9186857
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.8728771   0.7455249   1.0002292
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.8366014   0.7829970   0.8902059
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.7865077   0.6948104   0.8782050
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.7671487   0.7041301   0.8301672
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8053376   0.5754310   1.0352442
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.7531142   0.6234427   0.8827857
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7997815   0.7208390   0.8787240
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7095710   0.5532808   0.8658613
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.7096409   0.5405250   0.8787567
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7702525   0.6754040   0.8651011
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7123199   0.6661311   0.7585086
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7500115   0.6745075   0.8255154
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.9049306   0.8535026   0.9563586
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.8208357   0.7881466   0.8535247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8248493   0.7773114   0.8723873
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.8599331   0.8088948   0.9109714
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.7631099   0.7315326   0.7946873
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.8301794   0.7837523   0.8766066
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.8190178   0.7810678   0.8569679
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7318698   0.6052674   0.8584723
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.8392834   0.7393156   0.9392512
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.6783477   0.6368417   0.7198536
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6907340   0.5612685   0.8201996
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7062719   0.6024897   0.8100540
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7784221   0.6927947   0.8640495
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7409978   0.7062027   0.7757929
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7474887   0.6811231   0.8138543
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.8245488   0.7702364   0.8788612
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.7927627   0.6261045   0.9594210
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.7927861   0.7065104   0.8790619
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.8114566   0.6934673   0.9294459
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.7571498   0.7147157   0.7995839
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.7784132   0.6981974   0.8586291
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.8026207   0.7493691   0.8558723
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.8321901   0.7463482   0.9180319
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.7124714   0.5887440   0.8361988
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.8604361   0.7952618   0.9256104
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.8191737   0.7736573   0.8646901
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.8122566   0.7537084   0.8708049
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.7384685   0.6610264   0.8159107
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.7689654   0.7147214   0.8232095
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.8430167   0.7511489   0.9348845
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.7846664   0.6792417   0.8900911
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.7579495   0.6926179   0.8232811
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.7410533   0.6584411   0.8236656
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.8552869   0.7989358   0.9116380
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8229006   0.5849446   1.0608566
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.7921278   0.6564895   0.9277660
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7089585   0.6277388   0.7901782
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5604714   0.4106863   0.7102565
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.7855207   0.6404051   0.9306364
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.8232740   0.7399464   0.9066017
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6768475   0.6336872   0.7200079
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7309776   0.6471418   0.8148133
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.8076771   0.7505232   0.8648310
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.7544959   0.7203238   0.7886681
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.7726857   0.7212919   0.8240794
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.8264055   0.7675937   0.8852173
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.8041029   0.7714743   0.8367314
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.7861638   0.7359993   0.8363283
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.7222051   0.6836561   0.7607540
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.6887005   0.5748113   0.8025897
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.6769250   0.5948221   0.7590279
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.7031516   0.6588600   0.7474432
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6031188   0.4260828   0.7801548
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7420908   0.6216737   0.8625079
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7184577   0.6465272   0.7903883
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.6800799   0.6526017   0.7075580
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.6288523   0.5749077   0.6827969
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.7559946   0.6905648   0.8214245
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.7816469   0.6710789   0.8922150
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.7096554   0.6310323   0.7882784


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0531076   2.9864257   3.1197894
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1891095   3.0900536   3.2881654
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.3435169   3.2877986   3.3992351
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2592091   3.2222694   3.2961487
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.0979093   3.0490622   3.1467564
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8080676   2.6950241   2.9211111
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3182367   3.2964206   3.3400527
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5843659   2.5410548   2.6276770
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5013455   3.4730048   3.5296863
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6646715   3.6544355   3.6749075
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8890965   1.8255097   1.9526834
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0152678   1.9488079   2.0817277
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9612733   1.8804053   2.0421413
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9550595   1.9132701   1.9968488
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657091   1.9317726   1.9996455
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7976251   1.7615794   1.8336707
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9875768   1.9468863   2.0282674
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0908278   2.0500747   2.1315808
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9811859   1.9607885   2.0015832
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7631705   1.7322799   1.7940611
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8785516   1.8544247   1.9026785
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9199874   1.9095160   1.9304587
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2442866   1.1923459   1.2962273
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3210643   1.2665463   1.3755823
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3644626   1.3017940   1.4271311
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2170838   1.1948907   1.2392769
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3224695   1.2858028   1.3591362
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.3961653   1.3431178   1.4492128
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1697941   1.1215573   1.2180309
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5754690   1.5441147   1.6068232
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3458662   1.3260206   1.3657117
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.1068575   1.0796527   1.1340622
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.2030136   1.1814691   1.2245580
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4610468   1.4243885   1.4977051
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9799614   0.9416888   1.0182340
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0999922   1.0489406   1.1510437
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0212609   0.9562969   1.0862249
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0050337   0.9730422   1.0370252
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0884870   1.0545720   1.1224021
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9735017   0.9296910   1.0173125
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0236630   0.9818595   1.0654665
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0921536   1.0584176   1.1258896
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3776347   1.3254645   1.4298048
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0819122   1.0632328   1.1005917
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9460743   0.9213224   0.9708262
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9990319   0.9764860   1.0215779
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.0985921   1.0516237   1.1455606
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9107851   0.8714474   0.9501228
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8906860   0.8442322   0.9371397
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9252117   0.8670403   0.9833831
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8400621   0.7982166   0.8819077
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9338162   0.8966318   0.9710006
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9295076   0.8988557   0.9601596
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0179099   0.9523693   1.0834505
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9671630   0.9258651   1.0084609
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.1874299   0.8604526   1.5144072
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9205803   0.8924958   0.9486649
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7819704   0.7548886   0.8090522
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.9588519   0.8629996   1.0547041
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8445838   0.8081021   0.8810654
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8883347   0.8348067   0.9418626
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9032224   0.8728719   0.9335728
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8552334   0.8311623   0.8793044
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9354850   0.8932537   0.9777164
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8794020   0.8473815   0.9114224
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9213229   0.8837045   0.9589414
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7989606   0.7673627   0.8305585
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7478483   0.7176882   0.7780084
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8247565   0.7538318   0.8956812
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8795431   0.8441522   0.9149339
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7842913   0.7280906   0.8404919
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8397160   0.8156938   0.8637381
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8213042   0.7867369   0.8558716
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6832299   0.6463288   0.7201311
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7441729   0.7154564   0.7728895
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8171398   0.7705868   0.8636928
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8246636   0.7937212   0.8556061
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8455789   0.7937438   0.8974141
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7640933   0.7387145   0.7894720
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7185082   0.6843368   0.7526795
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7005480   0.6597161   0.7413799
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6787427   0.6552973   0.7021881
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7508459   0.7047755   0.7969163


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.2070530   -0.3786086   -0.0354973
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0751610   -0.2793979    0.1290760
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1254015   -0.3830270    0.1322239
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0347037   -0.3794837    0.3100763
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1111963   -0.3453462    0.1229537
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0357112   -0.3061245    0.2347021
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2774114   -0.5076801   -0.0471427
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0348838   -0.3118727    0.2421052
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0387988   -0.1316016    0.2091993
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0372359   -0.2444120    0.1699401
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.2315158   -0.5953327    0.1323011
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0062738   -0.2492565    0.2618040
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0107316   -0.1785751    0.2000383
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0691206   -0.1283915    0.2666327
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1532537   -0.2551803   -0.0513271
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0778587   -0.1425834   -0.0131341
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1890057   -0.3523710   -0.0256404
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0424680   -0.2250418    0.1401058
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2355574   -0.3265183   -0.1445965
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.1806538   -0.2837480   -0.0775595
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0954650   -0.1951149    0.0041848
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0495040   -0.1616582    0.0626501
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2554180   -0.5922627    0.0814268
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0234494   -0.1896511    0.1427523
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.2224393   -0.3206757   -0.1242029
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0498728   -0.1377635    0.0380179
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2541656   -0.3480677   -0.1602634
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1737797   -0.2337039   -0.1138555
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1384444   -0.2643188   -0.0125700
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1183410   -0.2731183    0.0364364
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1160317   -0.1833765   -0.0486870
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0790142   -0.1526058   -0.0054226
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1134921   -0.1375341   -0.0894500
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0516830   -0.0795056   -0.0238605
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1222760   -0.2762468    0.0316947
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.2082095   -0.3891425   -0.0272765
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0138770   -0.1983463    0.1705923
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.2191608    0.0048345    0.4334872
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0899715   -0.2658938    0.0859508
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0054870   -0.1862420    0.1752679
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0084093   -0.1420456    0.1588641
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0658436   -0.1115709    0.2432580
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0320092   -0.2247098    0.1606914
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.1127863   -0.1137564    0.3393290
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0023463   -0.2144190    0.2097265
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0187522   -0.2618046    0.2993090
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.1346038   -0.3451106    0.0759031
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0327249   -0.1947574    0.1293076
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0515214   -0.1421319    0.0390891
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0329732   -0.1175359    0.0515895
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0526029   -0.1865498    0.0813441
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0276794   -0.1304608    0.1858197
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0107388   -0.0997864    0.0783087
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0410356   -0.1452493    0.0631781
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0054616   -0.1042478    0.0933247
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm           0.0363327   -0.0795095    0.1521749
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0231003   -0.1338923    0.0876918
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0517201   -0.1367596    0.0333195
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0802510   -0.1104009    0.2709030
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0808842   -0.2029777    0.0412094
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0576028   -0.1170069    0.0018013
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0287222   -0.1133507    0.0559062
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0796489   -0.1620905    0.0027928
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0067697   -0.0650166    0.0514771
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1687994   -0.2690929   -0.0685059
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1546093   -0.2716080   -0.0376106
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0574140   -0.1161418    0.0013137
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0624042   -0.1246441   -0.0001643
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0626952   -0.0893535   -0.0360370
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0411083   -0.0729087   -0.0093079
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0106525   -0.1129225    0.0916174
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0529411   -0.0750722    0.1809544
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0243501   -0.2229306    0.2716308
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0445694   -0.1521431    0.2412818
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0796786   -0.0736576    0.2330147
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0292308   -0.1968631    0.1384016
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.1573051   -0.2824555   -0.0321548
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0437658   -0.1827728    0.0952412
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0081441   -0.1568331    0.1405448
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0076873   -0.1715696    0.1869443
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0978603   -0.1405376    0.3362582
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0862630   -0.2954328    0.1229068
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0565905   -0.1341791    0.2473601
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0244365   -0.2372593    0.2861323
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1186877   -0.1625619   -0.0748135
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0356238   -0.1284336    0.0571861
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0214672   -0.0832804    0.1262148
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0353493   -0.1580760    0.0873773
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1189419   -0.2269433   -0.0109405
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0773350   -0.2001143    0.0454443
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.1038183   -0.1701269   -0.0375098
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0442880   -0.1193553    0.0307793
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1387330   -0.2163452   -0.0611207
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1577079   -0.2478598   -0.0675559
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0358240   -0.1344213    0.0627733
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0120039   -0.1050390    0.0810311
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2075264   -0.4174840    0.0024313
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0007580   -0.1402825    0.1417985
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.1410554   -0.2727255   -0.0093852
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1262720   -0.2812852    0.0287411
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0176726   -0.0621756    0.0975208
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0568672   -0.1676353    0.0539008
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0161613   -0.0887254    0.0564027
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0594551   -0.1153249   -0.0035853
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1070715   -0.1846903   -0.0294527
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1438934   -0.2356754   -0.0521114
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0891516   -0.1415927   -0.0367105
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0639054   -0.1218768   -0.0059340
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0941545   -0.2178053    0.0294964
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0867633   -0.1754753    0.0019486
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0224174   -0.1683377    0.1235029
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0239356   -0.1401244    0.1879957
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0553787   -0.1525310    0.2632884
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.2313088   -0.4058230   -0.0567947
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0133007   -0.0861311    0.1127324
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0354572   -0.1403688    0.0694545
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0019295   -0.1033630    0.0995041
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0150375   -0.1302915    0.1002164
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0409743   -0.1755733    0.0936246
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0037374   -0.1591081    0.1516334
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.1462093   -0.3300528    0.0376341
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2085257   -0.4829576    0.0659063
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0355344   -0.2305360    0.1594672
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0748591   -0.3476265    0.1979083
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0330327   -0.1065969    0.0405315
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm           0.0709473   -0.0362866    0.1781813
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.1625654   -0.1609844    0.4861153
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0064472   -0.3213852    0.3342797
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0787449   -0.1714221    0.0139324
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0087516   -0.1054611    0.1229642
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0126240   -0.0784852    0.0532372
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0145580   -0.0946900    0.0655741
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0362731   -0.0998395    0.0272932
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0141593   -0.0927461    0.0644274
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0778718   -0.1744179    0.0186742
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0250372   -0.1125343    0.0624600
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.1284848   -0.1558500    0.4128195
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0504150   -0.1745907    0.0737606
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.1344181   -0.2689234    0.0000872
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1088756   -0.2679514    0.0502002
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0409306   -0.5248244    0.4429633
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0805229   -0.1620080    0.0009623
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0448449   -0.0194380    0.1091279
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0020098   -0.0962358    0.0922162
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0428106   -0.1130178    0.0273966
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0049790   -0.0559467    0.0459886
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0188968   -0.0592410    0.0970347
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0249956   -0.0676054    0.1175966
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1083357   -0.1619448   -0.0547267
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.1218407   -0.1810715   -0.0626099
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0329935   -0.1005443    0.1665314
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0038420   -0.1105753    0.1182593
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1239817   -0.2456640   -0.0022994
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0305994   -0.1604457    0.0992469
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1822800   -0.3107489   -0.0538110
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0232723   -0.1450611    0.1916057
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1124831   -0.2159456   -0.0090207
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0288477   -0.1407330    0.0830377
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0256437   -0.0787248    0.1300123
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0681378   -0.0480280    0.1843036
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.1773457   -0.3038412   -0.0508502
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.1142522   -0.2492857    0.0207813
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.1062767   -0.2555406    0.0429873
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.2011342   -0.0394927    0.4417612
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0898158   -0.2639488    0.0843172
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.1207379   -0.2659826    0.0245068
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0259992   -0.0779255    0.0259271
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.1028190   -0.1684258   -0.0372122
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.0862604   -0.2336094    0.0610885
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.2180190   -0.4491755    0.0131375
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0052024   -0.1083737    0.0979689
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0026054   -0.1122741    0.1070633
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0540139   -0.1204539    0.0124261
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0424978   -0.1211397    0.0361442
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0202848   -0.0900625    0.0494929
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0463067   -0.1262816    0.0336682
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0198573   -0.0813927    0.1211072
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0380206   -0.0568679    0.1329091
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0381800   -0.1781909    0.1018309
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0459378   -0.0372995    0.1291752
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0793792   -0.3252838    0.1665254
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1196790   -0.3722099    0.1328519
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0885977   -0.2406191    0.0634237
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm           0.0073807   -0.0839097    0.0986712
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.7936372    0.0983444    1.4889300
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0578152   -0.6103880    0.4947577
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0708360   -0.1910804    0.0494084
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0259577   -0.1051249    0.0532094
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1185674   -0.2102163   -0.0269184
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0354348   -0.1365374    0.0656678
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.1420537   -0.3468241    0.0627167
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0321525   -0.2120805    0.2763855
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0953951   -0.2281030    0.0373127
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.1266167   -0.2682295    0.0149961
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0831814   -0.0727561    0.2391189
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0672564   -0.2092666    0.0747538
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0714202   -0.1563096    0.0134693
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0012519   -0.1011014    0.0985976
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.1242738   -0.2369924   -0.0115553
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.1007582   -0.2310589    0.0295424
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0635730   -0.1761221    0.0489761
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0313493   -0.1669151    0.1042165
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0745783   -0.0884438    0.2376003
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0898908   -0.0368443    0.2166259
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0161025   -0.1730881    0.1408830
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0379953   -0.1929063    0.1169156
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0941567   -0.1767231   -0.0115902
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0412423   -0.1392029    0.0567182
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.0068965   -0.0979404    0.0841473
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0267667   -0.0762650    0.1297984
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0361510   -0.1487078    0.0764059
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0258281   -0.1546381    0.1029819
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0227235   -0.0346124    0.0800593
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm           0.0332474   -0.0370210    0.1035158
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0795347   -0.1406798   -0.0183896
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0587805   -0.1288645    0.0113036
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0616143   -0.1689922    0.0457636
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0755990   -0.1749134    0.0237154
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1297469   -0.2622162    0.0027223
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0828335   -0.1809283    0.0152612
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0611433   -0.6130778    0.4907912
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.1306530   -0.2322401   -0.0290659
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0247801   -0.1513880    0.1018278
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0270469   -0.1198379    0.0657441
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0214871   -0.1086067    0.0656326
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0436488   -0.1462547    0.0589572
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0248003   -0.1607276    0.2103281
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0850275   -0.2793417    0.1092867
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0812985   -0.1773264    0.0147294
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0143954   -0.1048784    0.1336693
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.1731727   -0.0795722    0.4259176
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0349750   -0.0994075    0.1693576
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1022448   -0.1997215   -0.0047681
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1172330   -0.2240773   -0.0103887
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0798053   -0.1830895    0.0234790
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0123986   -0.1257201    0.1009230
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0362756   -0.1747192    0.1021679
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0863693   -0.2439367    0.0711981
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0381890   -0.2004511    0.2768290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0140345   -0.1578483    0.1297793
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0902104   -0.2660471    0.0856262
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0901406   -0.2763485    0.0960673
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0579326   -0.1638089    0.0479436
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0202410   -0.1410948    0.1006128
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0840949   -0.1448569   -0.0233330
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0800812   -0.1499512   -0.0102113
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0968232   -0.1569378   -0.0367086
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0297537   -0.0987625    0.0392550
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0871480   -0.2192039    0.0449079
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0202656   -0.0866331    0.1271643
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0123864   -0.1236098    0.1483825
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0279242   -0.0840477    0.1398961
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0374243   -0.1302897    0.0554412
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0309334   -0.1393572    0.0774904
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0317861   -0.2075593    0.1439871
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0317626   -0.1340024    0.0704771
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0543068   -0.1797855    0.0711718
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0330434   -0.1758011    0.1097143
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0295694   -0.0710708    0.1302095
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0901493   -0.2248059    0.0445072
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0412624   -0.1219217    0.0393969
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0481794   -0.1367648    0.0404059
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0304969   -0.0649867    0.1259805
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.1045482   -0.0156400    0.2247363
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0267169   -0.1509827    0.0975489
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0436131   -0.1774622    0.0902360
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0323863   -0.2764959    0.2117233
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0631591   -0.2116673    0.0853490
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.1484871   -0.3201657    0.0231914
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0765622   -0.0899436    0.2430679
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1464265   -0.2406186   -0.0522344
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0922965   -0.2100715    0.0254786
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0531812   -0.1199554    0.0135930
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0349914   -0.1119821    0.0419992
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0223027   -0.0894509    0.0448455
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0402417   -0.1176996    0.0372162
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0335046   -0.1536193    0.0866102
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0452801   -0.1358933    0.0453332
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.1000328   -0.2826083    0.0825427
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0389392   -0.0896279    0.1675063
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0383779   -0.1151039    0.0383481
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0896054   -0.1794396    0.0002287
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0256523   -0.1039376    0.1552422
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0463393   -0.1498440    0.0571654


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.1630826   -0.3142348   -0.0119304
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0156025   -0.1150551    0.0838501
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0643235   -0.2259924    0.0973454
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1699705   -0.3545844    0.0146434
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0138637   -0.1166443    0.1443718
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0294412   -0.0852088    0.0263264
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0302602   -0.0308051    0.0913256
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0704429   -0.1139850   -0.0269007
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1193438   -0.2506466    0.0119591
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1724014   -0.2401480   -0.1046547
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0698890   -0.1480291    0.0082512
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0107110   -0.0361068    0.0146847
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0035381   -0.0067354   -0.0003408
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0403221   -0.0514149   -0.0292294
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1149348   -0.2220858   -0.0077837
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0725359   -0.1156148   -0.0294570
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0809785   -0.1009457   -0.0610113
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.1336482   -0.2713949    0.0040985
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0095030   -0.0578270    0.0768330
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0461645   -0.1702037    0.0778746
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0233254   -0.0968553    0.1435062
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0073010   -0.1417131    0.1563150
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0121612   -0.0329105    0.0572330
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0263033   -0.0832217    0.0306151
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0281636   -0.0575179    0.0011908
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0243995   -0.1324715    0.0836725
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0151863   -0.0824478    0.0520752
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0048447   -0.0733372    0.0830265
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0151445   -0.0430863    0.0127972
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0074823   -0.0240880    0.0091234
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0015176   -0.0042392    0.0012041
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0061622   -0.0165223    0.0041979
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1468759   -0.2336374   -0.0601144
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0410810   -0.0787740   -0.0033881
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0470949   -0.0690343   -0.0251555
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0027855   -0.0870928    0.0926639
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0100048   -0.0656963    0.0857060
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0287538   -0.0864543    0.1439619
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1073986   -0.2077998   -0.0069975
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0006204   -0.1138355    0.1150764
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0025785   -0.0431507    0.0379938
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0150246   -0.0553946    0.0854438
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0510548   -0.0750136   -0.0270961
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0054738   -0.0755605    0.0865082
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0890069   -0.1739025   -0.0041113
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0707389   -0.1214120   -0.0200657
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.1158918   -0.1767382   -0.0550454
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0089201   -0.0373345    0.0194942
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0055259   -0.0251587    0.0141069
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.1125332   -0.2203923   -0.0046742
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0017368   -0.0059902    0.0025166
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0095990   -0.0190630   -0.0001350
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1020729   -0.1683172   -0.0358286
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0570634   -0.0914701   -0.0226567
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0323883   -0.0618621   -0.0029145
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0057000   -0.1357724    0.1243724
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0304979   -0.0973147    0.0363189
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0039089   -0.0743570    0.0665392
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0011576   -0.0805671    0.0782519
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0286489   -0.1307681    0.0734704
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0508546   -0.0921169   -0.0095923
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0218809   -0.0944050    0.0506431
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0025609   -0.0495302    0.0546519
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0713450   -0.1631723    0.3058622
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0409983   -0.1145390    0.0325424
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0112919   -0.0612548    0.0386709
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0267141   -0.0764332    0.0230051
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0168596   -0.0431029    0.0093837
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0018678   -0.0206536    0.0169180
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.1069286   -0.2193869    0.0055298
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0058018   -0.0180028    0.0063992
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0002258   -0.0024721    0.0029238
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0033162   -0.0121714    0.0055391
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0157531   -0.0509098    0.0824160
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0781146   -0.1126971   -0.0435320
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0112311   -0.0258753    0.0483376
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0980723   -0.2048357    0.0086910
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0402067   -0.0923018    0.0118885
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0639011   -0.1385538    0.0107516
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0358177   -0.0469406    0.1185761
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1270383   -0.2215779   -0.0324988
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0293169   -0.0076370    0.0662708
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0473483   -0.1003361    0.0056395
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0326429   -0.0535819   -0.0117039
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.1151149   -0.2259933   -0.0042365
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0069920   -0.0841382    0.0701542
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0400804   -0.0903480    0.0101872
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0242999   -0.0793422    0.0307424
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0214427   -0.0082741    0.0511594
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0049761   -0.0071292    0.0170814
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0788453   -0.2950051    0.1373145
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0017691   -0.0082064    0.0046681
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0040808   -0.0211987    0.0293604
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0067371   -0.0199272    0.0064531
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0847815   -0.1626513   -0.0069116
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0237841   -0.1092924    0.0617242
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0948100   -0.2130858    0.0234658
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0050231   -0.0472122    0.0572583
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0344550   -0.0941564    0.0252464
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0934240   -0.1848425   -0.0020055
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0440272   -0.1294054    0.0413511
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0104601   -0.0176533    0.0385735
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0107380   -0.0608511    0.0393751
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0404427   -0.0763566   -0.0045288
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0033680   -0.0660339    0.0727700
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0302363   -0.1205832    0.0601106
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0209992   -0.0223365    0.0643349
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0600882   -0.1073492   -0.0128272
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0284659   -0.0620047    0.0050728
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0151348   -0.0289575   -0.0013121
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0101095   -0.0264776    0.0062586
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0051489   -0.0202346    0.0099367
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0219591   -0.0948753    0.0509570
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0131264   -0.0797378    0.0534851
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0438939   -0.1294242    0.0416364
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0490363   -0.0185417    0.1166143
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0826382   -0.1541613   -0.0111152
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0423393   -0.1253799    0.0407013
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0314332   -0.1387044    0.0758380
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0171426   -0.0162888    0.0505740
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0560777   -0.1158768    0.0037215
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0411057   -0.1264737    0.0442623
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0652146   -0.1112945   -0.0191348
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0621576   -0.1088496   -0.0154656
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0022864   -0.0127260    0.0172988
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0048822   -0.0133261    0.0230905
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0342492   -0.1143162    0.0458179
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0074090   -0.0475774    0.0327594
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0420384   -0.1534669    0.0693901
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0064688   -0.0484297    0.0354921
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0357725   -0.0939579    0.0224130
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0448880   -0.0316774    0.1214533
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0236158   -0.1152942    0.0680625
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0097080   -0.0419179    0.0225019
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0099742   -0.0453917    0.0653402
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1060563   -0.1818813   -0.0302312
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0435838   -0.0946932    0.0075255
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0270702   -0.0791990    0.0250587
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0036969   -0.0162288    0.0088349
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0026036   -0.0262504    0.0210432
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0397150   -0.1058541    0.0264241
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0051487   -0.0422661    0.0319686
