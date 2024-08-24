.class public Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# static fields
.field public static final BARCODE:Ljava/lang/String; = "barcode"

.field public static final BARCODE_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.vision.barcode"

.field public static final CUSTOM_ICA:Ljava/lang/String; = "custom_ica"

.field public static final CUSTOM_ICA_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.vision.custom.ica"

.field public static final DEPRECATED_DYNAMITE_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.vision.dynamite"

.field public static final DOCSCAN_CROP_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_docscan_crop"

.field public static final DOCSCAN_DETECT_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_docscan_detect"

.field public static final DOCSCAN_ENHANCE_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_docscan_enhance"

.field public static final EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

.field public static final FACE:Ljava/lang/String; = "face"

.field public static final FACE_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.vision.face"

.field public static final FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_CUSTOM_ICA:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_DOCSCAN_CROP:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_DOCSCAN_DETECT:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_DOCSCAN_ENHANCE:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_FACE:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_ICA:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_IMAGE_CAPTION:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_IMAGE_QUALITY_AESTHETIC:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_IMAGE_QUALITY_TECHNICAL:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_LANGID:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_MLKIT_BARCODE_UI:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_NLCLASSIFIER:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR_CHINESE:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR_COMMON:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR_DEVANAGARI:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR_JAPANESE:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR_KOREAN:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_SMART_REPLY:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_TFLITE_DYNAMITE:Lcom/google/android/gms/common/Feature;

.field public static final ICA:Ljava/lang/String; = "ica"

.field public static final ICA_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.vision.ica"

.field public static final IMAGE_CAPTION_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_image_caption"

.field public static final IMAGE_QUALITY_AESTHETIC_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_quality_aesthetic"

.field public static final IMAGE_QUALITY_TECHNICAL_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_quality_technical"

.field public static final LANGID:Ljava/lang/String; = "langid"

.field public static final LANGID_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit.langid"

.field public static final MLKIT_BARCODE_UI:Ljava/lang/String; = "barcode_ui"

.field public static final NLCLASSIFIER:Ljava/lang/String; = "nlclassifier"

.field public static final NLCLASSIFIER_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit.nlclassifier"

.field public static final OCR:Ljava/lang/String; = "ocr"

.field public static final OCR_CHINESE_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_ocr_chinese"

.field public static final OCR_COMMON_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_ocr_common"

.field public static final OCR_DEVANAGARI_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_ocr_devanagari"

.field public static final OCR_JAPANESE_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_ocr_japanese"

.field public static final OCR_KOREAN_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_ocr_korean"

.field public static final OCR_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.vision.ocr"

.field public static final SMART_REPLY:Ljava/lang/String; = "smart_reply"

.field public static final SMART_REPLY_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.mlkit_smartreply"

.field public static final TFLITE_DYNAMITE:Ljava/lang/String; = "tflite_dynamite"

.field public static final TFLITE_DYNAMITE_MODULE_ID:Ljava/lang/String; = "com.google.android.gms.tflite_dynamite"

.field public static final zza:Lcom/google/android/gms/internal/mlkit_common/zzau;

.field public static final zzb:Lcom/google/android/gms/internal/mlkit_common/zzau;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    .line 1
    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-wide/16 v1, 0x1

    const-string v3, "vision.barcode"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "vision.custom.ica"

    .line 2
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_CUSTOM_ICA:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "vision.face"

    .line 3
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_FACE:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "vision.ica"

    .line 4
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_ICA:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "vision.ocr"

    .line 5
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "mlkit.ocr.chinese"

    .line 6
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_CHINESE:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "mlkit.ocr.common"

    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_COMMON:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "mlkit.ocr.devanagari"

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_DEVANAGARI:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "mlkit.ocr.japanese"

    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_JAPANESE:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "mlkit.ocr.korean"

    .line 10
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_KOREAN:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "mlkit.langid"

    .line 11
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_LANGID:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "mlkit.nlclassifier"

    .line 12
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_NLCLASSIFIER:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "tflite_dynamite"

    .line 13
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_TFLITE_DYNAMITE:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v4, "mlkit.barcode.ui"

    .line 14
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_MLKIT_BARCODE_UI:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v4, "mlkit.smartreply"

    .line 15
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_SMART_REPLY:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v4, "mlkit.image.caption"

    .line 16
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_IMAGE_CAPTION:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v4, "mlkit.docscan.detect"

    .line 17
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_DOCSCAN_DETECT:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v4, "mlkit.docscan.crop"

    .line 18
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_DOCSCAN_CROP:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v4, "mlkit.docscan.enhance"

    .line 19
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_DOCSCAN_ENHANCE:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v4, "mlkit.quality.aesthetic"

    .line 20
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_IMAGE_QUALITY_AESTHETIC:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v4, "mlkit.quality.technical"

    .line 21
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_IMAGE_QUALITY_TECHNICAL:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzat;-><init>()V

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

    const-string v2, "barcode"

    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_CUSTOM_ICA:Lcom/google/android/gms/common/Feature;

    const-string v2, "custom_ica"

    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_FACE:Lcom/google/android/gms/common/Feature;

    const-string v2, "face"

    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_ICA:Lcom/google/android/gms/common/Feature;

    const-string v2, "ica"

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR:Lcom/google/android/gms/common/Feature;

    const-string v2, "ocr"

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_LANGID:Lcom/google/android/gms/common/Feature;

    const-string v2, "langid"

    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_NLCLASSIFIER:Lcom/google/android/gms/common/Feature;

    const-string v2, "nlclassifier"

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_TFLITE_DYNAMITE:Lcom/google/android/gms/common/Feature;

    .line 29
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_MLKIT_BARCODE_UI:Lcom/google/android/gms/common/Feature;

    const-string v2, "barcode_ui"

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_SMART_REPLY:Lcom/google/android/gms/common/Feature;

    const-string v2, "smart_reply"

    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzau;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzau;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzat;-><init>()V

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

    const-string v2, "com.google.android.gms.vision.barcode"

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_CUSTOM_ICA:Lcom/google/android/gms/common/Feature;

    const-string v2, "com.google.android.gms.vision.custom.ica"

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_FACE:Lcom/google/android/gms/common/Feature;

    const-string v2, "com.google.android.gms.vision.face"

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_ICA:Lcom/google/android/gms/common/Feature;

    const-string v2, "com.google.android.gms.vision.ica"

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR:Lcom/google/android/gms/common/Feature;

    const-string v2, "com.google.android.gms.vision.ocr"

    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_LANGID:Lcom/google/android/gms/common/Feature;

    const-string v2, "com.google.android.gms.mlkit.langid"

    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_NLCLASSIFIER:Lcom/google/android/gms/common/Feature;

    const-string v2, "com.google.android.gms.mlkit.nlclassifier"

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_TFLITE_DYNAMITE:Lcom/google/android/gms/common/Feature;

    const-string v2, "com.google.android.gms.tflite_dynamite"

    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_SMART_REPLY:Lcom/google/android/gms/common/Feature;

    const-string v2, "com.google.android.gms.mlkit_smartreply"

    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzau;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzau;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAllRequiredModulesAvailable(Landroid/content/Context;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    const v1, 0xd33d260

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzau;

    .line 2
    invoke-static {v0, p1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza(Ljava/util/Map;Ljava/util/List;)[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->areAllRequiredModulesAvailable(Landroid/content/Context;[Lcom/google/android/gms/common/Feature;)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static areAllRequiredModulesAvailable(Landroid/content/Context;[Lcom/google/android/gms/common/Feature;)Z
    .locals 3

    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleInstall;->getClient(Landroid/content/Context;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/api/OptionalModuleApi;

    new-instance v2, Lcom/google/mlkit/common/sdkinternal/zzo;

    invoke-direct {v2, p1}, Lcom/google/mlkit/common/sdkinternal/zzo;-><init>([Lcom/google/android/gms/common/Feature;)V

    aput-object v2, v1, v0

    .line 7
    invoke-interface {p0, v1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;->areModulesAvailable([Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    sget-object p1, Lcom/google/mlkit/common/sdkinternal/zzp;->zza:Lcom/google/mlkit/common/sdkinternal/zzp;

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->areModulesAvailable()Z

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "OptionalModuleUtils"

    const-string v1, "Failed to complete the task of features availability check"

    .line 11
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static requestDownload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzar;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzar;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static requestDownload(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    const v1, 0xd33d260

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzau;

    .line 3
    invoke-static {v0, p1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza(Ljava/util/Map;Ljava/util/List;)[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;[Lcom/google/android/gms/common/Feature;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.vision.DependencyBroadcastReceiverProxy"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.vision.DEPENDENCY"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ","

    .line 8
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.vision.DEPENDENCIES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "requester_app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static requestDownload(Landroid/content/Context;[Lcom/google/android/gms/common/Feature;)V
    .locals 2

    .line 11
    invoke-static {}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->newBuilder()Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzq;

    invoke-direct {v1, p1}, Lcom/google/mlkit/common/sdkinternal/zzq;-><init>([Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->addApi(Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->build()Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;

    move-result-object p1

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleInstall;->getClient(Landroid/content/Context;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;

    move-result-object p0

    .line 13
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;->installModules(Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    sget-object p1, Lcom/google/mlkit/common/sdkinternal/zzr;->zza:Lcom/google/mlkit/common/sdkinternal/zzr;

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static zza(Ljava/util/Map;Ljava/util/List;)[Lcom/google/android/gms/common/Feature;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/Feature;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
