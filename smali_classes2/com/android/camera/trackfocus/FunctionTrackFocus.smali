.class public Lcom/android/camera/trackfocus/FunctionTrackFocus;
.super Lcom/android/camera/FuncPreviewMetadata;
.source "FunctionTrackFocus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/FuncPreviewMetadata<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Lcom/android/camera/trackfocus/TrackResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/FuncPreviewMetadata;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/trackfocus/TrackResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/trackfocus/FunctionTrackFocus;->accept(Lcom/android/camera/trackfocus/TrackResult;)V

    return-void
.end method

.method public onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/trackfocus/TrackResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/trackfocus/FunctionTrackFocus;->onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/trackfocus/TrackResult;

    move-result-object p0

    return-object p0
.end method
