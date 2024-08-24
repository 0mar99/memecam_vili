.class public interface abstract Lcom/google/mlkit/common/sdkinternal/model/CustomModelLoader$CustomModelLoaderHelper;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/sdkinternal/model/CustomModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomModelLoaderHelper"
.end annotation


# virtual methods
.method public abstract logLoad()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation
.end method

.method public abstract tryLoad(Lcom/google/mlkit/common/model/LocalModel;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation
.end method
