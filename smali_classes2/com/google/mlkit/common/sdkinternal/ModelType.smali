.class public final enum Lcom/google/mlkit/common/sdkinternal/ModelType;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@18.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mlkit/common/sdkinternal/ModelType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASE:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field public static final enum CUSTOM:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field public static final enum DIGITAL_INK:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field public static final enum ENTITY_EXTRACTION:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field public static final enum IMAGE_CAPTIONING:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field public static final enum TOXICITY_DETECTION:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field public static final enum TRANSLATE:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field public static final enum UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field public static final synthetic zza:[Lcom/google/mlkit/common/sdkinternal/ModelType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/4 v2, 0x1

    const-string v3, "BASE"

    .line 2
    invoke-direct {v0, v3, v2}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->BASE:Lcom/google/mlkit/common/sdkinternal/ModelType;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/4 v3, 0x2

    const-string v4, "TRANSLATE"

    .line 3
    invoke-direct {v0, v4, v3}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->TRANSLATE:Lcom/google/mlkit/common/sdkinternal/ModelType;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/4 v4, 0x3

    const-string v5, "ENTITY_EXTRACTION"

    .line 4
    invoke-direct {v0, v5, v4}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->ENTITY_EXTRACTION:Lcom/google/mlkit/common/sdkinternal/ModelType;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/4 v5, 0x4

    const-string v6, "CUSTOM"

    .line 5
    invoke-direct {v0, v6, v5}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->CUSTOM:Lcom/google/mlkit/common/sdkinternal/ModelType;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/4 v6, 0x5

    const-string v7, "DIGITAL_INK"

    .line 6
    invoke-direct {v0, v7, v6}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->DIGITAL_INK:Lcom/google/mlkit/common/sdkinternal/ModelType;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/4 v7, 0x6

    const-string v8, "TOXICITY_DETECTION"

    .line 7
    invoke-direct {v0, v8, v7}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->TOXICITY_DETECTION:Lcom/google/mlkit/common/sdkinternal/ModelType;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/4 v8, 0x7

    const-string v9, "IMAGE_CAPTIONING"

    .line 8
    invoke-direct {v0, v9, v8}, Lcom/google/mlkit/common/sdkinternal/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->IMAGE_CAPTIONING:Lcom/google/mlkit/common/sdkinternal/ModelType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/google/mlkit/common/sdkinternal/ModelType;

    sget-object v10, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->BASE:Lcom/google/mlkit/common/sdkinternal/ModelType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->TRANSLATE:Lcom/google/mlkit/common/sdkinternal/ModelType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->ENTITY_EXTRACTION:Lcom/google/mlkit/common/sdkinternal/ModelType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->CUSTOM:Lcom/google/mlkit/common/sdkinternal/ModelType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->DIGITAL_INK:Lcom/google/mlkit/common/sdkinternal/ModelType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->TOXICITY_DETECTION:Lcom/google/mlkit/common/sdkinternal/ModelType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/google/mlkit/common/sdkinternal/ModelType;->zza:[Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/mlkit/common/sdkinternal/ModelType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/ModelType;->zza:[Lcom/google/mlkit/common/sdkinternal/ModelType;

    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object v0
.end method
