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

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        impfloor    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              217     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               19     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              161     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                2     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1              166     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0               11     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               61     150  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               89     150  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1               53     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0              201     254  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              178     198  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     198  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               10     223  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              213     223  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               68      68  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0      68  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          1              280     280  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          0                0     280  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              501     564  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               63     564  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              586     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               54     640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              547     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174     721  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               72     398  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0              326     398  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           1               27      29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           0                2      29  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             1314   19836  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0            18522   19836  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1              260    2513  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             2253    2513  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              214     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               17     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              206     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                2     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1              215     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0               15     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              101     227  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0              126     227  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1               58     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0              209     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              222     241  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     241  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               11     237  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              226     237  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              214     214  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0     214  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1              297     297  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          0                0     297  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              463     521  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               58     521  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              551     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               47     598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              521     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174     695  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               69     370  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              301     370  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           1              200     214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           0               14     214  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             1081   12551  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            11470   12551  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1              200    1839  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             1639    1839  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1              208     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               16     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              196     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                2     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1              215     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0               15     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1              100     223  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0              123     223  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1               57     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0              188     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              213     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               10     223  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              213     223  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              219     219  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0     219  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1              303     303  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          0                0     303  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1              442     497  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0               55     497  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              522     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               43     565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              513     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              175     688  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               68     381  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0              313     381  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           1              200     214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           0               14     214  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1              376    3051  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0             2675    3051  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              208     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               17     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              192     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                2     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1              213     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0               14     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1               99     222  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0              123     222  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1               54     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0              181     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              214     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     222  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              210     222  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              224     224  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     224  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1              299     299  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          0                0     299  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              426     480  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               54     480  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              521     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               45     566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              501     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              173     674  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               68     370  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0              302     370  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           1              198     212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           0               14     212  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1              406    3498  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             3092    3498  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              182     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                2     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1              212     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0               14     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1               99     223  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0              124     223  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1               51     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0              173     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              208     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              212     224  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              233     233  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     233  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1              292     292  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          0                0     292  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1              410     460  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     460  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              490     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               42     532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              489     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              171     660  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               69     369  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0              300     369  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           1              185     199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           0               14     199  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1              401    3546  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0             3145    3546  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              173     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                2     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1              211     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               15     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1               96     220  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0              124     220  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1               48     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0              165     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              206     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     215  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              203     215  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              226     226  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     226  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1              284     284  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          0                0     284  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1              400     448  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0               48     448  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              487     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               41     528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              434     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              170     604  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               71     375  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0              304     375  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           1              176     189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           0               13     189  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1              399    3547  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0             3148    3547  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1              193     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               16     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              165     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                2     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1              211     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               15     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1               96     220  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0              124     220  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1               48     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0              154     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              214     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               19     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              190     202  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              213     213  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     213  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1              283     283  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          0                0     283  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1              372     421  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0               49     421  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              497     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               44     541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              381     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              165     546  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               64     342  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0              278     342  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           1              171     183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           0               12     183  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              191     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               16     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              163     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1              211     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               15     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1               97     220  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0              123     220  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1               45     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0              144     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              217     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     202  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              190     202  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              213     213  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     213  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1              292     292  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          0                0     292  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              363     410  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               47     410  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              435     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               36     471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              324     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              166     490  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               50     245  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0              195     245  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           1               33      38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           0                5      38  y_rate_haz       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/699fdd04-2543-4eae-905e-2c09f3ad0ba7/5e15e0b7-83ee-4f54-9836-53ec7ec84cfa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/699fdd04-2543-4eae-905e-2c09f3ad0ba7/5e15e0b7-83ee-4f54-9836-53ec7ec84cfa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/699fdd04-2543-4eae-905e-2c09f3ad0ba7/5e15e0b7-83ee-4f54-9836-53ec7ec84cfa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.1223246   -0.1574107   -0.0872384
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0581329   -0.1908294    0.0745637
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0674002   -0.1134307   -0.0213696
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0807393   -0.3797530    0.2182744
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0882630    0.0111144    0.1654116
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0377704   -0.0233005    0.0988414
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.2040264   -0.2661568   -0.1418959
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.2688420   -0.3073440   -0.2303399
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.1959194   -0.2504058   -0.1414329
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.1360487   -0.2762859    0.0041884
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0041651   -0.1650147    0.1566845
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1483972   -0.1892877   -0.1075066
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.2345543   -0.2629185   -0.2061901
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.2127322   -0.2990066   -0.1264577
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1851151   -0.2032327   -0.1669975
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.1998273   -0.2612726   -0.1383821
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.2122266   -0.2328137   -0.1916395
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.2868980   -0.3208241   -0.2529719
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0893682   -0.1501247   -0.0286117
0-3 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0113241   -0.0456168    0.0229686
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                 0.0912928    0.0702037    0.1123818
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                 0.0571515    0.0521442    0.0621588
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.3659170   -0.4953118   -0.2365221
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.2698177   -0.2987063   -0.2409290
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0161563   -0.0408741    0.0085615
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0867600   -0.1576498   -0.0158702
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0357733   -0.0663116   -0.0052350
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0609767   -0.1798269    0.0578735
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0329515   -0.0765947    0.0106917
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0176682   -0.0523799    0.0170435
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0522459   -0.0115938    0.1160855
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                 0.0207924   -0.0151800    0.0567649
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0011862   -0.0387475    0.0411199
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.1111042   -0.2016167   -0.0205917
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0750288   -0.2479147    0.0978572
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0685520   -0.1019282   -0.0351758
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0475486   -0.0709466   -0.0241507
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0764227   -0.1538410    0.0009956
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0229695   -0.0396393   -0.0062997
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0554506   -0.1081374   -0.0027638
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0084604   -0.0098774    0.0267982
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0849543    0.0458946    0.1240141
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.1372181   -0.1928931   -0.0815432
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.1667974   -0.1912830   -0.1423118
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                 0.0142022   -0.0092721    0.0376764
3-6 months     ki1114097-CONTENT       PERU                           0                    NA                 0.0016034   -0.0705664    0.0737731
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                 0.0081120   -0.0118641    0.0280880
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0046070   -0.0098135    0.0005995
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0178078   -0.1006685    0.0650529
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0081950   -0.0218796    0.0054897
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0710443   -0.0889914   -0.0530973
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0604948   -0.1257357    0.0047461
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0705049   -0.0941204   -0.0468893
6-9 months     ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0728237   -0.1922496    0.0466023
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0237813   -0.0525097    0.0049472
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0326612   -0.0611110   -0.0042114
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0243246   -0.0791982    0.0305491
6-9 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.0362284   -0.0631058   -0.0093511
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0176046   -0.0461569    0.0109478
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0223489   -0.1642077    0.1195099
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1446266   -0.4303587    0.1411056
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0944454   -0.1273613   -0.0615295
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0547440   -0.0741267   -0.0353612
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0973320   -0.1426712   -0.0519928
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0591967   -0.0704220   -0.0479714
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0919265   -0.1336657   -0.0501873
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0218168   -0.0365181   -0.0071155
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0639803   -0.0886724   -0.0392882
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0978110   -0.1356522   -0.0599697
6-9 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0373415   -0.0638404   -0.0108426
6-9 months     ki1114097-CONTENT       PERU                           1                    NA                -0.0232391   -0.0447430   -0.0017352
6-9 months     ki1114097-CONTENT       PERU                           0                    NA                -0.0823843   -0.1958086    0.0310399
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0144452   -0.0498266    0.0209361
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0316352   -0.0413308   -0.0219396
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0865238   -0.1035007   -0.0695469
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0725660   -0.1233518   -0.0217802
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0893791   -0.1053928   -0.0733655
9-12 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -0.1240314   -0.2109298   -0.0371329
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0612447   -0.0910595   -0.0314299
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0686617   -0.0895490   -0.0477744
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0504166   -0.0982258   -0.0026074
9-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                -0.0395084   -0.0640297   -0.0149872
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0861081   -0.1143518   -0.0578645
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0577201   -0.1493260    0.0338858
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3149805   -0.6451804    0.0152193
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1531123   -0.1850177   -0.1212069
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0378417   -0.0530411   -0.0226423
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0676304   -0.1132978   -0.0219630
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0609760   -0.0725676   -0.0493844
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0859292   -0.1175414   -0.0543171
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0367673   -0.0496877   -0.0238469
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0281343   -0.0513554   -0.0049133
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0676716   -0.0979428   -0.0374004
9-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0819801   -0.1021171   -0.0618430
9-12 months    ki1114097-CONTENT       PERU                           1                    NA                -0.0247327   -0.0415880   -0.0078774
9-12 months    ki1114097-CONTENT       PERU                           0                    NA                 0.0337473   -0.0614436    0.1289383
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0503741   -0.0779114   -0.0228369
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0530351   -0.0616052   -0.0444651
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0516971   -0.0677210   -0.0356732
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.1314404   -0.1874553   -0.0754256
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0529462   -0.0685662   -0.0373262
12-15 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -0.1255372   -0.1662086   -0.0848658
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0597153   -0.0851913   -0.0342393
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0529183   -0.0731294   -0.0327072
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0484219   -0.0862274   -0.0106163
12-15 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0696037   -0.0901766   -0.0490308
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0589132   -0.0831568   -0.0346696
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0447136   -0.1240247    0.0345974
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0648592   -0.1831207    0.0534022
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0696936   -0.0956448   -0.0437424
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.1276193   -0.1458340   -0.1094046
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.1153487   -0.1600921   -0.0706054
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0398404   -0.0504394   -0.0292413
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0480789   -0.0844759   -0.0116818
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0382044   -0.0491906   -0.0272182
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0430052   -0.0644102   -0.0216003
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0753622   -0.0954890   -0.0552354
12-15 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0606261   -0.0764220   -0.0448302
12-15 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0684253   -0.0854957   -0.0513549
12-15 months   ki1114097-CONTENT       PERU                           0                    NA                -0.1497024   -0.2040914   -0.0953135
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0311774   -0.0511394   -0.0112154
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0454373   -0.0519657   -0.0389089
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0442017   -0.0581472   -0.0302563
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0692039   -0.1243094   -0.0140983
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0395049   -0.0526413   -0.0263685
15-18 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0287299   -0.0926217    0.0351619
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0523283   -0.0762616   -0.0283950
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0528929   -0.0746417   -0.0311440
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0298824   -0.0666183    0.0068535
15-18 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0381970   -0.0552795   -0.0211144
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0274323   -0.0474881   -0.0073765
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0776138   -0.1339034   -0.0213241
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0815714   -0.1659183    0.0027755
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0854300   -0.1083290   -0.0625310
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0587718   -0.0742225   -0.0433210
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0492535   -0.1047961    0.0062892
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0365876   -0.0457244   -0.0274509
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0503252   -0.0825980   -0.0180524
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0199342   -0.0297055   -0.0101630
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0074005   -0.0274720    0.0126709
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0685539   -0.0944979   -0.0426099
15-18 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0689438   -0.0879689   -0.0499188
15-18 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0074584   -0.0248648    0.0099479
15-18 months   ki1114097-CONTENT       PERU                           0                    NA                -0.0501733   -0.1103127    0.0099661
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0348825   -0.0628526   -0.0069124
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0321504   -0.0385666   -0.0257343
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0150570   -0.0271842   -0.0029299
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0252610   -0.0692209    0.0186989
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0066462   -0.0052199    0.0185123
18-21 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -0.0035162   -0.0602097    0.0531774
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0127405   -0.0344521    0.0089711
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0365001   -0.0543758   -0.0186244
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0032078   -0.0287293    0.0351449
18-21 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0153067   -0.0325372    0.0019238
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0309531   -0.0515794   -0.0103268
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0437352   -0.0797270   -0.0077435
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0920371   -0.2089749    0.0249007
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0265541   -0.0501078   -0.0030004
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0373253   -0.0507111   -0.0239394
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0497136   -0.0816782   -0.0177491
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0124646   -0.0208865   -0.0040426
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                 0.0061088   -0.0255647    0.0377823
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0255269   -0.0352155   -0.0158383
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0257419   -0.0411033   -0.0103804
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0262799    0.0039882    0.0485717
18-21 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                 0.0110870   -0.0068161    0.0289902
18-21 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0056192   -0.0214178    0.0101794
18-21 months   ki1114097-CONTENT       PERU                           0                    NA                -0.0233363   -0.0829474    0.0362747
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0223493    0.0099924    0.0347063
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                 0.0559274    0.0044957    0.1073590
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0286933    0.0172392    0.0401474
21-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                 0.0580817    0.0115953    0.1045680
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0093673   -0.0122755    0.0310102
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0006380   -0.0192118    0.0179357
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0644426    0.0311565    0.0977286
21-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0521814    0.0343103    0.0700526
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0426822    0.0248874    0.0604771
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.0884007    0.0387900    0.1380114
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0360043   -0.0885713    0.1605798
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0082393   -0.0141687    0.0306472
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0390398    0.0269040    0.0511756
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                 0.0530801    0.0103364    0.0958238
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0453290    0.0363250    0.0543331
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                 0.0506248    0.0189464    0.0823032
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0522310    0.0424167    0.0620453
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0692684    0.0539954    0.0845415
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0667284    0.0341503    0.0993064
21-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                 0.0579424    0.0331387    0.0827460
21-24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0196904   -0.0107185    0.0500993
21-24 months   ki1114097-CONTENT       PERU                           0                    NA                 0.0325353   -0.0533933    0.1184640


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0689235   -0.1155446   -0.0223023
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.0580999    0.0129700    0.1032298
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.2543887   -0.2877193   -0.2210580
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1882890   -0.2390479   -0.1375301
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1419596   -0.1815730   -0.1023462
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.2321299   -0.2588226   -0.2054373
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.0224939   -0.0513092    0.0063213
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                 0.0587650    0.0538428    0.0636872
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.2749035   -0.3031728   -0.2466342
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0230158   -0.0502389    0.0042072
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0016619   -0.0396107    0.0362870
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0691618   -0.1015337   -0.0367899
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0502117   -0.0723801   -0.0280432
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.1612796   -0.1824038   -0.1401554
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.0034550   -0.0083211    0.0014111
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0088470   -0.0225757    0.0048816
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0326076   -0.0521325   -0.0130827
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0920985   -0.1257957   -0.0584013
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0592348   -0.0771184   -0.0413511
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.0468499   -0.0677826   -0.0259172
6-9 months     ki1114097-CONTENT       PERU                           NA                   NA                -0.0242292   -0.0452610   -0.0031973
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0290042   -0.0380014   -0.0200070
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0626189   -0.0797334   -0.0455044
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1564210   -0.1902458   -0.1225963
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0415497   -0.0560004   -0.0270991
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.0767286   -0.0929902   -0.0604671
9-12 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.0224698   -0.0391090   -0.0058306
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0521041   -0.0596072   -0.0446010
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0575728   -0.0731666   -0.0419791
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0698812   -0.0951361   -0.0446264
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.1259269   -0.1428918   -0.1089620
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.0645275   -0.0771961   -0.0518588
12-15 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.0734290   -0.0899048   -0.0569533
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0451388   -0.0512136   -0.0390639
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0532964   -0.0684862   -0.0381066
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0853284   -0.1078754   -0.0627813
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0578043   -0.0725233   -0.0430852
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.0695082   -0.0849149   -0.0541014
15-18 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.0091366   -0.0260209    0.0077477
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.0328680   -0.0389225   -0.0268136
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0278747   -0.0412444   -0.0145050
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0270302   -0.0500801   -0.0039803
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0390360   -0.0514319   -0.0266400
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                 0.0142320   -0.0002127    0.0286766
18-21 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.0059547   -0.0211395    0.0092302
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.0038795   -0.0100404    0.0177994
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0093240   -0.0125589    0.0312069
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                 0.0404278    0.0286585    0.0521972
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                 0.0579619    0.0385077    0.0774161
21-24 months   ki1114097-CONTENT       PERU                           NA                   NA                 0.0213805   -0.0073799    0.0501409


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0641917   -0.0730097    0.2013932
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0133391   -0.3156906    0.2890123
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0504926   -0.1496117    0.0486266
0-3 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0648156   -0.1374567    0.0078255
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0598706   -0.0906270    0.2103682
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1442320   -0.3099641    0.0215000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0218222   -0.0690059    0.1126502
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0147123   -0.0788529    0.0494283
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0746713   -0.1144734   -0.0348693
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0780441    0.0081589    0.1479293
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0341413   -0.0556415   -0.0126410
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                  0.0960993   -0.0350981    0.2272967
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0706037   -0.1458265    0.0046191
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0252034   -0.1480274    0.0976206
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0152833   -0.0405706    0.0711372
3-6 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0314534   -0.1049292    0.0420223
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.1122904   -0.2109331   -0.0136478
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0064768   -0.1699099    0.1828634
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0288741   -0.1097894    0.0520412
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0324811   -0.0877120    0.0227498
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0764939    0.0332034    0.1197845
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0295793   -0.0915792    0.0324207
3-6 months     ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           0                    1                 -0.0125988   -0.0883084    0.0631108
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0127190   -0.0334187    0.0079807
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                  0.0096128   -0.0741096    0.0933353
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0105495   -0.0571520    0.0782511
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0023188   -0.1239983    0.1193607
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0088799   -0.0502051    0.0324452
6-9 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0119039   -0.0731517    0.0493440
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0047443   -0.1492655    0.1397768
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0501812   -0.2370377    0.3374000
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0425881   -0.0918510    0.0066748
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0327298   -0.0758891    0.0104296
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0421635   -0.0708715   -0.0134556
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0604695    0.0142443    0.1066946
6-9 months     ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU                           0                    1                 -0.0591452   -0.1747396    0.0564491
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0171900   -0.0538515    0.0194716
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0139578   -0.0396658    0.0675815
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0346523   -0.1230902    0.0537857
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0074170   -0.0440798    0.0292457
9-12 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.0109082   -0.0429689    0.0647853
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0283881   -0.0674253    0.1242015
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1618682   -0.1695208    0.4932572
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0297887   -0.0779578    0.0183805
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0249532   -0.0586183    0.0087118
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0086330   -0.0180522    0.0353181
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0143084   -0.0507660    0.0221491
9-12 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU                           0                    1                  0.0584800   -0.0382890    0.1552491
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0026610   -0.0314249    0.0261029
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0797433   -0.1380273   -0.0214593
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0725910   -0.1159899   -0.0291922
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0067971   -0.0258978    0.0394919
12-15 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0211819   -0.0642066    0.0218429
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0141996   -0.0696403    0.0980394
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0048344   -0.1260046    0.1163358
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0122706   -0.0361483    0.0606894
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0082385   -0.0462862    0.0298092
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0048008   -0.0288680    0.0192663
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0147361   -0.0108773    0.0403495
12-15 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU                           0                    1                 -0.0812771   -0.1383075   -0.0242468
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0142598   -0.0355282    0.0070085
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0250021   -0.0814678    0.0314636
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA                          0                    1                  0.0107750   -0.0545533    0.0761033
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0005646   -0.0330724    0.0319432
15-18 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0083146   -0.0489067    0.0322775
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0501815   -0.1100913    0.0097284
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0038586   -0.0914404    0.0837232
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0095183   -0.0484094    0.0674460
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0137376   -0.0473482    0.0198730
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0125337   -0.0098221    0.0348895
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0003899   -0.0327647    0.0319849
15-18 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU                           0                    1                 -0.0427149   -0.1054603    0.0200306
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                  0.0027321   -0.0261640    0.0316281
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0102040   -0.0559275    0.0355195
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0101624   -0.0682994    0.0479746
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0237596   -0.0520482    0.0045290
18-21 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0185145   -0.0549744    0.0179454
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0127821   -0.0546561    0.0290919
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0654830   -0.0534648    0.1844308
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0123883   -0.0470426    0.0222659
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0185733   -0.0141935    0.0513402
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0002150   -0.0183620    0.0179320
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0151929   -0.0437024    0.0133166
18-21 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU                           0                    1                 -0.0177171   -0.0792086    0.0437743
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0335780   -0.0194087    0.0865648
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA                          0                    1                  0.0293884   -0.0186555    0.0774322
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0100054   -0.0384595    0.0184488
21-24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0122611   -0.0508132    0.0262909
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0457185   -0.0071971    0.0986341
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0277650   -0.1544002    0.0988702
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0140403   -0.0302759    0.0583565
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0052958   -0.0276521    0.0382437
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0170375   -0.0011361    0.0352110
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0087860   -0.0498591    0.0322872
21-24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT       PERU                           0                    1                  0.0128450   -0.0783057    0.1039956


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0047719   -0.0055405    0.0150844
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0015233   -0.0190317    0.0159851
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0301631   -0.0912958    0.0309695
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0503623   -0.1081075    0.0073829
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0076304   -0.0068098    0.0220706
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1377945   -0.2979435    0.0223546
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0024244   -0.0067586    0.0116073
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0029251   -0.0083689    0.0025186
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0190341   -0.0285042   -0.0095640
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0668743    0.0085589    0.1251897
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0325278   -0.0532274   -0.0118281
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.0910135   -0.0314313    0.2134584
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0062845   -0.0123900   -0.0001789
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0002669   -0.0079151    0.0073813
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0099357   -0.0231912    0.0430625
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0264998   -0.0842189    0.0312193
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0028481   -0.0134972    0.0078010
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0058669   -0.1651684    0.1769023
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0026630   -0.0108585    0.0055324
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0039930   -0.0083062    0.0003201
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0183136    0.0069380    0.0296893
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0240614   -0.0760781    0.0279552
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                -0.0014459   -0.0066349    0.0037431
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0115670   -0.0311802    0.0080463
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.0089608   -0.0701629    0.0880845
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0010212   -0.0037971    0.0058395
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0001693   -0.0072101    0.0075487
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0088264   -0.0317563    0.0141036
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0092539   -0.0569782    0.0384705
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0001782   -0.0101829    0.0098265
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0525280   -0.2246098    0.3296659
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0044908   -0.0099515    0.0009699
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0022297   -0.0056343    0.0011749
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0095470   -0.0169066   -0.0021874
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0509611    0.0131585    0.0887636
6-9 months     ki1114097-CONTENT       PERU                           1                    NA                -0.0009901   -0.0075054    0.0055253
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0145590   -0.0482568    0.0191389
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0006816   -0.0048533    0.0034902
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0018608   -0.0069420    0.0032204
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0013742   -0.0228298    0.0200814
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0084905   -0.0334753    0.0504563
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0012460   -0.0061390    0.0086311
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1585595   -0.1590101    0.4761290
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0037080   -0.0091935    0.0017774
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0020710   -0.0048284    0.0006863
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0024678   -0.0038965    0.0088321
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0090570   -0.0390979    0.0209839
9-12 months    ki1114097-CONTENT       PERU                           1                    NA                 0.0022629   -0.0033762    0.0079020
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0017299   -0.0282457    0.0247858
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0040152   -0.0091239    0.0010935
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0035762   -0.0078877    0.0007353
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0021425   -0.0166094    0.0208943
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0169313   -0.0505484    0.0166858
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0002627   -0.0073405    0.0068152
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0050220   -0.1208204    0.1107764
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0016924   -0.0033512    0.0067360
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0010704   -0.0038890    0.0017483
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0001269   -0.0059396    0.0056857
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0108347   -0.0099740    0.0316435
12-15 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0050037   -0.0096941   -0.0003133
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0139613   -0.0337329    0.0058102
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0015926   -0.0056765    0.0024914
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0015015   -0.0023997    0.0054026
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0009681   -0.0198865    0.0179504
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0061741   -0.0378098    0.0254615
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0011153   -0.0064240    0.0041933
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0037570   -0.0861145    0.0786006
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0009675   -0.0045915    0.0065265
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0010561   -0.0036227    0.0015105
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0030269   -0.0027586    0.0088124
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0009542   -0.0276510    0.0257425
15-18 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0016782   -0.0066656    0.0033093
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.0020144   -0.0250427    0.0290716
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0004648   -0.0037908    0.0028611
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0008722   -0.0040855    0.0023412
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0151342   -0.0320593    0.0017910
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0113219   -0.0393427    0.0166989
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0012134   -0.0049666    0.0025398
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0650069   -0.0477686    0.1777824
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0017107   -0.0056455    0.0022241
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0015247   -0.0011199    0.0041692
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0024419   -0.0078544    0.0029707
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0120480   -0.0357775    0.0116816
18-21 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0003355   -0.0038987    0.0032278
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0032689   -0.0011033    0.0076411
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0010953   -0.0017939    0.0039846
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0054878   -0.0217715    0.0107958
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0074682   -0.0371920    0.0222556
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0011899   -0.0026777    0.0050575
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0266802   -0.1465417    0.0931812
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0013880   -0.0033845    0.0061606
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0009052   -0.0015663    0.0033767
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0065311    0.0004627    0.0125995
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0087665   -0.0415828    0.0240499
21-24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0016901   -0.0103847    0.0137650
