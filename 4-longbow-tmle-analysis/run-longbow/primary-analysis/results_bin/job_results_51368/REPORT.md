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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mwtkg         ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       45     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1        3     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0      144     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       18     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       44     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1        0     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      140     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        3     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       42     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        0     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       35     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        1     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       40     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        2     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0      131     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1       19     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       47     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1        3     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       78     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        2     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       70     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1        6     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       81     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        1     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0      104     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1        0     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0      114     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1        1     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       69     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1        2     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0      188     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1        6     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0       28     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        2     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       41     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1        5     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       95     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       95     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        4     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       59     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        0     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       98    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       11    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      961    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      191    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      217    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1       19    1497
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       77     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1        5     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      372     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1       76     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       77     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       17     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0      116     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1        4     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      401     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1       31     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0      111     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1        6     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      185     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1        7     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      355     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1       51     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0      149     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1        8     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1388    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       88    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      356    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       37    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      451    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       32    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      901    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1       30    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0     1112    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1       77    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0     1015    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1       43    3178
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0     9378   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1      901   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0     1036   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1       95   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     2167   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1      195   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     5329   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      493   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     2112   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      287   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2670   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      277   11168
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0      112     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        2     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      500     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1        4     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0      217     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1        3     838
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       45     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1        3     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0      149     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       13     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       44     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1        0     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      141     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       42     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        0     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       36     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        0     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       40     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        2     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                   0      135     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                   1       15     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       47     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg               1        3     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       78     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        2     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       72     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                   1        4     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       81     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        1     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                  0      104     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                  1        0     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                   0      115     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                   1        0     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg               0       70     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg               1        1     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0      192     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1        2     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0       29     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        1     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       45     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1        1     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       96     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        2     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       98     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       59     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        0     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0      103    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1        6    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0     1067    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1       79    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      222    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1       13    1490
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       79     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1        3     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      404     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1       42     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       83     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       11     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0      116     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1        4     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      413     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1       19     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0      112     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1        5     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      186     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1        6     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      368     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1       38     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0      151     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1        6     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1431    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       45    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      376    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       17    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      466    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       17    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                  0     9392   13772
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                  1      887   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                   0     1038   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                   1       93   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg               0     2171   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg               1      191   13772
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     5436   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      364   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     2188   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      193   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2742   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      193   11116
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       33     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   0      167     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               0       71     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               1        0     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       44     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0      150     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1        5     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       41     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1        0     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      134     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        1     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       37     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       33     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        1     206
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       40     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        0     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0      140     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1        5     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       49     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1        0     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       79     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       73     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       81     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0      100     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0      104     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       63     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0      178     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1        4     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        1     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       38     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1        4     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       94     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       89     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       58     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        0     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       97    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1        5    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      938    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      122    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      213    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1        6    1381
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       70     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1        2     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      348     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1       39     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       76     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1        6     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0      114     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1        0     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      380     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1       12     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0      107     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1        1     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      187     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1        1     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      374     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1       17     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0      149     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1        2     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1210    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       45    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      289    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       22    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      397    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       15    1978
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      901    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1       30    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0     1112    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1       77    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0     1015    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1       43    3178
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0    10258   13764
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1       14   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0     1128   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1        3   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     2357   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1        4   13764
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     4861    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      135    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     2017    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      104    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2493    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1       90    9700
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0      112     824
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        2     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      492     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1        4     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0      211     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1        3     824


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/001b6a0f-cbc0-4606-8fff-779686c4369c/0821e8ac-aa4a-4fdd-8245-51549a6f3434/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/001b6a0f-cbc0-4606-8fff-779686c4369c/0821e8ac-aa4a-4fdd-8245-51549a6f3434/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/001b6a0f-cbc0-4606-8fff-779686c4369c/0821e8ac-aa4a-4fdd-8245-51549a6f3434/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/001b6a0f-cbc0-4606-8fff-779686c4369c/0821e8ac-aa4a-4fdd-8245-51549a6f3434/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1042860   0.0237692   0.1848029
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1654028   0.1337494   0.1970562
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0803906   0.0526381   0.1081431
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0609756   0.0091427   0.1128086
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.1696429   0.1348606   0.2044251
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1808511   0.1029803   0.2587218
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0364583   0.0099295   0.0629872
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1256158   0.0933571   0.1578744
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0509554   0.0165343   0.0853765
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0589867   0.0469421   0.0710314
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1063687   0.0741105   0.1386270
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0671680   0.0438189   0.0905172
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0325527   0.0165720   0.0485335
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0646588   0.0457157   0.0836020
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0403612   0.0258801   0.0548423
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0879595   0.0522911   0.1236280
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0875594   0.0497356   0.1253832
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0815722   0.0485397   0.1146047
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0849157   0.0776947   0.0921367
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1226405   0.1089578   0.1363232
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0953552   0.0844151   0.1062954
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0550459   0.0107599   0.0993318
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.0689354   0.0433827   0.0944882
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0553191   0.0343529   0.0762854
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0312500   0.0066227   0.0558773
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.0935961   0.0652454   0.1219467
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0382166   0.0082076   0.0682255
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0309445   0.0219921   0.0398970
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0534409   0.0286636   0.0782182
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0348825   0.0179380   0.0518271
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0865982   0.0506651   0.1225313
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0864268   0.0492070   0.1236466
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0797516   0.0473723   0.1121309
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0633991   0.0570584   0.0697398
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0818078   0.0704161   0.0931995
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0666466   0.0573147   0.0759784
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0490196   0.0111658   0.0868735
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1150943   0.0870550   0.1431337
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0273973   0.0057214   0.0490731
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0351867   0.0249688   0.0454046
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0810592   0.0462264   0.1158920
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0362688   0.0176788   0.0548588
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0325122   0.0164147   0.0486097
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0642368   0.0450149   0.0834586
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0407207   0.0260511   0.0553902
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0265103   0.0220409   0.0309796
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0515051   0.0416042   0.0614060
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0346545   0.0274948   0.0418141


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1476286   0.1184599   0.1767973
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0667517   0.0566626   0.0768408
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0471995   0.0353423   0.0590566
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0864798   0.0514908   0.1214689
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0946454   0.0892162   0.1000747
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0657718   0.0426648   0.0888788
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0335884   0.0263056   0.0408712
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0850276   0.0499104   0.1201448
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0674703   0.0628071   0.0721335
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0963070   0.0722853   0.1203288
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414560   0.0326689   0.0502431
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0471995   0.0353423   0.0590566
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0339175   0.0303150   0.0375200


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.5860493   0.7794856   3.227195
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.7708662   0.3906643   1.521088
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           2.7821429   1.1604223   6.670261
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           2.9659574   1.1437460   7.691309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           3.4454609   1.5926859   7.453573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3976342   0.5178396   3.772175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.8032659   1.2509990   2.599337
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1386979   0.7608628   1.704161
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.9862788   1.1791542   3.345876
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.2398709   0.7616227   2.018427
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           0.9954508   0.7794503   1.271309
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.9273830   0.7982058   1.077466
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.4442620   1.2551655   1.661847
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1229397   0.9734232   1.295422
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.2523269   0.6960862   2.253058
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.0049645   0.4012309   2.517139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.9950739   1.2874825   6.967448
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.2229299   0.4020223   3.720086
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7269900   0.9996537   2.983528
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1272595   0.6405198   1.983879
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           0.9980207   0.7885023   1.263212
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.9209380   0.7936094   1.068696
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.2903634   1.0870088   1.531761
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0512234   0.8849937   1.248676
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.3479245   1.0137636   5.437904
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.5589041   0.2872384   1.087507
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           2.3036879   1.3713463   3.869904
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0307524   0.5718773   1.857829
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.9757716   1.1627978   3.357139
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.2524720   0.7674463   2.044033
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.9428340   1.5045218   2.508840
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3072088   1.0012249   1.706704


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0433426   -0.0235763   0.1102614
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0960757    0.0431904   0.1489609
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0509589    0.0235314   0.0783864
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0077650   -0.0003128   0.0158428
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0146468    0.0028454   0.0264481
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0014797   -0.0048572   0.0018978
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0097297    0.0044071   0.0150523
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0107259   -0.0202489   0.0417008
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0349752    0.0102146   0.0597358
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0026439   -0.0033366   0.0086244
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0015706   -0.0046652   0.0015240
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0040712   -0.0005180   0.0086605
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0472874    0.0038433   0.0907315
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0062693   -0.0007425   0.0132811
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0146873    0.0027615   0.0266130
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0074072    0.0038827   0.0109318


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2935919   -0.3812690   0.6387290
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.6117471    0.1133348   0.8299919
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.5829388    0.1719680   0.7899356
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1163265   -0.0121054   0.2284610
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3103159    0.0013383   0.5236984
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0171105   -0.0564464   0.0207608
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1028018    0.0450512   0.1570599
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.1630781   -0.5077606   0.5354446
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.5281250    0.0134939   0.7742883
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0787147   -0.1166381   0.2398910
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0184717   -0.0545823   0.0164023
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0603413   -0.0100645   0.1258395
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.4910069   -0.1275242   0.7702276
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1512275   -0.0326517   0.3023643
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3111740   -0.0020068   0.5264690
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2183899    0.1099802   0.3135946
