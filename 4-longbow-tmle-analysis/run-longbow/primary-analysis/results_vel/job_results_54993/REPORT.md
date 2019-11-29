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

**Intervention Variable:** perdiar6

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
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
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

agecat         studyid                 country                        perdiar6    n_cell     n  outcome_variable 
-------------  ----------------------  -----------------------------  ---------  -------  ----  -----------------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%              70   243  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        96   243  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             77   243  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0%             154   168  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   168  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   168  y_rate_len       
0-3 months     ki0047075b-MAL-ED       INDIA                          0%              38   183  y_rate_len       
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       101   183  y_rate_len       
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%             44   183  y_rate_len       
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%              54   156  y_rate_len       
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        45   156  y_rate_len       
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%             57   156  y_rate_len       
0-3 months     ki0047075b-MAL-ED       PERU                           0%              66   265  y_rate_len       
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        86   265  y_rate_len       
0-3 months     ki0047075b-MAL-ED       PERU                           >5%            113   265  y_rate_len       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             160   211  y_rate_len       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        43   211  y_rate_len       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   211  y_rate_len       
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   228  y_rate_len       
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        91   228  y_rate_len       
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   228  y_rate_len       
0-3 months     ki1000109-EE            PAKISTAN                       0%             270   303  y_rate_len       
0-3 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        31   303  y_rate_len       
0-3 months     ki1000109-EE            PAKISTAN                       >5%              2   303  y_rate_len       
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%             137   566  y_rate_len       
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   566  y_rate_len       
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            252   566  y_rate_len       
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%             172   640  y_rate_len       
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       258   640  y_rate_len       
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            210   640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       169   721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            211   721  y_rate_len       
0-3 months     ki1114097-CMIN          BANGLADESH                     0%              17    43  y_rate_len       
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        13    43  y_rate_len       
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%             13    43  y_rate_len       
0-3 months     ki1114097-CONTENT       PERU                           0%              16    29  y_rate_len       
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]         6    29  y_rate_len       
0-3 months     ki1114097-CONTENT       PERU                           >5%              7    29  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   231  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        88   231  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             75   231  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0%             191   208  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   208  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   208  y_rate_len       
3-6 months     ki0047075b-MAL-ED       INDIA                          0%              49   230  y_rate_len       
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   230  y_rate_len       
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%             59   230  y_rate_len       
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%              78   233  y_rate_len       
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   233  y_rate_len       
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%             80   233  y_rate_len       
3-6 months     ki0047075b-MAL-ED       PERU                           0%              66   267  y_rate_len       
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        86   267  y_rate_len       
3-6 months     ki0047075b-MAL-ED       PERU                           >5%            115   267  y_rate_len       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             182   243  y_rate_len       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        53   243  y_rate_len       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   243  y_rate_len       
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             101   239  y_rate_len       
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   239  y_rate_len       
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   239  y_rate_len       
3-6 months     ki1000109-EE            PAKISTAN                       0%             248   280  y_rate_len       
3-6 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        30   280  y_rate_len       
3-6 months     ki1000109-EE            PAKISTAN                       >5%              2   280  y_rate_len       
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%             124   523  y_rate_len       
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       164   523  y_rate_len       
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            235   523  y_rate_len       
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%             155   598  y_rate_len       
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       245   598  y_rate_len       
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            198   598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             331   695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       164   695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            200   695  y_rate_len       
3-6 months     ki1114097-CMIN          BANGLADESH                     0%              60   185  y_rate_len       
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        46   185  y_rate_len       
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%             79   185  y_rate_len       
3-6 months     ki1114097-CONTENT       PERU                           0%             115   214  y_rate_len       
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214  y_rate_len       
3-6 months     ki1114097-CONTENT       PERU                           >5%             56   214  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   224  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   224  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             73   224  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0%             181   198  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   198  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   198  y_rate_len       
6-9 months     ki0047075b-MAL-ED       INDIA                          0%              49   230  y_rate_len       
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   230  y_rate_len       
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%             59   230  y_rate_len       
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%              76   230  y_rate_len       
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230  y_rate_len       
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%             78   230  y_rate_len       
6-9 months     ki0047075b-MAL-ED       PERU                           0%              61   245  y_rate_len       
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        79   245  y_rate_len       
6-9 months     ki0047075b-MAL-ED       PERU                           >5%            105   245  y_rate_len       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   231  y_rate_len       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   231  y_rate_len       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   231  y_rate_len       
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   225  y_rate_len       
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        90   225  y_rate_len       
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   225  y_rate_len       
6-9 months     ki1000109-EE            PAKISTAN                       0%             274   304  y_rate_len       
6-9 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        28   304  y_rate_len       
6-9 months     ki1000109-EE            PAKISTAN                       >5%              2   304  y_rate_len       
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%             120   498  y_rate_len       
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       156   498  y_rate_len       
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            222   498  y_rate_len       
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%             145   565  y_rate_len       
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       231   565  y_rate_len       
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            189   565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             332   688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       160   688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            196   688  y_rate_len       
6-9 months     ki1114097-CMIN          BANGLADESH                     0%              56   177  y_rate_len       
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        41   177  y_rate_len       
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%             80   177  y_rate_len       
6-9 months     ki1114097-CONTENT       PERU                           0%             115   214  y_rate_len       
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214  y_rate_len       
6-9 months     ki1114097-CONTENT       PERU                           >5%             56   214  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%              67   225  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        86   225  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             72   225  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0%             177   194  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   194  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   194  y_rate_len       
9-12 months    ki0047075b-MAL-ED       INDIA                          0%              46   227  y_rate_len       
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       123   227  y_rate_len       
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%             58   227  y_rate_len       
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%              76   229  y_rate_len       
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   229  y_rate_len       
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%             77   229  y_rate_len       
9-12 months    ki0047075b-MAL-ED       PERU                           0%              58   235  y_rate_len       
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        77   235  y_rate_len       
9-12 months    ki0047075b-MAL-ED       PERU                           >5%            100   235  y_rate_len       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             179   233  y_rate_len       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   233  y_rate_len       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   233  y_rate_len       
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   224  y_rate_len       
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        87   224  y_rate_len       
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   224  y_rate_len       
9-12 months    ki1000109-EE            PAKISTAN                       0%             296   326  y_rate_len       
9-12 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        28   326  y_rate_len       
9-12 months    ki1000109-EE            PAKISTAN                       >5%              2   326  y_rate_len       
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%             118   482  y_rate_len       
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       150   482  y_rate_len       
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            214   482  y_rate_len       
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%             148   566  y_rate_len       
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       226   566  y_rate_len       
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            192   566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             330   674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       155   674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            189   674  y_rate_len       
9-12 months    ki1114097-CMIN          BANGLADESH                     0%              49   160  y_rate_len       
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   160  y_rate_len       
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%             75   160  y_rate_len       
9-12 months    ki1114097-CONTENT       PERU                           0%             115   212  y_rate_len       
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]        41   212  y_rate_len       
9-12 months    ki1114097-CONTENT       PERU                           >5%             56   212  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   212  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        84   212  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0%             167   184  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   184  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   184  y_rate_len       
12-15 months   ki0047075b-MAL-ED       INDIA                          0%              46   226  y_rate_len       
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       123   226  y_rate_len       
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%             57   226  y_rate_len       
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%              77   230  y_rate_len       
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230  y_rate_len       
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%             77   230  y_rate_len       
12-15 months   ki0047075b-MAL-ED       PERU                           0%              57   224  y_rate_len       
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        69   224  y_rate_len       
12-15 months   ki0047075b-MAL-ED       PERU                           >5%             98   224  y_rate_len       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             173   228  y_rate_len       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   228  y_rate_len       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   228  y_rate_len       
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              97   226  y_rate_len       
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        86   226  y_rate_len       
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             43   226  y_rate_len       
12-15 months   ki1000109-EE            PAKISTAN                       0%             269   297  y_rate_len       
12-15 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        26   297  y_rate_len       
12-15 months   ki1000109-EE            PAKISTAN                       >5%              2   297  y_rate_len       
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%             114   461  y_rate_len       
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       145   461  y_rate_len       
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            202   461  y_rate_len       
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%             139   532  y_rate_len       
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       212   532  y_rate_len       
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            181   532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             324   660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       147   660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            189   660  y_rate_len       
12-15 months   ki1114097-CMIN          BANGLADESH                     0%              54   160  y_rate_len       
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   160  y_rate_len       
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%             70   160  y_rate_len       
12-15 months   ki1114097-CONTENT       PERU                           0%             106   199  y_rate_len       
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]        39   199  y_rate_len       
12-15 months   ki1114097-CONTENT       PERU                           >5%             54   199  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   212  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        84   212  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0%             159   175  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        14   175  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   175  y_rate_len       
15-18 months   ki0047075b-MAL-ED       INDIA                          0%              48   226  y_rate_len       
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226  y_rate_len       
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226  y_rate_len       
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%              75   227  y_rate_len       
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   227  y_rate_len       
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227  y_rate_len       
15-18 months   ki0047075b-MAL-ED       PERU                           0%              54   213  y_rate_len       
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        67   213  y_rate_len       
15-18 months   ki0047075b-MAL-ED       PERU                           >5%             92   213  y_rate_len       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             171   225  y_rate_len       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        45   225  y_rate_len       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   225  y_rate_len       
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              93   217  y_rate_len       
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   217  y_rate_len       
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   217  y_rate_len       
15-18 months   ki1000109-EE            PAKISTAN                       0%             251   278  y_rate_len       
15-18 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        25   278  y_rate_len       
15-18 months   ki1000109-EE            PAKISTAN                       >5%              2   278  y_rate_len       
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%             112   449  y_rate_len       
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       138   449  y_rate_len       
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            199   449  y_rate_len       
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%             143   528  y_rate_len       
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       206   528  y_rate_len       
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            179   528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             304   604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       131   604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            169   604  y_rate_len       
15-18 months   ki1114097-CMIN          BANGLADESH                     0%              59   163  y_rate_len       
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   163  y_rate_len       
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%             64   163  y_rate_len       
15-18 months   ki1114097-CONTENT       PERU                           0%              98   189  y_rate_len       
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]        38   189  y_rate_len       
15-18 months   ki1114097-CONTENT       PERU                           >5%             53   189  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   209  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        82   209  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             64   209  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0%             152   167  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   167  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   167  y_rate_len       
18-21 months   ki0047075b-MAL-ED       INDIA                          0%              48   226  y_rate_len       
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226  y_rate_len       
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226  y_rate_len       
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%              75   227  y_rate_len       
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   227  y_rate_len       
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227  y_rate_len       
18-21 months   ki0047075b-MAL-ED       PERU                           0%              54   202  y_rate_len       
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        65   202  y_rate_len       
18-21 months   ki0047075b-MAL-ED       PERU                           >5%             83   202  y_rate_len       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             174   233  y_rate_len       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   233  y_rate_len       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   233  y_rate_len       
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              86   204  y_rate_len       
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        81   204  y_rate_len       
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             37   204  y_rate_len       
18-21 months   ki1000109-EE            PAKISTAN                       0%             229   254  y_rate_len       
18-21 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        23   254  y_rate_len       
18-21 months   ki1000109-EE            PAKISTAN                       >5%              2   254  y_rate_len       
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   422  y_rate_len       
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   422  y_rate_len       
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            193   422  y_rate_len       
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%             143   541  y_rate_len       
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       218   541  y_rate_len       
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            180   541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             289   546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       112   546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            145   546  y_rate_len       
18-21 months   ki1114097-CMIN          BANGLADESH                     0%              52   165  y_rate_len       
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   165  y_rate_len       
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%             73   165  y_rate_len       
18-21 months   ki1114097-CONTENT       PERU                           0%              94   183  y_rate_len       
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]        38   183  y_rate_len       
18-21 months   ki1114097-CONTENT       PERU                           >5%             51   183  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   207  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        79   207  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             64   207  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0%             151   165  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   165  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   165  y_rate_len       
21-24 months   ki0047075b-MAL-ED       INDIA                          0%              48   226  y_rate_len       
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226  y_rate_len       
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226  y_rate_len       
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%              76   227  y_rate_len       
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   227  y_rate_len       
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227  y_rate_len       
21-24 months   ki0047075b-MAL-ED       PERU                           0%              49   189  y_rate_len       
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        63   189  y_rate_len       
21-24 months   ki0047075b-MAL-ED       PERU                           >5%             77   189  y_rate_len       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             175   235  y_rate_len       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        51   235  y_rate_len       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   235  y_rate_len       
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              86   204  y_rate_len       
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        80   204  y_rate_len       
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   204  y_rate_len       
21-24 months   ki1000109-EE            PAKISTAN                       0%              97   106  y_rate_len       
21-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]         8   106  y_rate_len       
21-24 months   ki1000109-EE            PAKISTAN                       >5%              1   106  y_rate_len       
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   411  y_rate_len       
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       124   411  y_rate_len       
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            185   411  y_rate_len       
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             118   471  y_rate_len       
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       190   471  y_rate_len       
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            163   471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             271   490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]        98   490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            121   490  y_rate_len       
21-24 months   ki1114097-CMIN          BANGLADESH                     0%              47   133  y_rate_len       
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        30   133  y_rate_len       
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%             56   133  y_rate_len       
21-24 months   ki1114097-CONTENT       PERU                           0%              23    38  y_rate_len       
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]         7    38  y_rate_len       
21-24 months   ki1114097-CONTENT       PERU                           >5%              8    38  y_rate_len       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/a3fb046b-c103-4328-843a-8c2e64291967/703e6599-0e59-4ba8-933c-34f3f213f5af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a3fb046b-c103-4328-843a-8c2e64291967/703e6599-0e59-4ba8-933c-34f3f213f5af/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a3fb046b-c103-4328-843a-8c2e64291967/703e6599-0e59-4ba8-933c-34f3f213f5af/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                3.3076999   3.1913895   3.4240102
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                3.3443725   3.2273725   3.4613724
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                3.3491280   3.2447155   3.4535404
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                3.5443218   3.2487918   3.8398518
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                3.3606490   3.2570295   3.4642686
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                3.1216140   2.9143001   3.3289279
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                3.6313069   3.4514324   3.8111815
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                3.6484151   3.4916965   3.8051337
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                3.5526830   3.4074285   3.6979376
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                3.0369661   2.9208584   3.1530737
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                2.9995234   2.8673553   3.1316915
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                3.1008996   2.9987643   3.2030348
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                3.1224953   3.0128650   3.2321256
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                3.3286464   3.1134993   3.5437935
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                3.5778345   3.0967818   4.0588873
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                3.3014230   3.1849222   3.4179238
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                3.2808898   3.1485731   3.4132065
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                3.2872787   3.1197646   3.4547927
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                3.0456293   2.9455153   3.1457433
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                3.1242146   3.0381132   3.2103160
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                3.1356002   3.0551751   3.2160254
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                3.2599515   3.1881856   3.3317173
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                3.2834099   3.2272621   3.3395577
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                3.2311145   3.1645145   3.2977145
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                3.1026978   3.0558696   3.1495260
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                3.1504643   3.0645816   3.2363471
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                3.1491159   3.0734438   3.2247880
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                3.3801213   3.1629704   3.5972721
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                3.4847982   3.2485662   3.7210301
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                3.3192787   3.0248770   3.6136803
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                3.6473680   3.3611984   3.9335377
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                3.7655246   3.4862186   4.0448306
0-3 months     ki1114097-CONTENT       PERU                           >5%                  NA                3.5233247   3.2884390   3.7582104
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                1.9517123   1.8504662   2.0529584
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.9404117   1.8632865   2.0175368
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                1.8967976   1.7973477   1.9962475
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                1.9863901   1.8273060   2.1454742
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                1.8973846   1.8151859   1.9795834
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.8579956   1.7321519   1.9838393
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                1.9798585   1.8867630   2.0729539
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                2.0149132   1.9142175   2.1156088
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                1.9065992   1.8070033   2.0061952
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                1.9466893   1.8257801   2.0675985
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                2.0462694   1.9248949   2.1676440
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                2.0368926   1.9332743   2.1405109
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                1.9854255   1.8909681   2.0798829
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                1.9538505   1.7821119   2.1255891
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.7390054   1.4875737   1.9904371
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.7959402   1.6854952   1.9063851
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.8127884   1.7113843   1.9141926
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.9136895   1.7459915   2.0813875
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                1.8452796   1.7418061   1.9487530
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                1.8388325   1.7610552   1.9166098
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                1.8214487   1.7460146   1.8968827
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                1.9544626   1.8879518   2.0209733
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.9600388   1.9073708   2.0127069
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                1.9870847   1.9272923   2.0468772
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                2.0496464   1.9954342   2.1038586
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.9230829   1.8451958   2.0009700
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                2.0089168   1.9401966   2.0776371
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                1.9645492   1.8210952   2.1080033
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                1.9435182   1.7996088   2.0874276
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                1.9719800   1.8748398   2.0691201
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                2.0422309   1.9766055   2.1078562
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                2.1592682   2.0531187   2.2654176
3-6 months     ki1114097-CONTENT       PERU                           >5%                  NA                2.1274873   2.0263839   2.2285906
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                1.1933612   1.1262240   1.2604984
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.2362668   1.1650734   1.3074601
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                1.3167768   1.2447581   1.3887956
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                1.2275957   1.0830792   1.3721122
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                1.2629333   1.2005901   1.3252765
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.2402530   1.1324154   1.3480907
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                1.3395958   1.2641333   1.4150583
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                1.3596833   1.2829640   1.4364026
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                1.3746700   1.2937194   1.4556206
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   NA                1.4036050   1.2984144   1.5087957
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                1.3143601   1.2269089   1.4018112
6-9 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                1.2736203   1.1852949   1.3619457
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                1.4094407   1.3356441   1.4832372
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                1.2565661   1.1116229   1.4015094
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.3496020   1.2288905   1.4703135
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.1724613   1.0556572   1.2892653
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.2327712   1.0922876   1.3732548
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.1682965   1.0189921   1.3176010
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                1.3300883   1.2439573   1.4162192
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                1.3049448   1.2242051   1.3856845
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                1.1791208   1.1238793   1.2343623
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                1.2761454   1.2251046   1.3271863
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.2860218   1.2448751   1.3271685
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                1.2821108   1.2416957   1.3225260
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                1.3021640   1.2598488   1.3444793
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.3221359   1.2589481   1.3853237
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                1.3716968   1.3128600   1.4305336
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                1.2418012   1.1341289   1.3494736
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                1.3615061   1.2113334   1.5116788
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                1.2355025   1.1543067   1.3166982
6-9 months     ki1114097-CONTENT       PERU                           0%                   NA                1.3771799   1.3145627   1.4397971
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                1.3342394   1.2170507   1.4514280
6-9 months     ki1114097-CONTENT       PERU                           >5%                  NA                1.4795515   1.3899529   1.5691501
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.9741341   0.8915230   1.0567451
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.0210405   0.9599734   1.0821076
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.9592492   0.8927134   1.0257851
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8889615   0.8043671   0.9735558
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.9868468   0.9381837   1.0355098
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.0460346   0.9582063   1.1338629
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                1.0758354   1.0021168   1.1495539
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                1.1298182   1.0586630   1.2009733
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                1.0663253   0.9967551   1.1358956
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                1.0756787   0.9773809   1.1739765
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                1.0388735   0.9567877   1.1209593
9-12 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                1.1655777   1.0820465   1.2491088
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                1.0217910   0.9478057   1.0957762
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.9982666   0.8462483   1.1502848
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9396342   0.7020528   1.1772157
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8697476   0.7604917   0.9790034
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7399470   0.5912301   0.8886638
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8749711   0.6844792   1.0654630
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                1.0949979   1.0298829   1.1601129
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                1.0720334   1.0084077   1.1356591
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                1.0929424   1.0364453   1.1494394
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                1.0395541   0.9838154   1.0952928
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.0518771   1.0099203   1.0938340
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                1.0587895   1.0134941   1.1040850
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                1.1243184   1.0880496   1.1605872
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.1420131   1.0832119   1.2008142
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                1.1095492   1.0595550   1.1595434
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.9832225   0.8889269   1.0775182
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.9943024   0.8354844   1.1531204
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.9411802   0.8565568   1.0258035
9-12 months    ki1114097-CONTENT       PERU                           0%                   NA                1.2152706   1.1624439   1.2680972
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                1.2211878   1.1308938   1.3114818
9-12 months    ki1114097-CONTENT       PERU                           >5%                  NA                1.2238603   1.1381706   1.3095500
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.9264307   0.8520856   1.0007758
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8703197   0.8068820   0.9337574
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.9734550   0.8954074   1.0515026
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8799620   0.7836611   0.9762630
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.8697206   0.8169115   0.9225297
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.0047005   0.9342312   1.0751698
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.9189050   0.8456327   0.9921772
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.9703553   0.9079449   1.0327657
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.9636786   0.8927210   1.0346363
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.8747403   0.7875713   0.9619093
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.8999772   0.8104534   0.9895011
12-15 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.8913496   0.8210724   0.9616267
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.9140520   0.8530018   0.9751021
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.9171654   0.7537877   1.0805431
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.0394347   0.8124921   1.2663772
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8565604   0.7655113   0.9476094
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.9010802   0.7797015   1.0224590
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7682353   0.6468951   0.8895755
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.6859668   0.6191071   0.7528264
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.7168845   0.6544774   0.7792916
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.7502823   0.6688886   0.8316759
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.9655391   0.9123211   1.0187570
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.9427440   0.9007532   0.9847347
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.9703209   0.9272221   1.0134197
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.9673079   0.9336479   1.0009679
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.9531401   0.9010140   1.0052662
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                1.0009653   0.9508334   1.0510972
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.8406790   0.7332319   0.9481261
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.8562666   0.7409023   0.9716309
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.9036264   0.8249832   0.9822696
12-15 months   ki1114097-CONTENT       PERU                           0%                   NA                0.9366960   0.8756662   0.9977257
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.9306416   0.8478579   1.0134253
12-15 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.9300566   0.8468492   1.0132639
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.8296357   0.7600584   0.8992130
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8428986   0.7826987   0.9030986
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.7932925   0.7266075   0.8599774
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8448912   0.7607284   0.9290540
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.8471336   0.7962475   0.8980197
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.8169748   0.7510114   0.8829382
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.8764062   0.7978344   0.9549781
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.8016665   0.7271679   0.8761652
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.8503726   0.7850726   0.9156726
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.8261318   0.7413694   0.9108942
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.8191260   0.7403202   0.8979318
15-18 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.8961265   0.8313875   0.9608654
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.8888941   0.8274101   0.9503782
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.8740729   0.7531060   0.9950398
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9194027   0.8773385   0.9614668
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.6341534   0.5405512   0.7277555
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.6925722   0.5949460   0.7901984
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8064776   0.6476919   0.9652632
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.8029709   0.7202339   0.8857079
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.7516686   0.6731740   0.8301632
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.7708864   0.7136706   0.8281021
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.8640132   0.8174594   0.9105670
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.8654306   0.8262429   0.9046183
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.8358514   0.7935162   0.8781866
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.9178915   0.8850541   0.9507289
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.9525736   0.9030500   1.0020972
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.8892334   0.8471150   0.9313519
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.7302497   0.6424320   0.8180675
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.6939485   0.5739881   0.8139090
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7897119   0.7120235   0.8674004
15-18 months   ki1114097-CONTENT       PERU                           0%                   NA                0.9860006   0.9206639   1.0513372
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                1.0454204   0.9502178   1.1406230
15-18 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.9752396   0.8899330   1.0605461
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.8033433   0.7380823   0.8686044
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.7815932   0.7235580   0.8396284
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.8709946   0.8166806   0.9253085
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8841750   0.8017721   0.9665779
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.8846983   0.8363946   0.9330020
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.8635270   0.7947143   0.9323398
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.8288524   0.7601384   0.8975664
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.8525277   0.7808924   0.9241630
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.7977948   0.7367250   0.8588647
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.8231308   0.7284475   0.9178140
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.8411097   0.7538548   0.9283646
18-21 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.8555247   0.7893569   0.9216924
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.7874877   0.7214880   0.8534875
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.7424027   0.6311935   0.8536119
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9005741   0.6804818   1.1206663
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7945549   0.6848428   0.9042669
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7185728   0.6227877   0.8143580
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.6283288   0.4487630   0.8078947
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.7098134   0.6443276   0.7752993
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.7126031   0.6440690   0.7811371
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.7452873   0.6901042   0.8004705
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.8597980   0.8146284   0.9049675
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.8102214   0.7711946   0.8492482
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.8535997   0.8130204   0.8941791
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.8033898   0.7710579   0.8357217
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.7940933   0.7420525   0.8461341
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.7884301   0.7410154   0.8358448
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.8217740   0.7246970   0.9188510
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7716443   0.6657553   0.8775333
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7768008   0.7089924   0.8446092
18-21 months   ki1114097-CONTENT       PERU                           0%                   NA                0.9141550   0.8491670   0.9791430
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.9510372   0.8462224   1.0558521
18-21 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.9311870   0.8630921   0.9992818
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.8313670   0.7670396   0.8956944
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.7597155   0.7071181   0.8123129
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.7286888   0.6608316   0.7965459
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8056259   0.7428340   0.8684178
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.8425537   0.7958223   0.8892851
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.8055109   0.7493948   0.8616270
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.7277467   0.6487102   0.8067832
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.7845152   0.7164538   0.8525766
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.7965057   0.7318574   0.8611541
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.7107026   0.6319869   0.7894184
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.7944280   0.7064332   0.8824229
21-24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.7982074   0.7214259   0.8749889
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.8391470   0.7774631   0.9008310
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.8469701   0.7439850   0.9499551
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.8039015   0.6399862   0.9678168
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7282179   0.6285529   0.8278830
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7283950   0.6135437   0.8432463
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.6646152   0.5345426   0.7946878
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.6776406   0.6165158   0.7387654
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.7287353   0.6674747   0.7899959
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.7326037   0.6754440   0.7897633
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.7840458   0.7324911   0.8356004
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.7540228   0.7130745   0.7949711
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.7625234   0.7200023   0.8050446
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.8079981   0.7753775   0.8406187
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.7934700   0.7390718   0.8478683
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.7763959   0.7272631   0.8255287
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.8102787   0.7045520   0.9160054
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7013570   0.5720810   0.8306329
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7150228   0.6311744   0.7988712
21-24 months   ki1114097-CONTENT       PERU                           0%                   NA                0.9458028   0.8316305   1.0599751
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.8407072   0.6897053   0.9917090
21-24 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.9868314   0.8583863   1.1152765


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                3.4261247   3.2881156   3.5641338
0-3 months     ki1114097-CONTENT       PERU                           NA                   NA                3.6418727   3.4619177   3.8218277
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                1.2658739   1.2051613   1.3265866
6-9 months     ki1114097-CONTENT       PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.9627471   0.9031556   1.0223387
9-12 months    ki1114097-CONTENT       PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.8739530   0.8186981   0.9292079
12-15 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7480083   0.6959380   0.8000786
15-18 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.8028550   0.7540631   0.8516469
18-21 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7554929   0.6980149   0.8129708
21-24 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9350807   0.8543561   1.0158053


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0366726   -0.1283532    0.2016984
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0414281   -0.1151870    0.1980432
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.1836728   -0.4966236    0.1292780
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.4227078   -0.7838435   -0.0615721
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0171082   -0.2196511    0.2538675
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0786239   -0.3094690    0.1522213
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0374426   -0.2139234    0.1390382
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0639335   -0.0914640    0.2193311
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.2061511   -0.0353175    0.4476196
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.4553392   -0.0380476    0.9487261
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0205332   -0.1982635    0.1571972
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0141443   -0.2190444    0.1907557
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0785853   -0.0509691    0.2081397
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0899709   -0.0357803    0.2157221
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0234584   -0.0671979    0.1141148
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0288370   -0.1264911    0.0688172
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0477666   -0.0501274    0.1456605
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0464181   -0.0426827    0.1355190
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.1046769   -0.2185806    0.4279345
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0608426   -0.4289360    0.3072508
0-3 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.1181566   -0.2817245    0.5180377
0-3 months     ki1114097-CONTENT       PERU                           >5%                  0%                -0.1240433   -0.4942654    0.2461788
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0113006   -0.1396235    0.1170222
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0549147   -0.1991737    0.0893444
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0890055   -0.2691254    0.0911145
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.1283945   -0.3302768    0.0734878
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0350547   -0.1023982    0.1725076
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0732592   -0.2098595    0.0633410
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0995801   -0.0718129    0.2709732
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0902033   -0.0693659    0.2497725
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0315750   -0.2275759    0.1644259
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.2464201   -0.5150092    0.0221690
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0168483   -0.1331635    0.1668601
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1177493   -0.0829344    0.3184330
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0064470   -0.1357819    0.1228878
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0238309   -0.1518541    0.1041923
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0055763   -0.0792839    0.0904364
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0326222   -0.0568658    0.1221102
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1265634   -0.2215984   -0.0315285
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0407295   -0.1278649    0.0464058
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0210311   -0.2248177    0.1827556
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0074308   -0.1655416    0.1804032
3-6 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.1170373   -0.0079871    0.2420618
3-6 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.0852564   -0.0352528    0.2057656
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0429056   -0.0553252    0.1411363
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.1234156    0.0235280    0.2233033
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0353376   -0.1226083    0.1932835
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0126573   -0.1682152    0.1935298
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0200875   -0.0876748    0.1278498
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0350742   -0.0756401    0.1457885
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0892450   -0.2260222    0.0475323
6-9 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.1299847   -0.2678323    0.0078629
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.1528745   -0.3155229    0.0097738
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0598387   -0.2013208    0.0816434
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0603099   -0.1254754    0.2460953
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0041647   -0.1954970    0.1871675
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0251435   -0.1433597    0.0930728
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.1509675   -0.2534824   -0.0484525
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0098763   -0.0555407    0.0752934
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0059654   -0.0588852    0.0708160
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0199719   -0.0564330    0.0963768
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0695328   -0.0030429    0.1421085
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.1197049   -0.0656135    0.3050232
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0062987   -0.1414725    0.1288750
6-9 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0429405   -0.1759756    0.0900946
6-9 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.1023716   -0.0070518    0.2117949
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0469064   -0.0562095    0.1500224
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0148849   -0.1212174    0.0914477
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0978853   -0.0009320    0.1967026
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.1570731    0.0352846    0.2788617
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0539828   -0.0486401    0.1566057
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0095100   -0.1109918    0.0919717
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0368052   -0.1652773    0.0916669
9-12 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0898990   -0.0390864    0.2188843
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0235244   -0.1925905    0.1455417
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0821567   -0.3309915    0.1666781
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1298006   -0.3143279    0.0547267
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0052235   -0.2146324    0.2250795
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0229645   -0.1135790    0.0676500
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0020555   -0.0880672    0.0839561
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0123231   -0.0575046    0.0821507
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0192354   -0.0526301    0.0911009
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0176947   -0.0514076    0.0867969
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0147692   -0.0765132    0.0469749
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0110799   -0.1738848    0.1960445
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0420424   -0.1692979    0.0852132
9-12 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0059172   -0.0988334    0.1106679
9-12 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.0085897   -0.0924205    0.1095999
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0561110   -0.1540593    0.0418373
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0470242   -0.0611122    0.1551607
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0102415   -0.1211386    0.1006557
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.1247385    0.0052060    0.2442709
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0514503   -0.0453684    0.1482690
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0447737   -0.0576066    0.1471540
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0252370   -0.1001032    0.1505771
12-15 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0166093   -0.0954287    0.1286472
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0031135   -0.1712981    0.1775250
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1253827   -0.1096280    0.3603934
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0445198   -0.1074253    0.1964650
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0883251   -0.2402249    0.0635747
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0309177   -0.0611299    0.1229654
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0643155   -0.0417140    0.1703450
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0227951   -0.0906111    0.0450209
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0047818   -0.0637142    0.0732779
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0141678   -0.0761790    0.0478434
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0336574   -0.0265762    0.0938909
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0155877   -0.1422236    0.1733989
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0629475   -0.0704774    0.1963724
12-15 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0060543   -0.1091354    0.0970267
12-15 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0066394   -0.1098475    0.0965688
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0132629   -0.0792974    0.1058232
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0363433   -0.1328043    0.0601178
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0022424   -0.0964200    0.1009048
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0279164   -0.1349666    0.0791338
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0747397   -0.1834295    0.0339500
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0260336   -0.1287441    0.0766769
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0070058   -0.1227999    0.1087883
15-18 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0699946   -0.0367782    0.1767674
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0148212   -0.1505167    0.1208744
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0305085   -0.0439876    0.1050047
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0584188   -0.0778555    0.1946932
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1723242   -0.0130374    0.3576858
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0513023   -0.1656968    0.0630922
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0320845   -0.1330267    0.0688577
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0014174   -0.0595300    0.0623649
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0281618   -0.0913213    0.0349977
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0346821   -0.0247629    0.0941272
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0286581   -0.0819916    0.0246755
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0363012   -0.1853616    0.1127592
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0594622   -0.0579605    0.1768849
15-18 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0594198   -0.0555888    0.1744284
15-18 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0107610   -0.1185066    0.0969846
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0217502   -0.1090864    0.0655861
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0676512   -0.0173269    0.1526293
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0005233   -0.0949448    0.0959913
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0206480   -0.1280880    0.0867920
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0236753   -0.0756445    0.1229952
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0310575   -0.1235266    0.0614115
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0179789   -0.1113869    0.1473447
18-21 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0323939   -0.0842239    0.1490116
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0450851   -0.1744043    0.0842341
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1130863   -0.1166887    0.3428613
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0759820   -0.2217142    0.0697501
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1662260   -0.3773229    0.0448709
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0027897   -0.0918122    0.0973915
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0354739   -0.0500217    0.1209696
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0495766   -0.1092124    0.0100593
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0061982   -0.0668540    0.0544575
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0092965   -0.0703158    0.0517227
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0149597   -0.0721003    0.0421809
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0501297   -0.1940727    0.0938134
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0449732   -0.1639435    0.0739971
18-21 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0368823   -0.0872580    0.1610226
18-21 months   ki1114097-CONTENT       PERU                           >5%                  0%                 0.0170320   -0.0777268    0.1117908
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0716515   -0.1548229    0.0115199
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1026782   -0.1964135   -0.0089429
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0369278   -0.0421976    0.1160532
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0001150   -0.0851103    0.0848804
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0567685   -0.0475205    0.1610575
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0687591   -0.0335202    0.1710383
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0837254   -0.0350775    0.2025283
21-24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0875047   -0.0226407    0.1976502
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0078230   -0.1122221    0.1278682
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0352455   -0.2103830    0.1398919
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0001770   -0.1524672    0.1528212
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0636027   -0.2275467    0.1003413
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0510947   -0.0350586    0.1372480
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0549630   -0.0285164    0.1384425
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0300230   -0.0959285    0.0358826
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0215223   -0.0883938    0.0453491
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0145281   -0.0780198    0.0489637
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0316022   -0.0906188    0.0274144
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.1089217   -0.2763933    0.0585498
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0952559   -0.2305906    0.0400789
21-24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.1050956   -0.2944019    0.0842107
21-24 months   ki1114097-CONTENT       PERU                           >5%                  0%                 0.0410286   -0.1308244    0.2128816


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0314232   -0.0692068    0.1320533
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.1960968   -0.4447555    0.0525619
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0078894   -0.1440818    0.1283030
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0149876   -0.0925324    0.1225076
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0592759    0.0027500    0.1158017
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0369238   -0.1278185    0.0539708
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0643823   -0.0230325    0.1517971
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0022704   -0.0632262    0.0586853
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0265471   -0.0122309    0.0653251
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0460034   -0.1302835    0.2222904
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                -0.0054953   -0.1601307    0.1491401
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0240716   -0.1094030    0.0612599
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0940921   -0.2315607    0.0433765
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0153984   -0.0935020    0.0627052
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0689928   -0.0411494    0.1791350
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0149993   -0.0604463    0.0304476
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0341500   -0.0470750    0.1153751
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0125881   -0.1027178    0.0775417
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0112832   -0.0460863    0.0686527
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0438491   -0.0826021   -0.0050961
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0167015   -0.1293628    0.0959597
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0419532   -0.0031024    0.0870089
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0546839   -0.0046135    0.1139813
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0186279   -0.1042165    0.1414723
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0175450   -0.0453537    0.0804438
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0836085   -0.1767516    0.0095346
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0325149   -0.0673043    0.0022745
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0182943   -0.0747743    0.1113629
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0744932   -0.1493087    0.0003222
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0062730   -0.0372461    0.0497921
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0261055   -0.0055543    0.0577652
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0240727   -0.0654856    0.1136311
6-9 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0202437   -0.0242404    0.0647278
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0155105   -0.0513283    0.0823493
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0925088    0.0157457    0.1692718
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0134018   -0.0461018    0.0729054
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0228337   -0.0644325    0.1100999
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0074651   -0.0430462    0.0281159
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0566399   -0.1484165    0.0351367
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0064170   -0.0649548    0.0521208
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0104209   -0.0366677    0.0575095
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0008439   -0.0277284    0.0260406
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0204754   -0.1047533    0.0638026
9-12 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.0103938   -0.0479635    0.0271760
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0123303   -0.0763312    0.0516706
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0305316   -0.0553145    0.1163777
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0325075   -0.0257446    0.0907595
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0169877   -0.0604642    0.0944396
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0055775   -0.0317541    0.0429091
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0002046   -0.0735112    0.0731021
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0381955   -0.0286382    0.1050292
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0057890   -0.0510563    0.0394783
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0038316   -0.0213689    0.0290320
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0332740   -0.0506722    0.1172203
12-15 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0075516   -0.0471942    0.0320910
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0055132   -0.0639585    0.0529321
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0005028   -0.0743109    0.0733053
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0355701   -0.0980690    0.0269289
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0272989   -0.0461615    0.1007593
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0017439   -0.0301558    0.0266680
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0525946   -0.0196807    0.1248699
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0301990   -0.1016002    0.0412023
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0079134   -0.0479079    0.0320811
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0001747   -0.0230793    0.0227299
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0177585   -0.0528422    0.0883593
15-18 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0000226   -0.0441519    0.0441970
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0100414   -0.0441815    0.0642643
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0054649   -0.0778030    0.0668731
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0105726   -0.0663898    0.0452445
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0183131   -0.0619444    0.0985707
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0053068   -0.0359014    0.0252879
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0508510   -0.1313452    0.0296431
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0193334   -0.0404076    0.0790744
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0204603   -0.0596147    0.0186942
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0056143   -0.0273511    0.0161225
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0189190   -0.0978804    0.0600424
18-21 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0004788   -0.0420649    0.0430225
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0619488   -0.1157773   -0.0081202
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0199255   -0.0383396    0.0781905
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0556098   -0.0059333    0.1171529
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0503479   -0.0220341    0.1227300
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0003479   -0.0277227    0.0284186
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0092852   -0.0869910    0.0684206
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0395771   -0.0164882    0.0956425
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0209067   -0.0655477    0.0237342
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0086628   -0.0309928    0.0136673
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0547858   -0.1380509    0.0284792
21-24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0107221   -0.0721402    0.0506960
