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
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

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
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       39     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        3     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0      131     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1       19     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       46     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1        4     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       78     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        2     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       70     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1        6     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       81     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        1     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0      104     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1        0     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0      113     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       69     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1        2     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0      187     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1        7     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0       28     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        2     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       40     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1        6     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       94     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        4     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       95     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        4     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       58     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        1     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0      100    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       13    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      954    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      190    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      223    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1       18    1498
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       77     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1        5     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      371     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1       77     624
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      906    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1       31    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0     1124    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1       77    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0     1033    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1       46    3217
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0     9378   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1      901   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0     1036   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1       95   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     2167   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1      195   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     5326   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      496   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     2110   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      289   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2667   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      280   11168
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0      113     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        1     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      500     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1        4     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0      217     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1        3     838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  0      634   26925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  1       27   26925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   0    23001   26925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   1     1505   26925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               0     1645   26925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               1      113   26925
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       45     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1        3     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0      149     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       13     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       44     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1        0     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      140     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        3     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       42     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        0     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       36     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        0     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       39     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        3     242
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       44     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1        2     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       95     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        3     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       98     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       59     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        0     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0      106    1491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1        7    1491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0     1059    1491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1       80    1491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      228    1491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1       11    1491
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     5438   11118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      364   11118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     2188   11118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      193   11118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2741   11118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      194   11118
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       33     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   0      167     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               0       71     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               1        0     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  0      640   26828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  1       19   26828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   0    23400   26828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   1     1017   26828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               0     1677   26828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               1       75   26828
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       44     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0      150     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1        5     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       41     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1        0     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      135     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       37     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       33     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        1     206
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       40     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        0     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0      140     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1        5     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       48     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1        1     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       79     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       73     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       81     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0      100     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0      103     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       63     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0      177     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1        5     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        1     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       38     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1        4     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       94     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       89     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       57     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        1     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0      100    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1        6    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      934    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      119    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      215    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1        8    1382
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       70     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1        2     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      348     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1       40     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       76     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1        6     542
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      906    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1       31    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0     1124    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1       77    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0     1033    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1       46    3217
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0    10258   13764
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1       14   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0     1128   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1        3   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     2357   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1        4   13764
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     4883    9744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      138    9744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     2021    9744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      106    9744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2504    9744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1       92    9744
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0      113     824
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        1     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      492     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1        4     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0      211     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1        3     824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  0      420   17288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  1        8   17288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   0    15171   17288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   1      506   17288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               0     1144   17288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               1       39   17288


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
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/73bd1485-ed75-4476-a1c9-957082588dae/0895eb09-5c07-45ab-af9a-14139d2fce83/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73bd1485-ed75-4476-a1c9-957082588dae/0895eb09-5c07-45ab-af9a-14139d2fce83/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73bd1485-ed75-4476-a1c9-957082588dae/0895eb09-5c07-45ab-af9a-14139d2fce83/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73bd1485-ed75-4476-a1c9-957082588dae/0895eb09-5c07-45ab-af9a-14139d2fce83/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1169363   0.0315614   0.2023112
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1656898   0.1349512   0.1964284
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0754164   0.0413621   0.1094707
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0609756   0.0091427   0.1128086
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.1718750   0.1369118   0.2068382
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1808511   0.1029803   0.2587218
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0364583   0.0099295   0.0629872
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1256158   0.0933571   0.1578744
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0509554   0.0165343   0.0853765
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0590073   0.0469632   0.0710513
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1025128   0.0704214   0.1346042
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0659622   0.0429508   0.0889735
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0330755   0.0165995   0.0495514
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0639228   0.0449821   0.0828634
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0423865   0.0270316   0.0577415
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0878430   0.0521239   0.1235622
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0888747   0.0499545   0.1277950
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0813396   0.0488396   0.1138396
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0855403   0.0782826   0.0927981
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1234199   0.1096796   0.1371602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0955426   0.0847091   0.1063760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0413098   0.0268586   0.0557609
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.0614134   0.0576898   0.0651369
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.0640642   0.0516359   0.0764926
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0619469   0.0123761   0.1115177
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.0702371   0.0468032   0.0936709
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0460251   0.0166561   0.0753941
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0312500   0.0066227   0.0558773
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.0935961   0.0652454   0.1219467
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0382166   0.0082076   0.0682255
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0309066   0.0219297   0.0398835
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0521051   0.0280272   0.0761830
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0337858   0.0171551   0.0504165
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0863213   0.0506268   0.1220159
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0866921   0.0483549   0.1250292
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0805078   0.0475989   0.1134166
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0636785   0.0573089   0.0700481
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0804633   0.0691858   0.0917409
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0667857   0.0574794   0.0760921
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0279592   0.0165383   0.0393800
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.0416940   0.0385193   0.0448688
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.0429498   0.0327175   0.0531821
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0566038   0.0190352   0.0941723
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1130104   0.0863447   0.1396762
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0358744   0.0032414   0.0685075
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0352347   0.0250425   0.0454269
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0817652   0.0486956   0.1148347
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0363085   0.0172366   0.0553803
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0330836   0.0170152   0.0491520
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0637572   0.0443521   0.0831622
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0427151   0.0271550   0.0582752
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0270176   0.0225140   0.0315211
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0542722   0.0439175   0.0646269
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0352959   0.0281085   0.0424832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0186916   0.0025656   0.0348176
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.0322766   0.0292544   0.0352988
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.0329670   0.0217078   0.0442263


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1475300   0.1183178   0.1767423
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0667517   0.0566626   0.0768408
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0864798   0.0514908   0.1214689
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0953617   0.0899142   0.1008093
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0610956   0.0576148   0.0645765
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0657277   0.0426068   0.0888486
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0335884   0.0263056   0.0408712
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0850276   0.0499104   0.1201448
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0675481   0.0628829   0.0722134
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0414120   0.0384288   0.0443951
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0962373   0.0722060   0.1202687
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414560   0.0326689   0.0502431
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0344828   0.0308596   0.0381059
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319875   0.0290997   0.0348754


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.4169232   0.7323396   2.741449
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.6449355   0.3759408   1.106402
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           2.8187500   1.1761332   6.755486
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           2.9659574   1.1437460   7.691309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           3.4454609   1.5926859   7.453573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3976342   0.5178396   3.772175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7372913   1.1955038   2.524610
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1178653   0.7460987   1.674876
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.9326345   1.1283913   3.310090
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.2815106   0.7735035   2.123157
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0117450   0.7858442   1.302584
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.9259652   0.7961181   1.076990
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.4428276   1.2543069   1.659683
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1169303   0.9693722   1.286950
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.4866542   1.0384940   2.128217
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.5508250   1.0292044   2.336813
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.1338267   0.6789947   1.893333
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.7429767   0.2925146   1.887134
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.9950739   1.2874825   6.967448
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.2229299   0.4020223   3.720086
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6858899   0.9767216   2.909964
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0931591   0.6173097   1.935814
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0042946   0.7903328   1.276181
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.9326519   0.8026431   1.083719
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.2635865   1.0637036   1.501030
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0487955   0.8834500   1.245087
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.4912473   0.9837699   2.260507
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.5361612   0.9464697   2.493256
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.9965179   1.0255200   3.886890
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.6337818   0.3023311   1.328607
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           2.3205849   1.4113370   3.815612
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0304737   0.5657399   1.876969
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.9271543   1.1340599   3.274892
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.2911266   0.7856210   2.121898
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.0087733   1.5591807   2.588007
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3064035   1.0040862   1.699745
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.7267972   0.7211387   4.134889
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.7637362   0.6919969   4.495346


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0305937   -0.0373082   0.0984956
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0976782    0.0447291   0.1506274
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0509589    0.0235314   0.0783864
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0077444   -0.0003443   0.0158332
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0147952    0.0023055   0.0272850
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0013632   -0.0046856   0.0019592
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0098214    0.0044727   0.0151701
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0197859    0.0050471   0.0345246
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0037808   -0.0266346   0.0341961
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0349752    0.0102146   0.0597358
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0026818   -0.0033176   0.0086813
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0012937   -0.0045299   0.0019424
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0038696   -0.0007455   0.0084847
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0134528    0.0019004   0.0250052
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0396336    0.0041026   0.0751645
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0062213   -0.0007612   0.0132037
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0147871    0.0025920   0.0269822
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0074652    0.0039141   0.0110163
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0132959   -0.0028644   0.0294562


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2073728   -0.4533179   0.5677079
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.6156689    0.1221060   0.8317446
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.5829388    0.1719680   0.7899356
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1160185   -0.0125764   0.2282821
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3090667   -0.0141293   0.5292623
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0157634   -0.0543065   0.0213706
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1029914    0.0453872   0.1571196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.3238506    0.0382434   0.5246426
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0575221   -0.5639304   0.4320306
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.5281250    0.0134939   0.7742883
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0798444   -0.1162727   0.2415059
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0152156   -0.0536624   0.0218283
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0572865   -0.0134510   0.1230867
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.3248527   -0.0159241   0.5513209
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.4118315   -0.0801834   0.6797375
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1500697   -0.0328689   0.3006068
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3088969   -0.0031525   0.5238775
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2164901    0.1090946   0.3109395
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.4156597   -0.3815110   0.7528405
