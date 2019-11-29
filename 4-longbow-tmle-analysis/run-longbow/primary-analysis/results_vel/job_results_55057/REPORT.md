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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            160     246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        63     246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           126     217  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             52     217  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        39     217  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            54     237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm            112     237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        71     237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            40     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            129     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        63     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm            58     281  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm            163     281  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        60     281  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           200     264  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             32     264  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        32     264  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           145     237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             45     237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     237  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           470    1169  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            415    1169  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       284    1169  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           103     565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            326     565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       136     565  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           138     639  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            348     639  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       153     639  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           136     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            422     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       167     725  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1256    1989  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            308    1989  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       425    1989  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm          1219    1463  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm             55    1463  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       189    1463  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm         12122   12605  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm            114   12605  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       369   12605  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5675    7161  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            417    7161  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1069    7161  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm           105     791  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            519     791  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       167     791  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm           522    1755  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm            757    1755  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm       476    1755  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          3029   20208  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          12080   20208  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      5099   20208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            151     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        59     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             50     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            54     229  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm            108     229  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        67     229  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            41     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            130     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm            57     266  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm            154     266  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        55     266  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        28     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           142     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             46     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51     239  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           423    1032  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            363    1032  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       246    1032  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            93     522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            301     522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       128     522  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           129     600  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            327     600  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       144     600  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           132     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            406     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       164     702  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1025    1638  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            255    1638  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       358    1638  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm          1087    1287  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm             46    1287  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       154    1287  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm         10642   11069  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm            104   11069  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       323   11069  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4437    5601  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            335    5601  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       829    5601  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm           101     800  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            535     800  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       164     800  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm           527    1784  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm            776    1784  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm       481    1784  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1991   12686  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           7423   12686  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      3272   12686  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            145     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        56     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           112     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             49     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            55     229  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm            110     229  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        64     229  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            39     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            129     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm            51     244  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm            143     244  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        50     244  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           171     227  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     227  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        25     227  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           132     225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             44     225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49     225  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           434    1050  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            363    1050  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       253    1050  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            62     309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            168     309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        79     309  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            91     498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            287     498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       120     498  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           120     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            317     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       139     576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           131     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            398     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       164     693  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           917    1468  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            224    1468  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       327    1468  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm           687     818  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm             26     818  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       105     818  y_rate_wtkg      
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            30     182  y_rate_wtkg      
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            110     182  y_rate_wtkg      
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        42     182  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm         10045   10436  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm             97   10436  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       294   10436  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4002    5048  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            301    5048  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       745    5048  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm           108     815  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            536     815  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       171     815  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm           484    1648  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm            722    1648  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm       442    1648  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm           349     558  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm             91     558  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm       118     558  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            147     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        55     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           110     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             47     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            53     226  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm            109     226  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        64     226  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            39     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            128     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm            50     234  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm            135     234  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        49     234  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           172     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           131     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             45     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     224  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           448    1050  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            353    1050  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       249    1050  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            59     298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            159     298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        80     298  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            91     481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            276     481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       114     481  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           119     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            313     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       137     569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           128     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            394     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       161     683  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           673    1067  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            163    1067  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       231    1067  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm           679     808  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm             24     808  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       105     808  y_rate_wtkg      
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            28     163  y_rate_wtkg      
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             98     163  y_rate_wtkg      
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        37     163  y_rate_wtkg      
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm           997    1106  y_rate_wtkg      
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm             30    1106  y_rate_wtkg      
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm        79    1106  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm         10269   10670  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm             98   10670  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       303   10670  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          3580    4556  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            291    4556  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       685    4556  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           121     909  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            595     909  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       193     909  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm           432    1460  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm            641    1460  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm       387    1460  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           240     382  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm             64     382  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm        78     382  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            140     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm           104     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             45     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        35     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109     225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            39     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm            50     223  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm            126     223  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        47     223  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           166     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             29     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        29     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           133     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             42     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51     226  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           467    1070  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm            352    1070  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       251    1070  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            57     300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            158     300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        85     300  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            85     461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            266     461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       110     461  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           111     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            298     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       128     537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           126     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            382     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       158     666  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           479     778  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            126     778  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       173     778  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1054    1263  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm             48    1263  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       161    1263  y_rate_wtkg      
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            10      85  y_rate_wtkg      
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             55      85  y_rate_wtkg      
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        20      85  y_rate_wtkg      
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm           886     966  y_rate_wtkg      
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm             25     966  y_rate_wtkg      
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm        55     966  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm           960     993  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              7     993  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm        26     993  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1308    1655  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            109    1655  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       238    1655  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           116     854  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            552     854  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       186     854  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm            71     126  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm             29     126  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        26     126  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            139     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        52     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            99     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             42     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        34     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            37     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm            47     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm            125     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        42     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           166     221  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28     221  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     221  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           130     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             41     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49     220  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           468    1076  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm            359    1076  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       249    1076  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            57     290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            151     290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        82     290  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            79     449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            260     449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       110     449  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           109     532  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            293     532  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       130     532  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           121     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            340     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       144     605  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           397     656  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            115     656  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       144     656  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1074    1284  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm             44    1284  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       166    1284  y_rate_wtkg      
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm           948    1040  y_rate_wtkg      
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm             31    1040  y_rate_wtkg      
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm        61    1040  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        >=155 cm           268     277  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        <151 cm              1     277  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         8     277  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           834    1067  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             75    1067  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       158    1067  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           106     770  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            497     770  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       167     770  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm            68     119  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm             26     119  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        25     119  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            136     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            94     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             42     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm            108     225  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        64     225  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            37     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm            44     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm            119     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        39     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           174     229  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28     229  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     229  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           121     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             39     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     208  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            73     422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            246     422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       103     422  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           112     541  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            298     541  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       131     541  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           105     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            308     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       134     547  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             8      11  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              2      11  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1      11  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1065    1273  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm             39    1273  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       169    1273  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        >=155 cm           205     212  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     212  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         7     212  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           441     578  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             47     578  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        90     578  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            98     769  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            507     769  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       164     769  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           275     452  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm             79     452  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        98     452  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            134     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            91     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     225  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109     225  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     225  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            43     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm            108     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        38     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           177     231  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27     231  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     231  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           121     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             38     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     206  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            74     411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            240     411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm        97     411  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm            98     484  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            270     484  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       116     484  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm            97     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            271     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       125     493  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm           960    1141  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm             32    1141  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       149    1141  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm           198     207  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     207  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         9     207  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           188     267  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             27     267  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        52     267  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           106     843  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            556     843  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       181     843  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           231     385  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             72     385  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        82     385  y_rate_wtkg      


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
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/5f7b1b4f-b6dd-4c57-86d6-799af0bae154/6ceb4006-1a44-4f60-b73e-873cfdeb32fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5f7b1b4f-b6dd-4c57-86d6-799af0bae154/6ceb4006-1a44-4f60-b73e-873cfdeb32fc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5f7b1b4f-b6dd-4c57-86d6-799af0bae154/6ceb4006-1a44-4f60-b73e-873cfdeb32fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.8797082   0.7879243   0.9714922
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.8632102   0.8340957   0.8923248
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.9147524   0.8742181   0.9552866
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.0841891   1.0361695   1.1322087
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.0083925   0.9451980   1.0715870
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                1.0490817   0.9692731   1.1288903
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.8073674   0.7598769   0.8548579
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.7389559   0.7057925   0.7721194
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.7610196   0.7231760   0.7988632
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.0281276   0.9655775   1.0906777
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.9342403   0.8968195   0.9716611
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.9679436   0.9212356   1.0146515
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.9862275   0.9234435   1.0490115
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.9649672   0.9318018   0.9981325
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.9820622   0.9285296   1.0355948
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.9471702   0.9149943   0.9793462
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8805867   0.7958819   0.9652915
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.9291097   0.8700461   0.9881733
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.8875035   0.8481371   0.9268699
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.8344603   0.7785153   0.8904053
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.9095018   0.8292391   0.9897645
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.8211975   0.7958706   0.8465244
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.7617622   0.7301596   0.7933648
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.7908186   0.7721919   0.8094452
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.8743221   0.8233006   0.9253437
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7843937   0.7656351   0.8031523
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.8558163   0.8192768   0.8923559
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.9580416   0.9225600   0.9935231
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.8737456   0.8546353   0.8928559
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.9054220   0.8770841   0.9337599
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.9125869   0.8794940   0.9456797
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.8707336   0.8516844   0.8897828
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.8944181   0.8639960   0.9248403
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9331267   0.9201998   0.9460535
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.9112854   0.8858712   0.9366997
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.8977098   0.8755365   0.9198830
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.9315378   0.9190725   0.9440031
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.8342935   0.7705393   0.8980477
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.8966379   0.8648890   0.9283868
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.8376906   0.8268147   0.8485666
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.8006377   0.7932793   0.8079961
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.8241568   0.8055296   0.8427840
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.9499912   0.9439352   0.9560473
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.9087337   0.8865485   0.9309188
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.9242859   0.9101233   0.9384485
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.8505362   0.8039841   0.8970883
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7835632   0.7627867   0.8043397
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.8122164   0.7759867   0.8484462
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.8470042   0.8301350   0.8638734
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                0.7881772   0.7752861   0.8010683
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.8010083   0.7836856   0.8183310
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.8986329   0.8906610   0.9066048
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.8429763   0.8393721   0.8465804
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.8680063   0.8626121   0.8734005
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.4869287   0.4410242   0.5328332
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.4743335   0.4531505   0.4955165
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.4886029   0.4547145   0.5224912
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.5927156   0.5485554   0.6368758
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.5193296   0.4736311   0.5650280
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.6290012   0.5480571   0.7099454
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4508986   0.4185246   0.4832727
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.4462655   0.4180357   0.4744953
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.4387067   0.4081914   0.4692221
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.5621111   0.5121099   0.6121123
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.4964815   0.4697234   0.5232396
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.5399674   0.4995105   0.5804243
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.5228279   0.4745101   0.5711458
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4874038   0.4636701   0.5111375
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.5249185   0.4855278   0.5643092
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.4545939   0.4247085   0.4844792
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.5038131   0.4319366   0.5756895
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4512305   0.3747807   0.5276804
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4676123   0.4380211   0.4972035
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4708539   0.4104111   0.5312967
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4623578   0.4017965   0.5229191
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4613471   0.4378211   0.4848731
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4504187   0.4243217   0.4765156
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4515829   0.4326061   0.4705596
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4338955   0.3865156   0.4812754
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.4618283   0.4405731   0.4830836
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.4700670   0.4351660   0.5049679
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.5010607   0.4766205   0.5255010
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.4806662   0.4619549   0.4993776
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.4978020   0.4705385   0.5250654
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.5158557   0.4868046   0.5449068
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.4889354   0.4750831   0.5027878
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.5058369   0.4823574   0.5293163
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4237212   0.4125217   0.4349206
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4249984   0.4030859   0.4469110
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4047624   0.3864573   0.4230676
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.4457045   0.4350588   0.4563503
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.4158538   0.3710679   0.4606396
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4482281   0.4205967   0.4758595
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.6665704   0.6588353   0.6743055
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.6581744   0.6443702   0.6719786
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.6517968   0.6226801   0.6809136
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.4826725   0.4773796   0.4879655
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4577379   0.4381237   0.4773522
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.4732061   0.4611590   0.4852532
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.4962903   0.4630777   0.5295030
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4549447   0.4413899   0.4684996
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4635711   0.4414180   0.4857242
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5124834   0.4977655   0.5272013
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                0.4630176   0.4520667   0.4739685
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.4888501   0.4751178   0.5025824
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4598704   0.4514746   0.4682661
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4351398   0.4314841   0.4387954
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4443551   0.4390736   0.4496366
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2372566   0.1971711   0.2773420
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.2414300   0.2246853   0.2581748
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.2584980   0.2224180   0.2945779
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.4035652   0.3696798   0.4374505
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.3352322   0.2877780   0.3826864
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.3889996   0.3173032   0.4606960
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2271318   0.2006275   0.2536362
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2279537   0.2051219   0.2507856
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.2411247   0.2072097   0.2750397
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.2670548   0.2300897   0.3040200
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.2645785   0.2464983   0.2826586
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.2836410   0.2527117   0.3145703
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.2690230   0.2441371   0.2939090
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.2481893   0.2261866   0.2701920
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.2780730   0.2420006   0.3141454
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.2532444   0.2281993   0.2782895
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.2565143   0.1916036   0.3214249
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.2942460   0.2390322   0.3494598
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2467490   0.2190201   0.2744779
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1895559   0.1412966   0.2378151
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2249960   0.1543378   0.2956542
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2222862   0.1997296   0.2448428
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1800543   0.1613365   0.1987721
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2047427   0.1813784   0.2281069
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1794170   0.1451967   0.2136374
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.2083791   0.1852243   0.2315338
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1670803   0.1365138   0.1976469
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2765825   0.2399843   0.3131807
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2212783   0.2030553   0.2395013
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2485015   0.2243721   0.2726310
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2653022   0.2418905   0.2887138
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2349117   0.2175324   0.2522911
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2646450   0.2418935   0.2873965
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2991845   0.2738217   0.3245473
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2612574   0.2482810   0.2742339
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2633987   0.2387195   0.2880779
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2670995   0.2552016   0.2789973
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2254520   0.2044247   0.2464793
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2396588   0.2222592   0.2570585
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.2038317   0.1892475   0.2184160
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2241383   0.1870157   0.2612608
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1866140   0.1515738   0.2216543
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3014313   0.2582970   0.3445656
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.2213852   0.1975761   0.2451942
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2768052   0.2320016   0.3216088
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.4737649   0.4647725   0.4827573
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.4421178   0.4236303   0.4606053
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.4722550   0.4476504   0.4968597
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2602668   0.2549023   0.2656313
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2532677   0.2349558   0.2715795
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2506239   0.2380567   0.2631911
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2497616   0.2212713   0.2782518
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2070960   0.1950127   0.2191792
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2184641   0.1990778   0.2378504
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3026103   0.2886306   0.3165900
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2749158   0.2637292   0.2861023
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2708960   0.2572609   0.2845312
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.2947755   0.2787174   0.3108336
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2472317   0.2144783   0.2799850
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.2857271   0.2605154   0.3109388
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1741011   0.1294473   0.2187549
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.1737463   0.1574700   0.1900226
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1710491   0.1405037   0.2015945
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.2978581   0.2509971   0.3447191
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2704501   0.2220026   0.3188976
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.2611057   0.1903269   0.3318844
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1881559   0.1551377   0.2211741
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1763982   0.1549882   0.1978082
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1770572   0.1532578   0.2008567
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1911221   0.1640174   0.2182268
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1651992   0.1436882   0.1867101
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.2230141   0.2003766   0.2456517
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1885132   0.1603148   0.2167116
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1870422   0.1661905   0.2078939
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1794527   0.1402662   0.2186392
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.2221231   0.1963986   0.2478477
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.1444459   0.0819443   0.2069476
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.2065963   0.1455871   0.2676056
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1725778   0.1470369   0.1981187
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1731345   0.1213136   0.2249555
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1550352   0.1111008   0.1989696
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2046491   0.1908675   0.2184306
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1838229   0.1688930   0.1987528
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1955968   0.1754473   0.2157464
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1288175   0.0861199   0.1715151
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1448495   0.1171385   0.1725604
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1426939   0.1053840   0.1800037
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1643647   0.1285402   0.2001892
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1554909   0.1392498   0.1717320
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1759991   0.1475442   0.2044539
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1827258   0.1598077   0.2056440
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1752962   0.1634824   0.1871101
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1744019   0.1545411   0.1942626
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2181370   0.1921500   0.2441240
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1926899   0.1795068   0.2058729
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1927348   0.1710094   0.2144602
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2109567   0.1985384   0.2233750
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2014497   0.1716662   0.2312333
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1870786   0.1652641   0.2088931
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1573647   0.1440815   0.1706480
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2086914   0.1663778   0.2510051
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1453998   0.1134566   0.1773430
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2310171   0.1618088   0.3002254
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.1811494   0.1556679   0.2066310
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2333348   0.1781473   0.2885224
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2449941   0.2312932   0.2586950
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.1846014   0.1001444   0.2690584
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2312452   0.1749097   0.2875807
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.3655652   0.3511602   0.3799702
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3632947   0.3475337   0.3790558
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.3547105   0.3217779   0.3876430
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1811290   0.1757409   0.1865171
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1628009   0.1456418   0.1799600
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1838757   0.1716191   0.1961323
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1592417   0.1342432   0.1842402
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1519620   0.1414221   0.1625020
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1580939   0.1392837   0.1769041
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2365415   0.2221624   0.2509207
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2191778   0.2076069   0.2307486
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2090375   0.1929900   0.2250850
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.2070418   0.1858793   0.2282043
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.1814173   0.1412390   0.2215956
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1989773   0.1702340   0.2277206
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1997355   0.1489603   0.2505107
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.1235177   0.1039171   0.1431182
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1537257   0.1223433   0.1851081
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.2276785   0.1929481   0.2624090
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2197747   0.1729291   0.2666203
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1626507   0.1111422   0.2141591
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1899302   0.1553114   0.2245490
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1557553   0.1331392   0.1783713
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1941233   0.1631112   0.2251354
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1447556   0.1025339   0.1869773
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1537915   0.1286802   0.1789029
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1522832   0.1273707   0.1771957
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1374127   0.0986410   0.1761844
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1477582   0.1253110   0.1702055
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1407121   0.1053740   0.1760502
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1923950   0.1619118   0.2228782
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.2009727   0.1208077   0.2811377
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.2005267   0.1459322   0.2551211
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1779948   0.1477582   0.2082314
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1649114   0.1007008   0.2291220
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1086584   0.0549875   0.1623293
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1922200   0.1788222   0.2056177
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1920189   0.1701044   0.2139334
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1690470   0.1543185   0.1837755
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1853241   0.1486736   0.2219745
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1740671   0.1529481   0.1951861
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1704471   0.1361155   0.2047787
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1203010   0.0880163   0.1525857
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1431821   0.1278704   0.1584937
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1053457   0.0815369   0.1291546
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1910182   0.1635810   0.2184554
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1772723   0.1619390   0.1926057
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1756946   0.1502897   0.2010996
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1800371   0.1535556   0.2065186
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1522862   0.1384625   0.1661098
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1718431   0.1506716   0.1930146
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1831529   0.1689476   0.1973583
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1696178   0.1379494   0.2012861
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1513605   0.1272688   0.1754523
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1840953   0.1731047   0.1950859
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1566286   0.1073023   0.2059548
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1944146   0.1628622   0.2259671
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1938496   0.0656165   0.3220826
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.1947022   0.1501600   0.2392445
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2158472   0.1536725   0.2780219
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1932049   0.1813081   0.2051016
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.1878129   0.1121346   0.2634912
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1624631   0.1167839   0.2081423
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2216072   0.1449943   0.2982200
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2825983   0.1340875   0.4311090
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2074156   0.0699935   0.3448376
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1499704   0.1404721   0.1594687
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1345941   0.0933128   0.1758755
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1608696   0.1415914   0.1801479
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1755460   0.1542289   0.1968631
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1469840   0.1346662   0.1593019
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1459122   0.1263011   0.1655232
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1761739   0.1272681   0.2250797
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.1117661   0.0610547   0.1624774
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1146522   0.0337428   0.1955615
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1794745   0.1268943   0.2320547
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.1328397   0.1136469   0.1520324
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1551912   0.1228818   0.1875006
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.2165927   0.1740400   0.2591453
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.1747199   0.1335569   0.2158829
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.2018649   0.1567536   0.2469762
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1855729   0.1481026   0.2230432
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1494304   0.1298969   0.1689640
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1670776   0.1388214   0.1953338
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.2282402   0.1775314   0.2789491
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1679309   0.1482541   0.1876078
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1548557   0.1244120   0.1852995
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1342419   0.0912437   0.1772401
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1452800   0.1206850   0.1698751
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1565289   0.1142077   0.1988500
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.2241809   0.1911174   0.2572444
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.2367040   0.1519780   0.3214300
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.1444608   0.0865131   0.2024085
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1360670   0.1056643   0.1664698
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1588302   0.1067375   0.2109229
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1806769   0.1317812   0.2295726
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1866167   0.1586527   0.2145808
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1743316   0.1531299   0.1955334
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1858941   0.1608333   0.2109548
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1627938   0.1246237   0.2009639
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1554210   0.1336539   0.1771881
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1872985   0.1584767   0.2161204
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1673195   0.1264391   0.2082000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1465737   0.1287582   0.1643891
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1584960   0.1263081   0.1906839
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1745629   0.1495364   0.1995893
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1510702   0.1349444   0.1671960
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1542547   0.1291805   0.1793289
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1640585   0.1409288   0.1871883
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1611510   0.1475866   0.1747154
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1586708   0.1344862   0.1828554
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1765404   0.1577791   0.1953016
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1576430   0.1245881   0.1906980
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1700460   0.1366737   0.2034183
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1593549   0.1481488   0.1705611
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1561153   0.1113042   0.2009263
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1649656   0.1351133   0.1948179
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1772846   0.1656765   0.1888926
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.1474077   0.0867131   0.2081023
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1457844   0.0851934   0.2063754
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1316004   0.1187293   0.1444715
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1193299   0.0726223   0.1660374
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1319717   0.1050209   0.1589225
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1347724   0.1035292   0.1660156
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1409495   0.1273829   0.1545161
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1365171   0.1104136   0.1626205
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1611366   0.1178471   0.2044261
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.1988257   0.1382922   0.2593592
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1931675   0.1072412   0.2790938
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1316389   0.0723433   0.1909344
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.1431223   0.1243572   0.1618874
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1445040   0.1002614   0.1887467
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1513982   0.1229409   0.1798556
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2022855   0.1341749   0.2703960
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1227119   0.0791737   0.1662501
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1873856   0.1500620   0.2247092
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1772606   0.1548903   0.1996309
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1509349   0.1273215   0.1745484
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1455371   0.0823824   0.2086918
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1419079   0.1203416   0.1634742
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1601448   0.1282731   0.1920165
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1812491   0.1451852   0.2173129
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1515825   0.1257323   0.1774327
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1447889   0.1015695   0.1880083
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1771068   0.1456257   0.2085880
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.1828737   0.1108533   0.2548941
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.1750559   0.1247229   0.2253890
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1525022   0.1194715   0.1855328
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1169016   0.0597355   0.1740677
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1793057   0.1256358   0.2329756
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1527040   0.1125996   0.1928084
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1733483   0.1545419   0.1921547
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1894799   0.1487199   0.2302400
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1213864   0.0956434   0.1471294
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1326542   0.1176272   0.1476811
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1447531   0.1203101   0.1691962
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1588555   0.1365992   0.1811117
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1324098   0.1179773   0.1468423
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1547450   0.1323384   0.1771515
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1563660   0.1443545   0.1683775
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1659411   0.1151146   0.2167676
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1551362   0.1255307   0.1847416
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1209683   0.1002259   0.1417108
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1397107   0.0891262   0.1902953
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1172464   0.0688296   0.1656632
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1757495   0.1450518   0.2064471
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1622490   0.1492244   0.1752736
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1578779   0.1324860   0.1832697
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1762705   0.1507112   0.2018299
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.1826638   0.1339219   0.2314056
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1902572   0.1444686   0.2360458
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1683172   0.1132827   0.2233518
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.1569075   0.1380636   0.1757515
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1362370   0.1064784   0.1659957
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1357873   0.1029389   0.1686356
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.1342186   0.0859086   0.1825286
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1613715   0.1145472   0.2081959
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1817921   0.1522328   0.2113514
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1411847   0.1234485   0.1589210
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1615340   0.1353581   0.1877100
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1475806   0.0861137   0.2090475
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1671320   0.1453163   0.1889477
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1893389   0.1389912   0.2396866
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1530999   0.1204320   0.1857679
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1954636   0.1672667   0.2236606
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1715611   0.1290805   0.2140417
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1951789   0.1665976   0.2237601
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.1538740   0.0897781   0.2179700
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.1689658   0.1060831   0.2318485
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1636305   0.1262969   0.2009641
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0941287   0.0230207   0.1652366
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1311535   0.0820704   0.1802366
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1572085   0.1206523   0.1937646
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1408027   0.1222328   0.1593727
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1325996   0.0949897   0.1702096
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1436292   0.1161087   0.1711496
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1408225   0.1260151   0.1556298
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1383716   0.1137283   0.1630149
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1950458   0.1644247   0.2256669
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1638722   0.1486362   0.1791082
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1777404   0.1488465   0.2066343
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1646888   0.1527093   0.1766684
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1654107   0.1155682   0.2152532
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1774170   0.1499486   0.2048853
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0977528   0.0626600   0.1328455
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0955911   0.0001319   0.1910503
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1474838   0.0734991   0.2214685
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1914921   0.1619363   0.2210478
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1821940   0.1708522   0.1935357
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1908529   0.1660804   0.2156255
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1818027   0.1442719   0.2193334
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.1852582   0.1348998   0.2356166
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1796307   0.1263277   0.2329338


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0654150   1.0310488   1.0997812
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7611021   0.7390455   0.7831587
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9706290   0.9455271   0.9957310
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9399583   0.9128554   0.9670613
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7939916   0.7752982   0.8126850
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9018330   0.8870586   0.9166074
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9225695   0.9123674   0.9327716
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9237858   0.9123458   0.9352259
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8369392   0.8263852   0.8474932
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9439252   0.9385241   0.9493263
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7979318   0.7810686   0.8147950
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8087705   0.7998524   0.8176886
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8576580   0.8546630   0.8606531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4444966   0.4269381   0.4620550
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4984134   0.4793907   0.5174361
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4617801   0.4360641   0.4874961
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4532568   0.4405110   0.4660027
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4894576   0.4764038   0.5025113
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4196681   0.4109298   0.4284065
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4449828   0.4352937   0.4546718
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6660230   0.6581246   0.6739215
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4795969   0.4748910   0.4843028
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4614037   0.4504936   0.4723138
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4843064   0.4767948   0.4918179
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4414185   0.4384501   0.4443868
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2306925   0.2158356   0.2455494
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2612740   0.2457204   0.2768277
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2586445   0.2373164   0.2799725
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2041466   0.1900518   0.2182414
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2549836   0.2460532   0.2639139
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2021918   0.1891288   0.2152548
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2461017   0.2267560   0.2654474
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4733822   0.4645663   0.4821981
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2585071   0.2537594   0.2632548
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2136854   0.2039876   0.2233833
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2819658   0.2745981   0.2893334
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2839155   0.2713587   0.2964722
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1783231   0.1642419   0.1924043
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1866354   0.1713488   0.2019219
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2149952   0.1925566   0.2374338
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1958979   0.1895734   0.2022224
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2052776   0.1951180   0.2154371
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1566911   0.1447215   0.1686608
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2014702   0.1792367   0.2237036
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2423264   0.2292546   0.2553982
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3651808   0.3506490   0.3797125
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1802018   0.1754568   0.1849468
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1540702   0.1454838   0.1626566
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2217834   0.2139450   0.2296219
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2018320   0.1859333   0.2177307
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1744574   0.1585285   0.1903862
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1414020   0.1246466   0.1581574
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1922381   0.1667974   0.2176788
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1864503   0.1781112   0.1947894
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1732366   0.1618629   0.1846102
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1844674   0.1743510   0.1945839
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1937372   0.1638096   0.2236648
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1924285   0.1815262   0.2033308
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2216655   0.1472069   0.2961241
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1513473   0.1429271   0.1597675
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1505920   0.1411987   0.1599853
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1517832   0.1183392   0.1852272
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1628133   0.1478080   0.1778186
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2190068   0.1913206   0.2466931
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1818676   0.1677889   0.1959462
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1565394   0.1447539   0.1683249
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1709581   0.1566361   0.1852802
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1597553   0.1496149   0.1698958
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1746700   0.1640854   0.1852545
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1314637   0.1202509   0.1426764
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1392609   0.1279901   0.1505317
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1766109   0.1448823   0.2083395
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1719622   0.1570466   0.1868778
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1806346   0.1548130   0.2064562
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1325181   0.1210527   0.1439835
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1557380   0.1448618   0.1666141
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1223425   0.1044399   0.1402452
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1642719   0.1534657   0.1750782
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1806494   0.1604901   0.2008088
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1564363   0.1432171   0.1696555
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1870402   0.1629923   0.2110880
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1421605   0.1307059   0.1536151
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1655857   0.1548036   0.1763679
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1029472   0.0733006   0.1325937
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1850174   0.1751451   0.1948898
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1791857   0.1524049   0.2059664


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0164980   -0.1128155    0.0798194
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0350441   -0.0652114    0.1352996
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0757965   -0.1552476    0.0036545
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0351073   -0.1286861    0.0584714
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0684115   -0.1264607   -0.0103622
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0463478   -0.1071505    0.0144550
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0938874   -0.1667637   -0.0210110
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0601841   -0.1383269    0.0179587
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0212603   -0.0929852    0.0504645
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0041653   -0.0861135    0.0777830
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0665835   -0.1573044    0.0241374
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0180606   -0.0854626    0.0493415
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0530432   -0.1220393    0.0159528
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0219983   -0.0675836    0.1115801
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0594353   -0.0917622   -0.0271083
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0303789   -0.0547171   -0.0060407
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0899284   -0.1443639   -0.0354930
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0185058   -0.0812096    0.0441981
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0842960   -0.1245663   -0.0440257
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0526196   -0.0980449   -0.0071943
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0418532   -0.0800001   -0.0037064
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0181687   -0.0629741    0.0266366
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0218413   -0.0503643    0.0066818
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0354169   -0.0610896   -0.0097442
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0972443   -0.1621836   -0.0323049
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0348999   -0.0688880   -0.0009118
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0370530   -0.0504837   -0.0236223
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0135339   -0.0332345    0.0061667
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0412575   -0.0642483   -0.0182668
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0257053   -0.0411064   -0.0103042
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0669730   -0.1176188   -0.0163272
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0383198   -0.0973303    0.0206907
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0588270   -0.0800433   -0.0376106
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0459959   -0.0701286   -0.0218631
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0556567   -0.0641676   -0.0471457
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0306266   -0.0401917   -0.0210616
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0125952   -0.0630804    0.0378900
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0016742   -0.0557241    0.0590724
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0733860   -0.1370375   -0.0097345
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0362856   -0.0559811    0.1285524
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0046332   -0.0476800    0.0384137
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0121919   -0.0567374    0.0323537
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0656296   -0.1223606   -0.0088986
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0221437   -0.0862457    0.0419582
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0354241   -0.0893773    0.0185291
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0020905   -0.0595060    0.0636870
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0492192   -0.0286966    0.1271350
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0033633   -0.0852715    0.0785449
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0032416   -0.0644934    0.0709767
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0052544   -0.0729075    0.0623986
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0109285   -0.0539875    0.0321306
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0097643   -0.0272694    0.0077409
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0279328   -0.0240405    0.0799061
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0361714   -0.0228089    0.0951517
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0203945   -0.0512752    0.0104861
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0032588   -0.0400015    0.0334839
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0269202   -0.0591809    0.0053404
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0100188   -0.0474500    0.0274124
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0012773   -0.0233714    0.0259259
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0189587   -0.0404402    0.0025228
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0298508   -0.0758533    0.0161518
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0025236   -0.0271157    0.0321628
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0083960   -0.0227609    0.0059689
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0147736   -0.0418327    0.0122856
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0249346   -0.0452536   -0.0046156
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0094665   -0.0226234    0.0036905
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0413456   -0.0771441   -0.0055471
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0327193   -0.0725287    0.0070902
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0494658   -0.0677680   -0.0311637
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0236333   -0.0437559   -0.0035107
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0247306   -0.0337186   -0.0157426
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0155153   -0.0253654   -0.0056652
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0041735   -0.0392932    0.0476401
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0212414   -0.0326613    0.0751441
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0683330   -0.1265890   -0.0100770
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0145656   -0.0943176    0.0651864
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0008219   -0.0345780    0.0362217
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0139929   -0.0292714    0.0572572
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0024764   -0.0436812    0.0387284
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0165861   -0.0315780    0.0647503
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0208337   -0.0540742    0.0124067
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0090499   -0.0349503    0.0530502
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0032698   -0.0664956    0.0730352
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0410015   -0.0194971    0.1015001
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0571931   -0.1135313   -0.0008549
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0217530   -0.0985117    0.0550058
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0422319   -0.0748998   -0.0095640
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0175435   -0.0459052    0.0108182
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0289620   -0.0126064    0.0705305
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0123367   -0.0582953    0.0336220
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0553043   -0.0960766   -0.0145320
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0280810   -0.0718867    0.0157247
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0303904   -0.0594811   -0.0012997
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0006572   -0.0332187    0.0319043
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0379271   -0.0664185   -0.0094356
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0357858   -0.0711424   -0.0004291
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0416475   -0.0658432   -0.0174517
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0274406   -0.0485355   -0.0063457
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0203065   -0.0195509    0.0601639
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0172177   -0.0552425    0.0208071
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0800461   -0.1293476   -0.0307446
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0246261   -0.0862705    0.0370183
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0316471   -0.0506282   -0.0126661
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0015099   -0.0273068    0.0242870
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0069992   -0.0260798    0.0120814
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0096429   -0.0233087    0.0040228
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0426656   -0.0736542   -0.0116770
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0312975   -0.0657931    0.0031982
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0276945   -0.0456305   -0.0097585
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0317142   -0.0512527   -0.0121758
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0475439   -0.0840568   -0.0110309
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0090484   -0.0389939    0.0208971
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0003548   -0.0478422    0.0471326
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0030520   -0.0568380    0.0507341
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0274080   -0.0943159    0.0394999
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0367525   -0.1219678    0.0484628
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0117577   -0.0513488    0.0278334
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0110987   -0.0520772    0.0298799
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0259229   -0.0605298    0.0086839
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0318920   -0.0034618    0.0672459
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0014710   -0.0366446    0.0337026
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0090605   -0.0576226    0.0395016
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0776772   -0.1454725   -0.0098819
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0155268   -0.0817208    0.0506672
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0005567   -0.0573282    0.0584416
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0175426   -0.0683795    0.0332943
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0208262   -0.0443655    0.0027132
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0090522   -0.0378118    0.0197074
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0160319   -0.0351035    0.0671673
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0138763   -0.0430082    0.0707608
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0088738   -0.0481938    0.0304462
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0116344   -0.0342307    0.0574994
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0074296   -0.0332167    0.0183574
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0083240   -0.0386684    0.0220204
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0254471   -0.0543778    0.0034836
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0254022   -0.0592349    0.0084305
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0095070   -0.0417968    0.0227829
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0238781   -0.0490613    0.0013052
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0513267    0.0069776    0.0956758
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0119650   -0.0466157    0.0226858
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0498677   -0.1236882    0.0239529
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm           0.0023177   -0.0862336    0.0908691
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0603927   -0.1490409    0.0282554
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0137489   -0.0706326    0.0431348
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0022704   -0.0186807    0.0141399
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0108547   -0.0392234    0.0175140
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0183281   -0.0363160   -0.0003401
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0027467   -0.0106378    0.0161312
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0072796   -0.0343767    0.0198174
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0011478   -0.0325258    0.0302303
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0173638   -0.0358271    0.0010995
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0275040   -0.0490431   -0.0059650
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0256245   -0.0710797    0.0198308
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0080645   -0.0437814    0.0276524
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0762178   -0.1306664   -0.0217693
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0460097   -0.1057767    0.0137572
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0079039   -0.0665570    0.0507492
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0650279   -0.1273949   -0.0026609
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0341749   -0.0756504    0.0073005
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0041931   -0.0422762    0.0506625
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0090359   -0.0403677    0.0584396
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0075276   -0.0411730    0.0562282
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0103455   -0.0343483    0.0550393
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0032994   -0.0493347    0.0559335
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0085777   -0.0773621    0.0945175
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0081317   -0.0545119    0.0707753
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0130834   -0.0839934    0.0578267
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0693363   -0.1310299   -0.0076428
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0002011   -0.0300947    0.0296926
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0231730   -0.0436230   -0.0027229
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.0112569   -0.0537257    0.0312119
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0148770   -0.0656210    0.0358671
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0228811   -0.0128366    0.0585988
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0149552   -0.0550807    0.0251702
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0137458   -0.0452520    0.0177603
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0153235   -0.0526014    0.0219543
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0277509   -0.0576805    0.0021786
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0081940   -0.0421493    0.0257612
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0135352   -0.0483080    0.0212377
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0317924   -0.0598705   -0.0037143
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0274667   -0.0780044    0.0230710
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0103193   -0.0230687    0.0437073
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm           0.0008527   -0.1366057    0.1383111
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm           0.0219976   -0.1244338    0.1684290
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0053920   -0.0858639    0.0750800
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0307417   -0.0777325    0.0162491
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0609911   -0.1052029    0.2271851
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0141916   -0.1690041    0.1406210
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0153762   -0.0577636    0.0270111
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0108992   -0.0106240    0.0324225
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0285620   -0.0532645   -0.0038594
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0296338   -0.0586429   -0.0006247
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0644078   -0.1351760    0.0063603
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0615217   -0.1568175    0.0337740
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0466348   -0.1026728    0.0094032
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0242833   -0.0861276    0.0375611
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0418728   -0.1013634    0.0176178
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0147278   -0.0769059    0.0474503
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0361425   -0.0784817    0.0061967
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0184953   -0.0654233    0.0284327
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0603093   -0.1148034   -0.0058151
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0733845   -0.1328545   -0.0139145
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0110381   -0.0385838    0.0606601
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0222870   -0.0381353    0.0827093
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0125231   -0.0782599    0.1033062
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0797201   -0.1461030   -0.0133372
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0227632   -0.0378735    0.0833998
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0446099   -0.0134530    0.1026728
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0122851   -0.0474738    0.0229036
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0007227   -0.0325254    0.0310800
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.0073728   -0.0513979    0.0366522
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0245047   -0.0232871    0.0722966
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0207459   -0.0654697    0.0239779
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0088236   -0.0609030    0.0432558
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0234926   -0.0531176    0.0061323
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0203082   -0.0556381    0.0150218
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0029076   -0.0297298    0.0239146
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0053877   -0.0388838    0.0281083
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0188974   -0.0569150    0.0191203
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0064944   -0.0448047    0.0318159
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0032396   -0.0494339    0.0429547
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0056107   -0.0262347    0.0374560
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0298769   -0.0944557    0.0347019
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0315002   -0.0941907    0.0311904
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0122705   -0.0607038    0.0361628
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0003713   -0.0294422    0.0301848
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0061771   -0.0278546    0.0402088
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0017447   -0.0389504    0.0424397
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0376891   -0.0373485    0.1127266
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0320309   -0.0639477    0.1280095
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0114834   -0.0506327    0.0735995
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0128652   -0.0607356    0.0864660
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0508872   -0.0236878    0.1254622
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0286864   -0.0806133    0.0232406
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0101250   -0.0538081    0.0335582
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0364507   -0.0807865    0.0078852
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0036292   -0.0704340    0.0631756
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0146077   -0.0562150    0.0854304
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0296666   -0.0740878    0.0147547
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0364602   -0.0930345    0.0201141
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0057668   -0.0731226    0.0846563
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0020509   -0.0617271    0.0576253
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0356006   -0.1017722    0.0305711
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0268035   -0.0367368    0.0903438
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0206443   -0.0237248    0.0650134
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0367759   -0.0205096    0.0940614
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0112678   -0.0185526    0.0410881
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm           0.0233667   -0.0121431    0.0588765
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0264457   -0.0529156    0.0000243
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0041105   -0.0357614    0.0275404
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0095751   -0.0426192    0.0617694
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0012299   -0.0331736    0.0307138
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0187424   -0.0359279    0.0734128
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0037219   -0.0563800    0.0489362
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0135005   -0.0468417    0.0198407
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0178716   -0.0577351    0.0219919
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0063933   -0.0486135    0.0614000
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0139867   -0.0385013    0.0664747
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0114097   -0.0696060    0.0467866
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0320802   -0.0946823    0.0305219
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0015687   -0.0600180    0.0568807
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0255843   -0.0318186    0.0829871
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0406074   -0.0751453   -0.0060695
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0202581   -0.0597790    0.0192629
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0195514   -0.0455261    0.0846289
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0417583   -0.0377250    0.1212416
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0423637   -0.0008427    0.0855701
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0184612   -0.0351728    0.0720952
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0413048   -0.1115332    0.0289235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0262131   -0.0954115    0.0429854
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0695018   -0.1501315    0.0111279
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0324770   -0.0942302    0.0292763
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0164057   -0.0572748    0.0244633
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0246088   -0.0768922    0.0276746
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0028067   -0.0340972    0.0284838
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0052575   -0.0421866    0.0316716
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0311736   -0.0654836    0.0031363
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0173054   -0.0594389    0.0248281
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0007219   -0.0505335    0.0519772
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0127281   -0.0172343    0.0426905
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0021616   -0.1040867    0.0997634
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0497310   -0.0322500    0.1317120
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0092981   -0.0408558    0.0222596
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0006391   -0.0391406    0.0378624
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0034556   -0.0592179    0.0661290
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0021719   -0.0674394    0.0630955


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0009790   -0.0875348    0.0855769
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0187741   -0.0477401    0.0101919
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0462653   -0.0881501   -0.0043804
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0711775   -0.1288046   -0.0135504
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0155984   -0.0722844    0.0410876
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0072119   -0.0218450    0.0074212
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0029022   -0.0274907    0.0216863
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0272059   -0.0421966   -0.0122152
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0579721   -0.1025907   -0.0133536
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0562086   -0.0868297   -0.0255875
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0280649   -0.0579342    0.0018044
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0105572   -0.0183552   -0.0027591
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0077519   -0.0128683   -0.0026355
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0007514   -0.0014154   -0.0000874
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0060660   -0.0088448   -0.0032872
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0526044   -0.0957204   -0.0094885
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0382337   -0.0522087   -0.0242586
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0409749   -0.0480933   -0.0338564
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0122786   -0.0575558    0.0329986
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0145180   -0.0402954    0.0112594
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0064021   -0.0360414    0.0232372
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0403949   -0.0862757    0.0054860
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0244145   -0.0658589    0.0170299
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0071862   -0.0073522    0.0217247
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0104826   -0.0314395    0.0104744
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0080903   -0.0259138    0.0097332
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0255019   -0.0166472    0.0676510
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0116032   -0.0344138    0.0112075
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0178013   -0.0434377    0.0078351
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0040530   -0.0108084    0.0027024
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0007217   -0.0047180    0.0032745
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0005474   -0.0013605    0.0002657
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0030756   -0.0054834   -0.0006679
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0348867   -0.0656926   -0.0040807
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0281770   -0.0402295   -0.0161245
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0184519   -0.0258395   -0.0110642
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0055986   -0.0331470    0.0443442
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0204153   -0.0441446    0.0033140
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0035606   -0.0212842    0.0284054
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0025185   -0.0310672    0.0361042
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0077490   -0.0324783    0.0169803
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0054001   -0.0067264    0.0175265
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0083886   -0.0301768    0.0133996
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0181396   -0.0326468   -0.0036323
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0188016   -0.0127390    0.0503421
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0403230   -0.0725424   -0.0081035
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0161368   -0.0378866    0.0056130
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0316748   -0.0544908   -0.0088588
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0121159   -0.0189149   -0.0053169
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0016399   -0.0068236    0.0035437
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0553296   -0.0958458   -0.0148134
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0003827   -0.0013697    0.0006042
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0017597   -0.0041653    0.0006459
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0360761   -0.0625174   -0.0096349
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0206445   -0.0322860   -0.0090030
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0108600   -0.0206481   -0.0010719
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0010665   -0.0433499    0.0412169
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0132659   -0.0401063    0.0135746
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0098328   -0.0386481    0.0189825
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0051301   -0.0317456    0.0214854
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0018778   -0.0284153    0.0246597
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0071279   -0.0205490    0.0062931
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0056890   -0.0232018    0.0118238
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0087512   -0.0222820    0.0047796
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0122297   -0.0266559    0.0511152
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0007434   -0.0322917    0.0308049
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0051942   -0.0250927    0.0147042
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0202921   -0.0432189    0.0026347
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0056791   -0.0136565    0.0022983
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0006736   -0.0057108    0.0043636
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0295469   -0.0917300    0.0326361
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0026677   -0.0069270    0.0015917
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0003844   -0.0013212    0.0005524
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0009272   -0.0033616    0.0015072
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0051714   -0.0283713    0.0180284
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0147581   -0.0268758   -0.0026404
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0052098   -0.0170579    0.0066383
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0643768   -0.1129689   -0.0157848
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0174840   -0.0392012    0.0042333
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0154728   -0.0457444    0.0147988
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0079383   -0.0308231    0.0466997
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0039893   -0.0297438    0.0377224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0001569   -0.0145961    0.0142823
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0185508   -0.0397809    0.0026793
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0057697   -0.0183943    0.0068550
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0101151   -0.0438303    0.0236001
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0102053   -0.0182351    0.0386457
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0109858   -0.0352460    0.0132743
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0159769   -0.0395221    0.0075684
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0099164   -0.0191692   -0.0006635
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0003721   -0.0042767    0.0050209
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0001123   -0.1259545    0.1257298
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0007764   -0.0038805    0.0023277
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0000584   -0.0058420    0.0059587
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0013769   -0.0029698    0.0057236
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0249540   -0.0455305   -0.0043774
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0243907   -0.0546701    0.0058888
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0366863   -0.0869403    0.0135676
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0131732   -0.0362846    0.0099383
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0227596   -0.0540455    0.0085263
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0547492   -0.1004892   -0.0090092
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0119470   -0.0258055    0.0496995
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0051741   -0.0199308    0.0095827
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0067352   -0.0126332    0.0261036
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0047492   -0.0201969    0.0106986
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0020907   -0.0317809    0.0359624
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0143353   -0.0506711    0.0220005
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0180235   -0.0406667    0.0046198
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0028613   -0.0237150    0.0179925
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0055823   -0.0172604    0.0060959
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0004004   -0.0038759    0.0046768
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0026146   -0.0061282    0.0008990
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001367   -0.0058222    0.0055488
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0044885   -0.0244689    0.0334459
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0154743   -0.0128950    0.0438437
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0110758   -0.0453481    0.0674997
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0092509   -0.0134112    0.0319130
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0154234   -0.0470556    0.0162088
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0019626   -0.0534854    0.0574107
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0196838   -0.0533311    0.0139634
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0035278   -0.0088860    0.0159416
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0061484   -0.0280927    0.0157960
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0197352   -0.0167832    0.0562536
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0111316   -0.0117074    0.0339707
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0161945   -0.0367214    0.0043323
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0006281   -0.0052284    0.0039722
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0013742   -0.0082891    0.0110376
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0114775   -0.0401807    0.0172256
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0043789   -0.0119643    0.0207221
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0162017   -0.0680128    0.0356094
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0077028   -0.0135197    0.0289253
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0253558   -0.0509637    0.0002520
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0214606   -0.0336805    0.0766017
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0283672   -0.0030215    0.0597559
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0081387   -0.0203932    0.0041158
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0223118   -0.0454396    0.0008160
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0152354   -0.0482645    0.0177936
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0014687   -0.0256978    0.0227605
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0199958   -0.0473697    0.0073782
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0008969   -0.0033726    0.0051663
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0051944   -0.0144125    0.0248013
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0064746   -0.0338081    0.0208589
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0026170   -0.0235350    0.0183010
