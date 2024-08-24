.class public Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
    }
.end annotation


# static fields
.field public static final VALID:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;


# instance fields
.field public final zza:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

.field public final zzb:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->OK:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;-><init>(Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->VALID:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->zza:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->zza:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->zza:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->OK:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
