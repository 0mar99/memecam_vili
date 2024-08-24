.class public interface abstract Lcom/google/mlkit/common/sdkinternal/model/RemoteModelFileMover;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# virtual methods
.method public abstract getModelFileDestination()Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation
.end method

.method public abstract moveAllFilesFromPrivateTempToPrivateDestination(Ljava/io/File;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation
.end method
