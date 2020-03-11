---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country        cleanck    n_cell     n
----------  ---------------  -------------  --------  -------  ----
Birth       CMC-V-BCS-2002   INDIA          1              39    92
Birth       CMC-V-BCS-2002   INDIA          0              53    92
Birth       GMS-Nepal        NEPAL          1               9   621
Birth       GMS-Nepal        NEPAL          0             612   621
Birth       IRC              INDIA          1             218   378
Birth       IRC              INDIA          0             160   378
Birth       MAL-ED           PERU           1               1     2
Birth       MAL-ED           PERU           0               1     2
Birth       NIH-Crypto       BANGLADESH     1             345   561
Birth       NIH-Crypto       BANGLADESH     0             216   561
Birth       PROVIDE          BANGLADESH     1             438   539
Birth       PROVIDE          BANGLADESH     0             101   539
6 months    CMC-V-BCS-2002   INDIA          1             163   369
6 months    CMC-V-BCS-2002   INDIA          0             206   369
6 months    GMS-Nepal        NEPAL          1               8   505
6 months    GMS-Nepal        NEPAL          0             497   505
6 months    IRC              INDIA          1             230   398
6 months    IRC              INDIA          0             168   398
6 months    MAL-ED           SOUTH AFRICA   1               1     1
6 months    MAL-ED           SOUTH AFRICA   0               0     1
6 months    NIH-Crypto       BANGLADESH     1             329   545
6 months    NIH-Crypto       BANGLADESH     0             216   545
6 months    PROVIDE          BANGLADESH     1             498   604
6 months    PROVIDE          BANGLADESH     0             106   604
24 months   CMC-V-BCS-2002   INDIA          1             163   371
24 months   CMC-V-BCS-2002   INDIA          0             208   371
24 months   GMS-Nepal        NEPAL          1               5   435
24 months   GMS-Nepal        NEPAL          0             430   435
24 months   IRC              INDIA          1             231   400
24 months   IRC              INDIA          0             169   400
24 months   MAL-ED           SOUTH AFRICA   1               1     1
24 months   MAL-ED           SOUTH AFRICA   0               0     1
24 months   NIH-Crypto       BANGLADESH     1             199   410
24 months   NIH-Crypto       BANGLADESH     0             211   410
24 months   PROVIDE          BANGLADESH     1             479   578
24 months   PROVIDE          BANGLADESH     0              99   578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d1e4d85f-1131-41a7-bdae-c7c2480e73c8/93ed6093-646d-4b08-800b-dd3298f96ecc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        optimal              observed          -0.7387197   -1.0415276   -0.4359118
Birth       GMS-Nepal        NEPAL        optimal              observed          -0.9119516   -1.0833881   -0.7405152
Birth       IRC              INDIA        optimal              observed          -0.2761358   -0.5838228    0.0315513
Birth       NIH-Crypto       BANGLADESH   optimal              observed          -0.8820999   -1.0475587   -0.7166411
Birth       PROVIDE          BANGLADESH   optimal              observed          -0.8441563   -0.9439171   -0.7443955
6 months    CMC-V-BCS-2002   INDIA        optimal              observed          -1.1457752   -1.3486759   -0.9428745
6 months    GMS-Nepal        NEPAL        optimal              observed          -1.5845388   -1.7087703   -1.4603072
6 months    IRC              INDIA        optimal              observed          -1.1508405   -1.3357786   -0.9659024
6 months    NIH-Crypto       BANGLADESH   optimal              observed          -1.2059844   -1.4417079   -0.9702609
6 months    PROVIDE          BANGLADESH   optimal              observed          -1.0177907   -1.0989641   -0.9366172
24 months   CMC-V-BCS-2002   INDIA        optimal              observed          -2.2297832   -2.3746069   -2.0849596
24 months   GMS-Nepal        NEPAL        optimal              observed          -1.3902412   -1.5509564   -1.2295260
24 months   IRC              INDIA        optimal              observed          -1.6773007   -1.8070608   -1.5475406
24 months   NIH-Crypto       BANGLADESH   optimal              observed          -1.4533656   -1.6486864   -1.2580447
24 months   PROVIDE          BANGLADESH   optimal              observed          -1.5036742   -1.5917552   -1.4155931


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       GMS-Nepal        NEPAL        observed             observed          -1.0998712   -1.1839267   -1.0158156
Birth       IRC              INDIA        observed             observed          -0.3176455   -0.4788394   -0.1564516
Birth       NIH-Crypto       BANGLADESH   observed             observed          -0.8996078   -0.9825064   -0.8167093
Birth       PROVIDE          BANGLADESH   observed             observed          -0.8851020   -0.9601332   -0.8100709
6 months    CMC-V-BCS-2002   INDIA        observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    GMS-Nepal        NEPAL        observed             observed          -1.3650165   -1.4477401   -1.2822929
6 months    IRC              INDIA        observed             observed          -1.2373869   -1.3694835   -1.1052903
6 months    NIH-Crypto       BANGLADESH   observed             observed          -1.1482385   -1.2287866   -1.0676904
6 months    PROVIDE          BANGLADESH   observed             observed          -1.0916915   -1.1661176   -1.0172654
24 months   CMC-V-BCS-2002   INDIA        observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   GMS-Nepal        NEPAL        observed             observed          -1.8970805   -1.9859605   -1.8082004
24 months   IRC              INDIA        observed             observed          -1.8039875   -1.8980579   -1.7099171
24 months   NIH-Crypto       BANGLADESH   observed             observed          -1.3408537   -1.4302211   -1.2514862
24 months   PROVIDE          BANGLADESH   observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA        optimal              observed          -0.2224760   -0.4802345    0.0352825
Birth       GMS-Nepal        NEPAL        optimal              observed          -0.1879195   -0.3752781   -0.0005609
Birth       IRC              INDIA        optimal              observed          -0.0415097   -0.2814968    0.1984773
Birth       NIH-Crypto       BANGLADESH   optimal              observed          -0.0175079   -0.1622946    0.1272787
Birth       PROVIDE          BANGLADESH   optimal              observed          -0.0409458   -0.1032383    0.0213468
6 months    CMC-V-BCS-2002   INDIA        optimal              observed          -0.2776755   -0.4335601   -0.1217910
6 months    GMS-Nepal        NEPAL        optimal              observed           0.2195222    0.0756387    0.3634058
6 months    IRC              INDIA        optimal              observed          -0.0865464   -0.2032639    0.0301710
6 months    NIH-Crypto       BANGLADESH   optimal              observed           0.0577458   -0.1629625    0.2784542
6 months    PROVIDE          BANGLADESH   optimal              observed          -0.0739008   -0.1147453   -0.0330564
24 months   CMC-V-BCS-2002   INDIA        optimal              observed          -0.3290847   -0.4486760   -0.2094934
24 months   GMS-Nepal        NEPAL        optimal              observed          -0.5068392   -0.6878573   -0.3258212
24 months   IRC              INDIA        optimal              observed          -0.1266868   -0.2138080   -0.0395656
24 months   NIH-Crypto       BANGLADESH   optimal              observed           0.1125119   -0.0590251    0.2840489
24 months   PROVIDE          BANGLADESH   optimal              observed          -0.0987480   -0.1428188   -0.0546772
