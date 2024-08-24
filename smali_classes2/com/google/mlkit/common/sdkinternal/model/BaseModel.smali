.class public final enum Lcom/google/mlkit/common/sdkinternal/model/BaseModel;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@18.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mlkit/common/sdkinternal/model/BaseModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENTITY_EXTRACTION:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

.field public static final enum IMAGE_CAPTIONING:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

.field public static final enum TOXICITY_DETECTION:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

.field public static final enum TRANSLATE:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

.field public static final enum zza:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

.field public static final enum zzb:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

.field public static final synthetic zzc:[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const/4 v1, 0x0

    const-string v2, "FACE_DETECTION"

    invoke-direct {v0, v2, v1}, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->zza:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const/4 v2, 0x1

    const-string v3, "SMART_REPLY"

    .line 2
    invoke-direct {v0, v3, v2}, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->zzb:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const/4 v3, 0x2

    const-string v4, "TRANSLATE"

    .line 3
    invoke-direct {v0, v4, v3}, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->TRANSLATE:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const/4 v4, 0x3

    const-string v5, "ENTITY_EXTRACTION"

    .line 4
    invoke-direct {v0, v5, v4}, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->ENTITY_EXTRACTION:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const/4 v5, 0x4

    const-string v6, "TOXICITY_DETECTION"

    .line 5
    invoke-direct {v0, v6, v5}, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->TOXICITY_DETECTION:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const/4 v6, 0x5

    const-string v7, "IMAGE_CAPTIONING"

    .line 6
    invoke-direct {v0, v7, v6}, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->IMAGE_CAPTIONING:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    sget-object v8, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->zza:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    aput-object v8, v7, v1

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->zzb:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    aput-object v1, v7, v2

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->TRANSLATE:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    aput-object v1, v7, v3

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->ENTITY_EXTRACTION:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    aput-object v1, v7, v4

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->TOXICITY_DETECTION:Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->zzc:[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->zzc:[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    return-object v0
.end method
