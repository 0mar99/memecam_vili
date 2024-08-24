.class public final enum Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@18.7.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MODEL_FORMAT_INVALID:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

.field public static final enum OK:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

.field public static final enum TFLITE_VERSION_INCOMPATIBLE:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

.field public static final synthetic zza:[Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->OK:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    const/4 v2, 0x1

    const-string v3, "TFLITE_VERSION_INCOMPATIBLE"

    .line 2
    invoke-direct {v0, v3, v2}, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->TFLITE_VERSION_INCOMPATIBLE:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    const/4 v3, 0x2

    const-string v4, "MODEL_FORMAT_INVALID"

    .line 3
    invoke-direct {v0, v4, v3}, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->MODEL_FORMAT_INVALID:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    sget-object v5, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->OK:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->TFLITE_VERSION_INCOMPATIBLE:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->zza:[Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->zza:[Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    return-object v0
.end method
