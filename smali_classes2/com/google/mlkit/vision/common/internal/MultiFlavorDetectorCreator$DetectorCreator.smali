.class public interface abstract Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorCreator;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DetectorCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DetectorT::",
        "Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$MultiFlavorDetector;",
        "OptionsT::",
        "Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorOptions<",
        "TDetectorT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorOptions;)Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$MultiFlavorDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOptionsT;)TDetectorT;"
        }
    .end annotation
.end method
