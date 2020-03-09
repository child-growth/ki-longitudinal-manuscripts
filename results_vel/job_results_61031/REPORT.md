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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid      country        hfoodsec                n_cell       n
-------------  -----------  -------------  ---------------------  -------  ------
0-3 months     GMS-Nepal    NEPAL          Food Secure                361     493
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure        71     493
0-3 months     GMS-Nepal    NEPAL          Food Insecure               61     493
0-3 months     JiVitA-3     BANGLADESH     Food Secure               6442   13054
0-3 months     JiVitA-3     BANGLADESH     Mildly Food Insecure      4389   13054
0-3 months     JiVitA-3     BANGLADESH     Food Insecure             2223   13054
0-3 months     JiVitA-4     BANGLADESH     Food Secure                914    1796
0-3 months     JiVitA-4     BANGLADESH     Mildly Food Insecure       634    1796
0-3 months     JiVitA-4     BANGLADESH     Food Insecure              248    1796
0-3 months     MAL-ED       BANGLADESH     Food Secure                160     192
0-3 months     MAL-ED       BANGLADESH     Mildly Food Insecure         4     192
0-3 months     MAL-ED       BANGLADESH     Food Insecure               28     192
0-3 months     MAL-ED       BRAZIL         Food Secure                  0     101
0-3 months     MAL-ED       BRAZIL         Mildly Food Insecure        10     101
0-3 months     MAL-ED       BRAZIL         Food Insecure               91     101
0-3 months     MAL-ED       INDIA          Food Secure                146     158
0-3 months     MAL-ED       INDIA          Mildly Food Insecure         2     158
0-3 months     MAL-ED       INDIA          Food Insecure               10     158
0-3 months     MAL-ED       NEPAL          Food Secure                 65      86
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure         8      86
0-3 months     MAL-ED       NEPAL          Food Insecure               13      86
0-3 months     MAL-ED       PERU           Food Secure                 27     105
0-3 months     MAL-ED       PERU           Mildly Food Insecure        26     105
0-3 months     MAL-ED       PERU           Food Insecure               52     105
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure                 94     177
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     177
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure               66     177
0-3 months     NIH-Birth    BANGLADESH     Food Secure                 83     566
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       444     566
0-3 months     NIH-Birth    BANGLADESH     Food Insecure               39     566
0-3 months     NIH-Crypto   BANGLADESH     Food Secure                428     721
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       207     721
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure               86     721
3-6 months     GMS-Nepal    NEPAL          Food Secure                335     453
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure        62     453
3-6 months     GMS-Nepal    NEPAL          Food Insecure               56     453
3-6 months     JiVitA-3     BANGLADESH     Food Secure               6326   12580
3-6 months     JiVitA-3     BANGLADESH     Mildly Food Insecure      4174   12580
3-6 months     JiVitA-3     BANGLADESH     Food Insecure             2080   12580
3-6 months     JiVitA-4     BANGLADESH     Food Secure                937    1826
3-6 months     JiVitA-4     BANGLADESH     Mildly Food Insecure       645    1826
3-6 months     JiVitA-4     BANGLADESH     Food Insecure              244    1826
3-6 months     MAL-ED       BANGLADESH     Food Secure                156     189
3-6 months     MAL-ED       BANGLADESH     Mildly Food Insecure         4     189
3-6 months     MAL-ED       BANGLADESH     Food Insecure               29     189
3-6 months     MAL-ED       BRAZIL         Food Secure                  3     129
3-6 months     MAL-ED       BRAZIL         Mildly Food Insecure        11     129
3-6 months     MAL-ED       BRAZIL         Food Insecure              115     129
3-6 months     MAL-ED       INDIA          Food Secure                186     207
3-6 months     MAL-ED       INDIA          Mildly Food Insecure         5     207
3-6 months     MAL-ED       INDIA          Food Insecure               16     207
3-6 months     MAL-ED       NEPAL          Food Secure                 93     127
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure        15     127
3-6 months     MAL-ED       NEPAL          Food Insecure               19     127
3-6 months     MAL-ED       PERU           Food Secure                 27     111
3-6 months     MAL-ED       PERU           Mildly Food Insecure        28     111
3-6 months     MAL-ED       PERU           Food Insecure               56     111
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure                125     222
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     222
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure               79     222
3-6 months     NIH-Birth    BANGLADESH     Food Secure                 77     523
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       407     523
3-6 months     NIH-Birth    BANGLADESH     Food Insecure               39     523
3-6 months     NIH-Crypto   BANGLADESH     Food Secure                413     695
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       198     695
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure               84     695
6-9 months     GMS-Nepal    NEPAL          Food Secure                340     466
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure        64     466
6-9 months     GMS-Nepal    NEPAL          Food Insecure               62     466
6-9 months     JiVitA-4     BANGLADESH     Food Secure               1552    3029
6-9 months     JiVitA-4     BANGLADESH     Mildly Food Insecure      1095    3029
6-9 months     JiVitA-4     BANGLADESH     Food Insecure              382    3029
6-9 months     MAL-ED       BANGLADESH     Food Secure                155     187
6-9 months     MAL-ED       BANGLADESH     Mildly Food Insecure         4     187
6-9 months     MAL-ED       BANGLADESH     Food Insecure               28     187
6-9 months     MAL-ED       BRAZIL         Food Secure                  3     129
6-9 months     MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6-9 months     MAL-ED       BRAZIL         Food Insecure              115     129
6-9 months     MAL-ED       INDIA          Food Secure                189     210
6-9 months     MAL-ED       INDIA          Mildly Food Insecure         5     210
6-9 months     MAL-ED       INDIA          Food Insecure               16     210
6-9 months     MAL-ED       NEPAL          Food Secure                 93     127
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure        15     127
6-9 months     MAL-ED       NEPAL          Food Insecure               19     127
6-9 months     MAL-ED       PERU           Food Secure                 27     110
6-9 months     MAL-ED       PERU           Mildly Food Insecure        28     110
6-9 months     MAL-ED       PERU           Food Insecure               55     110
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure                121     213
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     213
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure               75     213
6-9 months     NIH-Birth    BANGLADESH     Food Secure                 75     498
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       384     498
6-9 months     NIH-Birth    BANGLADESH     Food Insecure               39     498
6-9 months     NIH-Crypto   BANGLADESH     Food Secure                416     688
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       193     688
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure               79     688
9-12 months    GMS-Nepal    NEPAL          Food Secure                330     455
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure        67     455
9-12 months    GMS-Nepal    NEPAL          Food Insecure               58     455
9-12 months    JiVitA-4     BANGLADESH     Food Secure               1777    3474
9-12 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1258    3474
9-12 months    JiVitA-4     BANGLADESH     Food Insecure              439    3474
9-12 months    MAL-ED       BANGLADESH     Food Secure                157     188
9-12 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     188
9-12 months    MAL-ED       BANGLADESH     Food Insecure               27     188
9-12 months    MAL-ED       BRAZIL         Food Secure                  3     129
9-12 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129
9-12 months    MAL-ED       BRAZIL         Food Insecure              115     129
9-12 months    MAL-ED       INDIA          Food Secure                188     210
9-12 months    MAL-ED       INDIA          Mildly Food Insecure         5     210
9-12 months    MAL-ED       INDIA          Food Insecure               17     210
9-12 months    MAL-ED       NEPAL          Food Secure                 93     127
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure        15     127
9-12 months    MAL-ED       NEPAL          Food Insecure               19     127
9-12 months    MAL-ED       PERU           Food Secure                 27     108
9-12 months    MAL-ED       PERU           Mildly Food Insecure        26     108
9-12 months    MAL-ED       PERU           Food Insecure               55     108
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure                119     213
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     213
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure               76     213
9-12 months    NIH-Birth    BANGLADESH     Food Secure                 74     482
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       370     482
9-12 months    NIH-Birth    BANGLADESH     Food Insecure               38     482
9-12 months    NIH-Crypto   BANGLADESH     Food Secure                408     674
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       189     674
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure               77     674
12-15 months   GMS-Nepal    NEPAL          Food Secure                335     456
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure        68     456
12-15 months   GMS-Nepal    NEPAL          Food Insecure               53     456
12-15 months   JiVitA-4     BANGLADESH     Food Secure               1795    3518
12-15 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1264    3518
12-15 months   JiVitA-4     BANGLADESH     Food Insecure              459    3518
12-15 months   MAL-ED       BANGLADESH     Food Secure                153     185
12-15 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     185
12-15 months   MAL-ED       BANGLADESH     Food Insecure               28     185
12-15 months   MAL-ED       BRAZIL         Food Secure                  3     129
12-15 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129
12-15 months   MAL-ED       BRAZIL         Food Insecure              115     129
12-15 months   MAL-ED       INDIA          Food Secure                188     210
12-15 months   MAL-ED       INDIA          Mildly Food Insecure         5     210
12-15 months   MAL-ED       INDIA          Food Insecure               17     210
12-15 months   MAL-ED       NEPAL          Food Secure                 94     128
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128
12-15 months   MAL-ED       NEPAL          Food Insecure               19     128
12-15 months   MAL-ED       PERU           Food Secure                 26     106
12-15 months   MAL-ED       PERU           Mildly Food Insecure        25     106
12-15 months   MAL-ED       PERU           Food Insecure               55     106
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure                115     212
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     212
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure               80     212
12-15 months   NIH-Birth    BANGLADESH     Food Secure                 69     461
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       357     461
12-15 months   NIH-Birth    BANGLADESH     Food Insecure               35     461
12-15 months   NIH-Crypto   BANGLADESH     Food Secure                390     660
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       190     660
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure               80     660
15-18 months   GMS-Nepal    NEPAL          Food Secure                339     466
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     466
15-18 months   GMS-Nepal    NEPAL          Food Insecure               60     466
15-18 months   JiVitA-4     BANGLADESH     Food Secure               1810    3523
15-18 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1255    3523
15-18 months   JiVitA-4     BANGLADESH     Food Insecure              458    3523
15-18 months   MAL-ED       BANGLADESH     Food Secure                155     187
15-18 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     187
15-18 months   MAL-ED       BANGLADESH     Food Insecure               28     187
15-18 months   MAL-ED       BRAZIL         Food Secure                  3     128
15-18 months   MAL-ED       BRAZIL         Mildly Food Insecure        10     128
15-18 months   MAL-ED       BRAZIL         Food Insecure              115     128
15-18 months   MAL-ED       INDIA          Food Secure                190     211
15-18 months   MAL-ED       INDIA          Mildly Food Insecure         5     211
15-18 months   MAL-ED       INDIA          Food Insecure               16     211
15-18 months   MAL-ED       NEPAL          Food Secure                 92     126
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure        15     126
15-18 months   MAL-ED       NEPAL          Food Insecure               19     126
15-18 months   MAL-ED       PERU           Food Secure                 26     106
15-18 months   MAL-ED       PERU           Mildly Food Insecure        27     106
15-18 months   MAL-ED       PERU           Food Insecure               53     106
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure                117     216
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     216
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure               82     216
15-18 months   NIH-Birth    BANGLADESH     Food Secure                 68     449
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       345     449
15-18 months   NIH-Birth    BANGLADESH     Food Insecure               36     449
15-18 months   NIH-Crypto   BANGLADESH     Food Secure                368     604
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       165     604
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure               71     604
18-21 months   GMS-Nepal    NEPAL          Food Secure                315     430
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure        61     430
18-21 months   GMS-Nepal    NEPAL          Food Insecure               54     430
18-21 months   MAL-ED       BANGLADESH     Food Secure                157     189
18-21 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     189
18-21 months   MAL-ED       BANGLADESH     Food Insecure               28     189
18-21 months   MAL-ED       BRAZIL         Food Secure                  3     128
18-21 months   MAL-ED       BRAZIL         Mildly Food Insecure        10     128
18-21 months   MAL-ED       BRAZIL         Food Insecure              115     128
18-21 months   MAL-ED       INDIA          Food Secure                189     210
18-21 months   MAL-ED       INDIA          Mildly Food Insecure         5     210
18-21 months   MAL-ED       INDIA          Food Insecure               16     210
18-21 months   MAL-ED       NEPAL          Food Secure                 92     126
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure        15     126
18-21 months   MAL-ED       NEPAL          Food Insecure               19     126
18-21 months   MAL-ED       PERU           Food Secure                 26     103
18-21 months   MAL-ED       PERU           Mildly Food Insecure        26     103
18-21 months   MAL-ED       PERU           Food Insecure               51     103
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure                125     223
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     223
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure               80     223
18-21 months   NIH-Birth    BANGLADESH     Food Secure                 63     422
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       326     422
18-21 months   NIH-Birth    BANGLADESH     Food Insecure               33     422
18-21 months   NIH-Crypto   BANGLADESH     Food Secure                341     546
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       141     546
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure               64     546
21-24 months   GMS-Nepal    NEPAL          Food Secure                245     339
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        49     339
21-24 months   GMS-Nepal    NEPAL          Food Insecure               45     339
21-24 months   MAL-ED       BANGLADESH     Food Secure                156     189
21-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     189
21-24 months   MAL-ED       BANGLADESH     Food Insecure               29     189
21-24 months   MAL-ED       BRAZIL         Food Secure                  3     129
21-24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129
21-24 months   MAL-ED       BRAZIL         Food Insecure              115     129
21-24 months   MAL-ED       INDIA          Food Secure                189     211
21-24 months   MAL-ED       INDIA          Mildly Food Insecure         5     211
21-24 months   MAL-ED       INDIA          Food Insecure               17     211
21-24 months   MAL-ED       NEPAL          Food Secure                 94     128
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128
21-24 months   MAL-ED       NEPAL          Food Insecure               19     128
21-24 months   MAL-ED       PERU           Food Secure                 25     102
21-24 months   MAL-ED       PERU           Mildly Food Insecure        26     102
21-24 months   MAL-ED       PERU           Food Insecure               51     102
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure                128     226
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     226
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure               80     226
21-24 months   NIH-Birth    BANGLADESH     Food Secure                 64     411
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       317     411
21-24 months   NIH-Birth    BANGLADESH     Food Insecure               30     411
21-24 months   NIH-Crypto   BANGLADESH     Food Secure                315     490
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       120     490
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure               55     490


The following strata were considered:

* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL

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




# Results Detail

## Results Plots
![](/tmp/0e718dd1-f726-4e6c-91eb-dbec3d48ee6d/2b5f1852-2feb-48cc-beed-6db8d63f94fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0e718dd1-f726-4e6c-91eb-dbec3d48ee6d/2b5f1852-2feb-48cc-beed-6db8d63f94fe/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0e718dd1-f726-4e6c-91eb-dbec3d48ee6d/2b5f1852-2feb-48cc-beed-6db8d63f94fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          Food Secure            NA                -0.0384442   -0.0674755   -0.0094128
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.0164844   -0.1007751    0.0678062
0-3 months     GMS-Nepal    NEPAL          Food Insecure          NA                 0.0158418   -0.0618336    0.0935172
0-3 months     JiVitA-3     BANGLADESH     Food Secure            NA                 0.0779637    0.0695465    0.0863809
0-3 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                 0.0792976    0.0689387    0.0896565
0-3 months     JiVitA-3     BANGLADESH     Food Insecure          NA                 0.0609922    0.0454536    0.0765307
0-3 months     JiVitA-4     BANGLADESH     Food Secure            NA                 0.0786459    0.0569664    0.1003254
0-3 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                 0.0506249    0.0268031    0.0744467
0-3 months     JiVitA-4     BANGLADESH     Food Insecure          NA                 0.0728979    0.0254012    0.1203947
0-3 months     MAL-ED       NEPAL          Food Secure            NA                 0.0060703   -0.0725799    0.0847205
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.0628501   -0.0563698    0.1820700
0-3 months     MAL-ED       NEPAL          Food Insecure          NA                 0.0427269   -0.1025753    0.1880291
0-3 months     MAL-ED       PERU           Food Secure            NA                -0.2696139   -0.3731287   -0.1660992
0-3 months     MAL-ED       PERU           Mildly Food Insecure   NA                -0.2135723   -0.2939991   -0.1331456
0-3 months     MAL-ED       PERU           Food Insecure          NA                -0.2820586   -0.3590956   -0.2050216
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.1816039   -0.2530338   -0.1101740
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.2545280   -0.4090412   -0.1000147
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.1969072   -0.2931486   -0.1006659
0-3 months     NIH-Birth    BANGLADESH     Food Secure            NA                -0.2047045   -0.2719149   -0.1374941
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.2351798   -0.2657676   -0.2045920
0-3 months     NIH-Birth    BANGLADESH     Food Insecure          NA                -0.2821942   -0.3692005   -0.1951878
0-3 months     NIH-Crypto   BANGLADESH     Food Secure            NA                -0.2403439   -0.2630514   -0.2176364
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.2127746   -0.2458846   -0.1796647
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.2247464   -0.2733539   -0.1761388
3-6 months     GMS-Nepal    NEPAL          Food Secure            NA                -0.1630632   -0.1865848   -0.1395415
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.1657591   -0.2225320   -0.1089863
3-6 months     GMS-Nepal    NEPAL          Food Insecure          NA                -0.1303755   -0.1839245   -0.0768265
3-6 months     JiVitA-3     BANGLADESH     Food Secure            NA                 0.0000850   -0.0076506    0.0078207
3-6 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -0.0074062   -0.0162216    0.0014091
3-6 months     JiVitA-3     BANGLADESH     Food Insecure          NA                 0.0008506   -0.0115757    0.0132768
3-6 months     JiVitA-4     BANGLADESH     Food Secure            NA                -0.0072749   -0.0266477    0.0120979
3-6 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                 0.0019680   -0.0188046    0.0227405
3-6 months     JiVitA-4     BANGLADESH     Food Insecure          NA                -0.0430526   -0.0814416   -0.0046636
3-6 months     MAL-ED       INDIA          Food Secure            NA                -0.0301514   -0.0643640    0.0040611
3-6 months     MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0041670   -0.0811907    0.0728568
3-6 months     MAL-ED       INDIA          Food Insecure          NA                -0.0306934   -0.1187409    0.0573541
3-6 months     MAL-ED       NEPAL          Food Secure            NA                -0.0224466   -0.0636639    0.0187706
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0764257   -0.2036241    0.0507728
3-6 months     MAL-ED       NEPAL          Food Insecure          NA                -0.0453340   -0.1405252    0.0498572
3-6 months     MAL-ED       PERU           Food Secure            NA                -0.0057039   -0.0922465    0.0808387
3-6 months     MAL-ED       PERU           Mildly Food Insecure   NA                 0.0111399   -0.0961827    0.1184626
3-6 months     MAL-ED       PERU           Food Insecure          NA                -0.0389276   -0.1077422    0.0298870
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0122408   -0.0395261    0.0640077
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0064999   -0.1116682    0.0986684
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0278240   -0.1008072    0.0451592
3-6 months     NIH-Birth    BANGLADESH     Food Secure            NA                -0.0787343   -0.1329461   -0.0245225
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.0471414   -0.0729737   -0.0213091
3-6 months     NIH-Birth    BANGLADESH     Food Insecure          NA                -0.0467421   -0.1224621    0.0289779
3-6 months     NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0258089    0.0050736    0.0465443
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0281219   -0.0038677    0.0601115
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                 0.0162061   -0.0392760    0.0716882
6-9 months     GMS-Nepal    NEPAL          Food Secure            NA                -0.0469723   -0.0644639   -0.0294807
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.0516554   -0.0890919   -0.0142188
6-9 months     GMS-Nepal    NEPAL          Food Insecure          NA                -0.0721180   -0.1376940   -0.0065420
6-9 months     JiVitA-4     BANGLADESH     Food Secure            NA                -0.0273392   -0.0404689   -0.0142096
6-9 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.0250673   -0.0392352   -0.0108994
6-9 months     JiVitA-4     BANGLADESH     Food Insecure          NA                -0.0483854   -0.0752668   -0.0215040
6-9 months     MAL-ED       INDIA          Food Secure            NA                -0.0725371   -0.0983169   -0.0467573
6-9 months     MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0043825   -0.1293909    0.1206258
6-9 months     MAL-ED       INDIA          Food Insecure          NA                -0.0894300   -0.1574856   -0.0213743
6-9 months     MAL-ED       NEPAL          Food Secure            NA                -0.0574505   -0.0849295   -0.0299716
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0209890   -0.1074459    0.0654679
6-9 months     MAL-ED       NEPAL          Food Insecure          NA                -0.0592246   -0.1361082    0.0176591
6-9 months     MAL-ED       PERU           Food Secure            NA                -0.1020863   -0.1636103   -0.0405623
6-9 months     MAL-ED       PERU           Mildly Food Insecure   NA                -0.0764271   -0.1445582   -0.0082959
6-9 months     MAL-ED       PERU           Food Insecure          NA                -0.0302165   -0.0842192    0.0237862
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0026596   -0.0360068    0.0413260
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.1116110   -0.1858268   -0.0373953
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0284795   -0.0842691    0.0273100
6-9 months     NIH-Birth    BANGLADESH     Food Secure            NA                -0.0533049   -0.1037772   -0.0028327
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.0558459   -0.0759092   -0.0357826
6-9 months     NIH-Birth    BANGLADESH     Food Insecure          NA                -0.1105856   -0.1709021   -0.0502692
6-9 months     NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0263339   -0.0432671   -0.0094006
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0447015   -0.0677973   -0.0216058
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0507074   -0.0882250   -0.0131897
9-12 months    GMS-Nepal    NEPAL          Food Secure            NA                -0.0644955   -0.0786630   -0.0503280
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.1040142   -0.1564464   -0.0515820
9-12 months    GMS-Nepal    NEPAL          Food Insecure          NA                -0.1397291   -0.1960499   -0.0834083
9-12 months    JiVitA-4     BANGLADESH     Food Secure            NA                -0.0496637   -0.0594441   -0.0398832
9-12 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.0545176   -0.0673674   -0.0416678
9-12 months    JiVitA-4     BANGLADESH     Food Insecure          NA                -0.0564200   -0.0772639   -0.0355762
9-12 months    MAL-ED       INDIA          Food Secure            NA                -0.0914195   -0.1087935   -0.0740455
9-12 months    MAL-ED       INDIA          Mildly Food Insecure   NA                -0.1200275   -0.1991801   -0.0408749
9-12 months    MAL-ED       INDIA          Food Insecure          NA                -0.1199226   -0.1825004   -0.0573448
9-12 months    MAL-ED       NEPAL          Food Secure            NA                -0.0663154   -0.0924178   -0.0402130
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0564757   -0.1139363    0.0009849
9-12 months    MAL-ED       NEPAL          Food Insecure          NA                -0.0696806   -0.1154792   -0.0238821
9-12 months    MAL-ED       PERU           Food Secure            NA                 0.0448911   -0.0278442    0.1176265
9-12 months    MAL-ED       PERU           Mildly Food Insecure   NA                -0.1129206   -0.1622088   -0.0636325
9-12 months    MAL-ED       PERU           Food Insecure          NA                -0.0586308   -0.1054400   -0.0118216
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0886232   -0.1290286   -0.0482178
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0696551   -0.1441250    0.0048147
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0959300   -0.1408558   -0.0510043
9-12 months    NIH-Birth    BANGLADESH     Food Secure            NA                 0.0155691   -0.0234051    0.0545434
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.0519677   -0.0682266   -0.0357088
9-12 months    NIH-Birth    BANGLADESH     Food Insecure          NA                -0.0563834   -0.1103688   -0.0023980
9-12 months    NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0309424   -0.0450107   -0.0168741
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0251391   -0.0466105   -0.0036678
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0722849   -0.1054338   -0.0391360
12-15 months   GMS-Nepal    NEPAL          Food Secure            NA                -0.0647873   -0.0778797   -0.0516948
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.0782835   -0.1078891   -0.0486779
12-15 months   GMS-Nepal    NEPAL          Food Insecure          NA                -0.0990511   -0.1368494   -0.0612528
12-15 months   JiVitA-4     BANGLADESH     Food Secure            NA                -0.0484616   -0.0563054   -0.0406179
12-15 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.0401753   -0.0510210   -0.0293296
12-15 months   JiVitA-4     BANGLADESH     Food Insecure          NA                -0.0424881   -0.0600733   -0.0249030
12-15 months   MAL-ED       INDIA          Food Secure            NA                -0.0552086   -0.0721227   -0.0382945
12-15 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0695290   -0.1564471    0.0173891
12-15 months   MAL-ED       INDIA          Food Insecure          NA                -0.0592404   -0.1030922   -0.0153885
12-15 months   MAL-ED       NEPAL          Food Secure            NA                -0.0364286   -0.0600886   -0.0127686
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0363792   -0.0938512    0.0210928
12-15 months   MAL-ED       NEPAL          Food Insecure          NA                -0.0510079   -0.0957216   -0.0062942
12-15 months   MAL-ED       PERU           Food Secure            NA                -0.0855929   -0.1334525   -0.0377334
12-15 months   MAL-ED       PERU           Mildly Food Insecure   NA                 0.0030185   -0.0669339    0.0729708
12-15 months   MAL-ED       PERU           Food Insecure          NA                -0.0419116   -0.0822725   -0.0015507
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0394461   -0.0779089   -0.0009833
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0853074   -0.1704247   -0.0001901
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0675026   -0.0982479   -0.0367573
12-15 months   NIH-Birth    BANGLADESH     Food Secure            NA                -0.1026540   -0.1340590   -0.0712490
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.1294255   -0.1495073   -0.1093436
12-15 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -0.1423402   -0.1897034   -0.0949771
12-15 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0413308   -0.0538170   -0.0288446
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0450915   -0.0638338   -0.0263492
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0074409   -0.0350969    0.0202151
15-18 months   GMS-Nepal    NEPAL          Food Secure            NA                -0.0681843   -0.0866027   -0.0497659
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.0559155   -0.0830161   -0.0288149
15-18 months   GMS-Nepal    NEPAL          Food Insecure          NA                -0.0613487   -0.0848343   -0.0378632
15-18 months   JiVitA-4     BANGLADESH     Food Secure            NA                -0.0334048   -0.0415016   -0.0253081
15-18 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.0353261   -0.0453313   -0.0253210
15-18 months   JiVitA-4     BANGLADESH     Food Insecure          NA                -0.0238210   -0.0403985   -0.0072435
15-18 months   MAL-ED       INDIA          Food Secure            NA                -0.0398679   -0.0538288   -0.0259070
15-18 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0753306   -0.1232019   -0.0274593
15-18 months   MAL-ED       INDIA          Food Insecure          NA                -0.0420820   -0.0866725    0.0025086
15-18 months   MAL-ED       NEPAL          Food Secure            NA                -0.0505165   -0.0740999   -0.0269330
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0547544   -0.1377825    0.0282736
15-18 months   MAL-ED       NEPAL          Food Insecure          NA                -0.0716176   -0.1072028   -0.0360324
15-18 months   MAL-ED       PERU           Food Secure            NA                -0.0215328   -0.0802082    0.0371426
15-18 months   MAL-ED       PERU           Mildly Food Insecure   NA                -0.0417853   -0.1001370    0.0165663
15-18 months   MAL-ED       PERU           Food Insecure          NA                -0.0220423   -0.0496797    0.0055951
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0546912   -0.0824275   -0.0269549
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0152750   -0.0496164    0.0801663
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0048805   -0.0342903    0.0245294
15-18 months   NIH-Birth    BANGLADESH     Food Secure            NA                -0.0459165   -0.0905566   -0.0012765
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.0555393   -0.0716448   -0.0394338
15-18 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -0.1110990   -0.1621539   -0.0600442
15-18 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0200206   -0.0307031   -0.0093381
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0095467   -0.0265420    0.0074485
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0205916   -0.0462536    0.0050704
18-21 months   GMS-Nepal    NEPAL          Food Secure            NA                 0.0231964    0.0077909    0.0386019
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.0038096   -0.0329331    0.0253140
18-21 months   GMS-Nepal    NEPAL          Food Insecure          NA                 0.0090515   -0.0165661    0.0346691
18-21 months   MAL-ED       INDIA          Food Secure            NA                 0.0072617   -0.0051330    0.0196565
18-21 months   MAL-ED       INDIA          Mildly Food Insecure   NA                 0.0405832   -0.0250033    0.1061696
18-21 months   MAL-ED       INDIA          Food Insecure          NA                -0.0038246   -0.0452927    0.0376436
18-21 months   MAL-ED       NEPAL          Food Secure            NA                -0.0473692   -0.0663126   -0.0284259
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0427348   -0.1074825    0.0220128
18-21 months   MAL-ED       NEPAL          Food Insecure          NA                -0.0402892   -0.0706556   -0.0099228
18-21 months   MAL-ED       PERU           Food Secure            NA                -0.0088199   -0.0490837    0.0314439
18-21 months   MAL-ED       PERU           Mildly Food Insecure   NA                 0.0375257   -0.0087216    0.0837730
18-21 months   MAL-ED       PERU           Food Insecure          NA                 0.0040165   -0.0328052    0.0408381
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0267544   -0.0551736    0.0016647
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0338444   -0.0989067    0.0312179
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0422872   -0.0731334   -0.0114410
18-21 months   NIH-Birth    BANGLADESH     Food Secure            NA                -0.0479064   -0.0845814   -0.0112313
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.0360893   -0.0501358   -0.0220428
18-21 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -0.0314178   -0.0835536    0.0207179
18-21 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0287537   -0.0388854   -0.0186220
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0323295   -0.0493799   -0.0152791
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0192645   -0.0430932    0.0045643
21-24 months   GMS-Nepal    NEPAL          Food Secure            NA                 0.0421683    0.0231327    0.0612039
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                 0.0643442    0.0255954    0.1030931
21-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                 0.0800419    0.0476904    0.1123934
21-24 months   MAL-ED       INDIA          Food Secure            NA                 0.0331549    0.0210271    0.0452827
21-24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                 0.0283753   -0.0151527    0.0719033
21-24 months   MAL-ED       INDIA          Food Insecure          NA                -0.0059548   -0.0410314    0.0291217
21-24 months   MAL-ED       NEPAL          Food Secure            NA                 0.0074003   -0.0109538    0.0257544
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.0116505   -0.0356103    0.0589113
21-24 months   MAL-ED       NEPAL          Food Insecure          NA                 0.0227150   -0.0452843    0.0907144
21-24 months   MAL-ED       PERU           Food Secure            NA                 0.0678996    0.0255889    0.1102104
21-24 months   MAL-ED       PERU           Mildly Food Insecure   NA                 0.0720305    0.0267100    0.1173510
21-24 months   MAL-ED       PERU           Food Insecure          NA                 0.0662025    0.0322010    0.1002039
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0452350    0.0245056    0.0659645
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0620093    0.0071925    0.1168261
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.0591867    0.0241603    0.0942132
21-24 months   NIH-Birth    BANGLADESH     Food Secure            NA                 0.0501020    0.0222122    0.0779918
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                 0.0390542    0.0253454    0.0527630
21-24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                 0.0434854   -0.0035434    0.0905142
21-24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0592536    0.0489901    0.0695171
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0561724    0.0386952    0.0736497
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                 0.0554511    0.0300637    0.0808385


### Parameter: E(Y)


agecat         studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          NA                   NA                -0.0320611   -0.0574681   -0.0066541
0-3 months     JiVitA-3     BANGLADESH     NA                   NA                 0.0754288    0.0698055    0.0810522
0-3 months     JiVitA-4     BANGLADESH     NA                   NA                 0.0679445    0.0527205    0.0831684
0-3 months     MAL-ED       NEPAL          NA                   NA                 0.0168933   -0.0475781    0.0813646
0-3 months     MAL-ED       PERU           NA                   NA                -0.2591285   -0.3082030   -0.2100540
0-3 months     MAL-ED       SOUTH AFRICA   NA                   NA                -0.1867046   -0.2394747   -0.1339344
0-3 months     NIH-Birth    BANGLADESH     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto   BANGLADESH     NA                   NA                -0.2312607   -0.2486732   -0.2138483
3-6 months     GMS-Nepal    NEPAL          NA                   NA                -0.1616259   -0.1804321   -0.1428197
3-6 months     JiVitA-3     BANGLADESH     NA                   NA                -0.0034732   -0.0083369    0.0013904
3-6 months     JiVitA-4     BANGLADESH     NA                   NA                -0.0085546   -0.0222850    0.0051757
3-6 months     MAL-ED       INDIA          NA                   NA                -0.0295657   -0.0611153    0.0019839
3-6 months     MAL-ED       NEPAL          NA                   NA                -0.0327113   -0.0685276    0.0031050
3-6 months     MAL-ED       PERU           NA                   NA                -0.0011048   -0.0481278    0.0459182
3-6 months     MAL-ED       SOUTH AFRICA   NA                   NA                -0.0087531   -0.0486606    0.0311545
3-6 months     NIH-Birth    BANGLADESH     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto   BANGLADESH     NA                   NA                 0.0267740    0.0099602    0.0435879
6-9 months     GMS-Nepal    NEPAL          NA                   NA                -0.0405139   -0.0581609   -0.0228669
6-9 months     JiVitA-4     BANGLADESH     NA                   NA                -0.0289432   -0.0379399   -0.0199466
6-9 months     MAL-ED       INDIA          NA                   NA                -0.0722015   -0.0962308   -0.0481721
6-9 months     MAL-ED       NEPAL          NA                   NA                -0.0526967   -0.0764788   -0.0289147
6-9 months     MAL-ED       PERU           NA                   NA                -0.0561945   -0.0915141   -0.0208748
6-9 months     MAL-ED       SOUTH AFRICA   NA                   NA                -0.0101309   -0.0395236    0.0192618
6-9 months     NIH-Birth    BANGLADESH     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto   BANGLADESH     NA                   NA                -0.0313638   -0.0441155   -0.0186120
9-12 months    GMS-Nepal    NEPAL          NA                   NA                -0.0809872   -0.0949069   -0.0670675
9-12 months    JiVitA-4     BANGLADESH     NA                   NA                -0.0523249   -0.0598007   -0.0448490
9-12 months    MAL-ED       INDIA          NA                   NA                -0.0944080   -0.1109278   -0.0778882
9-12 months    MAL-ED       NEPAL          NA                   NA                -0.0666019   -0.0881964   -0.0450073
9-12 months    MAL-ED       PERU           NA                   NA                -0.0455739   -0.0792172   -0.0119307
9-12 months    MAL-ED       SOUTH AFRICA   NA                   NA                -0.0892023   -0.1171796   -0.0612250
9-12 months    NIH-Birth    BANGLADESH     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto   BANGLADESH     NA                   NA                -0.0342995   -0.0452397   -0.0233593
12-15 months   GMS-Nepal    NEPAL          NA                   NA                -0.0682777   -0.0793293   -0.0572261
12-15 months   JiVitA-4     BANGLADESH     NA                   NA                -0.0448681   -0.0510003   -0.0387359
12-15 months   MAL-ED       INDIA          NA                   NA                -0.0558760   -0.0715831   -0.0401688
12-15 months   MAL-ED       NEPAL          NA                   NA                -0.0358434   -0.0552847   -0.0164020
12-15 months   MAL-ED       PERU           NA                   NA                -0.0583649   -0.0870888   -0.0296410
12-15 months   MAL-ED       SOUTH AFRICA   NA                   NA                -0.0564036   -0.0803468   -0.0324605
12-15 months   NIH-Birth    BANGLADESH     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto   BANGLADESH     NA                   NA                -0.0383313   -0.0478154   -0.0288473
15-18 months   GMS-Nepal    NEPAL          NA                   NA                -0.0672720   -0.0801009   -0.0544430
15-18 months   JiVitA-4     BANGLADESH     NA                   NA                -0.0328364   -0.0389026   -0.0267701
15-18 months   MAL-ED       INDIA          NA                   NA                -0.0408761   -0.0539696   -0.0277826
15-18 months   MAL-ED       NEPAL          NA                   NA                -0.0545316   -0.0735770   -0.0354862
15-18 months   MAL-ED       PERU           NA                   NA                -0.0260438   -0.0502259   -0.0018617
15-18 months   MAL-ED       SOUTH AFRICA   NA                   NA                -0.0308187   -0.0501448   -0.0114926
15-18 months   NIH-Birth    BANGLADESH     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto   BANGLADESH     NA                   NA                -0.0169074   -0.0252557   -0.0085590
18-21 months   GMS-Nepal    NEPAL          NA                   NA                 0.0166850    0.0046354    0.0287347
18-21 months   MAL-ED       INDIA          NA                   NA                 0.0072104   -0.0045271    0.0189479
18-21 months   MAL-ED       NEPAL          NA                   NA                -0.0460708   -0.0620604   -0.0300812
18-21 months   MAL-ED       PERU           NA                   NA                 0.0094570   -0.0141753    0.0330894
18-21 months   MAL-ED       SOUTH AFRICA   NA                   NA                -0.0323719   -0.0522186   -0.0125252
18-21 months   NIH-Birth    BANGLADESH     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto   BANGLADESH     NA                   NA                -0.0279687   -0.0360019   -0.0199355
21-24 months   GMS-Nepal    NEPAL          NA                   NA                 0.0489671    0.0333288    0.0646055
21-24 months   MAL-ED       INDIA          NA                   NA                 0.0298906    0.0185218    0.0412595
21-24 months   MAL-ED       NEPAL          NA                   NA                 0.0101085   -0.0078666    0.0280837
21-24 months   MAL-ED       PERU           NA                   NA                 0.0676570    0.0456639    0.0896501
21-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                 0.0447741    0.0274880    0.0620602
21-24 months   NIH-Birth    BANGLADESH     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto   BANGLADESH     NA                   NA                 0.0587621    0.0505315    0.0669927


### Parameter: ATE


agecat         studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0219597   -0.0670798    0.1109993
0-3 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0542860   -0.0285056    0.1370776
0-3 months     JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure        0.0013339   -0.0117101    0.0143779
0-3 months     JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0169715   -0.0341155    0.0001725
0-3 months     JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0280210   -0.0609751    0.0049332
0-3 months     JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0057480   -0.0576654    0.0461695
0-3 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0567798   -0.0860461    0.1996057
0-3 months     MAL-ED       NEPAL          Food Insecure          Food Secure        0.0366566   -0.1285662    0.2018795
0-3 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0560416   -0.0768659    0.1889491
0-3 months     MAL-ED       PERU           Food Insecure          Food Secure       -0.0124447   -0.1417465    0.1168572
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0729241   -0.2419961    0.0961480
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0153033   -0.1351236    0.1045169
0-3 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0304752   -0.1042980    0.0433475
0-3 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0774896   -0.1873156    0.0323364
0-3 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0275693   -0.0124633    0.0676019
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0155975   -0.0379352    0.0691303
3-6 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0026960   -0.0651816    0.0597896
3-6 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0326877   -0.0256151    0.0909904
3-6 months     JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0074913   -0.0186179    0.0036354
3-6 months     JiVitA-3     BANGLADESH     Food Insecure          Food Secure        0.0007656   -0.0139815    0.0155126
3-6 months     JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0092429   -0.0184622    0.0369479
3-6 months     JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0357777   -0.0782156    0.0066602
3-6 months     MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0259845   -0.0582958    0.1102647
3-6 months     MAL-ED       INDIA          Food Insecure          Food Secure       -0.0005420   -0.0950029    0.0939189
3-6 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0539791   -0.1880398    0.0800817
3-6 months     MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0228874   -0.1266674    0.0808926
3-6 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0168438   -0.1213114    0.1549990
3-6 months     MAL-ED       PERU           Food Insecure          Food Secure       -0.0332237   -0.1429429    0.0764955
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0187407   -0.1356701    0.0981886
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0400648   -0.1297515    0.0496218
3-6 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0315930   -0.0285166    0.0917026
3-6 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure        0.0319923   -0.0610029    0.1249874
3-6 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0023129   -0.0356021    0.0402280
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0096029   -0.0686895    0.0494837
6-9 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0046831   -0.0459678    0.0366016
6-9 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0251457   -0.0931022    0.0428107
6-9 months     JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0022719   -0.0169521    0.0214959
6-9 months     JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0210462   -0.0517763    0.0096838
6-9 months     MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0681546   -0.0594843    0.1957935
6-9 months     MAL-ED       INDIA          Food Insecure          Food Secure       -0.0168928   -0.0896676    0.0558820
6-9 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0364615   -0.0542731    0.1271961
6-9 months     MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0017740   -0.0833723    0.0798243
6-9 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0256592   -0.0665006    0.1178191
6-9 months     MAL-ED       PERU           Food Insecure          Food Secure        0.0718698   -0.0099344    0.1536740
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1142706   -0.1983472   -0.0301941
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0311391   -0.0996019    0.0373236
6-9 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0025409   -0.0564614    0.0513795
6-9 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0572807   -0.1357822    0.0212207
6-9 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0183677   -0.0469507    0.0102154
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0243735   -0.0655252    0.0167783
9-12 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0395187   -0.0977671    0.0187297
9-12 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0752336   -0.1327778   -0.0176893
9-12 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0048539   -0.0207271    0.0110192
9-12 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0067563   -0.0296106    0.0160979
9-12 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0286080   -0.1096450    0.0524289
9-12 months    MAL-ED       INDIA          Food Insecure          Food Secure       -0.0285031   -0.0934480    0.0364418
9-12 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0098397   -0.0532605    0.0729399
9-12 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0033652   -0.0562114    0.0494810
9-12 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.1578118   -0.2457476   -0.0698760
9-12 months    MAL-ED       PERU           Food Insecure          Food Secure       -0.1035219   -0.1907311   -0.0163128
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0189680   -0.0658873    0.1038233
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0073069   -0.0679651    0.0533514
9-12 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0675368   -0.1096057   -0.0254679
9-12 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0719526   -0.1383434   -0.0055617
9-12 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0058033   -0.0199114    0.0315180
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0413425   -0.0773770   -0.0053079
12-15 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0134963   -0.0460016    0.0190091
12-15 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0342639   -0.0741356    0.0056079
12-15 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0082863   -0.0049850    0.0215576
12-15 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0059735   -0.0131942    0.0251411
12-15 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0143204   -0.1028689    0.0742282
12-15 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0040317   -0.0510325    0.0429691
12-15 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0000494   -0.0620396    0.0621383
12-15 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0145793   -0.0656883    0.0365297
12-15 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0886114    0.0050490    0.1721738
12-15 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0436813   -0.0193935    0.1067562
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0458613   -0.1398891    0.0481666
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0280565   -0.0777643    0.0216513
12-15 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0267715   -0.0642046    0.0106617
12-15 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0396863   -0.0964647    0.0170922
12-15 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0037607   -0.0263794    0.0188580
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0338898    0.0036438    0.0641359
15-18 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0122688   -0.0209827    0.0455202
15-18 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0068355   -0.0228541    0.0365252
15-18 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0019213   -0.0146361    0.0107936
15-18 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0095839   -0.0084663    0.0276341
15-18 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0354627   -0.0853282    0.0144028
15-18 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0022141   -0.0489390    0.0445109
15-18 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0042380   -0.0905419    0.0820659
15-18 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0211011   -0.0638042    0.0216020
15-18 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0202525   -0.1030555    0.0625505
15-18 months   MAL-ED       PERU           Food Insecure          Food Secure       -0.0005095   -0.0654598    0.0644408
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0699661   -0.0007580    0.1406903
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0498107    0.0092325    0.0903890
15-18 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0096228   -0.0570971    0.0378516
15-18 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0651825   -0.1329699    0.0026049
15-18 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0104738   -0.0096140    0.0305617
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0005710   -0.0283596    0.0272176
18-21 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0270060   -0.0607808    0.0067689
18-21 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0141449   -0.0440670    0.0157772
18-21 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0333215   -0.0334259    0.1000688
18-21 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0110863   -0.0543672    0.0321946
18-21 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0046344   -0.0625973    0.0718661
18-21 months   MAL-ED       NEPAL          Food Insecure          Food Secure        0.0070801   -0.0286452    0.0428053
18-21 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0463456   -0.0151211    0.1078123
18-21 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0128364   -0.0420953    0.0677680
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0070899   -0.0783171    0.0641372
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0155327   -0.0574249    0.0263594
18-21 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0118171   -0.0275695    0.0512036
18-21 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure        0.0164885   -0.0472557    0.0802328
18-21 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0035758   -0.0234240    0.0162724
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0094893   -0.0163569    0.0353354
21-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0221759   -0.0210590    0.0654108
21-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0378736    0.0003819    0.0753653
21-24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0047796   -0.0499656    0.0404063
21-24 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0391097   -0.0762237   -0.0019958
21-24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0042502   -0.0460237    0.0545242
21-24 months   MAL-ED       NEPAL          Food Insecure          Food Secure        0.0153148   -0.0551547    0.0857842
21-24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0041308   -0.0583977    0.0666593
21-24 months   MAL-ED       PERU           Food Insecure          Food Secure       -0.0016972   -0.0563559    0.0529615
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0167743   -0.0423871    0.0759357
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0139517   -0.0269020    0.0548054
21-24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0110478   -0.0420862    0.0199905
21-24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0066167   -0.0612217    0.0479884
21-24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0030811   -0.0233160    0.0171538
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0038024   -0.0311175    0.0235126


### Parameter: PAR


agecat         studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          Food Secure          NA                 0.0063831   -0.0099859    0.0227522
0-3 months     JiVitA-3     BANGLADESH     Food Secure          NA                -0.0025349   -0.0088196    0.0037499
0-3 months     JiVitA-4     BANGLADESH     Food Secure          NA                -0.0107014   -0.0260875    0.0046847
0-3 months     MAL-ED       NEPAL          Food Secure          NA                 0.0108230   -0.0206684    0.0423143
0-3 months     MAL-ED       PERU           Food Secure          NA                 0.0104854   -0.0789015    0.0998724
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0051007   -0.0560216    0.0458203
0-3 months     NIH-Birth    BANGLADESH     Food Secure          NA                -0.0272819   -0.0900089    0.0354450
0-3 months     NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0090832   -0.0053272    0.0234936
3-6 months     GMS-Nepal    NEPAL          Food Secure          NA                 0.0014373   -0.0103582    0.0132327
3-6 months     JiVitA-3     BANGLADESH     Food Secure          NA                -0.0035583   -0.0091890    0.0020725
3-6 months     JiVitA-4     BANGLADESH     Food Secure          NA                -0.0012797   -0.0139456    0.0113861
3-6 months     MAL-ED       INDIA          Food Secure          NA                 0.0005858   -0.0073117    0.0084832
3-6 months     MAL-ED       NEPAL          Food Secure          NA                -0.0102647   -0.0318561    0.0113267
3-6 months     MAL-ED       PERU           Food Secure          NA                 0.0045991   -0.0743347    0.0835329
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0209939   -0.0565877    0.0145998
3-6 months     NIH-Birth    BANGLADESH     Food Secure          NA                 0.0278336   -0.0235420    0.0792093
3-6 months     NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0009651   -0.0131783    0.0151085
6-9 months     GMS-Nepal    NEPAL          Food Secure          NA                 0.0064584   -0.0079072    0.0208240
6-9 months     JiVitA-4     BANGLADESH     Food Secure          NA                -0.0016040   -0.0106070    0.0073990
6-9 months     MAL-ED       INDIA          Food Secure          NA                 0.0003357   -0.0064267    0.0070980
6-9 months     MAL-ED       NEPAL          Food Secure          NA                 0.0047538   -0.0109725    0.0204801
6-9 months     MAL-ED       PERU           Food Secure          NA                 0.0458918   -0.0113676    0.1031512
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0127905   -0.0393969    0.0138159
6-9 months     NIH-Birth    BANGLADESH     Food Secure          NA                -0.0062499   -0.0518996    0.0393999
6-9 months     NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0050299   -0.0151445    0.0050847
9-12 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0164917   -0.0298871   -0.0030963
9-12 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0026612   -0.0097407    0.0044184
9-12 months    MAL-ED       INDIA          Food Secure          NA                -0.0029885   -0.0088446    0.0028676
9-12 months    MAL-ED       NEPAL          Food Secure          NA                -0.0002864   -0.0126286    0.0120558
9-12 months    MAL-ED       PERU           Food Secure          NA                -0.0904651   -0.1525984   -0.0283318
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0005791   -0.0254819    0.0243237
9-12 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.0580439   -0.0938692   -0.0222187
9-12 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0033571   -0.0123690    0.0056549
12-15 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0034904   -0.0103961    0.0034153
12-15 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0035935   -0.0023079    0.0094950
12-15 months   MAL-ED       INDIA          Food Secure          NA                -0.0006673   -0.0052027    0.0038680
12-15 months   MAL-ED       NEPAL          Food Secure          NA                 0.0005852   -0.0108148    0.0119851
12-15 months   MAL-ED       PERU           Food Secure          NA                 0.0272280   -0.0187331    0.0731892
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0169575   -0.0395471    0.0056321
12-15 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0233048   -0.0547162    0.0081066
12-15 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0029994   -0.0050220    0.0110208
15-18 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0009123   -0.0075011    0.0093258
15-18 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0005685   -0.0050775    0.0062144
15-18 months   MAL-ED       INDIA          Food Secure          NA                -0.0010082   -0.0049235    0.0029070
15-18 months   MAL-ED       NEPAL          Food Secure          NA                -0.0040151   -0.0149154    0.0068851
15-18 months   MAL-ED       PERU           Food Secure          NA                -0.0045110   -0.0538471    0.0448251
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0238725    0.0056798    0.0420653
15-18 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0117741   -0.0519883    0.0284401
15-18 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0031132   -0.0038148    0.0100412
18-21 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0065114   -0.0131301    0.0001074
18-21 months   MAL-ED       INDIA          Food Secure          NA                -0.0000513   -0.0039068    0.0038042
18-21 months   MAL-ED       NEPAL          Food Secure          NA                 0.0012984   -0.0083134    0.0109102
18-21 months   MAL-ED       PERU           Food Secure          NA                 0.0182769   -0.0194950    0.0560489
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0056175   -0.0232277    0.0119927
18-21 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.0095173   -0.0241851    0.0432198
18-21 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0007850   -0.0055684    0.0071383
21-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0067988   -0.0014307    0.0150284
21-24 months   MAL-ED       INDIA          Food Secure          NA                -0.0032643   -0.0068475    0.0003189
21-24 months   MAL-ED       NEPAL          Food Secure          NA                 0.0027083   -0.0100883    0.0155048
21-24 months   MAL-ED       PERU           Food Secure          NA                -0.0002427   -0.0389700    0.0384847
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0004610   -0.0163766    0.0154547
21-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0094106   -0.0357396    0.0169185
21-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0004915   -0.0067144    0.0057315
