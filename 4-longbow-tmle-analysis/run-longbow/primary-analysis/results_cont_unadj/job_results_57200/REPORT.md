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
0-3 months     MAL-ED           BANGLADESH                     >=58 kg           44     243
0-3 months     MAL-ED           BANGLADESH                     <52 kg           157     243
0-3 months     MAL-ED           BANGLADESH                     [52-58) kg        42     243
0-3 months     MAL-ED           BRAZIL                         >=58 kg          109     168
0-3 months     MAL-ED           BRAZIL                         <52 kg            31     168
0-3 months     MAL-ED           BRAZIL                         [52-58) kg        28     168
0-3 months     MAL-ED           INDIA                          >=58 kg           31     183
0-3 months     MAL-ED           INDIA                          <52 kg           112     183
0-3 months     MAL-ED           INDIA                          [52-58) kg        40     183
0-3 months     MAL-ED           NEPAL                          >=58 kg           52     156
0-3 months     MAL-ED           NEPAL                          <52 kg            48     156
0-3 months     MAL-ED           NEPAL                          [52-58) kg        56     156
0-3 months     MAL-ED           PERU                           >=58 kg           93     264
0-3 months     MAL-ED           PERU                           <52 kg           103     264
0-3 months     MAL-ED           PERU                           [52-58) kg        68     264
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg          150     205
0-3 months     MAL-ED           SOUTH AFRICA                   <52 kg            20     205
0-3 months     MAL-ED           SOUTH AFRICA                   [52-58) kg        35     205
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           88     228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            86     228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        54     228
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg           74     566
0-3 months     NIH-Birth        BANGLADESH                     <52 kg           407     566
0-3 months     NIH-Birth        BANGLADESH                     [52-58) kg        85     566
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg          181     721
0-3 months     NIH-Crypto       BANGLADESH                     <52 kg           389     721
0-3 months     NIH-Crypto       BANGLADESH                     [52-58) kg       151     721
0-3 months     PROBIT           BELARUS                        >=58 kg         9440   12632
0-3 months     PROBIT           BELARUS                        <52 kg          1039   12632
0-3 months     PROBIT           BELARUS                        [52-58) kg      2153   12632
0-3 months     PROVIDE          BANGLADESH                     >=58 kg          116     639
0-3 months     PROVIDE          BANGLADESH                     <52 kg           412     639
0-3 months     PROVIDE          BANGLADESH                     [52-58) kg       111     639
0-3 months     SAS-CompFeed     INDIA                          >=58 kg           89    1258
0-3 months     SAS-CompFeed     INDIA                          <52 kg           970    1258
0-3 months     SAS-CompFeed     INDIA                          [52-58) kg       199    1258
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg         4086    7699
0-3 months     ZVITAMBO         ZIMBABWE                       <52 kg          1583    7699
0-3 months     ZVITAMBO         ZIMBABWE                       [52-58) kg      2030    7699
3-6 months     MAL-ED           BANGLADESH                     >=58 kg           43     231
3-6 months     MAL-ED           BANGLADESH                     <52 kg           148     231
3-6 months     MAL-ED           BANGLADESH                     [52-58) kg        40     231
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
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg           70     523
3-6 months     NIH-Birth        BANGLADESH                     <52 kg           376     523
3-6 months     NIH-Birth        BANGLADESH                     [52-58) kg        77     523
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg          177     695
3-6 months     NIH-Crypto       BANGLADESH                     <52 kg           372     695
3-6 months     NIH-Crypto       BANGLADESH                     [52-58) kg       146     695
3-6 months     PROBIT           BELARUS                        >=58 kg         8287   11089
3-6 months     PROBIT           BELARUS                        <52 kg           927   11089
3-6 months     PROBIT           BELARUS                        [52-58) kg      1875   11089
3-6 months     PROVIDE          BANGLADESH                     >=58 kg          108     597
3-6 months     PROVIDE          BANGLADESH                     <52 kg           382     597
3-6 months     PROVIDE          BANGLADESH                     [52-58) kg       107     597
3-6 months     SAS-CompFeed     INDIA                          >=58 kg           80    1121
3-6 months     SAS-CompFeed     INDIA                          <52 kg           861    1121
3-6 months     SAS-CompFeed     INDIA                          [52-58) kg       180    1121
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1045    1629
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           248    1629
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       336    1629
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg         3269    6132
3-6 months     ZVITAMBO         ZIMBABWE                       <52 kg          1228    6132
3-6 months     ZVITAMBO         ZIMBABWE                       [52-58) kg      1635    6132
6-9 months     LCNI-5           MALAWI                         >=58 kg           74     562
6-9 months     LCNI-5           MALAWI                         <52 kg           336     562
6-9 months     LCNI-5           MALAWI                         [52-58) kg       152     562
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
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg          177     688
6-9 months     NIH-Crypto       BANGLADESH                     <52 kg           368     688
6-9 months     NIH-Crypto       BANGLADESH                     [52-58) kg       143     688
6-9 months     PROBIT           BELARUS                        >=58 kg         7816   10453
6-9 months     PROBIT           BELARUS                        <52 kg           869   10453
6-9 months     PROBIT           BELARUS                        [52-58) kg      1768   10453
6-9 months     PROVIDE          BANGLADESH                     >=58 kg          105     565
6-9 months     PROVIDE          BANGLADESH                     <52 kg           361     565
6-9 months     PROVIDE          BANGLADESH                     [52-58) kg        99     565
6-9 months     SAS-CompFeed     INDIA                          >=58 kg           84    1139
6-9 months     SAS-CompFeed     INDIA                          <52 kg           881    1139
6-9 months     SAS-CompFeed     INDIA                          [52-58) kg       174    1139
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg          921    1455
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           232    1455
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       302    1455
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg         3171    5896
6-9 months     ZVITAMBO         ZIMBABWE                       <52 kg          1195    5896
6-9 months     ZVITAMBO         ZIMBABWE                       [52-58) kg      1530    5896
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg          339    1105
9-12 months    iLiNS-Zinc       BURKINA FASO                   <52 kg           389    1105
9-12 months    iLiNS-Zinc       BURKINA FASO                   [52-58) kg       377    1105
9-12 months    LCNI-5           MALAWI                         >=58 kg           52     386
9-12 months    LCNI-5           MALAWI                         <52 kg           234     386
9-12 months    LCNI-5           MALAWI                         [52-58) kg       100     386
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
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg           63     482
9-12 months    NIH-Birth        BANGLADESH                     <52 kg           343     482
9-12 months    NIH-Birth        BANGLADESH                     [52-58) kg        76     482
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg          174     674
9-12 months    NIH-Crypto       BANGLADESH                     <52 kg           360     674
9-12 months    NIH-Crypto       BANGLADESH                     [52-58) kg       140     674
9-12 months    PROBIT           BELARUS                        >=58 kg         7999   10689
9-12 months    PROBIT           BELARUS                        <52 kg           884   10689
9-12 months    PROBIT           BELARUS                        [52-58) kg      1806   10689
9-12 months    PROVIDE          BANGLADESH                     >=58 kg          107     566
9-12 months    PROVIDE          BANGLADESH                     <52 kg           360     566
9-12 months    PROVIDE          BANGLADESH                     [52-58) kg        99     566
9-12 months    SAS-CompFeed     INDIA                          >=58 kg           82    1140
9-12 months    SAS-CompFeed     INDIA                          <52 kg           883    1140
9-12 months    SAS-CompFeed     INDIA                          [52-58) kg       175    1140
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg          672    1060
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           178    1060
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       210    1060
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg         3151    5898
9-12 months    ZVITAMBO         ZIMBABWE                       <52 kg          1209    5898
9-12 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      1538    5898
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg          301     962
12-15 months   iLiNS-Zinc       BURKINA FASO                   <52 kg           331     962
12-15 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg       330     962
12-15 months   LCNI-5           MALAWI                         >=58 kg           13     127
12-15 months   LCNI-5           MALAWI                         <52 kg            80     127
12-15 months   LCNI-5           MALAWI                         [52-58) kg        34     127
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
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg          169     660
12-15 months   NIH-Crypto       BANGLADESH                     <52 kg           353     660
12-15 months   NIH-Crypto       BANGLADESH                     [52-58) kg       138     660
12-15 months   PROBIT           BELARUS                        >=58 kg          705     994
12-15 months   PROBIT           BELARUS                        <52 kg            96     994
12-15 months   PROBIT           BELARUS                        [52-58) kg       193     994
12-15 months   PROVIDE          BANGLADESH                     >=58 kg          103     532
12-15 months   PROVIDE          BANGLADESH                     <52 kg           335     532
12-15 months   PROVIDE          BANGLADESH                     [52-58) kg        94     532
12-15 months   SAS-CompFeed     INDIA                          >=58 kg           84    1162
12-15 months   SAS-CompFeed     INDIA                          <52 kg           892    1162
12-15 months   SAS-CompFeed     INDIA                          [52-58) kg       186    1162
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg          500     775
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           124     775
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       151     775
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg         1367    2538
12-15 months   ZVITAMBO         ZIMBABWE                       <52 kg           539    2538
12-15 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       632    2538
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg          303    1008
15-18 months   iLiNS-Zinc       BURKINA FASO                   <52 kg           367    1008
15-18 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg       338    1008
15-18 months   LCNI-5           MALAWI                         >=58 kg           13     120
15-18 months   LCNI-5           MALAWI                         <52 kg            80     120
15-18 months   LCNI-5           MALAWI                         [52-58) kg        27     120
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
15-18 months   MAL-ED           PERU                           >=58 kg           79     213
15-18 months   MAL-ED           PERU                           <52 kg            80     213
15-18 months   MAL-ED           PERU                           [52-58) kg        54     213
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg          158     221
15-18 months   MAL-ED           SOUTH AFRICA                   <52 kg            27     221
15-18 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        36     221
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           83     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            83     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        51     217
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg           60     449
15-18 months   NIH-Birth        BANGLADESH                     <52 kg           322     449
15-18 months   NIH-Birth        BANGLADESH                     [52-58) kg        67     449
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg          160     604
15-18 months   NIH-Crypto       BANGLADESH                     <52 kg           322     604
15-18 months   NIH-Crypto       BANGLADESH                     [52-58) kg       122     604
15-18 months   PROBIT           BELARUS                        >=58 kg          179     274
15-18 months   PROBIT           BELARUS                        <52 kg            36     274
15-18 months   PROBIT           BELARUS                        [52-58) kg        59     274
15-18 months   PROVIDE          BANGLADESH                     >=58 kg          105     527
15-18 months   PROVIDE          BANGLADESH                     <52 kg           328     527
15-18 months   PROVIDE          BANGLADESH                     [52-58) kg        94     527
15-18 months   SAS-CompFeed     INDIA                          >=58 kg           88    1166
15-18 months   SAS-CompFeed     INDIA                          <52 kg           895    1166
15-18 months   SAS-CompFeed     INDIA                          [52-58) kg       183    1166
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg          421     654
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg            97     654
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       136     654
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg         1068    2026
15-18 months   ZVITAMBO         ZIMBABWE                       <52 kg           432    2026
15-18 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       526    2026
18-21 months   LCNI-5           MALAWI                         >=58 kg           61     475
18-21 months   LCNI-5           MALAWI                         <52 kg           296     475
18-21 months   LCNI-5           MALAWI                         [52-58) kg       118     475
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           78     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            80     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        46     204
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg           56     422
18-21 months   NIH-Birth        BANGLADESH                     <52 kg           301     422
18-21 months   NIH-Birth        BANGLADESH                     [52-58) kg        65     422
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg          146     546
18-21 months   NIH-Crypto       BANGLADESH                     <52 kg           293     546
18-21 months   NIH-Crypto       BANGLADESH                     [52-58) kg       107     546
18-21 months   PROBIT           BELARUS                        >=58 kg          157     215
18-21 months   PROBIT           BELARUS                        <52 kg            16     215
18-21 months   PROBIT           BELARUS                        [52-58) kg        42     215
18-21 months   PROVIDE          BANGLADESH                     >=58 kg          101     540
18-21 months   PROVIDE          BANGLADESH                     <52 kg           342     540
18-21 months   PROVIDE          BANGLADESH                     [52-58) kg        97     540
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            8       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             0       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       9
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg          840    1585
18-21 months   ZVITAMBO         ZIMBABWE                       <52 kg           324    1585
18-21 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1585
21-24 months   LCNI-5           MALAWI                         >=58 kg           54     409
21-24 months   LCNI-5           MALAWI                         <52 kg           255     409
21-24 months   LCNI-5           MALAWI                         [52-58) kg       100     409
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           78     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            81     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        45     204
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg           56     411
21-24 months   NIH-Birth        BANGLADESH                     <52 kg           293     411
21-24 months   NIH-Birth        BANGLADESH                     [52-58) kg        62     411
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg          132     490
21-24 months   NIH-Crypto       BANGLADESH                     <52 kg           259     490
21-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg        99     490
21-24 months   PROBIT           BELARUS                        >=58 kg          156     206
21-24 months   PROBIT           BELARUS                        <52 kg            10     206
21-24 months   PROBIT           BELARUS                        [52-58) kg        40     206
21-24 months   PROVIDE          BANGLADESH                     >=58 kg           89     470
21-24 months   PROVIDE          BANGLADESH                     <52 kg           296     470
21-24 months   PROVIDE          BANGLADESH                     [52-58) kg        85     470
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          607    1164
21-24 months   ZVITAMBO         ZIMBABWE                       <52 kg           240    1164
21-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       317    1164


The following strata were considered:

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
![](/tmp/f8fc0be2-6055-4748-9882-e467731b3be8/f820734c-0146-41de-86c2-7d1db56f1e0e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f8fc0be2-6055-4748-9882-e467731b3be8/f820734c-0146-41de-86c2-7d1db56f1e0e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f8fc0be2-6055-4748-9882-e467731b3be8/f820734c-0146-41de-86c2-7d1db56f1e0e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0937725   -0.1719711   -0.0155738
0-3 months     MAL-ED           BANGLADESH                     <52 kg               NA                -0.1321917   -0.1744632   -0.0899202
0-3 months     MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.1148784   -0.1943005   -0.0354564
0-3 months     MAL-ED           BRAZIL                         >=58 kg              NA                 0.1440976    0.0750051    0.2131900
0-3 months     MAL-ED           BRAZIL                         <52 kg               NA                 0.1262198   -0.0189829    0.2714224
0-3 months     MAL-ED           BRAZIL                         [52-58) kg           NA                 0.1037337   -0.0350826    0.2425500
0-3 months     MAL-ED           INDIA                          >=58 kg              NA                -0.0544635   -0.2353969    0.1264699
0-3 months     MAL-ED           INDIA                          <52 kg               NA                -0.0582299   -0.1121582   -0.0043015
0-3 months     MAL-ED           INDIA                          [52-58) kg           NA                -0.0648474   -0.1656459    0.0359512
0-3 months     MAL-ED           NEPAL                          >=58 kg              NA                 0.0780620    0.0020121    0.1541119
0-3 months     MAL-ED           NEPAL                          <52 kg               NA                 0.0505899   -0.0293171    0.1304970
0-3 months     MAL-ED           NEPAL                          [52-58) kg           NA                 0.0367040   -0.0373758    0.1107838
0-3 months     MAL-ED           PERU                           >=58 kg              NA                -0.2906185   -0.3493883   -0.2318486
0-3 months     MAL-ED           PERU                           <52 kg               NA                -0.2279453   -0.2761611   -0.1797294
0-3 months     MAL-ED           PERU                           [52-58) kg           NA                -0.2739129   -0.3489850   -0.1988408
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1631988   -0.2211807   -0.1052169
0-3 months     MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.2394398   -0.4003880   -0.0784916
0-3 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.1961344   -0.3180840   -0.0741848
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1531826   -0.2105241   -0.0958411
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1185982   -0.1848026   -0.0523938
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.1424116   -0.2286437   -0.0561796
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2404339   -0.3274280   -0.1534397
0-3 months     NIH-Birth        BANGLADESH                     <52 kg               NA                -0.2273791   -0.2570490   -0.1977092
0-3 months     NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.2466933   -0.3204862   -0.1729004
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.2188429   -0.2511799   -0.1865058
0-3 months     NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.2391723   -0.2642029   -0.2141416
0-3 months     NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.2257643   -0.2610120   -0.1905167
0-3 months     PROBIT           BELARUS                        >=58 kg              NA                -0.4370383   -0.4985425   -0.3755341
0-3 months     PROBIT           BELARUS                        <52 kg               NA                -0.4154200   -0.4770405   -0.3537995
0-3 months     PROBIT           BELARUS                        [52-58) kg           NA                -0.4172023   -0.4681285   -0.3662760
0-3 months     PROVIDE          BANGLADESH                     >=58 kg              NA                -0.1943588   -0.2367168   -0.1520008
0-3 months     PROVIDE          BANGLADESH                     <52 kg               NA                -0.1968586   -0.2174143   -0.1763028
0-3 months     PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.1457471   -0.1920503   -0.0994440
0-3 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.1207024   -0.2138383   -0.0275665
0-3 months     SAS-CompFeed     INDIA                          <52 kg               NA                -0.1296410   -0.1595786   -0.0997034
0-3 months     SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.1151672   -0.1688885   -0.0614459
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1264940   -0.1407638   -0.1122241
0-3 months     ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.1813691   -0.2037757   -0.1589625
0-3 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.1417169   -0.1621020   -0.1213318
3-6 months     MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0347168   -0.0734537    0.0040200
3-6 months     MAL-ED           BANGLADESH                     <52 kg               NA                -0.0243002   -0.0563884    0.0077880
3-6 months     MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.0023640   -0.0540902    0.0493621
3-6 months     MAL-ED           BRAZIL                         >=58 kg              NA                 0.0519740    0.0043027    0.0996453
3-6 months     MAL-ED           BRAZIL                         <52 kg               NA                 0.0436478   -0.0423253    0.1296208
3-6 months     MAL-ED           BRAZIL                         [52-58) kg           NA                 0.1034203    0.0366654    0.1701751
3-6 months     MAL-ED           INDIA                          >=58 kg              NA                -0.0553770   -0.1403931    0.0296390
3-6 months     MAL-ED           INDIA                          <52 kg               NA                -0.0306922   -0.0652009    0.0038164
3-6 months     MAL-ED           INDIA                          [52-58) kg           NA                -0.0443159   -0.1125950    0.0239631
3-6 months     MAL-ED           NEPAL                          >=58 kg              NA                 0.0023878   -0.0434038    0.0481794
3-6 months     MAL-ED           NEPAL                          <52 kg               NA                -0.0140473   -0.0599024    0.0318079
3-6 months     MAL-ED           NEPAL                          [52-58) kg           NA                -0.0553424   -0.1008135   -0.0098713
3-6 months     MAL-ED           PERU                           >=58 kg              NA                 0.0280149   -0.0287802    0.0848099
3-6 months     MAL-ED           PERU                           <52 kg               NA                 0.0170544   -0.0257347    0.0598435
3-6 months     MAL-ED           PERU                           [52-58) kg           NA                 0.0359294   -0.0318909    0.1037497
3-6 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0258326   -0.0708602    0.0191949
3-6 months     MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.0486702   -0.0627457    0.1600860
3-6 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.0214577   -0.0692424    0.1121579
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0719145   -0.1240247   -0.0198042
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0753924   -0.1271723   -0.0236125
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0602083   -0.1268395    0.0064229
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0022188   -0.0669493    0.0625117
3-6 months     NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0619093   -0.0867628   -0.0370559
3-6 months     NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0414006   -0.1063411    0.0235399
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0063485   -0.0252252    0.0379221
3-6 months     NIH-Crypto       BANGLADESH                     <52 kg               NA                 0.0318827    0.0088915    0.0548738
3-6 months     NIH-Crypto       BANGLADESH                     [52-58) kg           NA                 0.0385200   -0.0000886    0.0771287
3-6 months     PROBIT           BELARUS                        >=58 kg              NA                 0.0468009    0.0270757    0.0665262
3-6 months     PROBIT           BELARUS                        <52 kg               NA                 0.0589255    0.0303508    0.0875002
3-6 months     PROBIT           BELARUS                        [52-58) kg           NA                 0.0547520    0.0317159    0.0777880
3-6 months     PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0430993   -0.0826164   -0.0035822
3-6 months     PROVIDE          BANGLADESH                     <52 kg               NA                -0.0287034   -0.0479073   -0.0094994
3-6 months     PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.0056686   -0.0453370    0.0339997
3-6 months     SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0297690   -0.0084204    0.0679584
3-6 months     SAS-CompFeed     INDIA                          <52 kg               NA                -0.0206435   -0.0480643    0.0067772
3-6 months     SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.0163044   -0.0455559    0.0129471
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0839832   -0.1052508   -0.0627155
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0767045   -0.1204895   -0.0329194
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0897404   -0.1245565   -0.0549243
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0016580   -0.0144829    0.0111670
3-6 months     ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0106957   -0.0095270    0.0309184
3-6 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0101121   -0.0277334    0.0075092
6-9 months     LCNI-5           MALAWI                         >=58 kg              NA                 0.0210575   -0.0166718    0.0587868
6-9 months     LCNI-5           MALAWI                         <52 kg               NA                 0.0322103    0.0103931    0.0540274
6-9 months     LCNI-5           MALAWI                         [52-58) kg           NA                 0.0261536   -0.0024570    0.0547641
6-9 months     MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0761701   -0.1140382   -0.0383020
6-9 months     MAL-ED           BANGLADESH                     <52 kg               NA                -0.0653772   -0.0865649   -0.0441896
6-9 months     MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.0799669   -0.1252607   -0.0346732
6-9 months     MAL-ED           BRAZIL                         >=58 kg              NA                 0.0112845   -0.0342454    0.0568143
6-9 months     MAL-ED           BRAZIL                         <52 kg               NA                -0.0530391   -0.1306884    0.0246102
6-9 months     MAL-ED           BRAZIL                         [52-58) kg           NA                 0.0528899   -0.0108725    0.1166522
6-9 months     MAL-ED           INDIA                          >=58 kg              NA                -0.0937558   -0.1392777   -0.0482339
6-9 months     MAL-ED           INDIA                          <52 kg               NA                -0.0626368   -0.0916421   -0.0336316
6-9 months     MAL-ED           INDIA                          [52-58) kg           NA                -0.0790579   -0.1356141   -0.0225016
6-9 months     MAL-ED           NEPAL                          >=58 kg              NA                -0.0306331   -0.0607264   -0.0005398
6-9 months     MAL-ED           NEPAL                          <52 kg               NA                -0.0443705   -0.0772268   -0.0115142
6-9 months     MAL-ED           NEPAL                          [52-58) kg           NA                -0.0291782   -0.0658738    0.0075174
6-9 months     MAL-ED           PERU                           >=58 kg              NA                -0.0360483   -0.0738900    0.0017933
6-9 months     MAL-ED           PERU                           <52 kg               NA                -0.0298644   -0.0669598    0.0072311
6-9 months     MAL-ED           PERU                           [52-58) kg           NA                -0.0337456   -0.0892357    0.0217444
6-9 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0225758   -0.0540101    0.0088584
6-9 months     MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.0022808   -0.0730048    0.0775663
6-9 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.0446307   -0.1244502    0.0351888
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0944955   -0.1517787   -0.0372123
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1039695   -0.1510306   -0.0569083
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0743350   -0.1500813    0.0014113
6-9 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0537400   -0.0943254   -0.0131546
6-9 months     NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0573541   -0.0795737   -0.0351346
6-9 months     NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0744627   -0.1149439   -0.0339814
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0002685   -0.0264954    0.0270324
6-9 months     NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.0421935   -0.0590828   -0.0253042
6-9 months     NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.0426475   -0.0697144   -0.0155806
6-9 months     PROBIT           BELARUS                        >=58 kg              NA                 0.0514425    0.0378043    0.0650807
6-9 months     PROBIT           BELARUS                        <52 kg               NA                 0.0570853    0.0319959    0.0821748
6-9 months     PROBIT           BELARUS                        [52-58) kg           NA                 0.0536293    0.0323867    0.0748719
6-9 months     PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0427834   -0.0685351   -0.0170317
6-9 months     PROVIDE          BANGLADESH                     <52 kg               NA                -0.0719927   -0.0849921   -0.0589932
6-9 months     PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.0426697   -0.0708175   -0.0145219
6-9 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0572494   -0.1135385   -0.0009604
6-9 months     SAS-CompFeed     INDIA                          <52 kg               NA                -0.0885989   -0.0987580   -0.0784397
6-9 months     SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.0621951   -0.1047656   -0.0196246
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0502906   -0.0705028   -0.0300783
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0780882   -0.1225932   -0.0335833
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0393615   -0.0720456   -0.0066774
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0282705   -0.0396781   -0.0168629
6-9 months     ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.0380239   -0.0561140   -0.0199338
6-9 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0345739   -0.0515180   -0.0176299
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0460290   -0.0711235   -0.0209346
9-12 months    iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                -0.0530412   -0.0786911   -0.0273912
9-12 months    iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                -0.0482104   -0.0650271   -0.0313936
9-12 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.0479299   -0.0867705   -0.0090892
9-12 months    LCNI-5           MALAWI                         <52 kg               NA                -0.0441357   -0.0710803   -0.0171911
9-12 months    LCNI-5           MALAWI                         [52-58) kg           NA                -0.0420161   -0.0770514   -0.0069809
9-12 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0798886   -0.1182094   -0.0415679
9-12 months    MAL-ED           BANGLADESH                     <52 kg               NA                -0.0890291   -0.1086132   -0.0694450
9-12 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.0881397   -0.1299125   -0.0463669
9-12 months    MAL-ED           BRAZIL                         >=58 kg              NA                 0.0176611   -0.0164794    0.0518015
9-12 months    MAL-ED           BRAZIL                         <52 kg               NA                 0.0068690   -0.0920320    0.1057699
9-12 months    MAL-ED           BRAZIL                         [52-58) kg           NA                -0.0338185   -0.1019343    0.0342974
9-12 months    MAL-ED           INDIA                          >=58 kg              NA                -0.0702788   -0.1104287   -0.0301289
9-12 months    MAL-ED           INDIA                          <52 kg               NA                -0.1011740   -0.1205772   -0.0817708
9-12 months    MAL-ED           INDIA                          [52-58) kg           NA                -0.0831181   -0.1188393   -0.0473970
9-12 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.0739044   -0.1045331   -0.0432756
9-12 months    MAL-ED           NEPAL                          <52 kg               NA                -0.0661090   -0.0940958   -0.0381222
9-12 months    MAL-ED           NEPAL                          [52-58) kg           NA                -0.0471205   -0.0757134   -0.0185276
9-12 months    MAL-ED           PERU                           >=58 kg              NA                -0.0486679   -0.0813849   -0.0159508
9-12 months    MAL-ED           PERU                           <52 kg               NA                -0.0227782   -0.0592454    0.0136891
9-12 months    MAL-ED           PERU                           [52-58) kg           NA                -0.0594492   -0.1034003   -0.0154981
9-12 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0680159   -0.0985038   -0.0375279
9-12 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.1625393   -0.2602520   -0.0648267
9-12 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.0797137   -0.1371438   -0.0222835
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1812417   -0.2348658   -0.1276175
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1235665   -0.1725006   -0.0746323
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.1615999   -0.2416237   -0.0815760
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0371534   -0.0745186    0.0002117
9-12 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0518759   -0.0686548   -0.0350971
9-12 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0044573   -0.0445750    0.0356604
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0245136   -0.0453753   -0.0036519
9-12 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.0425132   -0.0574017   -0.0276248
9-12 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.0253409   -0.0503576   -0.0003243
9-12 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0404888    0.0182528    0.0627248
9-12 months    PROBIT           BELARUS                        <52 kg               NA                 0.0304985    0.0034481    0.0575489
9-12 months    PROBIT           BELARUS                        [52-58) kg           NA                 0.0358446    0.0086140    0.0630752
9-12 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0479447   -0.0742625   -0.0216270
9-12 months    PROVIDE          BANGLADESH                     <52 kg               NA                -0.0730707   -0.0865116   -0.0596299
9-12 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.0429198   -0.0693198   -0.0165199
9-12 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0887892   -0.1332960   -0.0442825
9-12 months    SAS-CompFeed     INDIA                          <52 kg               NA                -0.0821773   -0.0963941   -0.0679604
9-12 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.0678514   -0.0957535   -0.0399493
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0579789   -0.0757327   -0.0402251
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0965650   -0.1327201   -0.0604099
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0569401   -0.0883896   -0.0254906
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0641060   -0.0739830   -0.0542290
9-12 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.0615443   -0.0795029   -0.0435857
9-12 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0453386   -0.0598191   -0.0308581
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0537201   -0.0930081   -0.0144321
12-15 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                -0.0310131   -0.0527828   -0.0092434
12-15 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                -0.0449417   -0.0775121   -0.0123712
12-15 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.0413986   -0.1206770    0.0378798
12-15 months   LCNI-5           MALAWI                         <52 kg               NA                -0.0515645   -0.0989762   -0.0041528
12-15 months   LCNI-5           MALAWI                         [52-58) kg           NA                -0.0115508   -0.0850624    0.0619608
12-15 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0201037   -0.0480944    0.0078870
12-15 months   MAL-ED           BANGLADESH                     <52 kg               NA                -0.0684324   -0.0885518   -0.0483129
12-15 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.0483401   -0.0859288   -0.0107513
12-15 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0070532   -0.0197659    0.0338724
12-15 months   MAL-ED           BRAZIL                         <52 kg               NA                -0.0587891   -0.1152141   -0.0023641
12-15 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.0175426   -0.0390218    0.0741070
12-15 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0355378   -0.0688773   -0.0021983
12-15 months   MAL-ED           INDIA                          <52 kg               NA                -0.0640210   -0.0835547   -0.0444873
12-15 months   MAL-ED           INDIA                          [52-58) kg           NA                -0.0519849   -0.0869172   -0.0170525
12-15 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0441222   -0.0699212   -0.0183231
12-15 months   MAL-ED           NEPAL                          <52 kg               NA                -0.0543034   -0.0820344   -0.0265724
12-15 months   MAL-ED           NEPAL                          [52-58) kg           NA                -0.0735312   -0.0999110   -0.0471514
12-15 months   MAL-ED           PERU                           >=58 kg              NA                -0.0553904   -0.0820355   -0.0287454
12-15 months   MAL-ED           PERU                           <52 kg               NA                -0.0894953   -0.1197778   -0.0592129
12-15 months   MAL-ED           PERU                           [52-58) kg           NA                -0.0444269   -0.0813265   -0.0075273
12-15 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0485715   -0.0761160   -0.0210269
12-15 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.0681401   -0.1254654   -0.0108149
12-15 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.0821869   -0.1404418   -0.0239320
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0586753   -0.0981983   -0.0191522
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0771856   -0.1185963   -0.0357750
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0748394   -0.1265849   -0.0230940
12-15 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1241637   -0.1597333   -0.0885941
12-15 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -0.1258359   -0.1474071   -0.1042648
12-15 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.1282649   -0.1601806   -0.0963492
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0291110   -0.0468498   -0.0113722
12-15 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.0429653   -0.0557717   -0.0301588
12-15 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.0377694   -0.0603065   -0.0152323
12-15 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0033397   -0.1406314    0.1473108
12-15 months   PROBIT           BELARUS                        <52 kg               NA                 0.0193954   -0.0777346    0.1165254
12-15 months   PROBIT           BELARUS                        [52-58) kg           NA                 0.0208163   -0.1610862    0.2027188
12-15 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0325161   -0.0575892   -0.0074430
12-15 months   PROVIDE          BANGLADESH                     <52 kg               NA                -0.0455536   -0.0580147   -0.0330924
12-15 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.0335629   -0.0565507   -0.0105751
12-15 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0891462   -0.1309450   -0.0473474
12-15 months   SAS-CompFeed     INDIA                          <52 kg               NA                -0.0875755   -0.1010979   -0.0740531
12-15 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.0668593   -0.1114453   -0.0222733
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0706750   -0.0894744   -0.0518756
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0536432   -0.0899037   -0.0173826
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0544344   -0.0834715   -0.0253972
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0605855   -0.0750405   -0.0461306
12-15 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.0590172   -0.0827386   -0.0352959
12-15 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0703322   -0.0904510   -0.0502135
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0067411   -0.0301620    0.0166798
15-18 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                -0.0313283   -0.0512160   -0.0114406
15-18 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                -0.0125394   -0.0341801    0.0091013
15-18 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.0257334   -0.1091014    0.0576346
15-18 months   LCNI-5           MALAWI                         <52 kg               NA                -0.0618145   -0.0911520   -0.0324771
15-18 months   LCNI-5           MALAWI                         [52-58) kg           NA                -0.0071590   -0.0660056    0.0516877
15-18 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0459494   -0.0735200   -0.0183787
15-18 months   MAL-ED           BANGLADESH                     <52 kg               NA                -0.0541607   -0.0716489   -0.0366725
15-18 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.0151007   -0.0447284    0.0145270
15-18 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0401066   -0.0651185   -0.0150948
15-18 months   MAL-ED           BRAZIL                         <52 kg               NA                 0.0219742   -0.0143380    0.0582863
15-18 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.0159013   -0.0461392    0.0779419
15-18 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0193473   -0.0461610    0.0074664
15-18 months   MAL-ED           INDIA                          <52 kg               NA                -0.0437210   -0.0598240   -0.0276180
15-18 months   MAL-ED           INDIA                          [52-58) kg           NA                -0.0360473   -0.0677891   -0.0043055
15-18 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0503730   -0.0784527   -0.0222933
15-18 months   MAL-ED           NEPAL                          <52 kg               NA                -0.0620312   -0.0832024   -0.0408599
15-18 months   MAL-ED           NEPAL                          [52-58) kg           NA                -0.0527374   -0.0805911   -0.0248838
15-18 months   MAL-ED           PERU                           >=58 kg              NA                -0.0201554   -0.0456314    0.0053206
15-18 months   MAL-ED           PERU                           <52 kg               NA                -0.0442794   -0.0697096   -0.0188492
15-18 months   MAL-ED           PERU                           [52-58) kg           NA                -0.0471372   -0.0768539   -0.0174205
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0411805   -0.0639149   -0.0184460
15-18 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.0128222   -0.0242400    0.0498843
15-18 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.0003025   -0.0552500    0.0546450
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0621431   -0.0985676   -0.0257186
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0935823   -0.1279797   -0.0591849
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.1109296   -0.1585288   -0.0633304
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0328106   -0.0829050    0.0172839
15-18 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0576183   -0.0738987   -0.0413379
15-18 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0803186   -0.1189570   -0.0416801
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0022442   -0.0173801    0.0128916
15-18 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.0251336   -0.0364323   -0.0138349
15-18 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.0144258   -0.0346791    0.0058275
15-18 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0208981   -0.2104829    0.1686866
15-18 months   PROBIT           BELARUS                        <52 kg               NA                -0.0275945   -0.0905240    0.0353351
15-18 months   PROBIT           BELARUS                        [52-58) kg           NA                 0.0201013   -0.4148016    0.4550042
15-18 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0376531   -0.0570653   -0.0182410
15-18 months   PROVIDE          BANGLADESH                     <52 kg               NA                -0.0350910   -0.0461331   -0.0240488
15-18 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.0484057   -0.0693525   -0.0274589
15-18 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0329511   -0.0370013    0.1029034
15-18 months   SAS-CompFeed     INDIA                          <52 kg               NA                -0.0178793   -0.0278651   -0.0078936
15-18 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.0059342   -0.0499095    0.0380411
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0200764   -0.0394916   -0.0006612
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0381060   -0.0746360   -0.0015760
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0079810   -0.0418069    0.0258450
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0640572   -0.0793277   -0.0487867
15-18 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.0757499   -0.0986660   -0.0528338
15-18 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0454782   -0.0672317   -0.0237247
18-21 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.0203543   -0.0582124    0.0175039
18-21 months   LCNI-5           MALAWI                         <52 kg               NA                -0.0064882   -0.0281016    0.0151252
18-21 months   LCNI-5           MALAWI                         [52-58) kg           NA                -0.0356070   -0.0659366   -0.0052775
18-21 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0224435   -0.0493478    0.0044608
18-21 months   MAL-ED           BANGLADESH                     <52 kg               NA                -0.0145194   -0.0289804   -0.0000584
18-21 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.0116153   -0.0398596    0.0166290
18-21 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0443081   -0.0689504   -0.0196658
18-21 months   MAL-ED           BRAZIL                         <52 kg               NA                 0.0593564   -0.0370605    0.1557733
18-21 months   MAL-ED           BRAZIL                         [52-58) kg           NA                -0.0017904   -0.0466378    0.0430570
18-21 months   MAL-ED           INDIA                          >=58 kg              NA                 0.0171563   -0.0094785    0.0437911
18-21 months   MAL-ED           INDIA                          <52 kg               NA                 0.0006602   -0.0134935    0.0148138
18-21 months   MAL-ED           INDIA                          [52-58) kg           NA                 0.0128830   -0.0146114    0.0403774
18-21 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0207668   -0.0440949    0.0025612
18-21 months   MAL-ED           NEPAL                          <52 kg               NA                -0.0317640   -0.0545284   -0.0089997
18-21 months   MAL-ED           NEPAL                          [52-58) kg           NA                -0.0318312   -0.0533353   -0.0103272
18-21 months   MAL-ED           PERU                           >=58 kg              NA                -0.0029273   -0.0286467    0.0227922
18-21 months   MAL-ED           PERU                           <52 kg               NA                -0.0251484   -0.0499896   -0.0003072
18-21 months   MAL-ED           PERU                           [52-58) kg           NA                 0.0103385   -0.0175292    0.0382062
18-21 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0285484   -0.0526237   -0.0044731
18-21 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.0156779   -0.0609151    0.0295593
18-21 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.0554891   -0.0980005   -0.0129778
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0195204   -0.0581411    0.0191004
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0362593   -0.0710909   -0.0014278
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0289158   -0.0773455    0.0195140
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0676182   -0.1052217   -0.0300147
18-21 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0356111   -0.0496846   -0.0215377
18-21 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0260706   -0.0601636    0.0080223
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0219397   -0.0368047   -0.0070746
18-21 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.0319848   -0.0428860   -0.0210836
18-21 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.0251981   -0.0445423   -0.0058538
18-21 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0594295   -0.1851757    0.0663166
18-21 months   PROBIT           BELARUS                        <52 kg               NA                 0.0145045   -0.1069598    0.1359689
18-21 months   PROBIT           BELARUS                        [52-58) kg           NA                 0.0410722   -0.8274991    0.9096435
18-21 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0012264   -0.0183331    0.0158803
18-21 months   PROVIDE          BANGLADESH                     <52 kg               NA                -0.0153332   -0.0259139   -0.0047525
18-21 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.0048843   -0.0236379    0.0138692
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0609487   -0.0764109   -0.0454865
18-21 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.0724972   -0.0992656   -0.0457289
18-21 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0828194   -0.1073399   -0.0582989
21-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.0013892   -0.0409475    0.0437259
21-24 months   LCNI-5           MALAWI                         <52 kg               NA                 0.0291147    0.0100393    0.0481902
21-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                 0.0317551   -0.0012227    0.0647329
21-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0223232   -0.0053566    0.0500030
21-24 months   MAL-ED           BANGLADESH                     <52 kg               NA                 0.0302813    0.0145665    0.0459962
21-24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                 0.0123108   -0.0130760    0.0376975
21-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0219287    0.0030007    0.0408566
21-24 months   MAL-ED           BRAZIL                         <52 kg               NA                -0.0032141   -0.0512597    0.0448314
21-24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.0172446   -0.0173418    0.0518309
21-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.0240270   -0.0019674    0.0500214
21-24 months   MAL-ED           INDIA                          <52 kg               NA                 0.0335529    0.0202670    0.0468388
21-24 months   MAL-ED           INDIA                          [52-58) kg           NA                 0.0219048   -0.0053594    0.0491690
21-24 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.0137134   -0.0135046    0.0409314
21-24 months   MAL-ED           NEPAL                          <52 kg               NA                 0.0139980   -0.0102627    0.0382588
21-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -0.0109070   -0.0294616    0.0076476
21-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.0765781    0.0513547    0.1018015
21-24 months   MAL-ED           PERU                           <52 kg               NA                 0.0394808    0.0152349    0.0637268
21-24 months   MAL-ED           PERU                           [52-58) kg           NA                 0.0506294    0.0208491    0.0804096
21-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0543560    0.0357112    0.0730009
21-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.0321070   -0.0684077    0.0041937
21-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.0667428    0.0145149    0.1189707
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0180461   -0.0176507    0.0537429
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.0076089   -0.0239168    0.0391346
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0049025   -0.0560449    0.0462399
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0505634    0.0224027    0.0787242
21-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                 0.0418655    0.0279274    0.0558036
21-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                 0.0262268   -0.0064020    0.0588556
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0618660    0.0473267    0.0764052
21-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                 0.0548882    0.0434272    0.0663491
21-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                 0.0647584    0.0452319    0.0842850
21-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0417524   -0.0996061    0.1831109
21-24 months   PROBIT           BELARUS                        <52 kg               NA                 0.1807595    0.0916512    0.2698678
21-24 months   PROBIT           BELARUS                        [52-58) kg           NA                 0.0403172   -0.4400968    0.5207311
21-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.0533667    0.0337133    0.0730202
21-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                 0.0456871    0.0346338    0.0567405
21-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                 0.0429427    0.0237615    0.0621238
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0197088    0.0028882    0.0365295
21-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0134979   -0.0103879    0.0373837
21-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.0168966   -0.0103064    0.0440997


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     MAL-ED           NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2618635   -0.2960359   -0.2276911
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1762601   -0.2261696   -0.1263506
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4318793   -0.4903720   -0.3733866
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1875263   -0.2048955   -0.1701570
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1267191   -0.1530996   -0.1003386
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1417907   -0.1521682   -0.1314133
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED           BRAZIL                         NA                   NA                 0.0589358    0.0222648    0.0956069
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0375957   -0.0670579   -0.0081335
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0256338   -0.0057477    0.0570153
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0091896   -0.0472785    0.0288994
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0491589    0.0302482    0.0680696
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0271792   -0.0431005   -0.0112579
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0163491   -0.0355574    0.0028592
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0840625   -0.1008606   -0.0672645
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0014382   -0.0106714    0.0077950
6-9 months     LCNI-5           MALAWI                         NA                   NA                 0.0291036    0.0131409    0.0450664
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED           BRAZIL                         NA                   NA                 0.0068258   -0.0280019    0.0416536
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0713068   -0.0942272   -0.0483864
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0330997   -0.0572939   -0.0089056
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0231170   -0.0506622    0.0044281
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0522815    0.0377957    0.0667673
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0822533   -0.0895752   -0.0749313
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0524545   -0.0685929   -0.0363160
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0318830   -0.0402752   -0.0234909
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0492418   -0.0639013   -0.0345823
9-12 months    LCNI-5           MALAWI                         NA                   NA                -0.0440977   -0.0635039   -0.0246915
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0069017   -0.0239759    0.0377793
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0919508   -0.1077840   -0.0761177
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0413365   -0.0628572   -0.0198159
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0814634   -0.1083205   -0.0546062
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0388779    0.0179039    0.0598518
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0804537   -0.0942481   -0.0666593
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0642526   -0.0785049   -0.0500004
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0586870   -0.0661500   -0.0512240
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0428959   -0.0591047   -0.0266870
12-15 months   LCNI-5           MALAWI                         NA                   NA                -0.0398116   -0.0766125   -0.0030107
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0029858   -0.0256837    0.0197122
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0564431   -0.0717375   -0.0411487
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0658390   -0.0837720   -0.0479060
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0566955   -0.0797700   -0.0336210
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROBIT           BELARUS                        NA                   NA                 0.0082837   -0.1170632    0.1336306
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0843730   -0.0984286   -0.0703175
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0647856   -0.0793830   -0.0501882
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0626796   -0.0732211   -0.0521380
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0176373   -0.0308203   -0.0044542
15-18 months   LCNI-5           MALAWI                         NA                   NA                -0.0456083   -0.0712437   -0.0199728
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0187111   -0.0396715    0.0022494
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0380016   -0.0508948   -0.0251084
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0279240   -0.0472295   -0.0086185
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROBIT           BELARUS                        NA                   NA                -0.0129496   -0.1671849    0.1412858
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0379764   -0.0467131   -0.0292397
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0121683   -0.0222996   -0.0020371
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0202353   -0.0355813   -0.0048892
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0617268   -0.0727172   -0.0507365
18-21 months   LCNI-5           MALAWI                         NA                   NA                -0.0155026   -0.0317216    0.0007164
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0195070   -0.0441513    0.0051374
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0059994   -0.0054729    0.0174717
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0313891   -0.0507513   -0.0120268
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROBIT           BELARUS                        NA                   NA                -0.0342946   -0.2335748    0.1649857
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0108178   -0.0189879   -0.0026477
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0691186   -0.0809390   -0.0572982
21-24 months   LCNI-5           MALAWI                         NA                   NA                 0.0260997    0.0106535    0.0415460
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0167506    0.0006604    0.0328408
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0295109    0.0185329    0.0404890
21-24 months   MAL-ED           NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0458597    0.0290311    0.0626883
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROBIT           BELARUS                        NA                   NA                 0.0482216   -0.0988166    0.1952599
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0466450    0.0380173    0.0552728
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0176623    0.0051684    0.0301563


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0384192   -0.1273119    0.0504734
0-3 months     MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0211060   -0.1325640    0.0903520
0-3 months     MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0178778   -0.1786807    0.1429251
0-3 months     MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0403638   -0.1954242    0.1146966
0-3 months     MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0037663   -0.1925656    0.1850330
0-3 months     MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0103838   -0.2175004    0.1967327
0-3 months     MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0274721   -0.1377840    0.0828399
0-3 months     MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0413580   -0.1475248    0.0648089
0-3 months     MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <52 kg               >=58 kg            0.0626732   -0.0133443    0.1386907
0-3 months     MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0167056   -0.0786344    0.1120456
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.0762410   -0.2473147    0.0948327
0-3 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0329356   -0.1679675    0.1020963
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0345844   -0.0530002    0.1221690
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0107710   -0.0927858    0.1143278
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <52 kg               >=58 kg            0.0130547   -0.0788598    0.1049692
0-3 months     NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0062595   -0.1203356    0.1078167
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0203294   -0.0612222    0.0205633
0-3 months     NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0069215   -0.0547554    0.0409124
0-3 months     PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <52 kg               >=58 kg            0.0216183   -0.0112678    0.0545044
0-3 months     PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0198361   -0.0067598    0.0464319
0-3 months     PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0024998   -0.0495820    0.0445825
0-3 months     PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0486116   -0.0141433    0.1113666
0-3 months     SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.0089386   -0.1151783    0.0973011
0-3 months     SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg            0.0055352   -0.0965745    0.1076450
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0548751   -0.0814398   -0.0283104
0-3 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0152230   -0.0401063    0.0096604
3-6 months     MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <52 kg               >=58 kg            0.0104166   -0.0398844    0.0607177
3-6 months     MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0323528   -0.0322702    0.0969758
3-6 months     MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0083262   -0.1066315    0.0899790
3-6 months     MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0514463   -0.0305827    0.1334753
3-6 months     MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <52 kg               >=58 kg            0.0246848   -0.0670680    0.1164376
3-6 months     MAL-ED           INDIA                          [52-58) kg           >=58 kg            0.0110611   -0.0979791    0.1201013
3-6 months     MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0164351   -0.0812392    0.0483690
3-6 months     MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0577302   -0.1222631    0.0068027
3-6 months     MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <52 kg               >=58 kg           -0.0109605   -0.0820702    0.0601492
3-6 months     MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0079146   -0.0805460    0.0963752
3-6 months     MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.0745028   -0.0456678    0.1946734
3-6 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0472904   -0.0539717    0.1485524
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0034780   -0.0769398    0.0699838
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0117061   -0.0728823    0.0962945
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0596905   -0.1290283    0.0096473
3-6 months     NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0391818   -0.1308732    0.0525096
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg            0.0255342   -0.0135233    0.0645917
3-6 months     NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg            0.0321716   -0.0177035    0.0820467
3-6 months     PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <52 kg               >=58 kg            0.0121245   -0.0153340    0.0395831
3-6 months     PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0079510   -0.0083227    0.0242248
3-6 months     PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <52 kg               >=58 kg            0.0143959   -0.0295404    0.0583322
3-6 months     PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0374306   -0.0185620    0.0934233
3-6 months     SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.0504126   -0.0906700   -0.0101551
3-6 months     SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0460734   -0.1027433    0.0105965
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0072787   -0.0413982    0.0559557
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0057572   -0.0465551    0.0350408
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0123536   -0.0115929    0.0363002
3-6 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0084541   -0.0302483    0.0133401
6-9 months     LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0111528   -0.0324303    0.0547359
6-9 months     LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0050961   -0.0422543    0.0524465
6-9 months     MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <52 kg               >=58 kg            0.0107928   -0.0325997    0.0541854
6-9 months     MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0037969   -0.0628351    0.0552414
6-9 months     MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0643235   -0.1543368    0.0256897
6-9 months     MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0416054   -0.0367439    0.1199547
6-9 months     MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <52 kg               >=58 kg            0.0311190   -0.0228583    0.0850963
6-9 months     MAL-ED           INDIA                          [52-58) kg           >=58 kg            0.0146980   -0.0579026    0.0872986
6-9 months     MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0137374   -0.0582923    0.0308175
6-9 months     MAL-ED           NEPAL                          [52-58) kg           >=58 kg            0.0014549   -0.0460022    0.0489119
6-9 months     MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <52 kg               >=58 kg            0.0061840   -0.0468072    0.0591751
6-9 months     MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0023027   -0.0648623    0.0694677
6-9 months     MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.0248566   -0.0567279    0.1064410
6-9 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0220549   -0.1078411    0.0637313
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0094740   -0.0836098    0.0646619
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0201605   -0.0748073    0.1151283
6-9 months     NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0036142   -0.0498838    0.0426555
6-9 months     NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0207227   -0.0780455    0.0366001
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0424620   -0.0741093   -0.0108146
6-9 months     NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0429160   -0.0809807   -0.0048513
6-9 months     PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <52 kg               >=58 kg            0.0056428   -0.0133644    0.0246501
6-9 months     PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0021869   -0.0129810    0.0173547
6-9 months     PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0292093   -0.0580560   -0.0003625
6-9 months     PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0001137   -0.0380367    0.0382641
6-9 months     SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.0313494   -0.0915972    0.0288983
6-9 months     SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0049457   -0.0845484    0.0746570
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0277977   -0.0766774    0.0210821
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0109291   -0.0274999    0.0493580
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0097534   -0.0311399    0.0116332
6-9 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0063034   -0.0267297    0.0141229
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           -0.0070121   -0.0399528    0.0259286
9-12 months    iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           -0.0021813   -0.0277941    0.0234315
9-12 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0037942   -0.0434775    0.0510658
9-12 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0059137   -0.0463937    0.0582212
9-12 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0091404   -0.0521755    0.0338947
9-12 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0082511   -0.0649383    0.0484362
9-12 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0107921   -0.1154199    0.0938357
9-12 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0514796   -0.1276723    0.0247132
9-12 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0308952   -0.0754878    0.0136974
9-12 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0128393   -0.0665796    0.0409009
9-12 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <52 kg               >=58 kg            0.0077954   -0.0336942    0.0492849
9-12 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg            0.0267839   -0.0151169    0.0686847
9-12 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <52 kg               >=58 kg            0.0258897   -0.0231028    0.0748822
9-12 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0107814   -0.0655729    0.0440101
9-12 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.0945234   -0.1968820    0.0078351
9-12 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0116978   -0.0767189    0.0533233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0576752   -0.0149203    0.1302706
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0196418   -0.0766877    0.1159713
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0147225   -0.0556820    0.0262371
9-12 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0326962   -0.0221270    0.0875193
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0179996   -0.0436293    0.0076300
9-12 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0008273   -0.0334010    0.0317464
9-12 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0099903   -0.0330536    0.0130731
9-12 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0046441   -0.0286226    0.0193344
9-12 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0251260   -0.0546773    0.0044253
9-12 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0050249   -0.0322522    0.0423019
9-12 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg            0.0066119   -0.0367989    0.0500228
9-12 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg            0.0209378   -0.0174721    0.0593477
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0385861   -0.0788650    0.0016928
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0010388   -0.0350759    0.0371535
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0025617   -0.0179338    0.0230572
9-12 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0187674    0.0012391    0.0362957
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg            0.0227070   -0.0247167    0.0701307
12-15 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg            0.0087784   -0.0478878    0.0654446
12-15 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0101659   -0.1025398    0.0822079
12-15 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0298478   -0.0782680    0.1379636
12-15 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0483287   -0.0828000   -0.0138574
12-15 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0282364   -0.0751020    0.0186293
12-15 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0658424   -0.1283168   -0.0033680
12-15 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0104894   -0.0521109    0.0730897
12-15 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0284832   -0.0671237    0.0101573
12-15 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0164471   -0.0647357    0.0318416
12-15 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0101812   -0.0480573    0.0276949
12-15 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0294091   -0.0663074    0.0074892
12-15 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.0341049   -0.0744408    0.0062310
12-15 months   MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0109636   -0.0345506    0.0564778
12-15 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.0195687   -0.0831681    0.0440307
12-15 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0336154   -0.0980540    0.0308232
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0185104   -0.0757547    0.0387339
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0161642   -0.0812769    0.0489485
12-15 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0016723   -0.0432717    0.0399272
12-15 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0041012   -0.0518904    0.0436880
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0138543   -0.0357329    0.0080242
12-15 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0086585   -0.0373392    0.0200223
12-15 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <52 kg               >=58 kg            0.0160557   -0.1464603    0.1785717
12-15 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0174766   -0.1472515    0.1822047
12-15 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0130375   -0.0410364    0.0149615
12-15 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0010468   -0.0350629    0.0329694
12-15 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg            0.0015706   -0.0345775    0.0377188
12-15 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg            0.0222869   -0.0298676    0.0744414
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0170318   -0.0238123    0.0578760
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0162406   -0.0183509    0.0508321
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0015683   -0.0262103    0.0293469
12-15 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0097467   -0.0345198    0.0150264
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           -0.0245872   -0.0548313    0.0056568
15-18 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           -0.0057983   -0.0365849    0.0249883
15-18 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0360811   -0.1244604    0.0522982
15-18 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0185744   -0.0834704    0.1206193
15-18 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0082113   -0.0408606    0.0244380
15-18 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0308487   -0.0096228    0.0713202
15-18 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg            0.0620808    0.0179881    0.1061735
15-18 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0560080   -0.0108846    0.1229006
15-18 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0243737   -0.0556511    0.0069037
15-18 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0167000   -0.0582514    0.0248513
15-18 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0116582   -0.0468248    0.0235085
15-18 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0023644   -0.0419156    0.0371867
15-18 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.0241239   -0.0601201    0.0118722
15-18 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0269818   -0.0661240    0.0121604
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.0540026    0.0105232    0.0974820
15-18 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0408780   -0.0185870    0.1003429
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0314392   -0.0815383    0.0186599
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0487865   -0.1087233    0.0111504
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0248078   -0.0774813    0.0278658
15-18 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0475080   -0.1107724    0.0157564
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0228894   -0.0417773   -0.0040014
15-18 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0121816   -0.0374658    0.0131026
15-18 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0066964   -0.2123460    0.1989533
15-18 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0409994   -0.4409712    0.5229701
15-18 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg            0.0025621   -0.0197708    0.0248951
15-18 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0107526   -0.0393113    0.0178061
15-18 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.0508304   -0.1250128    0.0233520
15-18 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0388853   -0.1089830    0.0312125
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0180296   -0.0593985    0.0233394
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0120954   -0.0269064    0.0510973
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0116927   -0.0392306    0.0158452
15-18 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0185790   -0.0079992    0.0451572
18-21 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0138661   -0.0297272    0.0574594
18-21 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0152528   -0.0637617    0.0332562
18-21 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg            0.0079241   -0.0226203    0.0384686
18-21 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0108282   -0.0281793    0.0498357
18-21 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg            0.1036646    0.0041484    0.2031807
18-21 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0425177   -0.0086539    0.0936893
18-21 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0164961   -0.0466580    0.0136657
18-21 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0042733   -0.0425533    0.0340066
18-21 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0109972   -0.0435918    0.0215975
18-21 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0110644   -0.0427917    0.0206629
18-21 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.0222212   -0.0579783    0.0135360
18-21 months   MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0132657   -0.0246565    0.0511880
18-21 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.0128705   -0.0383743    0.0641152
18-21 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0269407   -0.0757960    0.0219145
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0167390   -0.0687467    0.0352687
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0093954   -0.0713390    0.0525481
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg            0.0320071   -0.0081437    0.0721578
18-21 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0415476   -0.0092102    0.0923054
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0100451   -0.0284789    0.0083886
18-21 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0032584   -0.0276545    0.0211377
18-21 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        <52 kg               >=58 kg            0.0739341   -0.1193799    0.2672481
18-21 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.1005018   -0.7749125    0.9759161
18-21 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0141068   -0.0342212    0.0060076
18-21 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0036579   -0.0290416    0.0217258
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0115486   -0.0424617    0.0193646
18-21 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0218707   -0.0508592    0.0071178
21-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0277255   -0.0187101    0.0741612
21-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0303659   -0.0232991    0.0840309
21-24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg            0.0079581   -0.0238715    0.0397878
21-24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0100124   -0.0475711    0.0275463
21-24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0251428   -0.0767824    0.0264967
21-24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0046841   -0.0441110    0.0347428
21-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg            0.0095259   -0.0196670    0.0387188
21-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0021222   -0.0397924    0.0355480
21-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg            0.0002846   -0.0361764    0.0367456
21-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0246204   -0.0575612    0.0083203
21-24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.0370973   -0.0720842   -0.0021103
21-24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0259488   -0.0649755    0.0130780
21-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.0864630   -0.1272720   -0.0456541
21-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0123868   -0.0430694    0.0678429
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0104372   -0.0580622    0.0371877
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0229486   -0.0853170    0.0394197
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0086980   -0.0401193    0.0227234
21-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0243366   -0.0674372    0.0187640
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0069778   -0.0254912    0.0115355
21-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg            0.0028924   -0.0214525    0.0272374
21-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg            0.1390071   -0.0213768    0.2993911
21-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0014352   -0.4926345    0.4897641
21-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0076796   -0.0302281    0.0148689
21-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0104241   -0.0378863    0.0170382
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0062110   -0.0354251    0.0230032
21-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0028122   -0.0347957    0.0291712


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0284703   -0.0994552    0.0425146
0-3 months     MAL-ED           BRAZIL                         >=58 kg              NA                -0.0100262   -0.0530055    0.0329531
0-3 months     MAL-ED           INDIA                          >=58 kg              NA                -0.0045748   -0.1600101    0.1508606
0-3 months     MAL-ED           NEPAL                          >=58 kg              NA                -0.0232994   -0.0856667    0.0390680
0-3 months     MAL-ED           PERU                           >=58 kg              NA                 0.0287550   -0.0180234    0.0755334
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0130613   -0.0436065    0.0174839
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0155960   -0.0321995    0.0633915
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0084474   -0.0709051    0.0877999
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0124179   -0.0411208    0.0162851
0-3 months     PROBIT           BELARUS                        >=58 kg              NA                 0.0051590   -0.0004975    0.0108155
0-3 months     PROVIDE          BANGLADESH                     >=58 kg              NA                 0.0068325   -0.0311737    0.0448388
0-3 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0060166   -0.1023693    0.0903360
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0152968   -0.0250529   -0.0055407
3-6 months     MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0122761   -0.0264337    0.0509859
3-6 months     MAL-ED           BRAZIL                         >=58 kg              NA                 0.0069618   -0.0181611    0.0320848
3-6 months     MAL-ED           INDIA                          >=58 kg              NA                 0.0177813   -0.0581144    0.0936770
3-6 months     MAL-ED           NEPAL                          >=58 kg              NA                -0.0254663   -0.0628898    0.0119573
3-6 months     MAL-ED           PERU                           >=58 kg              NA                -0.0023810   -0.0452023    0.0404402
3-6 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0166431   -0.0073778    0.0406639
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0013696   -0.0390990    0.0418383
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0486819   -0.1083244    0.0109606
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0204256   -0.0073562    0.0482074
3-6 months     PROBIT           BELARUS                        >=58 kg              NA                 0.0023580   -0.0017639    0.0064799
3-6 months     PROVIDE          BANGLADESH                     >=58 kg              NA                 0.0159201   -0.0194365    0.0512767
3-6 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0461181   -0.0824793   -0.0097569
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0000794   -0.0124960    0.0123372
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0002198   -0.0084036    0.0088431
6-9 months     LCNI-5           MALAWI                         >=58 kg              NA                 0.0080462   -0.0280570    0.0441493
6-9 months     MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0061469   -0.0285934    0.0408873
6-9 months     MAL-ED           BRAZIL                         >=58 kg              NA                -0.0044586   -0.0283561    0.0194389
6-9 months     MAL-ED           INDIA                          >=58 kg              NA                 0.0224490   -0.0210453    0.0659433
6-9 months     MAL-ED           NEPAL                          >=58 kg              NA                -0.0039265   -0.0296735    0.0218206
6-9 months     MAL-ED           PERU                           >=58 kg              NA                 0.0029486   -0.0280508    0.0339480
6-9 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0005412   -0.0184043    0.0173219
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0010857   -0.0427563    0.0449276
6-9 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0058148   -0.0449237    0.0332941
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0316323   -0.0542232   -0.0090413
6-9 months     PROBIT           BELARUS                        >=58 kg              NA                 0.0008390   -0.0025342    0.0042122
6-9 months     PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0186430   -0.0417564    0.0044705
6-9 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0250039   -0.0822378    0.0322301
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0021639   -0.0144841    0.0101563
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0036125   -0.0113962    0.0041711
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0032127   -0.0206470    0.0142215
9-12 months    LCNI-5           MALAWI                         >=58 kg              NA                 0.0038322   -0.0346222    0.0422865
9-12 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0073167   -0.0418785    0.0272450
9-12 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0107593   -0.0354411    0.0139224
9-12 months    MAL-ED           INDIA                          >=58 kg              NA                -0.0216720   -0.0576176    0.0142735
9-12 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.0116079   -0.0125687    0.0357844
9-12 months    MAL-ED           PERU                           >=58 kg              NA                 0.0073313   -0.0198275    0.0344902
9-12 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0134475   -0.0313210    0.0044260
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0262756   -0.0159387    0.0684898
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0053214   -0.0405346    0.0298918
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0097859   -0.0279571    0.0083853
9-12 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0016109   -0.0065342    0.0033124
9-12 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0151023   -0.0385782    0.0083736
9-12 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0083355   -0.0299259    0.0465969
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0062737   -0.0171677    0.0046202
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0054190   -0.0015819    0.0124200
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0108242   -0.0223801    0.0440285
12-15 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.0015870   -0.0781166    0.0812906
12-15 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0356086   -0.0626129   -0.0086044
12-15 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0100390   -0.0275572    0.0074792
12-15 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0209053   -0.0517312    0.0099206
12-15 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0133328   -0.0346123    0.0079467
12-15 months   MAL-ED           PERU                           >=58 kg              NA                -0.0104485   -0.0330191    0.0121220
12-15 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0081240   -0.0227545    0.0065064
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0106811   -0.0416589    0.0202967
12-15 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0017951   -0.0366010    0.0330108
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0092204   -0.0248238    0.0063830
12-15 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0049440   -0.0338470    0.0437350
12-15 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0083946   -0.0304657    0.0136764
12-15 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0047731   -0.0277104    0.0372566
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0058894   -0.0046215    0.0164003
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0020940   -0.0118402    0.0076521
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0108962   -0.0295526    0.0077603
15-18 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.0198748   -0.0979870    0.0582373
15-18 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0001551   -0.0254363    0.0257464
15-18 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0213956    0.0050627    0.0377285
15-18 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0186543   -0.0439990    0.0066904
15-18 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0045616   -0.0266357    0.0175126
15-18 months   MAL-ED           PERU                           >=58 kg              NA                -0.0159011   -0.0360896    0.0042875
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0132565    0.0009876    0.0255253
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0234911   -0.0519694    0.0049873
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0248800   -0.0702067    0.0204467
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0146631   -0.0279828   -0.0013434
15-18 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0079485   -0.1138423    0.1297394
15-18 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0003233   -0.0177302    0.0170837
15-18 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0451194   -0.1112158    0.0209770
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0001589   -0.0114346    0.0111169
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0023304   -0.0080680    0.0127288
18-21 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.0048517   -0.0315925    0.0412959
18-21 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0069217   -0.0172017    0.0310450
18-21 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0248012    0.0041992    0.0454031
18-21 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0111569   -0.0356804    0.0133665
18-21 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0073384   -0.0260321    0.0113552
18-21 months   MAL-ED           PERU                           >=58 kg              NA                -0.0051868   -0.0252526    0.0148789
18-21 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0028406   -0.0144356    0.0087544
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0086829   -0.0382781    0.0209124
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0292292   -0.0053146    0.0637730
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0060291   -0.0189646    0.0069064
18-21 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0251350   -0.1557506    0.2060205
18-21 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0095914   -0.0254002    0.0062175
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0081699   -0.0193678    0.0030280
21-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.0247105   -0.0147570    0.0641780
21-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0032950   -0.0215635    0.0281535
21-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0051781   -0.0177641    0.0074079
21-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.0054839   -0.0183485    0.0293164
21-24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0082586   -0.0290505    0.0125332
21-24 months   MAL-ED           PERU                           >=58 kg              NA                -0.0196038   -0.0387277   -0.0004798
21-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0084963   -0.0199509    0.0029582
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0092064   -0.0369821    0.0185693
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0098719   -0.0366121    0.0168682
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0031039   -0.0159585    0.0097508
21-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0064692   -0.0898985    0.1028370
21-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0067217   -0.0244534    0.0110099
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0020465   -0.0140442    0.0099513
