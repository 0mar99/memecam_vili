.class public abstract Lcom/google/mlkit/common/internal/model/ModelUtils$AutoMLManifest;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/internal/model/ModelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AutoMLManifest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLabelsFile()Ljava/lang/String;
.end method

.method public abstract getModelFile()Ljava/lang/String;
.end method

.method public abstract getModelType()Ljava/lang/String;
.end method
