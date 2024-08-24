.class public Lcom/google/mlkit/common/sdkinternal/ModelInfo;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Landroid/net/Uri;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Lcom/google/mlkit/common/sdkinternal/ModelType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/google/mlkit/common/sdkinternal/ModelType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->zzb:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->zzd:Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-void
.end method


# virtual methods
.method public getModelHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public getModelNameForPersist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->zzd:Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object p0
.end method

.method public getModelUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/ModelInfo;->zzb:Landroid/net/Uri;

    return-object p0
.end method
