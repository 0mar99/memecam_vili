.class public Lcom/google/mlkit/common/model/CustomRemoteModel$Builder;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/model/CustomRemoteModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final zza:Lcom/google/mlkit/common/model/RemoteModelSource;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/model/RemoteModelSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/mlkit/common/model/CustomRemoteModel$Builder;->zza:Lcom/google/mlkit/common/model/RemoteModelSource;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mlkit/common/model/CustomRemoteModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/mlkit/common/model/CustomRemoteModel;

    iget-object p0, p0, Lcom/google/mlkit/common/model/CustomRemoteModel$Builder;->zza:Lcom/google/mlkit/common/model/RemoteModelSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/mlkit/common/model/CustomRemoteModel;-><init>(Lcom/google/mlkit/common/model/RemoteModelSource;Lcom/google/mlkit/common/model/zza;)V

    return-object v0
.end method
