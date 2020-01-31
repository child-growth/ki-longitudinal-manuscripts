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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mhtcm           sstunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       21     222  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        1     222  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      139     222  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1        6     222  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       55     222  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        0     222  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0       32      64  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1        0      64  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       19      64  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        1      64  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       10      64  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        2      64  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm               0       11      43  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm               1        1      43  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm                0       19      43  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm                1        1      43  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       11      43  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        0      43  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm               0        6      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        0      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm                0       13      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm                1        0      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0        7      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        1      27  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm               0       48     226  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm               1        0     226  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           <151 cm                0      127     226  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           <151 cm                1        4     226  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm           0       47     226  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm           1        0     226  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0       80     101  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1        0     101  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0        9     101  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        1     101  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       11     101  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        0     101  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       67     122  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        5     122  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       21     122  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1        0     122  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       25     122  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        4     122  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               0      445    1135  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               1       22    1135  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm                0      345    1135  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm                1       40    1135  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           0      258    1135  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           1       25    1135  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0      108     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        3     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0      341     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1       15     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0      140     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1        1     608  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      109     517  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        1     517  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      284     517  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1        2     517  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      120     517  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        1     517  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0      132     729  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        2     729  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0      414     729  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1        4     729  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           0      173     729  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           1        4     729  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm               0     1170    1431  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm               1       17    1431  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         <151 cm                0       48    1431  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         <151 cm                1        3    1431  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm           0      187    1431  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm           1        6    1431  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm               0    13201   13729  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm               1        5   13729  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        <151 cm                0      125   13729  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        <151 cm                1        0   13729  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm           0      398   13729  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm           1        0   13729  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0     7532    9705  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1      200    9705  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0      529    9705  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       31    9705  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0     1361    9705  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       52    9705  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm               0      110     840  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm               1        0     840  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm                0      538     840  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm                1        7     840  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm           0      181     840  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm           1        4     840  sstunted         
Birth       ki1135781-COHORTS          INDIA                          >=155 cm               0      522    1774  sstunted         
Birth       ki1135781-COHORTS          INDIA                          >=155 cm               1        8    1774  sstunted         
Birth       ki1135781-COHORTS          INDIA                          <151 cm                0      739    1774  sstunted         
Birth       ki1135781-COHORTS          INDIA                          <151 cm                1       24    1774  sstunted         
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm           0      470    1774  sstunted         
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm           1       11    1774  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm               0      628    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm               1        2    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm                0     1516    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm                1       29    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           0      860    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           1       15    3050  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     3153   22356  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1      164   22356  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0    11650   22356  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1     1786   22356  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           0     5117   22356  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           1      486   22356  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       24     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        0     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      148     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1        8     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       61     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        0     241  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0      121     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       51     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       37     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm               0       55     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm               1        0     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                0      104     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                1        8     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       67     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        1     235  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm               0       41     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        0     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                0      131     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                1        1     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0       63     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        0     236  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm               0       57     272  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm               1        1     272  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           <151 cm                0      149     272  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           <151 cm                1        8     272  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm           0       56     272  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm           1        1     272  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0      184     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1        3     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0       29     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        2     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       30     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        1     249  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0      142     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        5     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       41     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1        7     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       50     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        2     247  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               0      486    1228  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm               1       24    1228  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                0      356    1228  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                1       65    1228  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           0      267    1228  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm           1       30    1228  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm               0       72     379  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm               1        2     379  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                0      163     379  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                1       39     379  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm           0       91     379  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm           1       12     379  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0       94     537  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        2     537  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0      280     537  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1       31     537  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0      128     537  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1        2     537  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      127     603  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        1     603  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      318     603  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1       12     603  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      144     603  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        1     603  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0      133     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        1     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0      394     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1       17     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           0      165     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           1        5     715  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0     1239    1996  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        7    1996  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0      304    1996  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        5    1996  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0      434    1996  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        7    1996  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm               0     1527    1877  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm               1       41    1877  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         <151 cm                0       62    1877  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         <151 cm                1        5    1877  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm           0      229    1877  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm           1       13    1877  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm               0       34     231  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm               1        2     231  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                0      125     231  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                1       16     231  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm           0       50     231  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm           1        4     231  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm               0    12365   13033  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm               1      168   13033  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        <151 cm                0      116   13033  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        <151 cm                1        5   13033  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm           0      370   13033  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm           1        9   13033  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0     5693    7394  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1      195    7394  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0      399    7394  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       46    7394  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0     1014    7394  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       47    7394  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm               0      111     943  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm               1        6     943  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                0      530     943  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                1       99     943  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm           0      181     943  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm           1       16     943  sstunted         
6 months    ki1135781-COHORTS          INDIA                          >=155 cm               0      531    1819  sstunted         
6 months    ki1135781-COHORTS          INDIA                          >=155 cm               1       10    1819  sstunted         
6 months    ki1135781-COHORTS          INDIA                          <151 cm                0      740    1819  sstunted         
6 months    ki1135781-COHORTS          INDIA                          <151 cm                1       50    1819  sstunted         
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm           0      477    1819  sstunted         
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm           1       11    1819  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm               0      550    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm               1       11    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                0     1277    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                1       91    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           0      749    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           1       30    2708  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm               0      487     836  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm               1       26     836  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                0      104     836  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                1       27     836  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm           0      174     836  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm           1       18     836  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     2610   16761  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1       50   16761  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0     8997   16761  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1      800   16761  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           0     4137   16761  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           1      167   16761  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               0       21     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm               1        1     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                0      113     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                1       24     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           0       50     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm           1        3     212  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm               0       95     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm               1        0     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                0       43     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                1        0     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           0       30     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm           1        1     169  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm               0       50     226  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm               1        3     226  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                0       86     226  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                1       24     226  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm           0       60     226  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm           1        3     226  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm               0       38     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm               1        0     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                0      122     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                1        7     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm           0       61     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm           1        0     228  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm               0       44     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm               1        2     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           <151 cm                0      103     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           <151 cm                1       12     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm           0       39     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm           1        1     201  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               0      162     234  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm               1       18     234  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                0       23     234  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                1        4     234  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           0       22     234  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm           1        5     234  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       95     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm               1       31     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                0       19     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                1       21     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       30     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1       18     214  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               0       71     429  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm               1        6     429  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                0      177     429  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                1       75     429  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           0       86     429  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm           1       14     429  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               0      118     577  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm               1        4     577  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                0      276     577  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                1       39     577  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           0      131     577  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm           1        9     577  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               0       99     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm               1        1     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                0      254     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                1       33     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           0      125     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm           1        2     514  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0        3       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0        2       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        0       6  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm               0     1240    1602  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm               1       98    1602  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         <151 cm                0       50    1602  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         <151 cm                1       10    1602  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm           0      180    1602  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm           1       24    1602  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm               0     3801    4005  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm               1       58    4005  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        <151 cm                0       30    4005  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        <151 cm                1        5    4005  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm           0      109    4005  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm           1        2    4005  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               0      991    1374  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm               1       93    1374  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                0       74    1374  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                1       24    1374  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           0      159    1374  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm           1       33    1374  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm               0       88     994  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm               1       38     994  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                0      307     994  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                1      352     994  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm           0      109     994  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm           1      100     994  sstunted         
24 months   ki1135781-COHORTS          INDIA                          >=155 cm               0      497    1819  sstunted         
24 months   ki1135781-COHORTS          INDIA                          >=155 cm               1       55    1819  sstunted         
24 months   ki1135781-COHORTS          INDIA                          <151 cm                0      563    1819  sstunted         
24 months   ki1135781-COHORTS          INDIA                          <151 cm                1      222    1819  sstunted         
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm           0      388    1819  sstunted         
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm           1       94    1819  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm               0      425    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm               1       85    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                0      775    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                1      459    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           0      538    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm           1      163    2445  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm               0      330     577  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm               1       25     577  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                0       71     577  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                1       24     577  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm           0      106     577  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm           1       21     577  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               0     1252    8599  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm               1       62    8599  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                0     3987    8599  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                1     1080    8599  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           0     2018    8599  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm           1      200    8599  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/e2bab9e0-3c2f-4bbc-83dd-5f9a9b33e8c9/21d4faeb-9a93-4492-bf51-e4bc23a7ce93/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e2bab9e0-3c2f-4bbc-83dd-5f9a9b33e8c9/21d4faeb-9a93-4492-bf51-e4bc23a7ce93/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e2bab9e0-3c2f-4bbc-83dd-5f9a9b33e8c9/21d4faeb-9a93-4492-bf51-e4bc23a7ce93/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e2bab9e0-3c2f-4bbc-83dd-5f9a9b33e8c9/21d4faeb-9a93-4492-bf51-e4bc23a7ce93/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0471092   0.0266615   0.0675569
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1038961   0.0801470   0.1276452
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0883392   0.0431700   0.1335085
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0258665   0.0223282   0.0294049
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0553571   0.0364164   0.0742979
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0368011   0.0269839   0.0466183
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0150943   0.0047110   0.0254777
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0314548   0.0190665   0.0438431
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0228690   0.0095062   0.0362318
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0494423   0.0407774   0.0581072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1329265   0.1266206   0.1392324
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0867392   0.0787884   0.0946901
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0470588   0.0233100   0.0708076
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1543943   0.1034638   0.2053248
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1010101   0.0609420   0.1410782
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0056180   0.0014669   0.0097691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0161812   0.0021097   0.0302527
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0158730   0.0042051   0.0275409
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0261480   0.0182474   0.0340485
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.0746269   0.0116860   0.1375677
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0537190   0.0253052   0.0821329
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0134046   0.0088341   0.0179751
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.0413223   0.0236142   0.0590305
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.0237467   0.0061571   0.0413363
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0331182   0.0285472   0.0376892
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1033708   0.0750827   0.1316588
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0442978   0.0319164   0.0566793
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0512821   0.0112934   0.0912707
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1573927   0.1289181   0.1858673
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0812183   0.0430521   0.1193844
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0184843   0.0071311   0.0298375
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0632911   0.0463076   0.0802747
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0225410   0.0093677   0.0357142
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0196078   0.0081326   0.0310831
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0665205   0.0533131   0.0797278
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0385109   0.0249957   0.0520261
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0506823   0.0316897   0.0696748
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2061069   0.1367963   0.2754175
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0937500   0.0524959   0.1350041
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0187970   0.0128729   0.0247211
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0816577   0.0759306   0.0873847
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0388011   0.0328513   0.0447509
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2460317   0.1706525   0.3214110
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5250000   0.3698822   0.6801178
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.3750000   0.2377222   0.5122778
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0779221   0.0179811   0.1378630
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2976190   0.2411031   0.3541350
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719124   0.2080876
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0732436   0.0592792   0.0872081
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1666667   0.0723384   0.2609949
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1176471   0.0734208   0.1618733
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0857934   0.0691155   0.1024712
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2448980   0.1597276   0.3300683
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1718750   0.1184912   0.2252588
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3015873   0.2214114   0.3817632
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.5341426   0.4960379   0.5722474
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4784689   0.4107109   0.5462269
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0996377   0.0746447   0.1246307
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2828025   0.2512893   0.3143158
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1950207   0.1596392   0.2304023
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1666667   0.1343158   0.1990175
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3719611   0.3449886   0.3989336
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2325250   0.2012465   0.2638034
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0704225   0.0437841   0.0970610
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2526316   0.1651787   0.3400845
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1653543   0.1006875   0.2300212
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0471842   0.0349172   0.0594511
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2131439   0.2006718   0.2256159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0901713   0.0753164   0.1050262


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0766520   0.0591565   0.0941474
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0291602   0.0258126   0.0325079
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0242390   0.0170805   0.0313975
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1089640   0.1044122   0.1135158
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0969055   0.0737418   0.1200693
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0095190   0.0052582   0.0137799
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0314331   0.0235374   0.0393288
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0139646   0.0092016   0.0187275
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0389505   0.0345402   0.0433608
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1283139   0.1069569   0.1496709
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0390324   0.0301298   0.0479351
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0849282   0.0660197   0.1038368
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606766   0.0568171   0.0645361
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0823970   0.0689280   0.0958660
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1091703   0.0926749   0.1256657
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4929577   0.4618620   0.5240535
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2039582   0.1854361   0.2224803
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2891616   0.2711872   0.3071359
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1213172   0.0946538   0.1479805
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1560647   0.1473093   0.1648200


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.205431   1.3212811   3.681219
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.875201   0.8773277   4.008055
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.140107   1.4804836   3.093623
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.422732   1.0542048   1.920088
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.083879   0.9432426   4.603856
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.515073   0.6144022   3.736063
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.688519   2.2421065   3.223814
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.754354   1.4386084   2.139400
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          3.280879   1.7226455   6.248625
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          2.146465   0.9524608   4.837270
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.880259   0.9201086   9.016209
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.825397   0.9963933   8.011763
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.854023   1.1651317   6.991008
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          2.054425   1.1172215   3.777819
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          3.082694   1.8352787   5.177961
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.771532   0.9357442   3.353829
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          3.121268   2.2973284   4.240714
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.337567   0.9793429   1.826823
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          3.069157   1.3783850   6.833887
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.583756   0.6372270   3.936249
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          3.424051   1.7516471   6.693199
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.219467   0.5223580   2.846898
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.392544   1.8286555   6.293888
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.964057   0.9926424   3.886110
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          4.066647   2.4579202   6.728298
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.849760   1.0377665   3.297091
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          4.344187   3.1525533   5.986246
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          2.064219   1.4417379   2.955462
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.133871   1.3941718   3.266029
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.524193   0.9456324   2.456733
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          3.819444   1.7293940   8.435415
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.796667   0.7231383   4.463892
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.275510   1.2523031   4.134739
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.606243   1.0537868   2.448327
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.854509   1.9164570   4.251713
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          2.003360   1.3887590   2.889956
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.771105   1.3449431   2.332300
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.586502   1.1738856   2.144152
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.838309   2.1570298   3.734765
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.957299   1.4361893   2.667489
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.231767   1.8140930   2.745605
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.395150   1.1016863   1.766785
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          3.587368   2.1482729   5.990492
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          2.348031   1.3627321   4.045734
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          4.517275   3.4611513   5.895660
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.911050   1.3990701   2.610386


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0295428    0.0082686   0.0508170
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0032937    0.0013501   0.0052373
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0091447   -0.0005835   0.0188728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0595218    0.0509083   0.0681353
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0498467    0.0210540   0.0786394
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0039011    0.0001764   0.0076257
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0052852    0.0007603   0.0098101
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0005599   -0.0000136   0.0011335
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0058323    0.0031738   0.0084908
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0770318    0.0363083   0.1177554
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0205481    0.0090816   0.0320147
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0291366    0.0171816   0.0410916
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0342460    0.0176462   0.0508457
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0418796    0.0356555   0.0481036
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0810711    0.0266591   0.1354831
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1435231    0.0814702   0.2055761
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0091534    0.0020344   0.0162724
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0233769    0.0128242   0.0339297
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1913704    0.1154399   0.2673010
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1043205    0.0800594   0.1285816
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1224949    0.0919491   0.1530407
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0508946    0.0274988   0.0742905
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1088805    0.0954414   0.1223196


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3854144    0.0771269   0.5907178
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1129517    0.0450312   0.1760415
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3772707   -0.1575587   0.6649917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.5462515    0.4628870   0.6166771
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5143846    0.1975358   0.7061273
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4098167   -0.0610110   0.6717128
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1681403    0.0180716   0.2952740
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0400972    0.0014302   0.0772670
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1497360    0.0808209   0.2134843
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6003391    0.1466206   0.8128278
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5264377    0.1640075   0.7317425
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5977421    0.2960849   0.7701266
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.4032342    0.1983002   0.5557821
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6902100    0.5793986   0.7718271
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2478458    0.0639784   0.3955952
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.6481203    0.2620127   0.8322203
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1110885    0.0221340   0.1919510
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2141328    0.1163200   0.3011190
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.3882086    0.2125787   0.5246653
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5114799    0.3856685   0.6115259
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4236209    0.3097934   0.5186762
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.4195171    0.2174953   0.5693823
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.6976627    0.6103096   0.7654346
