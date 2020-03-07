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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        mwtkg         n_cell       n
-------------  ---------------  -----------------------------  -----------  -------  ------
0-3 months     JiVitA-3         BANGLADESH                     >=58 kg          473   20271
0-3 months     JiVitA-3         BANGLADESH                     <52 kg         18456   20271
0-3 months     JiVitA-3         BANGLADESH                     [52-58) kg      1342   20271
0-3 months     MAL-ED           BANGLADESH                     >=58 kg           45     246
0-3 months     MAL-ED           BANGLADESH                     <52 kg           159     246
0-3 months     MAL-ED           BANGLADESH                     [52-58) kg        42     246
0-3 months     MAL-ED           BRAZIL                         >=58 kg          140     216
0-3 months     MAL-ED           BRAZIL                         <52 kg            40     216
0-3 months     MAL-ED           BRAZIL                         [52-58) kg        36     216
0-3 months     MAL-ED           INDIA                          >=58 kg           39     237
0-3 months     MAL-ED           INDIA                          <52 kg           148     237
0-3 months     MAL-ED           INDIA                          [52-58) kg        50     237
0-3 months     MAL-ED           NEPAL                          >=58 kg           79     232
0-3 months     MAL-ED           NEPAL                          <52 kg            72     232
0-3 months     MAL-ED           NEPAL                          [52-58) kg        81     232
0-3 months     MAL-ED           PERU                           >=58 kg          102     281
0-3 months     MAL-ED           PERU                           <52 kg           110     281
0-3 months     MAL-ED           PERU                           [52-58) kg        69     281
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg          190     264
0-3 months     MAL-ED           SOUTH AFRICA                   <52 kg            29     264
0-3 months     MAL-ED           SOUTH AFRICA                   [52-58) kg        45     264
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           92     237
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            88     237
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        57     237
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg           74     565
0-3 months     NIH-Birth        BANGLADESH                     <52 kg           406     565
0-3 months     NIH-Birth        BANGLADESH                     [52-58) kg        85     565
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg          183     725
0-3 months     NIH-Crypto       BANGLADESH                     <52 kg           391     725
0-3 months     NIH-Crypto       BANGLADESH                     [52-58) kg       151     725
0-3 months     PROBIT           BELARUS                        >=58 kg         9443   12635
0-3 months     PROBIT           BELARUS                        <52 kg          1039   12635
0-3 months     PROBIT           BELARUS                        [52-58) kg      2153   12635
0-3 months     PROVIDE          BANGLADESH                     >=58 kg          116     639
0-3 months     PROVIDE          BANGLADESH                     <52 kg           412     639
0-3 months     PROVIDE          BANGLADESH                     [52-58) kg       111     639
0-3 months     SAS-CompFeed     INDIA                          >=58 kg           92    1263
0-3 months     SAS-CompFeed     INDIA                          <52 kg           971    1263
0-3 months     SAS-CompFeed     INDIA                          [52-58) kg       200    1263
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1272    1984
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           312    1984
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       400    1984
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg         4166    7862
0-3 months     ZVITAMBO         ZIMBABWE                       <52 kg          1620    7862
0-3 months     ZVITAMBO         ZIMBABWE                       [52-58) kg      2076    7862
3-6 months     JiVitA-3         BANGLADESH                     >=58 kg          310   12717
3-6 months     JiVitA-3         BANGLADESH                     <52 kg         11534   12717
3-6 months     JiVitA-3         BANGLADESH                     [52-58) kg       873   12717
3-6 months     MAL-ED           BANGLADESH                     >=58 kg           44     233
3-6 months     MAL-ED           BANGLADESH                     <52 kg           149     233
3-6 months     MAL-ED           BANGLADESH                     [52-58) kg        40     233
3-6 months     MAL-ED           BRAZIL                         >=58 kg          136     207
3-6 months     MAL-ED           BRAZIL                         <52 kg            37     207
3-6 months     MAL-ED           BRAZIL                         [52-58) kg        34     207
3-6 months     MAL-ED           INDIA                          >=58 kg           37     229
3-6 months     MAL-ED           INDIA                          <52 kg           143     229
3-6 months     MAL-ED           INDIA                          [52-58) kg        49     229
3-6 months     MAL-ED           NEPAL                          >=58 kg           78     233
3-6 months     MAL-ED           NEPAL                          <52 kg            73     233
3-6 months     MAL-ED           NEPAL                          [52-58) kg        82     233
3-6 months     MAL-ED           PERU                           >=58 kg           98     266
3-6 months     MAL-ED           PERU                           <52 kg           104     266
3-6 months     MAL-ED           PERU                           [52-58) kg        64     266
3-6 months     MAL-ED           SOUTH AFRICA                   >=58 kg          171     239
3-6 months     MAL-ED           SOUTH AFRICA                   <52 kg            28     239
3-6 months     MAL-ED           SOUTH AFRICA                   [52-58) kg        40     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           93     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            91     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        55     239
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg           70     522
3-6 months     NIH-Birth        BANGLADESH                     <52 kg           375     522
3-6 months     NIH-Birth        BANGLADESH                     [52-58) kg        77     522
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg          179     702
3-6 months     NIH-Crypto       BANGLADESH                     <52 kg           375     702
3-6 months     NIH-Crypto       BANGLADESH                     [52-58) kg       148     702
3-6 months     PROBIT           BELARUS                        >=58 kg         8292   11095
3-6 months     PROBIT           BELARUS                        <52 kg           927   11095
3-6 months     PROBIT           BELARUS                        [52-58) kg      1876   11095
3-6 months     PROVIDE          BANGLADESH                     >=58 kg          107     600
3-6 months     PROVIDE          BANGLADESH                     <52 kg           386     600
3-6 months     PROVIDE          BANGLADESH                     [52-58) kg       107     600
3-6 months     SAS-CompFeed     INDIA                          >=58 kg           82    1116
3-6 months     SAS-CompFeed     INDIA                          <52 kg           857    1116
3-6 months     SAS-CompFeed     INDIA                          [52-58) kg       177    1116
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1047    1632
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           249    1632
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       336    1632
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg         3228    6093
3-6 months     ZVITAMBO         ZIMBABWE                       <52 kg          1231    6093
3-6 months     ZVITAMBO         ZIMBABWE                       [52-58) kg      1634    6093
6-9 months     LCNI-5           MALAWI                         >=58 kg           74     559
6-9 months     LCNI-5           MALAWI                         <52 kg           334     559
6-9 months     LCNI-5           MALAWI                         [52-58) kg       151     559
6-9 months     MAL-ED           BANGLADESH                     >=58 kg           41     224
6-9 months     MAL-ED           BANGLADESH                     <52 kg           142     224
6-9 months     MAL-ED           BANGLADESH                     [52-58) kg        41     224
6-9 months     MAL-ED           BRAZIL                         >=58 kg          129     197
6-9 months     MAL-ED           BRAZIL                         <52 kg            35     197
6-9 months     MAL-ED           BRAZIL                         [52-58) kg        33     197
6-9 months     MAL-ED           INDIA                          >=58 kg           39     229
6-9 months     MAL-ED           INDIA                          <52 kg           143     229
6-9 months     MAL-ED           INDIA                          [52-58) kg        47     229
6-9 months     MAL-ED           NEPAL                          >=58 kg           78     230
6-9 months     MAL-ED           NEPAL                          <52 kg            74     230
6-9 months     MAL-ED           NEPAL                          [52-58) kg        78     230
6-9 months     MAL-ED           PERU                           >=58 kg           90     244
6-9 months     MAL-ED           PERU                           <52 kg            94     244
6-9 months     MAL-ED           PERU                           [52-58) kg        60     244
6-9 months     MAL-ED           SOUTH AFRICA                   >=58 kg          164     227
6-9 months     MAL-ED           SOUTH AFRICA                   <52 kg            27     227
6-9 months     MAL-ED           SOUTH AFRICA                   [52-58) kg        36     227
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           85     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            87     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        53     225
6-9 months     NIH-Birth        BANGLADESH                     >=58 kg           66     498
6-9 months     NIH-Birth        BANGLADESH                     <52 kg           354     498
6-9 months     NIH-Birth        BANGLADESH                     [52-58) kg        78     498
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg          177     693
6-9 months     NIH-Crypto       BANGLADESH                     <52 kg           371     693
6-9 months     NIH-Crypto       BANGLADESH                     [52-58) kg       145     693
6-9 months     PROBIT           BELARUS                        >=58 kg         7822   10459
6-9 months     PROBIT           BELARUS                        <52 kg           868   10459
6-9 months     PROBIT           BELARUS                        [52-58) kg      1769   10459
6-9 months     PROVIDE          BANGLADESH                     >=58 kg          105     576
6-9 months     PROVIDE          BANGLADESH                     <52 kg           368     576
6-9 months     PROVIDE          BANGLADESH                     [52-58) kg       103     576
6-9 months     SAS-CompFeed     INDIA                          >=58 kg           88    1134
6-9 months     SAS-CompFeed     INDIA                          <52 kg           871    1134
6-9 months     SAS-CompFeed     INDIA                          [52-58) kg       175    1134
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg          926    1462
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           232    1462
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       304    1462
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg         2896    5537
6-9 months     ZVITAMBO         ZIMBABWE                       <52 kg          1176    5537
6-9 months     ZVITAMBO         ZIMBABWE                       [52-58) kg      1465    5537
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg          339    1106
9-12 months    iLiNS-Zinc       BURKINA FASO                   <52 kg           390    1106
9-12 months    iLiNS-Zinc       BURKINA FASO                   [52-58) kg       377    1106
9-12 months    LCNI-5           MALAWI                         >=58 kg           50     383
9-12 months    LCNI-5           MALAWI                         <52 kg           232     383
9-12 months    LCNI-5           MALAWI                         [52-58) kg       101     383
9-12 months    MAL-ED           BANGLADESH                     >=58 kg           41     225
9-12 months    MAL-ED           BANGLADESH                     <52 kg           144     225
9-12 months    MAL-ED           BANGLADESH                     [52-58) kg        40     225
9-12 months    MAL-ED           BRAZIL                         >=58 kg          125     193
9-12 months    MAL-ED           BRAZIL                         <52 kg            35     193
9-12 months    MAL-ED           BRAZIL                         [52-58) kg        33     193
9-12 months    MAL-ED           INDIA                          >=58 kg           40     226
9-12 months    MAL-ED           INDIA                          <52 kg           139     226
9-12 months    MAL-ED           INDIA                          [52-58) kg        47     226
9-12 months    MAL-ED           NEPAL                          >=58 kg           78     229
9-12 months    MAL-ED           NEPAL                          <52 kg            73     229
9-12 months    MAL-ED           NEPAL                          [52-58) kg        78     229
9-12 months    MAL-ED           PERU                           >=58 kg           87     234
9-12 months    MAL-ED           PERU                           <52 kg            90     234
9-12 months    MAL-ED           PERU                           [52-58) kg        57     234
9-12 months    MAL-ED           SOUTH AFRICA                   >=58 kg          164     229
9-12 months    MAL-ED           SOUTH AFRICA                   <52 kg            28     229
9-12 months    MAL-ED           SOUTH AFRICA                   [52-58) kg        37     229
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           87     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            84     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        53     224
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg           63     481
9-12 months    NIH-Birth        BANGLADESH                     <52 kg           342     481
9-12 months    NIH-Birth        BANGLADESH                     [52-58) kg        76     481
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg          174     683
9-12 months    NIH-Crypto       BANGLADESH                     <52 kg           367     683
9-12 months    NIH-Crypto       BANGLADESH                     [52-58) kg       142     683
9-12 months    PROBIT           BELARUS                        >=58 kg         8004   10694
9-12 months    PROBIT           BELARUS                        <52 kg           883   10694
9-12 months    PROBIT           BELARUS                        [52-58) kg      1807   10694
9-12 months    PROVIDE          BANGLADESH                     >=58 kg          107     569
9-12 months    PROVIDE          BANGLADESH                     <52 kg           362     569
9-12 months    PROVIDE          BANGLADESH                     [52-58) kg       100     569
9-12 months    SAS-CompFeed     INDIA                          >=58 kg           87    1136
9-12 months    SAS-CompFeed     INDIA                          <52 kg           870    1136
9-12 months    SAS-CompFeed     INDIA                          [52-58) kg       179    1136
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg          674    1061
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           177    1061
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       210    1061
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg         2536    5027
9-12 months    ZVITAMBO         ZIMBABWE                       <52 kg          1140    5027
9-12 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      1351    5027
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg          302     966
12-15 months   iLiNS-Zinc       BURKINA FASO                   <52 kg           334     966
12-15 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg       330     966
12-15 months   LCNI-5           MALAWI                         >=58 kg           11     126
12-15 months   LCNI-5           MALAWI                         <52 kg            81     126
12-15 months   LCNI-5           MALAWI                         [52-58) kg        34     126
12-15 months   MAL-ED           BANGLADESH                     >=58 kg           40     212
12-15 months   MAL-ED           BANGLADESH                     <52 kg           134     212
12-15 months   MAL-ED           BANGLADESH                     [52-58) kg        38     212
12-15 months   MAL-ED           BRAZIL                         >=58 kg          118     183
12-15 months   MAL-ED           BRAZIL                         <52 kg            33     183
12-15 months   MAL-ED           BRAZIL                         [52-58) kg        32     183
12-15 months   MAL-ED           INDIA                          >=58 kg           40     225
12-15 months   MAL-ED           INDIA                          <52 kg           138     225
12-15 months   MAL-ED           INDIA                          [52-58) kg        47     225
12-15 months   MAL-ED           NEPAL                          >=58 kg           78     230
12-15 months   MAL-ED           NEPAL                          <52 kg            73     230
12-15 months   MAL-ED           NEPAL                          [52-58) kg        79     230
12-15 months   MAL-ED           PERU                           >=58 kg           82     223
12-15 months   MAL-ED           PERU                           <52 kg            86     223
12-15 months   MAL-ED           PERU                           [52-58) kg        55     223
12-15 months   MAL-ED           SOUTH AFRICA                   >=58 kg          159     224
12-15 months   MAL-ED           SOUTH AFRICA                   <52 kg            26     224
12-15 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        39     224
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           89     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            85     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        52     226
12-15 months   NIH-Birth        BANGLADESH                     >=58 kg           62     461
12-15 months   NIH-Birth        BANGLADESH                     <52 kg           333     461
12-15 months   NIH-Birth        BANGLADESH                     [52-58) kg        66     461
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg          169     666
12-15 months   NIH-Crypto       BANGLADESH                     <52 kg           358     666
12-15 months   NIH-Crypto       BANGLADESH                     [52-58) kg       139     666
12-15 months   PROBIT           BELARUS                        >=58 kg          706     994
12-15 months   PROBIT           BELARUS                        <52 kg            96     994
12-15 months   PROBIT           BELARUS                        [52-58) kg       192     994
12-15 months   PROVIDE          BANGLADESH                     >=58 kg          104     537
12-15 months   PROVIDE          BANGLADESH                     <52 kg           337     537
12-15 months   PROVIDE          BANGLADESH                     [52-58) kg        96     537
12-15 months   SAS-CompFeed     INDIA                          >=58 kg           89    1161
12-15 months   SAS-CompFeed     INDIA                          <52 kg           883    1161
12-15 months   SAS-CompFeed     INDIA                          [52-58) kg       189    1161
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg          501     775
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           123     775
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       151     775
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg          917    1851
12-15 months   ZVITAMBO         ZIMBABWE                       <52 kg           456    1851
12-15 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       478    1851
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg          312    1040
15-18 months   iLiNS-Zinc       BURKINA FASO                   <52 kg           379    1040
15-18 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg       349    1040
15-18 months   LCNI-5           MALAWI                         >=58 kg           13     119
15-18 months   LCNI-5           MALAWI                         <52 kg            79     119
15-18 months   LCNI-5           MALAWI                         [52-58) kg        27     119
15-18 months   MAL-ED           BANGLADESH                     >=58 kg           40     212
15-18 months   MAL-ED           BANGLADESH                     <52 kg           135     212
15-18 months   MAL-ED           BANGLADESH                     [52-58) kg        37     212
15-18 months   MAL-ED           BRAZIL                         >=58 kg          111     174
15-18 months   MAL-ED           BRAZIL                         <52 kg            32     174
15-18 months   MAL-ED           BRAZIL                         [52-58) kg        31     174
15-18 months   MAL-ED           INDIA                          >=58 kg           38     225
15-18 months   MAL-ED           INDIA                          <52 kg           140     225
15-18 months   MAL-ED           INDIA                          [52-58) kg        47     225
15-18 months   MAL-ED           NEPAL                          >=58 kg           76     227
15-18 months   MAL-ED           NEPAL                          <52 kg            73     227
15-18 months   MAL-ED           NEPAL                          [52-58) kg        78     227
15-18 months   MAL-ED           PERU                           >=58 kg           79     214
15-18 months   MAL-ED           PERU                           <52 kg            81     214
15-18 months   MAL-ED           PERU                           [52-58) kg        54     214
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg          158     221
15-18 months   MAL-ED           SOUTH AFRICA                   <52 kg            27     221
15-18 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        36     221
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           83     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            84     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        53     220
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg           60     449
15-18 months   NIH-Birth        BANGLADESH                     <52 kg           322     449
15-18 months   NIH-Birth        BANGLADESH                     [52-58) kg        67     449
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg          160     605
15-18 months   NIH-Crypto       BANGLADESH                     <52 kg           322     605
15-18 months   NIH-Crypto       BANGLADESH                     [52-58) kg       123     605
15-18 months   PROBIT           BELARUS                        >=58 kg          183     277
15-18 months   PROBIT           BELARUS                        <52 kg            35     277
15-18 months   PROBIT           BELARUS                        [52-58) kg        59     277
15-18 months   PROVIDE          BANGLADESH                     >=58 kg          106     532
15-18 months   PROVIDE          BANGLADESH                     <52 kg           330     532
15-18 months   PROVIDE          BANGLADESH                     [52-58) kg        96     532
15-18 months   SAS-CompFeed     INDIA                          >=58 kg           92    1167
15-18 months   SAS-CompFeed     INDIA                          <52 kg           886    1167
15-18 months   SAS-CompFeed     INDIA                          [52-58) kg       189    1167
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg          422     654
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg            96     654
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       136     654
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg          548    1191
15-18 months   ZVITAMBO         ZIMBABWE                       <52 kg           320    1191
15-18 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       323    1191
18-21 months   LCNI-5           MALAWI                         >=58 kg           59     453
18-21 months   LCNI-5           MALAWI                         <52 kg           283     453
18-21 months   LCNI-5           MALAWI                         [52-58) kg       111     453
18-21 months   MAL-ED           BANGLADESH                     >=58 kg           40     209
18-21 months   MAL-ED           BANGLADESH                     <52 kg           132     209
18-21 months   MAL-ED           BANGLADESH                     [52-58) kg        37     209
18-21 months   MAL-ED           BRAZIL                         >=58 kg          108     166
18-21 months   MAL-ED           BRAZIL                         <52 kg            27     166
18-21 months   MAL-ED           BRAZIL                         [52-58) kg        31     166
18-21 months   MAL-ED           INDIA                          >=58 kg           38     225
18-21 months   MAL-ED           INDIA                          <52 kg           140     225
18-21 months   MAL-ED           INDIA                          [52-58) kg        47     225
18-21 months   MAL-ED           NEPAL                          >=58 kg           76     227
18-21 months   MAL-ED           NEPAL                          <52 kg            73     227
18-21 months   MAL-ED           NEPAL                          [52-58) kg        78     227
18-21 months   MAL-ED           PERU                           >=58 kg           75     202
18-21 months   MAL-ED           PERU                           <52 kg            77     202
18-21 months   MAL-ED           PERU                           [52-58) kg        50     202
18-21 months   MAL-ED           SOUTH AFRICA                   >=58 kg          162     229
18-21 months   MAL-ED           SOUTH AFRICA                   <52 kg            29     229
18-21 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        38     229
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           78     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            82     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     208
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg           56     422
18-21 months   NIH-Birth        BANGLADESH                     <52 kg           301     422
18-21 months   NIH-Birth        BANGLADESH                     [52-58) kg        65     422
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg          146     547
18-21 months   NIH-Crypto       BANGLADESH                     <52 kg           294     547
18-21 months   NIH-Crypto       BANGLADESH                     [52-58) kg       107     547
18-21 months   PROBIT           BELARUS                        >=58 kg          155     211
18-21 months   PROBIT           BELARUS                        <52 kg            16     211
18-21 months   PROBIT           BELARUS                        [52-58) kg        40     211
18-21 months   PROVIDE          BANGLADESH                     >=58 kg          102     541
18-21 months   PROVIDE          BANGLADESH                     <52 kg           342     541
18-21 months   PROVIDE          BANGLADESH                     [52-58) kg        97     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            9      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1      11
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg          274     651
18-21 months   ZVITAMBO         ZIMBABWE                       <52 kg           185     651
18-21 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       192     651
21-24 months   LCNI-5           MALAWI                         >=58 kg           51     386
21-24 months   LCNI-5           MALAWI                         <52 kg           240     386
21-24 months   LCNI-5           MALAWI                         [52-58) kg        95     386
21-24 months   MAL-ED           BANGLADESH                     >=58 kg           40     207
21-24 months   MAL-ED           BANGLADESH                     <52 kg           131     207
21-24 months   MAL-ED           BANGLADESH                     [52-58) kg        36     207
21-24 months   MAL-ED           BRAZIL                         >=58 kg          105     164
21-24 months   MAL-ED           BRAZIL                         <52 kg            28     164
21-24 months   MAL-ED           BRAZIL                         [52-58) kg        31     164
21-24 months   MAL-ED           INDIA                          >=58 kg           38     225
21-24 months   MAL-ED           INDIA                          <52 kg           140     225
21-24 months   MAL-ED           INDIA                          [52-58) kg        47     225
21-24 months   MAL-ED           NEPAL                          >=58 kg           76     227
21-24 months   MAL-ED           NEPAL                          <52 kg            74     227
21-24 months   MAL-ED           NEPAL                          [52-58) kg        77     227
21-24 months   MAL-ED           PERU                           >=58 kg           75     189
21-24 months   MAL-ED           PERU                           <52 kg            67     189
21-24 months   MAL-ED           PERU                           [52-58) kg        47     189
21-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg          166     231
21-24 months   MAL-ED           SOUTH AFRICA                   <52 kg            28     231
21-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        37     231
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           79     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            82     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        45     206
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg           56     411
21-24 months   NIH-Birth        BANGLADESH                     <52 kg           293     411
21-24 months   NIH-Birth        BANGLADESH                     [52-58) kg        62     411
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg          134     493
21-24 months   NIH-Crypto       BANGLADESH                     <52 kg           260     493
21-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg        99     493
21-24 months   PROBIT           BELARUS                        >=58 kg          158     207
21-24 months   PROBIT           BELARUS                        <52 kg            10     207
21-24 months   PROBIT           BELARUS                        [52-58) kg        39     207
21-24 months   PROVIDE          BANGLADESH                     >=58 kg           91     484
21-24 months   PROVIDE          BANGLADESH                     <52 kg           306     484
21-24 months   PROVIDE          BANGLADESH                     [52-58) kg        87     484
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          113     301
21-24 months   ZVITAMBO         ZIMBABWE                       <52 kg            99     301
21-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg        89     301


The following strata were considered:

* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/0b5e742a-48b8-475d-802e-1e88fd465f2b/062901e1-095b-4aea-9511-5bd600c2643f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0b5e742a-48b8-475d-802e-1e88fd465f2b/062901e1-095b-4aea-9511-5bd600c2643f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0b5e742a-48b8-475d-802e-1e88fd465f2b/062901e1-095b-4aea-9511-5bd600c2643f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     JiVitA-3         BANGLADESH                     >=58 kg              NA                0.8900920    0.8727308   0.9074532
0-3 months     JiVitA-3         BANGLADESH                     <52 kg               NA                0.8694528    0.8662489   0.8726567
0-3 months     JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.8859337    0.8750006   0.8968668
0-3 months     MAL-ED           BANGLADESH                     >=58 kg              NA                0.8668090    0.8104604   0.9231576
0-3 months     MAL-ED           BANGLADESH                     <52 kg               NA                0.8700857    0.8404081   0.8997633
0-3 months     MAL-ED           BANGLADESH                     [52-58) kg           NA                0.9242229    0.8822206   0.9662251
0-3 months     MAL-ED           BRAZIL                         >=58 kg              NA                1.0661234    1.0214495   1.1107974
0-3 months     MAL-ED           BRAZIL                         <52 kg               NA                1.0666662    0.9936850   1.1396473
0-3 months     MAL-ED           BRAZIL                         [52-58) kg           NA                1.0518101    0.9757267   1.1278935
0-3 months     MAL-ED           INDIA                          >=58 kg              NA                0.7562638    0.7102452   0.8022823
0-3 months     MAL-ED           INDIA                          <52 kg               NA                0.7588802    0.7304584   0.7873021
0-3 months     MAL-ED           INDIA                          [52-58) kg           NA                0.7714528    0.7209204   0.8219852
0-3 months     MAL-ED           NEPAL                          >=58 kg              NA                0.9911431    0.9431327   1.0391535
0-3 months     MAL-ED           NEPAL                          <52 kg               NA                0.8979743    0.8497542   0.9461944
0-3 months     MAL-ED           NEPAL                          [52-58) kg           NA                0.9760243    0.9356349   1.0164137
0-3 months     MAL-ED           PERU                           >=58 kg              NA                0.9598265    0.9156128   1.0040402
0-3 months     MAL-ED           PERU                           <52 kg               NA                0.9909764    0.9538484   1.0281044
0-3 months     MAL-ED           PERU                           [52-58) kg           NA                0.9541602    0.9030390   1.0052814
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.9660318    0.9338885   0.9981751
0-3 months     MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.8482559    0.7758799   0.9206318
0-3 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.8889676    0.8276917   0.9502435
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.8964074    0.8520177   0.9407970
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8566862    0.8014900   0.9118824
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.9086429    0.8514381   0.9658478
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                0.8519649    0.7832437   0.9206860
0-3 months     NIH-Birth        BANGLADESH                     <52 kg               NA                0.8056015    0.7884850   0.8227179
0-3 months     NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.8366840    0.7904409   0.8829270
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.8828629    0.8510535   0.9146723
0-3 months     NIH-Crypto       BANGLADESH                     <52 kg               NA                0.8796680    0.8610424   0.8982935
0-3 months     NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.8991015    0.8665540   0.9316489
0-3 months     PROBIT           BELARUS                        >=58 kg              NA                0.8358374    0.8245155   0.8471593
0-3 months     PROBIT           BELARUS                        <52 kg               NA                0.8310937    0.8197079   0.8424795
0-3 months     PROBIT           BELARUS                        [52-58) kg           NA                0.8442062    0.8331113   0.8553011
0-3 months     PROVIDE          BANGLADESH                     >=58 kg              NA                0.9723911    0.9328779   1.0119043
0-3 months     PROVIDE          BANGLADESH                     <52 kg               NA                0.8753673    0.8582842   0.8924503
0-3 months     PROVIDE          BANGLADESH                     [52-58) kg           NA                0.9263298    0.8914432   0.9612163
0-3 months     SAS-CompFeed     INDIA                          >=58 kg              NA                0.8463575    0.8034014   0.8893136
0-3 months     SAS-CompFeed     INDIA                          <52 kg               NA                0.7787438    0.7580350   0.7994526
0-3 months     SAS-CompFeed     INDIA                          [52-58) kg           NA                0.8278794    0.8020873   0.8536715
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.9307386    0.9178180   0.9436591
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.9005327    0.8755510   0.9255144
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.9126809    0.8905030   0.9348588
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.9664175    0.9592029   0.9736322
0-3 months     ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.9020820    0.8912126   0.9129514
0-3 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.9439037    0.9339054   0.9539020
3-6 months     JiVitA-3         BANGLADESH                     >=58 kg              NA                0.4501053    0.4313781   0.4688325
3-6 months     JiVitA-3         BANGLADESH                     <52 kg               NA                0.4401297    0.4371737   0.4430856
3-6 months     JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.4547353    0.4397501   0.4697206
3-6 months     MAL-ED           BANGLADESH                     >=58 kg              NA                0.4644637    0.4300152   0.4989122
3-6 months     MAL-ED           BANGLADESH                     <52 kg               NA                0.4613223    0.4410806   0.4815641
3-6 months     MAL-ED           BANGLADESH                     [52-58) kg           NA                0.5355010    0.4921371   0.5788649
3-6 months     MAL-ED           BRAZIL                         >=58 kg              NA                0.5715093    0.5343875   0.6086312
3-6 months     MAL-ED           BRAZIL                         <52 kg               NA                0.5453720    0.4830237   0.6077204
3-6 months     MAL-ED           BRAZIL                         [52-58) kg           NA                0.6291784    0.5349072   0.7234496
3-6 months     MAL-ED           INDIA                          >=58 kg              NA                0.4511908    0.4177417   0.4846398
3-6 months     MAL-ED           INDIA                          <52 kg               NA                0.4415664    0.4183286   0.4648042
3-6 months     MAL-ED           INDIA                          [52-58) kg           NA                0.4479931    0.4093788   0.4866075
3-6 months     MAL-ED           NEPAL                          >=58 kg              NA                0.5483580    0.5113652   0.5853508
3-6 months     MAL-ED           NEPAL                          <52 kg               NA                0.4994604    0.4594109   0.5395098
3-6 months     MAL-ED           NEPAL                          [52-58) kg           NA                0.5161873    0.4892791   0.5430955
3-6 months     MAL-ED           PERU                           >=58 kg              NA                0.5307365    0.4988567   0.5626162
3-6 months     MAL-ED           PERU                           <52 kg               NA                0.4796117    0.4530438   0.5061796
3-6 months     MAL-ED           PERU                           [52-58) kg           NA                0.4794716    0.4364428   0.5225003
3-6 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.4529400    0.4213772   0.4845028
3-6 months     MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.4719639    0.4134714   0.5304563
3-6 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.4924427    0.4324713   0.5524141
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.4495937    0.4111591   0.4880283
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4652894    0.4210430   0.5095359
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4563718    0.4198152   0.4929284
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4847555    0.4196206   0.5498904
3-6 months     NIH-Birth        BANGLADESH                     <52 kg               NA                0.4477819    0.4295759   0.4659880
3-6 months     NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.4929139    0.4474028   0.5384250
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.5145859    0.4886725   0.5404992
3-6 months     NIH-Crypto       BANGLADESH                     <52 kg               NA                0.4875608    0.4741766   0.5009450
3-6 months     NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.5046487    0.4800449   0.5292525
3-6 months     PROBIT           BELARUS                        >=58 kg              NA                0.6684156    0.6596891   0.6771422
3-6 months     PROBIT           BELARUS                        <52 kg               NA                0.6488405    0.6326136   0.6650674
3-6 months     PROBIT           BELARUS                        [52-58) kg           NA                0.6635642    0.6503732   0.6767552
3-6 months     PROVIDE          BANGLADESH                     >=58 kg              NA                0.5147838    0.4871148   0.5424528
3-6 months     PROVIDE          BANGLADESH                     <52 kg               NA                0.4693803    0.4531683   0.4855923
3-6 months     PROVIDE          BANGLADESH                     [52-58) kg           NA                0.5365597    0.5046712   0.5684483
3-6 months     SAS-CompFeed     INDIA                          >=58 kg              NA                0.4646264    0.4386173   0.4906355
3-6 months     SAS-CompFeed     INDIA                          <52 kg               NA                0.4463352    0.4321723   0.4604980
3-6 months     SAS-CompFeed     INDIA                          [52-58) kg           NA                0.4627354    0.4394816   0.4859891
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.4256147    0.4142995   0.4369298
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4105411    0.3913901   0.4296920
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4063535    0.3871970   0.4255100
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.4891928    0.4829444   0.4954412
3-6 months     ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.4553458    0.4451305   0.4655610
3-6 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.4746556    0.4661511   0.4831602
6-9 months     LCNI-5           MALAWI                         >=58 kg              NA                0.2735298    0.2410712   0.3059885
6-9 months     LCNI-5           MALAWI                         <52 kg               NA                0.2822560    0.2654519   0.2990600
6-9 months     LCNI-5           MALAWI                         [52-58) kg           NA                0.2935773    0.2708223   0.3163323
6-9 months     MAL-ED           BANGLADESH                     >=58 kg              NA                0.2773323    0.2348536   0.3198110
6-9 months     MAL-ED           BANGLADESH                     <52 kg               NA                0.2304365    0.2138846   0.2469884
6-9 months     MAL-ED           BANGLADESH                     [52-58) kg           NA                0.2513890    0.2192264   0.2835517
6-9 months     MAL-ED           BRAZIL                         >=58 kg              NA                0.3959612    0.3634051   0.4285172
6-9 months     MAL-ED           BRAZIL                         <52 kg               NA                0.3312328    0.2749450   0.3875205
6-9 months     MAL-ED           BRAZIL                         [52-58) kg           NA                0.3689621    0.3156309   0.4222934
6-9 months     MAL-ED           INDIA                          >=58 kg              NA                0.2540935    0.2281377   0.2800493
6-9 months     MAL-ED           INDIA                          <52 kg               NA                0.2343124    0.2147652   0.2538595
6-9 months     MAL-ED           INDIA                          [52-58) kg           NA                0.2002609    0.1667577   0.2337640
6-9 months     MAL-ED           NEPAL                          >=58 kg              NA                0.2859869    0.2582172   0.3137566
6-9 months     MAL-ED           NEPAL                          <52 kg               NA                0.2502812    0.2266438   0.2739186
6-9 months     MAL-ED           NEPAL                          [52-58) kg           NA                0.2714624    0.2487119   0.2942129
6-9 months     MAL-ED           PERU                           >=58 kg              NA                0.2692329    0.2445066   0.2939592
6-9 months     MAL-ED           PERU                           <52 kg               NA                0.2552040    0.2315498   0.2788583
6-9 months     MAL-ED           PERU                           [52-58) kg           NA                0.2588453    0.2236089   0.2940818
6-9 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.2554995    0.2296988   0.2813001
6-9 months     MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.2655216    0.2034107   0.3276324
6-9 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.2678139    0.2221649   0.3134630
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2654367    0.2319349   0.2989384
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2120214    0.1673985   0.2566442
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2381719    0.1930817   0.2832621
6-9 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2400577    0.1985687   0.2815467
6-9 months     NIH-Birth        BANGLADESH                     <52 kg               NA                0.2351836    0.2186516   0.2517157
6-9 months     NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2379289    0.2092521   0.2666057
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.2931403    0.2727588   0.3135217
6-9 months     NIH-Crypto       BANGLADESH                     <52 kg               NA                0.2469093    0.2325857   0.2612328
6-9 months     NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2889314    0.2660889   0.3117739
6-9 months     PROBIT           BELARUS                        >=58 kg              NA                0.4750743    0.4662063   0.4839422
6-9 months     PROBIT           BELARUS                        <52 kg               NA                0.4669972    0.4522608   0.4817337
6-9 months     PROBIT           BELARUS                        [52-58) kg           NA                0.4705493    0.4559498   0.4851488
6-9 months     PROVIDE          BANGLADESH                     >=58 kg              NA                0.2876973    0.2642963   0.3110982
6-9 months     PROVIDE          BANGLADESH                     <52 kg               NA                0.2269067    0.2116185   0.2421948
6-9 months     PROVIDE          BANGLADESH                     [52-58) kg           NA                0.2894113    0.2610114   0.3178112
6-9 months     SAS-CompFeed     INDIA                          >=58 kg              NA                0.2660420    0.2276180   0.3044660
6-9 months     SAS-CompFeed     INDIA                          <52 kg               NA                0.1941021    0.1788680   0.2093362
6-9 months     SAS-CompFeed     INDIA                          [52-58) kg           NA                0.2554293    0.2302283   0.2806303
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2635667    0.2524856   0.2746478
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2339271    0.2082033   0.2596510
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2465202    0.2284218   0.2646185
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2641791    0.2578743   0.2704839
6-9 months     ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2506548    0.2415090   0.2598007
6-9 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2516589    0.2426391   0.2606787
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2588125    0.2317979   0.2858271
9-12 months    iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2265136    0.2079059   0.2451212
9-12 months    iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2438602    0.2274258   0.2602946
9-12 months    LCNI-5           MALAWI                         >=58 kg              NA                0.2294892    0.1900316   0.2689468
9-12 months    LCNI-5           MALAWI                         <52 kg               NA                0.1960976    0.1754143   0.2167809
9-12 months    LCNI-5           MALAWI                         [52-58) kg           NA                0.2008914    0.1699016   0.2318813
9-12 months    MAL-ED           BANGLADESH                     >=58 kg              NA                0.1774876    0.1454440   0.2095311
9-12 months    MAL-ED           BANGLADESH                     <52 kg               NA                0.1668677    0.1506635   0.1830718
9-12 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                0.1906713    0.1534927   0.2278499
9-12 months    MAL-ED           BRAZIL                         >=58 kg              NA                0.3024243    0.2594692   0.3453795
9-12 months    MAL-ED           BRAZIL                         <52 kg               NA                0.2900438    0.2315184   0.3485693
9-12 months    MAL-ED           BRAZIL                         [52-58) kg           NA                0.1999917    0.1438177   0.2561656
9-12 months    MAL-ED           INDIA                          >=58 kg              NA                0.1840337    0.1446958   0.2233717
9-12 months    MAL-ED           INDIA                          <52 kg               NA                0.1673296    0.1508645   0.1837948
9-12 months    MAL-ED           INDIA                          [52-58) kg           NA                0.2059756    0.1743823   0.2375690
9-12 months    MAL-ED           NEPAL                          >=58 kg              NA                0.1972875    0.1786035   0.2159715
9-12 months    MAL-ED           NEPAL                          <52 kg               NA                0.1795444    0.1465877   0.2125012
9-12 months    MAL-ED           NEPAL                          [52-58) kg           NA                0.1807308    0.1588642   0.2025974
9-12 months    MAL-ED           PERU                           >=58 kg              NA                0.1818102    0.1555035   0.2081169
9-12 months    MAL-ED           PERU                           <52 kg               NA                0.1767260    0.1528563   0.2005956
9-12 months    MAL-ED           PERU                           [52-58) kg           NA                0.2096465    0.1803750   0.2389180
9-12 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.2233288    0.1981875   0.2484701
9-12 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.2234772    0.1597966   0.2871578
9-12 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.1716383    0.1059700   0.2373067
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1546412    0.1219141   0.1873683
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1678184    0.1354096   0.2002272
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1855200    0.1437036   0.2273364
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1811055    0.1475798   0.2146313
9-12 months    NIH-Birth        BANGLADESH                     <52 kg               NA                0.1490326    0.1332870   0.1647782
9-12 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2147771    0.1843414   0.2452129
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.2192562    0.1979205   0.2405919
9-12 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1812172    0.1672547   0.1951798
9-12 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2145828    0.1928450   0.2363206
9-12 months    PROBIT           BELARUS                        >=58 kg              NA                0.3705948    0.3557357   0.3854538
9-12 months    PROBIT           BELARUS                        <52 kg               NA                0.3469287    0.3263165   0.3675409
9-12 months    PROBIT           BELARUS                        [52-58) kg           NA                0.3492492    0.3342657   0.3642327
9-12 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.2012865    0.1799403   0.2226326
9-12 months    PROVIDE          BANGLADESH                     <52 kg               NA                0.1735756    0.1623500   0.1848013
9-12 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1664345    0.1415741   0.1912949
9-12 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.2374314    0.2093280   0.2655349
9-12 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.1869961    0.1778493   0.1961429
9-12 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.2165796    0.1923955   0.2407637
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2122462    0.1998393   0.2246532
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1790638    0.1516327   0.2064950
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2075278    0.1851971   0.2298586
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1853268    0.1787676   0.1918859
9-12 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1751121    0.1660445   0.1841797
9-12 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1749998    0.1663163   0.1836833
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1970622    0.1764201   0.2177044
12-15 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1757486    0.1545176   0.1969795
12-15 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2050699    0.1852250   0.2249148
12-15 months   LCNI-5           MALAWI                         >=58 kg              NA                0.1630810    0.0845442   0.2416178
12-15 months   LCNI-5           MALAWI                         <52 kg               NA                0.1382637    0.1002606   0.1762668
12-15 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.1803363    0.1005158   0.2601567
12-15 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.1871793    0.1541726   0.2201860
12-15 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.1265468    0.1077557   0.1453380
12-15 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.1118838    0.0697642   0.1540034
12-15 months   MAL-ED           BRAZIL                         >=58 kg              NA                0.1965039    0.1656681   0.2273397
12-15 months   MAL-ED           BRAZIL                         <52 kg               NA                0.2473343    0.1851673   0.3095013
12-15 months   MAL-ED           BRAZIL                         [52-58) kg           NA                0.2213642    0.1660265   0.2767020
12-15 months   MAL-ED           INDIA                          >=58 kg              NA                0.2180351    0.1791455   0.2569247
12-15 months   MAL-ED           INDIA                          <52 kg               NA                0.1642578    0.1432082   0.1853073
12-15 months   MAL-ED           INDIA                          [52-58) kg           NA                0.1673177    0.1401593   0.1944761
12-15 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1403775    0.1147067   0.1660483
12-15 months   MAL-ED           NEPAL                          <52 kg               NA                0.1640608    0.1291932   0.1989284
12-15 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.1543508    0.1289924   0.1797092
12-15 months   MAL-ED           PERU                           >=58 kg              NA                0.1697898    0.1406180   0.1989616
12-15 months   MAL-ED           PERU                           <52 kg               NA                0.1237236    0.0996691   0.1477781
12-15 months   MAL-ED           PERU                           [52-58) kg           NA                0.1267211    0.0924393   0.1610028
12-15 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.1881041    0.1577480   0.2184603
12-15 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.1704350    0.1150312   0.2258387
12-15 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.2236275    0.1562858   0.2909692
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1979843    0.1590991   0.2368695
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1278434    0.0845154   0.1711714
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1451355    0.1032402   0.1870308
12-15 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1314583    0.0977094   0.1652072
12-15 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.1330189    0.1188697   0.1471681
12-15 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1169346    0.0862753   0.1475940
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1989167    0.1753567   0.2224767
12-15 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1549067    0.1411918   0.1686215
12-15 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1452563    0.1246239   0.1658887
12-15 months   PROBIT           BELARUS                        >=58 kg              NA                0.2261714    0.1366336   0.3157093
12-15 months   PROBIT           BELARUS                        <52 kg               NA                0.2213499    0.1642884   0.2784114
12-15 months   PROBIT           BELARUS                        [52-58) kg           NA                0.2099601    0.1210994   0.2988207
12-15 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1918447    0.1636231   0.2200662
12-15 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.1739640    0.1600368   0.1878912
12-15 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1885381    0.1577492   0.2193269
12-15 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.2028357    0.1700917   0.2355797
12-15 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.1808674    0.1696283   0.1921064
12-15 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.1959742    0.1741477   0.2178008
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1787892    0.1640892   0.1934892
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1467951    0.1213951   0.1721950
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1737006    0.1493075   0.1980937
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1436380    0.1319877   0.1552884
12-15 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1519341    0.1363191   0.1675491
12-15 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1610438    0.1458970   0.1761907
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1779528    0.1553068   0.2005988
15-18 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1607485    0.1409033   0.1805936
15-18 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1868533    0.1672250   0.2064817
15-18 months   LCNI-5           MALAWI                         >=58 kg              NA                0.1428219    0.0445051   0.2411388
15-18 months   LCNI-5           MALAWI                         <52 kg               NA                0.1797576    0.1439397   0.2155754
15-18 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.1836730    0.1046711   0.2626748
15-18 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.1390152    0.1019087   0.1761217
15-18 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.1339659    0.1159267   0.1520052
15-18 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.1790564    0.1356257   0.2224871
15-18 months   MAL-ED           BRAZIL                         >=58 kg              NA                0.2118301    0.1751074   0.2485528
15-18 months   MAL-ED           BRAZIL                         <52 kg               NA                0.2137875    0.1645548   0.2630202
15-18 months   MAL-ED           BRAZIL                         [52-58) kg           NA                0.1659289    0.1162652   0.2155926
15-18 months   MAL-ED           INDIA                          >=58 kg              NA                0.1615192    0.1226313   0.2004071
15-18 months   MAL-ED           INDIA                          <52 kg               NA                0.1690094    0.1507216   0.1872972
15-18 months   MAL-ED           INDIA                          [52-58) kg           NA                0.1454032    0.1112019   0.1796045
15-18 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1847192    0.1568259   0.2126126
15-18 months   MAL-ED           NEPAL                          <52 kg               NA                0.1586117    0.1304748   0.1867486
15-18 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.1764762    0.1509366   0.2020158
15-18 months   MAL-ED           PERU                           >=58 kg              NA                0.1332221    0.1006630   0.1657812
15-18 months   MAL-ED           PERU                           <52 kg               NA                0.1390916    0.1103633   0.1678198
15-18 months   MAL-ED           PERU                           [52-58) kg           NA                0.1758048    0.1387091   0.2129005
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.2315990    0.1975788   0.2656191
15-18 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.1716935    0.1132303   0.2301568
15-18 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.1992263    0.1330850   0.2653675
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1175970    0.0779406   0.1572534
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1576443    0.1225473   0.1927413
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1587514    0.1137537   0.2037490
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1833542    0.1374113   0.2292971
15-18 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.1470714    0.1315101   0.1626328
15-18 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1542042    0.1077930   0.2006153
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1755313    0.1544107   0.1966519
15-18 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1609003    0.1473240   0.1744765
15-18 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1433290    0.1178512   0.1688067
15-18 months   PROBIT           BELARUS                        >=58 kg              NA                0.2125783    0.1453494   0.2798072
15-18 months   PROBIT           BELARUS                        <52 kg               NA                0.2679954    0.0966213   0.4393695
15-18 months   PROBIT           BELARUS                        [52-58) kg           NA                0.2341887    0.0936634   0.3747140
15-18 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1788723    0.1512446   0.2064999
15-18 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.1434888    0.1290409   0.1579368
15-18 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1767415    0.1483437   0.2051394
15-18 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1777590    0.1176599   0.2378581
15-18 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.1793031    0.1665418   0.1920645
15-18 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.1669784    0.1006152   0.2333416
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1763142    0.1583082   0.1943202
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1186669    0.0833852   0.1539485
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1882877    0.1578123   0.2187632
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1322090    0.1170746   0.1473435
15-18 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1417779    0.1223781   0.1611777
15-18 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1295305    0.1068068   0.1522543
18-21 months   LCNI-5           MALAWI                         >=58 kg              NA                0.1312309    0.0801296   0.1823322
18-21 months   LCNI-5           MALAWI                         <52 kg               NA                0.1949329    0.1695862   0.2202795
18-21 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.1726583    0.1304966   0.2148199
18-21 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.1315991    0.0889087   0.1742895
18-21 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.1489642    0.1296475   0.1682809
18-21 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.1324357    0.0853556   0.1795158
18-21 months   MAL-ED           BRAZIL                         >=58 kg              NA                0.1615640    0.1357792   0.1873487
18-21 months   MAL-ED           BRAZIL                         <52 kg               NA                0.1481631    0.0609518   0.2353744
18-21 months   MAL-ED           BRAZIL                         [52-58) kg           NA                0.1697300    0.1148035   0.2246566
18-21 months   MAL-ED           INDIA                          >=58 kg              NA                0.2060004    0.1678722   0.2441286
18-21 months   MAL-ED           INDIA                          <52 kg               NA                0.1583963    0.1407507   0.1760419
18-21 months   MAL-ED           INDIA                          [52-58) kg           NA                0.1848512    0.1494951   0.2202072
18-21 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1470599    0.1125866   0.1815331
18-21 months   MAL-ED           NEPAL                          <52 kg               NA                0.1274317    0.0958348   0.1590286
18-21 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.1667099    0.1422156   0.1912042
18-21 months   MAL-ED           PERU                           >=58 kg              NA                0.1583222    0.1280960   0.1885484
18-21 months   MAL-ED           PERU                           <52 kg               NA                0.1520578    0.1208721   0.1832434
18-21 months   MAL-ED           PERU                           [52-58) kg           NA                0.1810714    0.1427289   0.2194138
18-21 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.1832564    0.1521756   0.2143373
18-21 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.1971304    0.1623131   0.2319477
18-21 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.1568684    0.0802539   0.2334829
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1591323    0.1156749   0.2025897
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1219053    0.0822267   0.1615839
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1673549    0.1235983   0.2111115
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1628670    0.1177584   0.2079756
18-21 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.1732077    0.1556494   0.1907659
18-21 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1771275    0.1239952   0.2302597
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1500685    0.1290464   0.1710906
18-21 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1358636    0.1220002   0.1497269
18-21 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1512302    0.1243256   0.1781348
18-21 months   PROBIT           BELARUS                        >=58 kg              NA                0.1805097    0.0706707   0.2903486
18-21 months   PROBIT           BELARUS                        <52 kg               NA                0.1856958    0.1472555   0.2241360
18-21 months   PROBIT           BELARUS                        [52-58) kg           NA                0.1596260   -0.4823061   0.8015580
18-21 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1320306    0.1033111   0.1607501
18-21 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.1251764    0.1114589   0.1388940
18-21 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1589156    0.1305834   0.1872477
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1174217    0.0890650   0.1457784
18-21 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1240768    0.0932364   0.1549173
18-21 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1208323    0.0914162   0.1502485
21-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.2431129    0.1508800   0.3353458
21-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.1551543    0.1248468   0.1854618
21-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.2030723    0.1454695   0.2606751
21-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.1567095    0.1220510   0.1913680
21-24 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.1536930    0.1339239   0.1734621
21-24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.1412709    0.1114350   0.1711068
21-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                0.1354348    0.1027393   0.1681303
21-24 months   MAL-ED           BRAZIL                         <52 kg               NA                0.1258020    0.0875535   0.1640505
21-24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                0.1877345    0.1467521   0.2287169
21-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.1700150    0.1337561   0.2062738
21-24 months   MAL-ED           INDIA                          <52 kg               NA                0.1539272    0.1377512   0.1701033
21-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.1529314    0.1244903   0.1813725
21-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.2052751    0.1642805   0.2462696
21-24 months   MAL-ED           NEPAL                          <52 kg               NA                0.1574628    0.1261532   0.1887725
21-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.1444051    0.1161249   0.1726854
21-24 months   MAL-ED           PERU                           >=58 kg              NA                0.1814346    0.1546713   0.2081979
21-24 months   MAL-ED           PERU                           <52 kg               NA                0.1968797    0.1593930   0.2343664
21-24 months   MAL-ED           PERU                           [52-58) kg           NA                0.1595478    0.1201625   0.1989332
21-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.1905566    0.1604831   0.2206301
21-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.1631173    0.1055918   0.2206427
21-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.1893674    0.1404818   0.2382530
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1819778    0.1382085   0.2257472
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1250297    0.0777602   0.1722992
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0996216    0.0519022   0.1473410
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1447554    0.1099699   0.1795410
21-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.1409965    0.1226003   0.1593927
21-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1440746    0.1040531   0.1840960
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1885213    0.1620736   0.2149690
21-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1681019    0.1522990   0.1839048
21-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1750639    0.1451843   0.2049435
21-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.1730252    0.0765221   0.2695283
21-24 months   PROBIT           BELARUS                        <52 kg               NA                0.1235629   -0.0497940   0.2969198
21-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.1848267    0.0066448   0.3630085
21-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1595416    0.1299098   0.1891734
21-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.1385667    0.1247462   0.1523871
21-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1366207    0.1097897   0.1634518
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1129687    0.0640796   0.1618579
21-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0924316    0.0403805   0.1444827
21-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1232619    0.0809002   0.1656236


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8710255   0.8679476   0.8741033
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     MAL-ED           BRAZIL                         NA                   NA                1.0638384   1.0294526   1.0982242
0-3 months     MAL-ED           INDIA                          NA                   NA                0.7611021   0.7390455   0.7831587
0-3 months     MAL-ED           NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     MAL-ED           PERU                           NA                   NA                0.9706290   0.9455271   0.9957310
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9399583   0.9128554   0.9670613
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROBIT           BELARUS                        NA                   NA                0.8368734   0.8264170   0.8473297
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9018330   0.8870586   0.9166074
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7914497   0.7716519   0.8112475
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9223478   0.9121343   0.9325613
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.9472160   0.9420292   0.9524029
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4413755   0.4384046   0.4443464
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     MAL-ED           BRAZIL                         NA                   NA                0.5763097   0.5451516   0.6074677
3-6 months     MAL-ED           INDIA                          NA                   NA                0.4444966   0.4269381   0.4620550
3-6 months     MAL-ED           NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     MAL-ED           PERU                           NA                   NA                0.4984134   0.4793907   0.5174361
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4617801   0.4360641   0.4874961
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROBIT           BELARUS                        NA                   NA                0.6659598   0.6580408   0.6738788
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4894576   0.4764038   0.5025113
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4502803   0.4369231   0.4636374
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4193493   0.4105768   0.4281218
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.4784560   0.4739251   0.4829868
6-9 months     LCNI-5           MALAWI                         NA                   NA                0.2841590   0.2716156   0.2967024
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED           BRAZIL                         NA                   NA                0.3799385   0.3545172   0.4053598
6-9 months     MAL-ED           INDIA                          NA                   NA                0.2306925   0.2158356   0.2455494
6-9 months     MAL-ED           NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     MAL-ED           PERU                           NA                   NA                0.2612740   0.2457204   0.2768277
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2586445   0.2373164   0.2799725
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROBIT           BELARUS                        NA                   NA                0.4736386   0.4648530   0.4824242
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                0.2091488   0.1944036   0.2238940
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2553188   0.2463504   0.2642871
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.2579940   0.2534805   0.2625076
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2423264   0.2292546   0.2553982
9-12 months    LCNI-5           MALAWI                         NA                   NA                0.2017210   0.1858623   0.2175796
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED           BRAZIL                         NA                   NA                0.2826648   0.2509232   0.3144063
9-12 months    MAL-ED           INDIA                          NA                   NA                0.1783231   0.1642419   0.1924043
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    MAL-ED           PERU                           NA                   NA                0.1866354   0.1713488   0.2019219
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2149952   0.1925566   0.2374338
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROBIT           BELARUS                        NA                   NA                0.3650338   0.3505323   0.3795354
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1955201   0.1890373   0.2020029
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2057767   0.1956217   0.2159317
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1802350   0.1756914   0.1847785
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1924285   0.1815262   0.2033308
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.1517832   0.1183392   0.1852272
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED           BRAZIL                         NA                   NA                0.2100172   0.1850590   0.2349754
12-15 months   MAL-ED           INDIA                          NA                   NA                0.1744574   0.1585285   0.1903862
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   MAL-ED           PERU                           NA                   NA                0.1414020   0.1246466   0.1581574
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1922381   0.1667974   0.2176788
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROBIT           BELARUS                        NA                   NA                0.2225744   0.1484341   0.2967147
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1850107   0.1770943   0.1929270
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1727200   0.1613274   0.1841126
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1501766   0.1422068   0.1581465
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1746700   0.1640854   0.1852545
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.1766109   0.1448823   0.2083395
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED           BRAZIL                         NA                   NA                0.2040123   0.1772529   0.2307717
15-18 months   MAL-ED           INDIA                          NA                   NA                0.1628133   0.1478080   0.1778186
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   MAL-ED           PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2190068   0.1913206   0.2466931
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROBIT           BELARUS                        NA                   NA                0.2241834   0.1619207   0.2864460
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1565394   0.1447539   0.1683249
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.1771854   0.1638014   0.1905694
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1703421   0.1560309   0.1846533
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1340536   0.1233899   0.1447173
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.1811781   0.1610366   0.2013196
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.1609093   0.1366439   0.1851747
18-21 months   MAL-ED           INDIA                          NA                   NA                0.1719622   0.1570466   0.1868778
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   MAL-ED           PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1806346   0.1548130   0.2064562
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROBIT           BELARUS                        NA                   NA                0.1769439   0.0195441   0.3343438
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1325181   0.1210527   0.1439835
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1203188   0.1031558   0.1374819
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.1785691   0.1518305   0.2053077
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.1436761   0.1201855   0.1671667
21-24 months   MAL-ED           INDIA                          NA                   NA                0.1564363   0.1432171   0.1696555
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   MAL-ED           PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1870402   0.1629923   0.2110880
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROBIT           BELARUS                        NA                   NA                0.1728592   0.0875612   0.2581572
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1421605   0.1307059   0.1536151
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1092575   0.0811712   0.1373438


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.0206392   -0.0382455   -0.0030330
0-3 months     JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0041583   -0.0249167    0.0166000
0-3 months     MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <52 kg               >=58 kg            0.0032767   -0.0604094    0.0669629
0-3 months     MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0574139   -0.0128667    0.1276944
0-3 months     MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <52 kg               >=58 kg            0.0005427   -0.0850260    0.0861115
0-3 months     MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0143134   -0.1025429    0.0739162
0-3 months     MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <52 kg               >=58 kg            0.0026165   -0.0514715    0.0567045
0-3 months     MAL-ED           INDIA                          [52-58) kg           >=58 kg            0.0151890   -0.0531574    0.0835355
0-3 months     MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0931689   -0.1612143   -0.0251234
0-3 months     MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0151188   -0.0778588    0.0476212
0-3 months     MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <52 kg               >=58 kg            0.0311499   -0.0265852    0.0888850
0-3 months     MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0056663   -0.0732549    0.0619224
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.1177759   -0.1969685   -0.0385833
0-3 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0770642   -0.1462591   -0.0078694
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0397212   -0.1105524    0.0311101
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0122356   -0.0601718    0.0846430
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0463634   -0.1171841    0.0244573
0-3 months     NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0152809   -0.0981122    0.0675503
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0031949   -0.0400561    0.0336663
0-3 months     NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg            0.0162386   -0.0292716    0.0617487
0-3 months     PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0047437   -0.0152533    0.0057660
0-3 months     PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0083688   -0.0007250    0.0174627
0-3 months     PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0970238   -0.1400717   -0.0539759
0-3 months     PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0460613   -0.0987715    0.0066489
0-3 months     SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.0676137   -0.1100243   -0.0252031
0-3 months     SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0184781   -0.0655635    0.0286074
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0302059   -0.0583311   -0.0020807
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0180577   -0.0437248    0.0076094
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0643355   -0.0773814   -0.0512897
0-3 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0225138   -0.0348434   -0.0101843
3-6 months     JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.0099756   -0.0288738    0.0089225
3-6 months     JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg            0.0046300   -0.0185024    0.0277625
3-6 months     MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0031414   -0.0430967    0.0368140
3-6 months     MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0710373    0.0156556    0.1264190
3-6 months     MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0261373   -0.0987000    0.0464254
3-6 months     MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0576691   -0.0436477    0.1589859
3-6 months     MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0096244   -0.0503532    0.0311044
3-6 months     MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0031976   -0.0542849    0.0478896
3-6 months     MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0488977   -0.1034176    0.0056223
3-6 months     MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0321708   -0.0779148    0.0135733
3-6 months     MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <52 kg               >=58 kg           -0.0511248   -0.0926238   -0.0096257
3-6 months     MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0512649   -0.1048167    0.0022869
3-6 months     MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.0190238   -0.0474410    0.0854887
3-6 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0395026   -0.0282674    0.1072727
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0156958   -0.0429128    0.0743044
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0067781   -0.0462653    0.0598215
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0369736   -0.1046050    0.0306579
3-6 months     NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0081584   -0.0713011    0.0876179
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0270251   -0.0561908    0.0021407
3-6 months     NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0099371   -0.0456702    0.0257959
3-6 months     PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0195751   -0.0370570   -0.0020932
3-6 months     PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0048515   -0.0180125    0.0083095
3-6 months     PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0454035   -0.0774722   -0.0133348
3-6 months     PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0217759   -0.0204431    0.0639950
3-6 months     SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.0182912   -0.0409723    0.0043899
3-6 months     SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0018910   -0.0415148    0.0377327
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0150736   -0.0373175    0.0071703
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0192612   -0.0415099    0.0029875
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0338470   -0.0458217   -0.0218723
3-6 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0145371   -0.0250903   -0.0039840
6-9 months     LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0087262   -0.0278244    0.0452767
6-9 months     LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0200474   -0.0195929    0.0596877
6-9 months     MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0468958   -0.0924853   -0.0013062
6-9 months     MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0259433   -0.0792244    0.0273379
6-9 months     MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0647284   -0.1297530    0.0002962
6-9 months     MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0269990   -0.0894819    0.0354839
6-9 months     MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0197811   -0.0522741    0.0127119
6-9 months     MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0538326   -0.0962138   -0.0114515
6-9 months     MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0357057   -0.0721732    0.0007619
6-9 months     MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0145244   -0.0504235    0.0213746
6-9 months     MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <52 kg               >=58 kg           -0.0140288   -0.0482475    0.0201898
6-9 months     MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0103875   -0.0534340    0.0326590
6-9 months     MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.0100221   -0.0572344    0.0772786
6-9 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0123144   -0.0401213    0.0647502
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0534153   -0.1092146    0.0023841
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0272647   -0.0834385    0.0289090
6-9 months     NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0048741   -0.0495356    0.0397873
6-9 months     NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0021288   -0.0525639    0.0483062
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0462310   -0.0711422   -0.0213198
6-9 months     NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0042089   -0.0348224    0.0264045
6-9 months     PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0080770   -0.0240558    0.0079017
6-9 months     PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0045250   -0.0158908    0.0068409
6-9 months     PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0607906   -0.0887429   -0.0328383
6-9 months     PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0017140   -0.0350849    0.0385129
6-9 months     SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.0719399   -0.1124794   -0.0314004
6-9 months     SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0106127   -0.0564145    0.0351891
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0296396   -0.0576486   -0.0016306
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0170466   -0.0382678    0.0041746
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0135242   -0.0246326   -0.0024158
6-9 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0125202   -0.0235251   -0.0015153
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           -0.0322989   -0.0605959   -0.0040019
9-12 months    iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           -0.0149523   -0.0468566    0.0169520
9-12 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0333916   -0.0779415    0.0111584
9-12 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0285977   -0.0787701    0.0215747
9-12 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0106199   -0.0465276    0.0252879
9-12 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0131837   -0.0358983    0.0622657
9-12 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0123805   -0.0849778    0.0602169
9-12 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.1024326   -0.1731480   -0.0317173
9-12 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0167041   -0.0593489    0.0259406
9-12 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg            0.0219419   -0.0285122    0.0723960
9-12 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0177430   -0.0556276    0.0201415
9-12 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0165567   -0.0453184    0.0122051
9-12 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.0050842   -0.0406061    0.0304376
9-12 months    MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0278363   -0.0115193    0.0671919
9-12 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.0001484   -0.0683155    0.0686123
9-12 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0516905   -0.1220070    0.0186261
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0131772   -0.0328814    0.0592358
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0308788   -0.0222218    0.0839794
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0320729   -0.0691121    0.0049662
9-12 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0336716   -0.0116088    0.0789519
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0380389   -0.0635372   -0.0125406
9-12 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0046734   -0.0351323    0.0257855
9-12 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0236661   -0.0376771   -0.0096550
9-12 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0213456   -0.0321364   -0.0105547
9-12 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0277109   -0.0518288   -0.0035929
9-12 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0348519   -0.0676193   -0.0020846
9-12 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.0504354   -0.0829211   -0.0179496
9-12 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0208518   -0.0454076    0.0037040
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0331824   -0.0632889   -0.0030759
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0047184   -0.0302643    0.0208276
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0102147   -0.0214060    0.0009766
9-12 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0103270   -0.0212094    0.0005553
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           -0.0213137   -0.0561891    0.0135618
12-15 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg            0.0080077   -0.0162995    0.0323149
12-15 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0248173   -0.1120656    0.0624310
12-15 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0172552   -0.0947239    0.1292344
12-15 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0606324   -0.0986134   -0.0226515
12-15 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0752954   -0.1288072   -0.0217837
12-15 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg            0.0508305   -0.0185640    0.1202249
12-15 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0248604   -0.0384888    0.0882095
12-15 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0537773   -0.0979981   -0.0095564
12-15 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0507174   -0.0981513   -0.0032834
12-15 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <52 kg               >=58 kg            0.0236832   -0.0196150    0.0669815
12-15 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg            0.0139733   -0.0221105    0.0500571
12-15 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.0460662   -0.0838764   -0.0082560
12-15 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0430687   -0.0880824    0.0019450
12-15 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.0176692   -0.0808441    0.0455057
12-15 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0355234   -0.0383440    0.1093908
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0701409   -0.1283593   -0.0119225
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0528488   -0.1100089    0.0043113
12-15 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg            0.0015606   -0.0350343    0.0381555
12-15 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0145236   -0.0601195    0.0310723
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0440100   -0.0712711   -0.0167488
12-15 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0536604   -0.0849776   -0.0223431
12-15 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0048215   -0.0972993    0.0876562
12-15 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0162114   -0.1137641    0.0813413
12-15 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0178806   -0.0493516    0.0135903
12-15 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0033066   -0.0450727    0.0384595
12-15 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.0219684   -0.0630314    0.0190947
12-15 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0068615   -0.0519583    0.0382353
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0319942   -0.0613412   -0.0026471
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0050886   -0.0335687    0.0233914
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0082961   -0.0111862    0.0277784
12-15 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0174058   -0.0017033    0.0365150
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           -0.0172043   -0.0507331    0.0163245
15-18 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg            0.0089005   -0.0175887    0.0353897
15-18 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0369356   -0.0677025    0.1415737
15-18 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0408510   -0.0852739    0.1669760
15-18 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0050493   -0.0463083    0.0362097
15-18 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0400412   -0.0170825    0.0971649
15-18 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg            0.0019574   -0.0594626    0.0633774
15-18 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0459012   -0.1076672    0.0158648
15-18 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <52 kg               >=58 kg            0.0074902   -0.0354832    0.0504636
15-18 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0161160   -0.0679040    0.0356720
15-18 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0261075   -0.0657272    0.0135122
15-18 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0082430   -0.0460625    0.0295764
15-18 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <52 kg               >=58 kg            0.0058695   -0.0375518    0.0492907
15-18 months   MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0425828   -0.0067749    0.0919405
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.0599054   -0.1275465    0.0077357
15-18 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0323727   -0.1067503    0.0420049
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0400473   -0.0129096    0.0930041
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0411543   -0.0188241    0.1011328
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0362827   -0.0847895    0.0122241
15-18 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0291500   -0.0944550    0.0361550
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0146310   -0.0397387    0.0104766
15-18 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0322023   -0.0652961    0.0008914
15-18 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        <52 kg               >=58 kg            0.0554171   -0.1345471    0.2453813
15-18 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0216104   -0.1378362    0.1810570
15-18 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0353834   -0.0665608   -0.0042060
15-18 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0021307   -0.0417505    0.0374890
15-18 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg            0.0015442   -0.0619706    0.0650589
15-18 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0107805   -0.0963131    0.0747520
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0576473   -0.0972580   -0.0180366
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0119735   -0.0234238    0.0473709
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0095688   -0.0150361    0.0341738
15-18 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0026785   -0.0299809    0.0246239
18-21 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0637020    0.0066599    0.1207440
18-21 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0414273   -0.0248218    0.1076765
18-21 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg            0.0173651   -0.0294922    0.0642224
18-21 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0008366   -0.0627166    0.0643898
18-21 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0134008   -0.1043440    0.0775423
18-21 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0081661   -0.0525116    0.0688438
18-21 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0476041   -0.0896175   -0.0055907
18-21 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0211492   -0.0731474    0.0308489
18-21 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0196282   -0.0663911    0.0271348
18-21 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg            0.0196500   -0.0226392    0.0619392
18-21 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.0062644   -0.0496945    0.0371656
18-21 months   MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0227492   -0.0260747    0.0715730
18-21 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.0138740   -0.0327979    0.0605459
18-21 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0263880   -0.1090670    0.0562909
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0372270   -0.0960737    0.0216197
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0082226   -0.0534474    0.0698926
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg            0.0103406   -0.0380647    0.0587460
18-21 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0142605   -0.0554376    0.0839585
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0142049   -0.0393867    0.0109769
18-21 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg            0.0011617   -0.0329819    0.0353053
18-21 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        <52 kg               >=58 kg            0.0051861   -0.1062737    0.1166459
18-21 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0208837   -0.6526087    0.6108413
18-21 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0068542   -0.0386815    0.0249732
18-21 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0268850   -0.0134576    0.0672275
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0066552   -0.0352404    0.0485507
18-21 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0034107   -0.0374478    0.0442691
21-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0879586   -0.1850434    0.0091262
21-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0400406   -0.1487834    0.0687022
21-24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0030165   -0.0429167    0.0368838
21-24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0154386   -0.0611703    0.0302931
21-24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0096328   -0.0599512    0.0406857
21-24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0522997   -0.0001269    0.1047264
21-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0160877   -0.0557913    0.0236158
21-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0170836   -0.0631661    0.0289990
21-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0478123   -0.0993957    0.0037712
21-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0608699   -0.1106728   -0.0110671
21-24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <52 kg               >=58 kg            0.0154451   -0.0306149    0.0615052
21-24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0218867   -0.0695048    0.0257313
21-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.0274394   -0.0923516    0.0374728
21-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0011892   -0.0585845    0.0562060
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0569481   -0.1213699    0.0074736
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0823562   -0.1471088   -0.0176036
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0037589   -0.0431093    0.0355915
21-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0006808   -0.0537068    0.0523451
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0204194   -0.0512287    0.0103899
21-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0134574   -0.0533607    0.0264458
21-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0494624   -0.2436059    0.1446811
21-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0118014   -0.1799177    0.2035206
21-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0209749   -0.0536712    0.0117214
21-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0229209   -0.0628952    0.0170535
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0205371   -0.0919477    0.0508735
21-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0102932   -0.0543958    0.0749822


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0190666   -0.0362374   -0.0018957
0-3 months     MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0119203   -0.0385361    0.0623766
0-3 months     MAL-ED           BRAZIL                         >=58 kg              NA                -0.0022851   -0.0265965    0.0220264
0-3 months     MAL-ED           INDIA                          >=58 kg              NA                 0.0048384   -0.0388335    0.0485103
0-3 months     MAL-ED           NEPAL                          >=58 kg              NA                -0.0341930   -0.0722977    0.0039117
0-3 months     MAL-ED           PERU                           >=58 kg              NA                 0.0108025   -0.0233409    0.0449460
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0260735   -0.0428243   -0.0093226
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0118061   -0.0486129    0.0250008
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0356149   -0.0970017    0.0257719
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0016590   -0.0250367    0.0283548
0-3 months     PROBIT           BELARUS                        >=58 kg              NA                 0.0010360   -0.0010620    0.0031340
0-3 months     PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0705581   -0.1053822   -0.0357340
0-3 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0549078   -0.0938973   -0.0159183
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0083908   -0.0159536   -0.0008280
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0192015   -0.0240792   -0.0143238
3-6 months     JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0087298   -0.0270926    0.0096330
3-6 months     MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0101864   -0.0216967    0.0420695
3-6 months     MAL-ED           BRAZIL                         >=58 kg              NA                 0.0048003   -0.0183969    0.0279975
3-6 months     MAL-ED           INDIA                          >=58 kg              NA                -0.0066942   -0.0393376    0.0259492
3-6 months     MAL-ED           NEPAL                          >=58 kg              NA                -0.0266418   -0.0559574    0.0026738
3-6 months     MAL-ED           PERU                           >=58 kg              NA                -0.0323231   -0.0574092   -0.0072369
3-6 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0088401   -0.0063910    0.0240711
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0075360   -0.0225741    0.0376462
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0253580   -0.0836649    0.0329489
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0165315   -0.0377799    0.0047169
3-6 months     PROBIT           BELARUS                        >=58 kg              NA                -0.0024558   -0.0053694    0.0004578
3-6 months     PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0253262   -0.0510734    0.0004210
3-6 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0143461   -0.0371093    0.0084170
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0062654   -0.0126460    0.0001153
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0107368   -0.0150032   -0.0064704
6-9 months     LCNI-5           MALAWI                         >=58 kg              NA                 0.0106292   -0.0198989    0.0411572
6-9 months     MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0344771   -0.0712841    0.0023299
6-9 months     MAL-ED           BRAZIL                         >=58 kg              NA                -0.0160226   -0.0338567    0.0018114
6-9 months     MAL-ED           INDIA                          >=58 kg              NA                -0.0234010   -0.0491878    0.0023858
6-9 months     MAL-ED           NEPAL                          >=58 kg              NA                -0.0164136   -0.0378081    0.0049810
6-9 months     MAL-ED           PERU                           >=58 kg              NA                -0.0079589   -0.0280158    0.0120981
6-9 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0031450   -0.0094528    0.0157428
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0270763   -0.0563065    0.0021539
6-9 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0037982   -0.0419245    0.0343281
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0256306   -0.0433697   -0.0078915
6-9 months     PROBIT           BELARUS                        >=58 kg              NA                -0.0014357   -0.0040488    0.0011774
6-9 months     PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0385320   -0.0607402   -0.0163237
6-9 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0568932   -0.0941903   -0.0195961
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0082480   -0.0151528   -0.0013432
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0061850   -0.0104910   -0.0018791
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0164861   -0.0356299    0.0026577
9-12 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.0277682   -0.0652101    0.0096737
9-12 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0044529   -0.0334243    0.0245185
9-12 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0197596   -0.0412674    0.0017483
9-12 months    MAL-ED           INDIA                          >=58 kg              NA                -0.0057106   -0.0403224    0.0289012
9-12 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.0112955   -0.0291488    0.0065579
9-12 months    MAL-ED           PERU                           >=58 kg              NA                 0.0048252   -0.0154511    0.0251014
9-12 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0083336   -0.0235069    0.0068398
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0122476   -0.0132213    0.0377165
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0174842   -0.0491407    0.0141722
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0214113   -0.0396144   -0.0032082
9-12 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0055609   -0.0078114   -0.0033104
9-12 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0237549   -0.0430273   -0.0044825
9-12 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0419113   -0.0690507   -0.0147720
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0064695   -0.0143108    0.0013718
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0050918   -0.0095928   -0.0005909
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0046338   -0.0223425    0.0130750
12-15 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.0112978   -0.0900987    0.0675030
12-15 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0518206   -0.0822690   -0.0213722
12-15 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0135133   -0.0051288    0.0321555
12-15 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0435777   -0.0786260   -0.0085294
12-15 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.0123164   -0.0097679    0.0344007
12-15 months   MAL-ED           PERU                           >=58 kg              NA                -0.0283878   -0.0508798   -0.0058957
12-15 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0041340   -0.0120070    0.0202749
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0385403   -0.0690579   -0.0080227
12-15 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0009520   -0.0322124    0.0303083
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0348564   -0.0544643   -0.0152485
12-15 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0035970   -0.0287432    0.0215491
12-15 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0118123   -0.0368117    0.0131871
12-15 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0178251   -0.0554505    0.0198004
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0060692   -0.0142239    0.0020854
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0065386   -0.0015091    0.0145863
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0032828   -0.0217833    0.0152176
15-18 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.0337890   -0.0587365    0.1263145
15-18 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0037730   -0.0294064    0.0369523
15-18 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0078178   -0.0263664    0.0107308
15-18 months   MAL-ED           INDIA                          >=58 kg              NA                 0.0012941   -0.0337290    0.0363172
15-18 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0112282   -0.0337035    0.0112471
15-18 months   MAL-ED           PERU                           >=58 kg              NA                 0.0129668   -0.0121965    0.0381301
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0125921   -0.0289939    0.0038096
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0252052   -0.0050221    0.0554326
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0303699   -0.0722996    0.0115598
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0143340   -0.0322543    0.0035862
15-18 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0116051   -0.0442234    0.0674336
15-18 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0223329   -0.0467872    0.0021215
15-18 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0005736   -0.0580028    0.0568556
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0059721   -0.0164896    0.0045455
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0018446   -0.0096439    0.0133330
18-21 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.0499472    0.0016067    0.0982877
18-21 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0111156   -0.0264501    0.0486812
18-21 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0006547   -0.0203664    0.0190570
18-21 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0340382   -0.0684647    0.0003884
18-21 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.0004399   -0.0260988    0.0269785
18-21 months   MAL-ED           PERU                           >=58 kg              NA                 0.0032431   -0.0211508    0.0276369
18-21 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0026218   -0.0189314    0.0136878
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0127785   -0.0458204    0.0202633
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0095722   -0.0323151    0.0514595
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0074076   -0.0253268    0.0105117
18-21 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0035657   -0.1239387    0.1168072
18-21 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.0004875   -0.0249142    0.0258892
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0028972   -0.0176405    0.0234348
21-24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.0645439   -0.1480539    0.0189662
21-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0045939   -0.0356706    0.0264828
21-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0082413   -0.0076322    0.0241148
21-24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0135787   -0.0459109    0.0187535
21-24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0362339   -0.0670809   -0.0053869
21-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.0000325   -0.0231468    0.0232118
21-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0035165   -0.0170391    0.0100062
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0406591   -0.0754703   -0.0058479
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0027824   -0.0361174    0.0305525
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0134713   -0.0353106    0.0083681
21-24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0001660   -0.0390516    0.0387196
21-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0173811   -0.0434402    0.0086780
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0037112   -0.0409186    0.0334962
