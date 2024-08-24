.class public interface abstract Lcom/google/mlkit/vision/barcode/BarcodeScanner;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"

# interfaces
.implements Lcom/google/mlkit/vision/interfaces/Detector;
.implements Lcom/google/android/gms/common/api/OptionalModuleApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/mlkit/vision/interfaces/Detector<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/barcode/common/Barcode;",
        ">;>;",
        "Lcom/google/android/gms/common/api/OptionalModuleApi;"
    }
.end annotation


# virtual methods
.method public abstract close()V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method

.method public abstract process(Lcom/google/android/odml/image/MlImage;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/odml/image/MlImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ">;>;"
        }
    .end annotation
.end method
