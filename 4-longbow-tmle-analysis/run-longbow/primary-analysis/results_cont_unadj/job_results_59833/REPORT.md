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
0-3 months     JiVitA-3         BANGLADESH                     >=58 kg          459   19862
0-3 months     JiVitA-3         BANGLADESH                     <52 kg         18088   19862
0-3 months     JiVitA-3         BANGLADESH                     [52-58) kg      1315   19862
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
0-3 months     SAS-CompFeed     INDIA                          >=58 kg           92    1259
0-3 months     SAS-CompFeed     INDIA                          <52 kg           969    1259
0-3 months     SAS-CompFeed     INDIA                          [52-58) kg       198    1259
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg         4086    7699
0-3 months     ZVITAMBO         ZIMBABWE                       <52 kg          1583    7699
0-3 months     ZVITAMBO         ZIMBABWE                       [52-58) kg      2030    7699
3-6 months     JiVitA-3         BANGLADESH                     >=58 kg          302   12578
3-6 months     JiVitA-3         BANGLADESH                     <52 kg         11415   12578
3-6 months     JiVitA-3         BANGLADESH                     [52-58) kg       861   12578
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
3-6 months     SAS-CompFeed     INDIA                          >=58 kg           82    1122
3-6 months     SAS-CompFeed     INDIA                          <52 kg           863    1122
3-6 months     SAS-CompFeed     INDIA                          [52-58) kg       177    1122
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
6-9 months     SAS-CompFeed     INDIA                          >=58 kg           88    1140
6-9 months     SAS-CompFeed     INDIA                          <52 kg           876    1140
6-9 months     SAS-CompFeed     INDIA                          [52-58) kg       176    1140
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
9-12 months    SAS-CompFeed     INDIA                          >=58 kg           87    1141
9-12 months    SAS-CompFeed     INDIA                          <52 kg           875    1141
9-12 months    SAS-CompFeed     INDIA                          [52-58) kg       179    1141
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
12-15 months   SAS-CompFeed     INDIA                          >=58 kg           89    1163
12-15 months   SAS-CompFeed     INDIA                          <52 kg           885    1163
12-15 months   SAS-CompFeed     INDIA                          [52-58) kg       189    1163
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
15-18 months   SAS-CompFeed     INDIA                          >=58 kg           92    1167
15-18 months   SAS-CompFeed     INDIA                          <52 kg           886    1167
15-18 months   SAS-CompFeed     INDIA                          [52-58) kg       189    1167
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
![](/tmp/c389c723-5345-4f84-9077-4eb5693f45d8/d5b05f0c-cb6d-4d9a-a7a1-e57dcedf70c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c389c723-5345-4f84-9077-4eb5693f45d8/d5b05f0c-cb6d-4d9a-a7a1-e57dcedf70c7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c389c723-5345-4f84-9077-4eb5693f45d8/d5b05f0c-cb6d-4d9a-a7a1-e57dcedf70c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     JiVitA-3         BANGLADESH                     >=58 kg              NA                3.7117527    3.6618153   3.7616901
0-3 months     JiVitA-3         BANGLADESH                     <52 kg               NA                3.7225362    3.7117947   3.7332777
0-3 months     JiVitA-3         BANGLADESH                     [52-58) kg           NA                3.7416243    3.7100389   3.7732096
0-3 months     MAL-ED           BANGLADESH                     >=58 kg              NA                3.3831627    3.2269496   3.5393758
0-3 months     MAL-ED           BANGLADESH                     <52 kg               NA                3.3156725    3.2331714   3.3981736
0-3 months     MAL-ED           BANGLADESH                     [52-58) kg           NA                3.3806469    3.2327395   3.5285543
0-3 months     MAL-ED           BRAZIL                         >=58 kg              NA                3.8217872    3.6874647   3.9561098
0-3 months     MAL-ED           BRAZIL                         <52 kg               NA                3.7376325    3.4528658   4.0223993
0-3 months     MAL-ED           BRAZIL                         [52-58) kg           NA                3.7764433    3.5208256   4.0320609
0-3 months     MAL-ED           INDIA                          >=58 kg              NA                3.3783063    3.0239887   3.7326239
0-3 months     MAL-ED           INDIA                          <52 kg               NA                3.3478182    3.2452453   3.4503911
0-3 months     MAL-ED           INDIA                          [52-58) kg           NA                3.3260511    3.1197364   3.5323657
0-3 months     MAL-ED           NEPAL                          >=58 kg              NA                3.7127258    3.5563495   3.8691021
0-3 months     MAL-ED           NEPAL                          <52 kg               NA                3.5643238    3.4010950   3.7275527
0-3 months     MAL-ED           NEPAL                          [52-58) kg           NA                3.5911401    3.4354388   3.7468414
0-3 months     MAL-ED           PERU                           >=58 kg              NA                3.0018444    2.8885253   3.1151635
0-3 months     MAL-ED           PERU                           <52 kg               NA                3.1284356    3.0336195   3.2232518
0-3 months     MAL-ED           PERU                           [52-58) kg           NA                3.0091176    2.8622368   3.1559984
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                3.2170541    3.1026563   3.3314518
0-3 months     MAL-ED           SOUTH AFRICA                   <52 kg               NA                2.9632417    2.6519730   3.2745103
0-3 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                3.1984142    2.9514071   3.4454213
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                3.2466564    3.1280500   3.3652628
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                3.2911688    3.1655107   3.4168269
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                3.2511022    3.0830384   3.4191660
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                3.1315062    2.9505985   3.3124139
0-3 months     NIH-Birth        BANGLADESH                     <52 kg               NA                3.1095026    3.0504478   3.1685574
0-3 months     NIH-Birth        BANGLADESH                     [52-58) kg           NA                3.0937355    2.9464621   3.2410089
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                3.1540387    3.0864436   3.2216339
0-3 months     NIH-Crypto       BANGLADESH                     <52 kg               NA                3.1101737    3.0578442   3.1625032
0-3 months     NIH-Crypto       BANGLADESH                     [52-58) kg           NA                3.1486555    3.0751171   3.2221939
0-3 months     PROBIT           BELARUS                        >=58 kg              NA                2.8014613    2.6826226   2.9203000
0-3 months     PROBIT           BELARUS                        <52 kg               NA                2.8111397    2.6910548   2.9312247
0-3 months     PROBIT           BELARUS                        [52-58) kg           NA                2.8324852    2.7349412   2.9300292
0-3 months     PROVIDE          BANGLADESH                     >=58 kg              NA                3.2833523    3.1943560   3.3723486
0-3 months     PROVIDE          BANGLADESH                     <52 kg               NA                3.2204242    3.1764721   3.2643764
0-3 months     PROVIDE          BANGLADESH                     [52-58) kg           NA                3.3779365    3.2817390   3.4741340
0-3 months     SAS-CompFeed     INDIA                          >=58 kg              NA                3.3633058    3.1831975   3.5434141
0-3 months     SAS-CompFeed     INDIA                          <52 kg               NA                3.3363736    3.2725557   3.4001915
0-3 months     SAS-CompFeed     INDIA                          [52-58) kg           NA                3.4316358    3.3378764   3.5253953
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                3.3751902    3.3465708   3.4038095
0-3 months     ZVITAMBO         ZIMBABWE                       <52 kg               NA                3.2342567    3.1891624   3.2793510
0-3 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                3.3268945    3.2860145   3.3677745
3-6 months     JiVitA-3         BANGLADESH                     >=58 kg              NA                1.9191860    1.8617908   1.9765813
3-6 months     JiVitA-3         BANGLADESH                     <52 kg               NA                1.9189509    1.9081689   1.9297329
3-6 months     JiVitA-3         BANGLADESH                     [52-58) kg           NA                1.9358569    1.8961482   1.9755655
3-6 months     MAL-ED           BANGLADESH                     >=58 kg              NA                1.9011018    1.8152797   1.9869238
3-6 months     MAL-ED           BANGLADESH                     <52 kg               NA                1.9192157    1.8513345   1.9870970
3-6 months     MAL-ED           BANGLADESH                     [52-58) kg           NA                1.9873425    1.8772333   2.0974517
3-6 months     MAL-ED           BRAZIL                         >=58 kg              NA                2.1331617    2.0306206   2.2357029
3-6 months     MAL-ED           BRAZIL                         <52 kg               NA                2.0974555    1.9071731   2.2877379
3-6 months     MAL-ED           BRAZIL                         [52-58) kg           NA                2.2430150    2.0944605   2.3915696
3-6 months     MAL-ED           INDIA                          >=58 kg              NA                1.8553184    1.6766958   2.0339410
3-6 months     MAL-ED           INDIA                          <52 kg               NA                1.9036337    1.8280982   1.9791692
3-6 months     MAL-ED           INDIA                          [52-58) kg           NA                1.8721776    1.7259391   2.0184161
3-6 months     MAL-ED           NEPAL                          >=58 kg              NA                2.0305296    1.9327478   2.1283114
3-6 months     MAL-ED           NEPAL                          <52 kg               NA                1.9656903    1.8695681   2.0618124
3-6 months     MAL-ED           NEPAL                          [52-58) kg           NA                1.9005183    1.8051618   1.9958748
3-6 months     MAL-ED           PERU                           >=58 kg              NA                2.0238351    1.9058880   2.1417822
3-6 months     MAL-ED           PERU                           <52 kg               NA                2.0013824    1.9098149   2.0929500
3-6 months     MAL-ED           PERU                           [52-58) kg           NA                2.0247127    1.8780521   2.1713733
3-6 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                1.9339614    1.8383999   2.0295229
3-6 months     MAL-ED           SOUTH AFRICA                   <52 kg               NA                2.0433538    1.8038455   2.2828620
3-6 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                2.0205753    1.8272731   2.2138776
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.8324408    1.7224612   1.9424205
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.8120183    1.7028815   1.9211551
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.8560162    1.7158511   1.9961813
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                1.9547762    1.8151574   2.0943949
3-6 months     NIH-Birth        BANGLADESH                     <52 kg               NA                1.8029046    1.7487893   1.8570198
3-6 months     NIH-Birth        BANGLADESH                     [52-58) kg           NA                1.8671585    1.7275790   2.0067380
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                1.9673880    1.8979639   2.0368122
3-6 months     NIH-Crypto       BANGLADESH                     <52 kg               NA                2.0123019    1.9627792   2.0618245
3-6 months     NIH-Crypto       BANGLADESH                     [52-58) kg           NA                2.0357886    1.9522575   2.1193197
3-6 months     PROBIT           BELARUS                        >=58 kg              NA                2.0886005    2.0469035   2.1302976
3-6 months     PROBIT           BELARUS                        <52 kg               NA                2.0944934    2.0308977   2.1580891
3-6 months     PROBIT           BELARUS                        [52-58) kg           NA                2.0975875    2.0476704   2.1475047
3-6 months     PROVIDE          BANGLADESH                     >=58 kg              NA                1.9503313    1.8665753   2.0340874
3-6 months     PROVIDE          BANGLADESH                     <52 kg               NA                1.9516453    1.9109398   1.9923507
3-6 months     PROVIDE          BANGLADESH                     [52-58) kg           NA                2.0314397    1.9454320   2.1174473
3-6 months     SAS-CompFeed     INDIA                          >=58 kg              NA                2.1062755    2.0174787   2.1950724
3-6 months     SAS-CompFeed     INDIA                          <52 kg               NA                1.9085621    1.8565226   1.9606016
3-6 months     SAS-CompFeed     INDIA                          [52-58) kg           NA                2.0247372    1.9501232   2.0993513
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.8028647    1.7569073   1.8488222
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.7987410    1.7046580   1.8928240
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.7768049    1.7023651   1.8512448
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                1.9828151    1.9554354   2.0101948
3-6 months     ZVITAMBO         ZIMBABWE                       <52 kg               NA                1.9848247    1.9416624   2.0279870
3-6 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                1.9526951    1.9149380   1.9904521
6-9 months     LCNI-5           MALAWI                         >=58 kg              NA                1.4555262    1.3703705   1.5406818
6-9 months     LCNI-5           MALAWI                         <52 kg               NA                1.4629507    1.4128045   1.5130969
6-9 months     LCNI-5           MALAWI                         [52-58) kg           NA                1.4608722    1.3952554   1.5264890
6-9 months     MAL-ED           BANGLADESH                     >=58 kg              NA                1.2462426    1.1584234   1.3340618
6-9 months     MAL-ED           BANGLADESH                     <52 kg               NA                1.2511186    1.2021713   1.3000659
6-9 months     MAL-ED           BANGLADESH                     [52-58) kg           NA                1.2392029    1.1360504   1.3423555
6-9 months     MAL-ED           BRAZIL                         >=58 kg              NA                1.4911025    1.3863266   1.5958785
6-9 months     MAL-ED           BRAZIL                         <52 kg               NA                1.3338245    1.1534102   1.5142388
6-9 months     MAL-ED           BRAZIL                         [52-58) kg           NA                1.5822509    1.4348955   1.7296062
6-9 months     MAL-ED           INDIA                          >=58 kg              NA                1.2023718    1.0955198   1.3092238
6-9 months     MAL-ED           INDIA                          <52 kg               NA                1.2623030    1.1977282   1.3268778
6-9 months     MAL-ED           INDIA                          [52-58) kg           NA                1.2242509    1.0925338   1.3559679
6-9 months     MAL-ED           NEPAL                          >=58 kg              NA                1.3754249    1.3072789   1.4435708
6-9 months     MAL-ED           NEPAL                          <52 kg               NA                1.3215268    1.2453693   1.3976844
6-9 months     MAL-ED           NEPAL                          [52-58) kg           NA                1.3726445    1.2889854   1.4563035
6-9 months     MAL-ED           PERU                           >=58 kg              NA                1.3177023    1.2343244   1.4010803
6-9 months     MAL-ED           PERU                           <52 kg               NA                1.3250829    1.2405989   1.4095670
6-9 months     MAL-ED           PERU                           [52-58) kg           NA                1.3198114    1.1933577   1.4462652
6-9 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                1.3700351    1.2983663   1.4417039
6-9 months     MAL-ED           SOUTH AFRICA                   <52 kg               NA                1.4078483    1.2337503   1.5819463
6-9 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                1.3065373    1.1277095   1.4853652
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.1964934    1.0642413   1.3287454
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.1568632    1.0492245   1.2645018
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.2371882    1.0565505   1.4178258
6-9 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                1.2810827    1.1885834   1.3735821
6-9 months     NIH-Birth        BANGLADESH                     <52 kg               NA                1.2551761    1.2047401   1.3056120
6-9 months     NIH-Birth        BANGLADESH                     [52-58) kg           NA                1.2359300    1.1443476   1.3275123
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                1.4098200    1.3481105   1.4715295
6-9 months     NIH-Crypto       BANGLADESH                     <52 kg               NA                1.2979589    1.2591463   1.3367715
6-9 months     NIH-Crypto       BANGLADESH                     [52-58) kg           NA                1.3053315    1.2424585   1.3682044
6-9 months     PROBIT           BELARUS                        >=58 kg              NA                1.5768919    1.5472581   1.6065257
6-9 months     PROBIT           BELARUS                        <52 kg               NA                1.5730242    1.5184257   1.6276227
6-9 months     PROBIT           BELARUS                        [52-58) kg           NA                1.5727033    1.5267205   1.6186861
6-9 months     PROVIDE          BANGLADESH                     >=58 kg              NA                1.3406728    1.2809403   1.4004053
6-9 months     PROVIDE          BANGLADESH                     <52 kg               NA                1.2514204    1.2211035   1.2817374
6-9 months     PROVIDE          BANGLADESH                     [52-58) kg           NA                1.3336669    1.2694067   1.3979272
6-9 months     SAS-CompFeed     INDIA                          >=58 kg              NA                1.3698518    1.2638870   1.4758166
6-9 months     SAS-CompFeed     INDIA                          <52 kg               NA                1.2065398    1.1859525   1.2271271
6-9 months     SAS-CompFeed     INDIA                          [52-58) kg           NA                1.1917086    1.1006453   1.2827720
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.3327433    1.2868277   1.3786590
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.2501897    1.1487169   1.3516625
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.3497259    1.2753415   1.4241102
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                1.3623697    1.3364637   1.3882757
6-9 months     ZVITAMBO         ZIMBABWE                       <52 kg               NA                1.3174727    1.2761593   1.3587860
6-9 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                1.3353082    1.2968641   1.3737522
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                1.1137774    1.0520620   1.1754928
9-12 months    iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                1.0683752    1.0066830   1.1300674
9-12 months    iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                1.0972447    1.0557744   1.1387149
9-12 months    LCNI-5           MALAWI                         >=58 kg              NA                1.1121306    1.0189313   1.2053298
9-12 months    LCNI-5           MALAWI                         <52 kg               NA                1.0908135    1.0255886   1.1560384
9-12 months    LCNI-5           MALAWI                         [52-58) kg           NA                1.1099935    1.0260811   1.1939060
9-12 months    MAL-ED           BANGLADESH                     >=58 kg              NA                1.0188817    0.9247041   1.1130594
9-12 months    MAL-ED           BANGLADESH                     <52 kg               NA                0.9758394    0.9292971   1.0223817
9-12 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                1.0093750    0.9107222   1.1080279
9-12 months    MAL-ED           BRAZIL                         >=58 kg              NA                1.3228150    1.2409931   1.4046369
9-12 months    MAL-ED           BRAZIL                         <52 kg               NA                1.2882064    1.0502383   1.5261746
9-12 months    MAL-ED           BRAZIL                         [52-58) kg           NA                1.1951168    1.0300027   1.3602308
9-12 months    MAL-ED           INDIA                          >=58 kg              NA                1.0398195    0.9464232   1.1332157
9-12 months    MAL-ED           INDIA                          <52 kg               NA                0.9554629    0.9080310   1.0028949
9-12 months    MAL-ED           INDIA                          [52-58) kg           NA                1.0014713    0.9152229   1.0877198
9-12 months    MAL-ED           NEPAL                          >=58 kg              NA                1.0711765    0.9972329   1.1451201
9-12 months    MAL-ED           NEPAL                          <52 kg               NA                1.0651217    0.9959499   1.1342936
9-12 months    MAL-ED           NEPAL                          [52-58) kg           NA                1.1298674    1.0625099   1.1972250
9-12 months    MAL-ED           PERU                           >=58 kg              NA                1.0885451    1.0102942   1.1667959
9-12 months    MAL-ED           PERU                           <52 kg               NA                1.1375356    1.0521770   1.2228942
9-12 months    MAL-ED           PERU                           [52-58) kg           NA                1.0581850    0.9522997   1.1640703
9-12 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                1.0601453    0.9863327   1.1339580
9-12 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.7992544    0.5655626   1.0329461
9-12 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                1.0169132    0.8799501   1.1538762
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7560691    0.6269704   0.8851678
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8785820    0.7607997   0.9963644
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8029663    0.6107313   0.9952014
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                1.1237326    1.0334468   1.2140184
9-12 months    NIH-Birth        BANGLADESH                     <52 kg               NA                1.0589094    1.0182713   1.0995475
9-12 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                1.1933542    1.0953323   1.2913761
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                1.1609736    1.1103666   1.2115806
9-12 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                1.0965524    1.0608762   1.1322286
9-12 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                1.1460966    1.0870909   1.2051022
9-12 months    PROBIT           BELARUS                        >=58 kg              NA                1.3845926    1.3305924   1.4385928
9-12 months    PROBIT           BELARUS                        <52 kg               NA                1.3404759    1.2752369   1.4057149
9-12 months    PROBIT           BELARUS                        [52-58) kg           NA                1.3629631    1.2967685   1.4291577
9-12 months    PROVIDE          BANGLADESH                     >=58 kg              NA                1.1091949    1.0458145   1.1725754
9-12 months    PROVIDE          BANGLADESH                     <52 kg               NA                1.0151078    0.9819043   1.0483113
9-12 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                1.1127594    1.0493713   1.1761474
9-12 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.9457831    0.8245063   1.0670600
9-12 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.9982667    0.9717554   1.0247780
9-12 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                1.0468177    0.9798019   1.1138334
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.1125169    1.0703451   1.1546887
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.9917390    0.9057169   1.0777612
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.1013104    1.0254859   1.1771348
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                1.0787405    1.0550949   1.1023861
9-12 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                1.0559275    1.0127821   1.0990728
9-12 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                1.1098928    1.0751659   1.1446197
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.9535938    0.8596251   1.0475625
12-15 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.9834744    0.9247964   1.0421523
12-15 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.9631789    0.8796291   1.0467288
12-15 months   LCNI-5           MALAWI                         >=58 kg              NA                0.9871317    0.7881445   1.1861189
12-15 months   LCNI-5           MALAWI                         <52 kg               NA                0.9230965    0.8000695   1.0461236
12-15 months   LCNI-5           MALAWI                         [52-58) kg           NA                1.0321692    0.8382213   1.2261172
12-15 months   MAL-ED           BANGLADESH                     >=58 kg              NA                1.0258852    0.9558928   1.0958775
12-15 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.8700033    0.8186345   0.9213721
12-15 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.9519328    0.8506044   1.0532611
12-15 months   MAL-ED           BRAZIL                         >=58 kg              NA                1.1738543    1.1030972   1.2446115
12-15 months   MAL-ED           BRAZIL                         <52 kg               NA                0.9807539    0.8360703   1.1254374
12-15 months   MAL-ED           BRAZIL                         [52-58) kg           NA                1.1895088    1.0449405   1.3340771
12-15 months   MAL-ED           INDIA                          >=58 kg              NA                0.9786985    0.8909726   1.0664244
12-15 months   MAL-ED           INDIA                          <52 kg               NA                0.8862189    0.8365196   0.9359181
12-15 months   MAL-ED           INDIA                          [52-58) kg           NA                0.9251171    0.8350564   1.0151778
12-15 months   MAL-ED           NEPAL                          >=58 kg              NA                0.9959175    0.9306933   1.0611418
12-15 months   MAL-ED           NEPAL                          <52 kg               NA                0.9410484    0.8698438   1.0122530
12-15 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.9170476    0.8498241   0.9842710
12-15 months   MAL-ED           PERU                           >=58 kg              NA                0.9243502    0.8558853   0.9928152
12-15 months   MAL-ED           PERU                           <52 kg               NA                0.8251840    0.7477950   0.9025731
12-15 months   MAL-ED           PERU                           [52-58) kg           NA                0.9429167    0.8447726   1.0410609
12-15 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.9529030    0.8838065   1.0219994
12-15 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.8772501    0.7314513   1.0230489
12-15 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.8442909    0.6969160   0.9916658
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.8859692    0.7844209   0.9875175
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8300874    0.7246793   0.9354955
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8486101    0.7141598   0.9830605
12-15 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.7539282    0.6624058   0.8454507
12-15 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.7156838    0.6588408   0.7725268
12-15 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.7389780    0.6570303   0.8209258
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                1.0129055    0.9668672   1.0589439
12-15 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.9501877    0.9170425   0.9833328
12-15 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.9735853    0.9158119   1.0313588
12-15 months   PROBIT           BELARUS                        >=58 kg              NA                1.1832307    0.8069921   1.5594693
12-15 months   PROBIT           BELARUS                        <52 kg               NA                1.1940665    0.9507345   1.4373985
12-15 months   PROBIT           BELARUS                        [52-58) kg           NA                1.2081989    0.7527584   1.6636394
12-15 months   PROVIDE          BANGLADESH                     >=58 kg              NA                1.0064732    0.9419706   1.0709759
12-15 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.9354705    0.9032423   0.9676987
12-15 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.9950815    0.9359374   1.0542256
12-15 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.9768978    0.8325673   1.1212283
12-15 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.8159026    0.7735449   0.8582603
12-15 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.8559397    0.7663201   0.9455594
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.9235427    0.8755564   0.9715290
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.9345477    0.8433070   1.0257884
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.9536236    0.8793039   1.0279433
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.9348699    0.8979987   0.9717412
12-15 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.9084820    0.8480459   0.9689182
12-15 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.8958806    0.8445104   0.9472507
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.9661063    0.9053974   1.0268153
15-18 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.8717667    0.8130317   0.9305017
15-18 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.9349850    0.8740617   0.9959083
15-18 months   LCNI-5           MALAWI                         >=58 kg              NA                0.9114772    0.6693038   1.1536505
15-18 months   LCNI-5           MALAWI                         <52 kg               NA                0.7768581    0.6956744   0.8580418
15-18 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.9249233    0.7668967   1.0829498
15-18 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.8508129    0.7779128   0.9237130
15-18 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.7867449    0.7383692   0.8351206
15-18 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.9316461    0.8568462   1.0064459
15-18 months   MAL-ED           BRAZIL                         >=58 kg              NA                0.9548174    0.8840059   1.0256290
15-18 months   MAL-ED           BRAZIL                         <52 kg               NA                1.0959408    0.9900456   1.2018361
15-18 months   MAL-ED           BRAZIL                         [52-58) kg           NA                1.0982984    0.9260622   1.2705346
15-18 months   MAL-ED           INDIA                          >=58 kg              NA                0.9114732    0.8335623   0.9893841
15-18 months   MAL-ED           INDIA                          <52 kg               NA                0.8231275    0.7781049   0.8681500
15-18 months   MAL-ED           INDIA                          [52-58) kg           NA                0.8544154    0.7642464   0.9445843
15-18 months   MAL-ED           NEPAL                          >=58 kg              NA                0.8658470    0.7895529   0.9421411
15-18 months   MAL-ED           NEPAL                          <52 kg               NA                0.8025034    0.7446263   0.8603805
15-18 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.8523422    0.7750417   0.9296427
15-18 months   MAL-ED           PERU                           >=58 kg              NA                0.9069228    0.8371348   0.9767108
15-18 months   MAL-ED           PERU                           <52 kg               NA                0.8221348    0.7521036   0.8921659
15-18 months   MAL-ED           PERU                           [52-58) kg           NA                0.8215383    0.7430373   0.9000392
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.8582818    0.7950936   0.9214699
15-18 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.9773124    0.8722743   1.0823505
15-18 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.9535003    0.8007028   1.1062977
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7553766    0.6563706   0.8543825
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.6580288    0.5639980   0.7520596
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.6217972    0.4911309   0.7524635
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.8650625    0.7270394   1.0030856
15-18 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.7642499    0.7198135   0.8086862
15-18 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.7310803    0.6253761   0.8367846
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.9756141    0.9339105   1.0173176
15-18 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.8853295    0.8544489   0.9162101
15-18 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.9272670    0.8720600   0.9824741
15-18 months   PROBIT           BELARUS                        >=58 kg              NA                1.0181109    0.4829966   1.5532253
15-18 months   PROBIT           BELARUS                        <52 kg               NA                0.9628072    0.7892525   1.1363619
15-18 months   PROBIT           BELARUS                        [52-58) kg           NA                1.1099018   -0.1488582   2.3686619
15-18 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.8814376    0.8283507   0.9345244
15-18 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.8509598    0.8203931   0.8815265
15-18 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.8408747    0.7836290   0.8981205
15-18 months   SAS-CompFeed     INDIA                          >=58 kg              NA                1.0119952    0.7622556   1.2617348
15-18 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.8814157    0.8600719   0.9027595
15-18 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.9519570    0.8719477   1.0319663
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.9430436    0.8893354   0.9967517
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8569971    0.7577984   0.9561958
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.9660645    0.8744240   1.0577050
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.8062505    0.7646739   0.8478270
15-18 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.7379793    0.6757422   0.8002164
15-18 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.8426303    0.7827205   0.9025400
18-21 months   LCNI-5           MALAWI                         >=58 kg              NA                0.8123975    0.7028149   0.9219801
18-21 months   LCNI-5           MALAWI                         <52 kg               NA                0.8362795    0.7746050   0.8979541
18-21 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.7734359    0.6854253   0.8614465
18-21 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.8253662    0.7454255   0.9053068
18-21 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.7993699    0.7569623   0.8417774
18-21 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.8504309    0.7660680   0.9347938
18-21 months   MAL-ED           BRAZIL                         >=58 kg              NA                0.8473514    0.7763458   0.9183571
18-21 months   MAL-ED           BRAZIL                         <52 kg               NA                1.1372791    0.8594082   1.4151500
18-21 months   MAL-ED           BRAZIL                         [52-58) kg           NA                0.9756917    0.8441365   1.1072469
18-21 months   MAL-ED           INDIA                          >=58 kg              NA                0.9337812    0.8500045   1.0175580
18-21 months   MAL-ED           INDIA                          <52 kg               NA                0.8572688    0.8139356   0.9006019
18-21 months   MAL-ED           INDIA                          [52-58) kg           NA                0.9020400    0.8177933   0.9862867
18-21 months   MAL-ED           NEPAL                          >=58 kg              NA                0.8546071    0.7872948   0.9219193
18-21 months   MAL-ED           NEPAL                          <52 kg               NA                0.7871795    0.7194544   0.8549046
18-21 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.8119906    0.7497821   0.8741991
18-21 months   MAL-ED           PERU                           >=58 kg              NA                0.8712510    0.7956654   0.9468367
18-21 months   MAL-ED           PERU                           <52 kg               NA                0.7766886    0.7058477   0.8475296
18-21 months   MAL-ED           PERU                           [52-58) kg           NA                0.8964563    0.8131131   0.9797995
18-21 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.7991724    0.7295802   0.8687646
18-21 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.8179801    0.6796879   0.9562722
18-21 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.6951408    0.5744911   0.8157905
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7757483    0.6631041   0.8883924
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7089320    0.6054216   0.8124424
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.7498404    0.6068921   0.8927886
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.6769337    0.5669884   0.7868790
18-21 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.7272564    0.6867157   0.7677972
18-21 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.7828844    0.6814986   0.8842701
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.8378084    0.7940047   0.8816120
18-21 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.7753176    0.7437815   0.8068537
18-21 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.8046482    0.7496464   0.8596500
18-21 months   PROBIT           BELARUS                        >=58 kg              NA                0.8196284    0.4849780   1.1542788
18-21 months   PROBIT           BELARUS                        <52 kg               NA                1.0046205    0.6327289   1.3765121
18-21 months   PROBIT           BELARUS                        [52-58) kg           NA                1.0878858   -1.3928169   3.5685885
18-21 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.8949188    0.8445100   0.9453276
18-21 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.8141484    0.7834709   0.8448259
18-21 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.8723822    0.8160745   0.9286900
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.7156645    0.6712097   0.7601193
18-21 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.6484803    0.5713243   0.7256362
18-21 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.6347449    0.5634380   0.7060518
21-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.6864707    0.5677147   0.8052267
21-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.7580682    0.7000504   0.8160859
21-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.7663683    0.6702784   0.8624582
21-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.7595262    0.6792136   0.8398389
21-24 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.7748030    0.7279779   0.8216281
21-24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.7608150    0.6931571   0.8284729
21-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                0.8209865    0.7714943   0.8704787
21-24 months   MAL-ED           BRAZIL                         <52 kg               NA                0.7129965    0.5628373   0.8631557
21-24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                0.7934171    0.7080983   0.8787359
21-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.8417653    0.7584474   0.9250833
21-24 months   MAL-ED           INDIA                          <52 kg               NA                0.8286098    0.7917211   0.8654985
21-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.7990822    0.7266014   0.8715629
21-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.8194178    0.7400873   0.8987483
21-24 months   MAL-ED           NEPAL                          <52 kg               NA                0.7889438    0.7128091   0.8650785
21-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.7423939    0.6894967   0.7952912
21-24 months   MAL-ED           PERU                           >=58 kg              NA                0.8273614    0.7491698   0.9055529
21-24 months   MAL-ED           PERU                           <52 kg               NA                0.6947978    0.6200240   0.7695717
21-24 months   MAL-ED           PERU                           [52-58) kg           NA                0.7496808    0.6629387   0.8364230
21-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.8736955    0.8174391   0.9299519
21-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.5954473    0.4862025   0.7046922
21-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.9087231    0.7399937   1.0774526
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7633374    0.6546985   0.8719762
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7041602    0.6119150   0.7964055
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.6685554    0.5204527   0.8166582
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.7723664    0.6922547   0.8524781
21-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.7129955    0.6705442   0.7554469
21-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.6873596    0.5890158   0.7857034
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.8223297    0.7789876   0.8656717
21-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.7762657    0.7423766   0.8101548
21-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.8290301    0.7704810   0.8875792
21-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.8949730    0.4604037   1.3295422
21-24 months   PROBIT           BELARUS                        <52 kg               NA                1.1963575    0.8555583   1.5371566
21-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.8803347   -0.5522102   2.3128797
21-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.8057958    0.7508428   0.8607488
21-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.7493624    0.7166274   0.7820975
21-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.7717262    0.7145642   0.8288882
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.7095335    0.6583124   0.7607546
21-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.6558028    0.5827536   0.7288520
21-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.6872570    0.6044419   0.7700722


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7235508   3.7132393   3.7338623
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     MAL-ED           BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     MAL-ED           PERU                           NA                   NA                3.0531076   2.9864257   3.1197894
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1891095   3.0900536   3.2881654
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROBIT           BELARUS                        NA                   NA                2.8075451   2.6950075   2.9200827
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2592091   3.2222694   3.2961487
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.3533233   3.3017058   3.4049409
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3334785   3.3126380   3.3543191
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9201138   1.9096682   1.9305594
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED           BRAZIL                         NA                   NA                2.1448230   2.0652644   2.2243816
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8890965   1.8255097   1.9526834
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED           PERU                           NA                   NA                2.0152678   1.9488079   2.0817277
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9612733   1.8804053   2.0421413
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROBIT           BELARUS                        NA                   NA                2.0906127   2.0501063   2.1311192
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657091   1.9317726   1.9996455
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9413388   1.8980867   1.9845910
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7968618   1.7606634   1.8330602
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9751865   1.9554576   1.9949154
6-9 months     LCNI-5           MALAWI                         NA                   NA                1.4614109   1.4248110   1.4980109
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED           BRAZIL                         NA                   NA                1.4784282   1.3980899   1.5587666
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2442866   1.1923459   1.2962273
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     MAL-ED           PERU                           NA                   NA                1.3210643   1.2665463   1.3755823
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3644626   1.3017940   1.4271311
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROBIT           BELARUS                        NA                   NA                1.5758619   1.5446180   1.6071059
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2168566   1.1979037   1.2358095
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3231050   1.2863945   1.3598156
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3462476   1.3271693   1.3653259
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0921536   1.0584176   1.1258896
9-12 months    LCNI-5           MALAWI                         NA                   NA                1.0986541   1.0518074   1.1455009
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED           BRAZIL                         NA                   NA                1.2947044   1.2204615   1.3689473
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9799614   0.9416888   1.0182340
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    MAL-ED           PERU                           NA                   NA                1.0999922   1.0489406   1.1510437
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0212609   0.9562969   1.0862249
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROBIT           BELARUS                        NA                   NA                1.3772896   1.3261058   1.4284734
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                1.0018816   0.9696099   1.0341532
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0900151   1.0560117   1.1240186
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0821876   1.0642982   1.1000771
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9671630   0.9258651   1.0084609
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.9588519   0.8629996   1.0547041
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED           BRAZIL                         NA                   NA                1.1417703   1.0824196   1.2011210
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9107851   0.8714474   0.9501228
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   MAL-ED           PERU                           NA                   NA                0.8906860   0.8442322   0.9371397
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9252117   0.8670403   0.9833831
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROBIT           BELARUS                        NA                   NA                1.1891252   0.8627102   1.5155401
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8347294   0.7969219   0.8725369
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9311644   0.8939900   0.9683388
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9195570   0.8926645   0.9464494
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9213229   0.8837045   0.9589414
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.8247565   0.7538318   0.8956812
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED           BRAZIL                         NA                   NA                1.0063339   0.9474669   1.0652008
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8445838   0.8081021   0.8810654
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   MAL-ED           PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8883347   0.8348067   0.9418626
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROBIT           BELARUS                        NA                   NA                1.0306099   0.5932639   1.4679560
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8552334   0.8311623   0.8793044
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.9031343   0.8780174   0.9282513
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9350686   0.8928584   0.9772787
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.8011382   0.7711236   0.8311529
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.8176009   0.7711372   0.8640646
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.9184755   0.8473947   0.9895564
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8795431   0.8441522   0.9149339
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   MAL-ED           PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7842913   0.7280906   0.8404919
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROBIT           BELARUS                        NA                   NA                0.8857990   0.3224131   1.4491849
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8397160   0.8156938   0.8637381
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6804375   0.6462909   0.7145840
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.7506446   0.7046853   0.7966039
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.7973379   0.7530825   0.8415933
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8246636   0.7937212   0.8556061
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   MAL-ED           PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8455789   0.7937438   0.8974141
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROBIT           BELARUS                        NA                   NA                0.9067609   0.4627450   1.3507767
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7640933   0.7387145   0.7894720
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6923883   0.6543039   0.7304727


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     <52 kg               >=58 kg            0.0107835   -0.0394371    0.0610041
0-3 months     JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg            0.0298716   -0.0283255    0.0880686
0-3 months     MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0674902   -0.2441508    0.1091705
0-3 months     MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0025158   -0.2176416    0.2126101
0-3 months     MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0841547   -0.3990113    0.2307019
0-3 months     MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0453440   -0.3341050    0.2434171
0-3 months     MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0304881   -0.3993541    0.3383779
0-3 months     MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0522553   -0.4622634    0.3577529
0-3 months     MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.1484019   -0.3744488    0.0776450
0-3 months     MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.1215857   -0.3422584    0.0990870
0-3 months     MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <52 kg               >=58 kg            0.1265913   -0.0211630    0.2743455
0-3 months     MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0072732   -0.1782401    0.1927865
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.2538124   -0.5854373    0.0778124
0-3 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0186399   -0.2908519    0.2535721
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0445124   -0.1282807    0.2173055
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0044458   -0.2012552    0.2101468
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0220035   -0.2123061    0.1682990
0-3 months     NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0377706   -0.2710453    0.1955040
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0438651   -0.1293488    0.0416187
0-3 months     NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0053832   -0.1052681    0.0945016
0-3 months     PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <52 kg               >=58 kg            0.0096784   -0.0558744    0.0752313
0-3 months     PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0310238   -0.0241139    0.0861616
0-3 months     PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0629281   -0.1621860    0.0363299
0-3 months     PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0945842   -0.0364666    0.2256350
0-3 months     SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.0269322   -0.2434512    0.1895867
0-3 months     SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg            0.0683300   -0.1387330    0.2753930
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.1409335   -0.1943429   -0.0875241
0-3 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0482957   -0.0981980    0.0016066
3-6 months     JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.0002351   -0.0577929    0.0573227
3-6 months     JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg            0.0166709   -0.0553083    0.0886501
3-6 months     MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <52 kg               >=58 kg            0.0181140   -0.0913086    0.1275365
3-6 months     MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0862408   -0.0533639    0.2258455
3-6 months     MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0357062   -0.2518591    0.1804466
3-6 months     MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.1098533   -0.0706547    0.2903613
3-6 months     MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <52 kg               >=58 kg            0.0483153   -0.1456219    0.2422526
3-6 months     MAL-ED           INDIA                          [52-58) kg           >=58 kg            0.0168592   -0.2139908    0.2477092
3-6 months     MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0648394   -0.2019552    0.0722765
3-6 months     MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.1300114   -0.2665916    0.0065688
3-6 months     MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <52 kg               >=58 kg           -0.0224527   -0.1717716    0.1268662
3-6 months     MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0008776   -0.1873266    0.1890819
3-6 months     MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.1093924   -0.1484762    0.3672610
3-6 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0866140   -0.1290195    0.3022474
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0204226   -0.1753624    0.1345173
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0235753   -0.1545869    0.2017376
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.1518716   -0.3016109   -0.0021323
3-6 months     NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0876176   -0.2850406    0.1098053
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg            0.0449138   -0.0403634    0.1301911
3-6 months     NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg            0.0684006   -0.0402142    0.1770153
3-6 months     PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <52 kg               >=58 kg            0.0058928   -0.0539854    0.0657710
3-6 months     PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0089870   -0.0247891    0.0427631
3-6 months     PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <52 kg               >=58 kg            0.0013140   -0.0918097    0.0944376
3-6 months     PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0811084   -0.0389432    0.2011600
3-6 months     SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.1977134   -0.2788183   -0.1166085
3-6 months     SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0815383   -0.2259571    0.0628806
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0041237   -0.1088314    0.1005840
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0260598   -0.1135434    0.0614238
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0020096   -0.0491043    0.0531235
3-6 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0301200   -0.0767595    0.0165195
6-9 months     LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0074245   -0.0913992    0.1062483
6-9 months     LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0053461   -0.1021576    0.1128498
6-9 months     MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <52 kg               >=58 kg            0.0048760   -0.0956629    0.1054148
6-9 months     MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0070397   -0.1425117    0.1284323
6-9 months     MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1572780   -0.3659100    0.0513540
6-9 months     MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0911484   -0.0896598    0.2719566
6-9 months     MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <52 kg               >=58 kg            0.0599313   -0.0649177    0.1847802
6-9 months     MAL-ED           INDIA                          [52-58) kg           >=58 kg            0.0218791   -0.1477285    0.1914867
6-9 months     MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0538980   -0.1560932    0.0482971
6-9 months     MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0027804   -0.1106818    0.1051210
6-9 months     MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <52 kg               >=58 kg            0.0073806   -0.1113183    0.1260796
6-9 months     MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0021091   -0.1493585    0.1535767
6-9 months     MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.0378132   -0.1504593    0.2260857
6-9 months     MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0634977   -0.2561524    0.1291569
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0396302   -0.2101490    0.1308887
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0406948   -0.1831814    0.2645710
6-9 months     NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0259066   -0.1312628    0.0794495
6-9 months     NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0451527   -0.1753198    0.0850143
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.1118611   -0.1847616   -0.0389606
6-9 months     NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1044885   -0.1925855   -0.0163916
6-9 months     PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0038677   -0.0458092    0.0380738
6-9 months     PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0041886   -0.0381698    0.0297926
6-9 months     PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0892524   -0.1562381   -0.0222667
6-9 months     PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0070059   -0.0947404    0.0807287
6-9 months     SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.1633121   -0.2750088   -0.0516154
6-9 months     SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1781432   -0.3175336   -0.0387528
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0825536   -0.1939312    0.0288241
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0169826   -0.0704318    0.1043970
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0448971   -0.0936609    0.0038668
6-9 months     ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0270616   -0.0734196    0.0192965
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           -0.0454022   -0.1302269    0.0394225
9-12 months    iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           -0.0165327   -0.0799164    0.0468510
9-12 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0213171   -0.1350729    0.0924387
9-12 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0021370   -0.1275460    0.1232719
9-12 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0430423   -0.1480929    0.0620083
9-12 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0095067   -0.1458952    0.1268818
9-12 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0346085   -0.2862505    0.2170334
9-12 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.1276982   -0.3119737    0.0565774
9-12 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0843565   -0.1891070    0.0203939
9-12 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0383481   -0.1654766    0.0887804
9-12 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0060547   -0.1073089    0.0951994
9-12 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg            0.0586910   -0.0413325    0.1587145
9-12 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <52 kg               >=58 kg            0.0489905   -0.0668080    0.1647890
9-12 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0303601   -0.1620221    0.1013020
9-12 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.2608910   -0.5059627   -0.0158193
9-12 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0432322   -0.1988187    0.1123544
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.1225130   -0.0522416    0.2972675
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0468973   -0.1846644    0.2784589
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0648232   -0.1638332    0.0341868
9-12 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0696216   -0.0636444    0.2028875
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0644212   -0.1263394   -0.0025030
9-12 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0148770   -0.0926121    0.0628580
9-12 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0441167   -0.0988545    0.0106210
9-12 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0216295   -0.0789165    0.0356575
9-12 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0940871   -0.1656382   -0.0225361
9-12 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg            0.0035644   -0.0860744    0.0932033
9-12 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg            0.0524836   -0.0595101    0.1644774
9-12 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg            0.1010346   -0.0019839    0.2040530
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1207778   -0.2165811   -0.0249745
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0112065   -0.0979694    0.0755564
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0228130   -0.0720130    0.0263869
9-12 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0311523   -0.0108605    0.0731651
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg            0.0298805   -0.0833454    0.1431065
12-15 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg            0.0095851   -0.1306485    0.1498187
12-15 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0640351   -0.2979829    0.1699126
12-15 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0450376   -0.2328324    0.3229076
12-15 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.1558819   -0.2427017   -0.0690621
12-15 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0739524   -0.1971042    0.0491994
12-15 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1931005   -0.3541592   -0.0320418
12-15 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.0156545   -0.1453007    0.1766097
12-15 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0924796   -0.1933054    0.0083463
12-15 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0535813   -0.1793063    0.0721436
12-15 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0548691   -0.1514315    0.0416933
12-15 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0788699   -0.1725353    0.0147954
12-15 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.0991662   -0.2024934    0.0041610
12-15 months   MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0185665   -0.1010985    0.1382315
12-15 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.0756529   -0.2369960    0.0856903
12-15 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1086121   -0.2713808    0.0541567
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0558818   -0.2022476    0.0904839
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0373591   -0.2058493    0.1311311
12-15 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0382444   -0.1459825    0.0694936
12-15 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0149502   -0.1377988    0.1078984
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0627179   -0.1194465   -0.0059893
12-15 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0393202   -0.1131938    0.0345533
12-15 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <52 kg               >=58 kg            0.0108358   -0.4031032    0.4247748
12-15 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0249682   -0.3861115    0.4360479
12-15 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0710027   -0.1431085    0.0011031
12-15 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0113918   -0.0989053    0.0761218
12-15 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.1609953   -0.3063130   -0.0156775
12-15 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1209581   -0.2223136   -0.0196025
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0110050   -0.0920851    0.1140950
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0300809   -0.0583844    0.1185462
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0263879   -0.0971835    0.0444077
12-15 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0389894   -0.1022221    0.0242434
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           -0.0943397   -0.1796468   -0.0090325
15-18 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           -0.0311213   -0.1117790    0.0495363
15-18 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.1346191   -0.3900378    0.1207997
15-18 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0134461   -0.2757257    0.3026179
15-18 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0640680   -0.1515588    0.0234227
15-18 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0808331   -0.0236151    0.1852814
15-18 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg            0.1411234    0.0137339    0.2685129
15-18 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.1434809   -0.0427436    0.3297055
15-18 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0883457   -0.1783298    0.0016384
15-18 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0570578   -0.1762239    0.0621082
15-18 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0633436   -0.1591066    0.0324194
15-18 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0135049   -0.1221150    0.0951053
15-18 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.0847880   -0.1836552    0.0140792
15-18 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0853845   -0.1904215    0.0196524
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.1190307   -0.0035489    0.2416102
15-18 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0952185   -0.0701290    0.2605660
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0973478   -0.2338907    0.0391951
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1335794   -0.2975179    0.0303592
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.1008127   -0.2458125    0.0441872
15-18 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1339822   -0.3078320    0.0398677
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0902846   -0.1421767   -0.0383924
15-18 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0483470   -0.1175352    0.0208412
15-18 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0553037   -0.6338367    0.5232292
15-18 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0917909   -1.2984402    1.4820220
15-18 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0304778   -0.0917357    0.0307802
15-18 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0405628   -0.1186351    0.0375095
15-18 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.1305795   -0.3842029    0.1230440
15-18 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.0600382   -0.3257783    0.2057020
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0860465   -0.1988514    0.0267585
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0230209   -0.0831984    0.1292403
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0682712   -0.1431181    0.0065758
15-18 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0363798   -0.0365434    0.1093029
18-21 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0238820   -0.1018641    0.1496282
18-21 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0389616   -0.1795113    0.1015881
18-21 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.0259963   -0.1164889    0.0644963
18-21 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0250648   -0.0911575    0.1412870
18-21 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg            0.2899277    0.0031280    0.5767273
18-21 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.1283403   -0.0211541    0.2778346
18-21 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0765125   -0.1708327    0.0178077
18-21 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0317413   -0.1505522    0.0870697
18-21 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0674276   -0.1629138    0.0280587
18-21 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0426165   -0.1342726    0.0490396
18-21 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.0945624   -0.1981560    0.0090312
18-21 months   MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0252052   -0.0873082    0.1377187
18-21 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg            0.0188077   -0.1360077    0.1736230
18-21 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1040316   -0.2433134    0.0352502
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0668163   -0.2197970    0.0861644
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0259079   -0.2079049    0.1560891
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg            0.0503227   -0.0668589    0.1675043
18-21 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.1059506   -0.0436056    0.2555068
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0624908   -0.1164656   -0.0085159
18-21 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0331601   -0.1034734    0.0371531
18-21 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        <52 kg               >=58 kg            0.1849921   -0.3569926    0.7269768
18-21 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.2682574   -2.2262623    2.7627771
18-21 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0807704   -0.1397802   -0.0217606
18-21 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0225365   -0.0981117    0.0530386
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0671843   -0.1562307    0.0218622
18-21 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0809196   -0.1649488    0.0031095
21-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0715975   -0.0605730    0.2037680
21-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0798977   -0.0728645    0.2326598
21-24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg            0.0152767   -0.0776894    0.1082429
21-24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0012888   -0.1037241    0.1063017
21-24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1079900   -0.2660952    0.0501153
21-24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0275694   -0.1262040    0.0710652
21-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.0131556   -0.1042744    0.0779633
21-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0426832   -0.1531157    0.0677493
21-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.0304740   -0.1404278    0.0794797
21-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.0770239   -0.1723730    0.0183252
21-24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.1325635   -0.2407534   -0.0243737
21-24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0776805   -0.1944629    0.0391019
21-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.2782482   -0.4011271   -0.1553693
21-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0350276   -0.1428330    0.2128882
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0591771   -0.2016959    0.0833416
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0947819   -0.2784578    0.0888940
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0593709   -0.1500352    0.0312933
21-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0850068   -0.2118508    0.0418372
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.0460639   -0.1010821    0.0089543
21-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg            0.0067004   -0.0661455    0.0795464
21-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg            0.3013845   -0.2481808    0.8509498
21-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0146382   -1.4854661    1.4561897
21-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.0564333   -0.1203975    0.0075308
21-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0340696   -0.1133622    0.0452231
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0537307   -0.1429483    0.0354869
21-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0222765   -0.1196518    0.0750988


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0117981   -0.0370848    0.0606809
0-3 months     MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0440396   -0.1850225    0.0969433
0-3 months     MAL-ED           BRAZIL                         >=58 kg              NA                -0.0230859   -0.1057120    0.0595402
0-3 months     MAL-ED           INDIA                          >=58 kg              NA                -0.0300813   -0.3343683    0.2742057
0-3 months     MAL-ED           NEPAL                          >=58 kg              NA                -0.0893083   -0.2182133    0.0395968
0-3 months     MAL-ED           PERU                           >=58 kg              NA                 0.0512632   -0.0395139    0.1420402
0-3 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0279446   -0.0891609    0.0332717
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0178427   -0.0777724    0.1134578
0-3 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0214946   -0.1858796    0.1428904
0-3 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0247939   -0.0847905    0.0352028
0-3 months     PROBIT           BELARUS                        >=58 kg              NA                 0.0060838   -0.0058101    0.0179776
0-3 months     PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0241432   -0.1042011    0.0559147
0-3 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0099825   -0.2057435    0.1857785
0-3 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0417117   -0.0613078   -0.0221155
3-6 months     JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0009278   -0.0553858    0.0572414
3-6 months     MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0265390   -0.0579998    0.1110777
3-6 months     MAL-ED           BRAZIL                         >=58 kg              NA                 0.0116613   -0.0433647    0.0666873
3-6 months     MAL-ED           INDIA                          >=58 kg              NA                 0.0337781   -0.1263439    0.1939002
3-6 months     MAL-ED           NEPAL                          >=58 kg              NA                -0.0660696   -0.1455203    0.0133812
3-6 months     MAL-ED           PERU                           >=58 kg              NA                -0.0085673   -0.0984442    0.0813095
3-6 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0273119   -0.0237183    0.0783421
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0023507   -0.0877054    0.0830041
3-6 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1220847   -0.2508521    0.0066828
3-6 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0384093   -0.0223458    0.0991643
3-6 months     PROBIT           BELARUS                        >=58 kg              NA                 0.0020122   -0.0066449    0.0106693
3-6 months     PROVIDE          BANGLADESH                     >=58 kg              NA                 0.0153778   -0.0596465    0.0904020
3-6 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.1649367   -0.2481333   -0.0817400
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0060029   -0.0326977    0.0206918
3-6 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0076286   -0.0260567    0.0107996
6-9 months     LCNI-5           MALAWI                         >=58 kg              NA                 0.0058848   -0.0758551    0.0876246
6-9 months     MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0018025   -0.0786152    0.0822202
6-9 months     MAL-ED           BRAZIL                         >=58 kg              NA                -0.0126743   -0.0679461    0.0425975
6-9 months     MAL-ED           INDIA                          >=58 kg              NA                 0.0419148   -0.0592104    0.1430400
6-9 months     MAL-ED           NEPAL                          >=58 kg              NA                -0.0182840   -0.0769666    0.0403985
6-9 months     MAL-ED           PERU                           >=58 kg              NA                 0.0033620   -0.0658887    0.0726127
6-9 months     MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0055725   -0.0460939    0.0349488
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0057378   -0.1073792    0.0959036
6-9 months     NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0254877   -0.1145426    0.0635673
6-9 months     NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0815505   -0.1336601   -0.0294409
6-9 months     PROBIT           BELARUS                        >=58 kg              NA                -0.0010300   -0.0084272    0.0063672
6-9 months     PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0582543   -0.1119075   -0.0046011
6-9 months     SAS-CompFeed     INDIA                          >=58 kg              NA                -0.1529952   -0.2544714   -0.0515190
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0096383   -0.0376903    0.0184137
6-9 months     ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0161221   -0.0338200    0.0015757
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0216238   -0.0664734    0.0232259
9-12 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.0134764   -0.1058909    0.0789380
9-12 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0292372   -0.1136904    0.0552160
9-12 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0281106   -0.0875646    0.0313435
9-12 months    MAL-ED           INDIA                          >=58 kg              NA                -0.0598581   -0.1441191    0.0244030
9-12 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.0180607   -0.0402862    0.0764076
9-12 months    MAL-ED           PERU                           >=58 kg              NA                 0.0114471   -0.0531773    0.0760715
9-12 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0388844   -0.0820695    0.0043006
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0570386   -0.0444693    0.1585465
9-12 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0351517   -0.1203291    0.0500257
9-12 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0374991   -0.0814041    0.0064058
9-12 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0073030   -0.0190360    0.0044300
9-12 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0592200   -0.1160108   -0.0024291
9-12 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0560985   -0.0437148    0.1559117
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0225017   -0.0485736    0.0035702
9-12 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0034472   -0.0133378    0.0202321
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0135692   -0.0666287    0.0937671
12-15 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.0282798   -0.2299660    0.1734064
12-15 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.1117847   -0.1801862   -0.0433832
12-15 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0320840   -0.0776088    0.0134408
12-15 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0679134   -0.1485793    0.0127526
12-15 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0445051   -0.0985472    0.0095370
12-15 months   MAL-ED           PERU                           >=58 kg              NA                -0.0336643   -0.0919577    0.0246291
12-15 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0276913   -0.0648451    0.0094625
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0296134   -0.1091663    0.0499395
12-15 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0297660   -0.1197663    0.0602344
12-15 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0417661   -0.0822286   -0.0013035
12-15 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0058945   -0.0915807    0.1033696
12-15 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0467232   -0.1035905    0.0101441
12-15 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.1421684   -0.2642978   -0.0200390
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0076217   -0.0190881    0.0343315
12-15 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0153130   -0.0401769    0.0095510
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0447834   -0.0955965    0.0060297
15-18 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.0867207   -0.3124887    0.1390474
15-18 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0266904   -0.0950493    0.0416686
15-18 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0515164    0.0058867    0.0971462
15-18 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0668894   -0.1400377    0.0062589
15-18 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0250108   -0.0853427    0.0353210
15-18 months   MAL-ED           PERU                           >=58 kg              NA                -0.0534920   -0.1086831    0.0016990
15-18 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0300529   -0.0038425    0.0639484
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0686286   -0.1462796    0.0090223
15-18 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0922906   -0.2170941    0.0325129
15-18 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0578973   -0.0945649   -0.0212297
15-18 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0124990   -0.3345159    0.3595140
15-18 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0262042   -0.0738972    0.0214888
15-18 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.1088609   -0.3430361    0.1253144
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0079750   -0.0388376    0.0228875
15-18 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0051122   -0.0335205    0.0232960
18-21 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.0052034   -0.1000723    0.1104791
18-21 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0119814   -0.0835787    0.0596159
18-21 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0711241    0.0116777    0.1305705
18-21 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0542382   -0.1310519    0.0225756
18-21 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0363273   -0.0906336    0.0179790
18-21 months   MAL-ED           PERU                           >=58 kg              NA                -0.0298072   -0.0886651    0.0290508
18-21 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0148811   -0.0487836    0.0190213
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0320444   -0.1189000    0.0548111
18-21 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0522131   -0.0486832    0.1531094
18-21 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0400328   -0.0779456   -0.0021201
18-21 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0661706   -0.4470302    0.5793715
18-21 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0552028   -0.1017600   -0.0086456
18-21 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0352270   -0.0675927   -0.0028613
21-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.0641739   -0.0475903    0.1759381
21-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.0098920   -0.0623277    0.0821118
21-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0236486   -0.0593066    0.0120094
21-24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0171017   -0.0916302    0.0574268
21-24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0360613   -0.0972163    0.0250936
21-24 months   MAL-ED           PERU                           >=58 kg              NA                -0.0663108   -0.1251359   -0.0074856
21-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0281166   -0.0642157    0.0079825
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0444046   -0.1276981    0.0388889
21-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0551487   -0.1321509    0.0218536
21-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0229943   -0.0613124    0.0153238
21-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0117879   -0.2778546    0.3014304
21-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.0417025   -0.0919044    0.0084994
21-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0171452   -0.0537201    0.0194297
